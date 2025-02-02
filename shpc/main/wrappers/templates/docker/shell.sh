{% extends "bases/shell-script-base.sh" %}

{% block content %}{{ container.command }} ${PODMAN_OPTS} run ${PODMAN_COMMAND_OPTS} -i{% if settings.enable_tty %}t{% endif %} -u `id -u`:`id -g` --rm {% if settings.environment_file %}--env-file $moduleDir/{{ settings.environment_file }}{% endif %} {% if settings.bindpaths %}-v {{ settings.bindpaths }} {% endif %}{% if features.home %}-v {{ features.home }} {% endif %} -v ${PWD} -w ${PWD} --entrypoint {{ settings.wrapper_shell }} {{ image }} {% if '/sh' in settings.wrapper_shell or '/bash' in settings.wrapper_shell %}"$@"{% elif '/csh' in settings.wrapper_shell %}$argv:q{% endif %}
{% endblock %}
