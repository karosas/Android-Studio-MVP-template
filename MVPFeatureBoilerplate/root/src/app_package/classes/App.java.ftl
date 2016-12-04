package ${packageName};

import android.app.Application;
import android.support.annotation.NonNull;

import ${packageName}.base.injection.AppComponent;
import ${packageName}.base.injection.AppModule;
import ${packageName}.base.injection.DaggerAppComponent;

public final class ${appClass} extends Application
{
    private AppComponent mAppComponent;

    @Override
    public void onCreate()
    {
        super.onCreate();

        mAppComponent = DaggerAppComponent.builder()
            .appModule(new AppModule(this))
            .build();
    }

    @NonNull
    public AppComponent getAppComponent()
    {
        return mAppComponent;
    }
}