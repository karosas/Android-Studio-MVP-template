<recipe>
	<instantiate from="src/app_package/classes/App.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/${appClass}.java" />

    <instantiate from="src/app_package/classes/AppComponent.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/injection/AppComponent.java" />

    <instantiate from="src/app_package/classes/AppModule.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/injection/AppModule.java" />

    <instantiate from="src/app_package/classes/ActivityScope.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/base/injection/ActivityScope.java" />

    <instantiate from="src/app_package/classes/FragmentScope.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/base/injection/FragmentScope.java" />

    <instantiate from="src/app_package/classes/BaseActivity.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/view/BaseActivity.java" />

    <instantiate from="src/app_package/classes/BaseFragment.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/view/BaseFragment.java" />

    <instantiate from="src/app_package/classes/BasePresenter.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/presenter/BasePresenter.java" />

    <instantiate from="src/app_package/classes/BaseInteractor.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/interactor/BaseInteractor.java" />   

    <instantiate from="src/app_package/classes/BasePresenterImpl.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/presenter/BasePresenterImpl.java" />  

    <instantiate from="src/app_package/classes/PresenterFactory.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/presenter/loader/PresenterFactory.java" />

    <instantiate from="src/app_package/classes/PresenterLoader.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/base/presenter/loader/PresenterLoader.java" />  
</recipe>
