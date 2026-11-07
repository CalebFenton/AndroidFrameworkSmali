.class Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;
.super Ljava/lang/Object;
.source "IconMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/IconMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/menu/IconMenuPresenter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/menu/IconMenuPresenter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/menu/IconMenuPresenter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    .line 182
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_17

    .line 183
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 186
    :cond_17
    return-void
.end method

.method public blacklist onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 190
    if-eqz p1, :cond_11

    .line 191
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    .line 193
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
