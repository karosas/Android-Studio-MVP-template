package ${packageName}.${activityClass}.injection;

import ${packageName}.${activityClass}.view.${activityClass}Activity;
import ${packageName}.base.injection.AppComponent;
import ${packageName}.base.injection.ActivityScope;

import dagger.Component;

@ActivityScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(${activityClass}Activity activity);
}