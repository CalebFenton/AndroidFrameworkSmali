.class Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 980
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 993
    instance-of v0, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_c

    .line 994
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 996
    :cond_c
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 997
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_17

    .line 998
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 1000
    :cond_17
    return-void
.end method

.method public greylist-max-o onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 984
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 986
    :cond_4
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 987
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v1

    .line 988
    .local v1, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v1, :cond_1f

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    :cond_1f
    return v0
.end method
