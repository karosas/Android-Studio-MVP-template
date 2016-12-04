package ${packageName}.${activityClass}.view;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.R;
import ${packageName}.${activityClass}.view.${viewClass};
import ${packageName}.base.presenter.loader.PresenterFactory;
import ${packageName}.${activityClass}.presenter.${presenterClass};
import ${packageName}.base.injection.AppComponent;
import ${packageName}.${activityClass}.injection.${moduleClass};
import ${packageName}.${activityClass}.injection.Dagger${componentClass};
import ${packageName}.base.view.BaseFragment;

import javax.inject.Inject;

public final class ${activityClass}Fragment extends BaseFragment<${presenterClass}, ${viewClass}> implements ${viewClass}
{
    @Inject
    PresenterFactory<${presenterClass}> mPresenterFactory;

    // Your presenter is available using the mPresenter variable

    public ${activityClass}Fragment()
    {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        return inflater.inflate(R.layout.${layoutName}, container, false);
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState)
    {
        super.onViewCreated(view, savedInstanceState);

        // Your code here
        // Do not call mPresenter from here, it will be null! Wait for onStart
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
