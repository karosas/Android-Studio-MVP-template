package ${packageName}.${activityClass}.view;

import android.os.Bundle;
import android.support.annotation.NonNull;

import ${packageName}.R;
import ${packageName}.base.view.BaseActivity;
import ${packageName}.${activityClass}.view.${viewClass};
import ${packageName}.base.presenter.loader.PresenterFactory;
import ${packageName}.${activityClass}.presenter.${presenterClass};
import ${packageName}.base.injection.AppComponent;
import ${packageName}.${activityClass}.injection.${moduleClass};
import ${packageName}.${activityClass}.injection.Dagger${componentClass};

import javax.inject.Inject;

public final class ${activityClass}Activity extends BaseActivity<${presenterClass}, ${viewClass}> implements ${viewClass}
{
    @Inject
    PresenterFactory<${presenterClass}> mPresenterFactory;

    // Your presenter is available using the mPresenter variable

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        // Your code here
        // Do not call mPresenter from here, it will be null! Wait for onStart or onPostCreate.
    }

    @Override
    protected void setupComponent(@NonNull AppComponent parentComponent) 
    {
        Dagger${componentClass}.builder()
            .appComponent(parentComponent)
            .${moduleClass?uncap_first}(new ${moduleClass}())
            .build()
            .inject(this);
    }

    @NonNull
    @Override
    protected PresenterFactory<${presenterClass}> getPresenterFactory()
    {
        return mPresenterFactory;
    }
}
