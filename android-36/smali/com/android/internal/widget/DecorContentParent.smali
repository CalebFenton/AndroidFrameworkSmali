.class public interface abstract Lcom/android/internal/widget/DecorContentParent;
.super Ljava/lang/Object;
.source "DecorContentParent.java"


# virtual methods
.method public abstract blacklist canShowOverflowMenu()Z
.end method

.method public abstract blacklist dismissPopups()V
.end method

.method public abstract blacklist getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist hasIcon()Z
.end method

.method public abstract blacklist hasLogo()Z
.end method

.method public abstract blacklist hideOverflowMenu()Z
.end method

.method public abstract blacklist initFeature(I)V
.end method

.method public abstract blacklist isOverflowMenuShowPending()Z
.end method

.method public abstract blacklist isOverflowMenuShowing()Z
.end method

.method public abstract blacklist notifyContentChanged()V
.end method

.method public abstract blacklist restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setIcon(I)V
.end method

.method public abstract blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract blacklist setLogo(I)V
.end method

.method public abstract blacklist setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract blacklist setMenuPrepared()V
.end method

.method public abstract blacklist setUiOptions(I)V
.end method

.method public abstract blacklist setWindowCallback(Landroid/view/Window$Callback;)V
.end method

.method public abstract blacklist setWindowTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract blacklist showOverflowMenu()Z
.end method
