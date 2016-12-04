<?xml version="1.0"?>
<recipe>
    <#include "fragment_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/view/${activityClass}Fragment.java" />

    <instantiate from="src/app_package/classes/View.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/view/${viewClass}.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/injection/${componentClass}.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/injection/${moduleClass}.java" />

    <instantiate from="src/app_package/classes/PresenterImpl.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/presenter/${presenterClass}Impl.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/presenter/${presenterClass}.java" />

    <instantiate from="src/app_package/classes/InteractorImpl.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/interactor/${interactorClass}Impl.java" />

    <instantiate from="src/app_package/classes/Interactor.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}/interactor/${interactorClass}.java" />

</recipe>
