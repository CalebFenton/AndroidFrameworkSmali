.class public interface abstract Lcom/android/internal/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
.end method

.method public abstract greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
.end method

.method public abstract greylist-max-o flagActionItems()Z
.end method

.method public abstract greylist-max-o getId()I
.end method

.method public abstract greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
.end method

.method public abstract greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
.end method

.method public abstract greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
.end method

.method public abstract greylist-max-o onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract greylist-max-o onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
.end method

.method public abstract greylist-max-o setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract greylist-max-o updateMenuView(Z)V
.end method
