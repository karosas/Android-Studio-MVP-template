package ${packageName}.base.presenter.loader;

import android.support.annotation.NonNull;

import ${packageName}.base.presenter.BasePresenter;

/**
 * Factory to implement to create a presenter
 */
public interface PresenterFactory<T extends BasePresenter>
{
    @NonNull
    T create();
}
