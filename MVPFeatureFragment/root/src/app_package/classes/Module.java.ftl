package ${packageName}.${activityClass}.injection;

import android.support.annotation.NonNull;

import ${packageName}.${activityClass}.interactor.${interactorClass};
import ${packageName}.${activityClass}.interactor.${interactorClass}Impl;
import ${packageName}.base.presenter.loader.PresenterFactory;
import ${packageName}.${activityClass}.presenter.${presenterClass};
import ${packageName}.${activityClass}.presenter.${presenterClass}Impl;

import dagger.Module;
import dagger.Provides;

@Module
public final class ${moduleClass} 
{
    @Provides
    public ${interactorClass} provideInteractor()
    {
        return new ${interactorClass}Impl();
    }

    @Provides
    public PresenterFactory<${presenterClass}> providePresenterFactory(@NonNull final ${interactorClass} interactor)
    {
        return new PresenterFactory<${presenterClass}>()
        {
            @NonNull
            @Override
            public ${presenterClass} create()
            {
                return new ${presenterClass}Impl(interactor);
            }
        };
    }
}
