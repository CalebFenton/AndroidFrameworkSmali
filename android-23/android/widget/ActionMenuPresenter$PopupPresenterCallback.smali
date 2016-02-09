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
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    .line 964
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 977
    instance-of v1, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 978
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@f
    .line 980
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@11
    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@14
    move-result-object v0

    #@15
    .line 981
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    #@17
    .line 982
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@1a
    .line 976
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 968
    if-nez p1, :cond_0

    #@3
    return v2

    #@4
    .line 970
    :cond_0
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@6
    move-object v1, p1

    #@7
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    #@10
    move-result v1

    #@11
    iput v1, v3, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    #@13
    .line 971
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    #@15
    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@18
    move-result-object v0

    #@19
    .line 972
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    #@1b
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@1e
    move-result v1

    #@1f
    :goto_0
    return v1

    #@20
    :cond_1
    move v1, v2

    #@21
    goto :goto_0
.end method
