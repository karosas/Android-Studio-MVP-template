package ${packageName}.${activityClass}.injection;

import ${packageName}.${activityClass}.view.${activityClass}Fragment;
import ${packageName}.base.injection.AppComponent;
import ${packageName}.base.injection.FragmentScope;

import dagger.Component;

@FragmentScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(${activityClass}Fragment fragment);
}