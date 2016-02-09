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
.field final synthetic this$0:Lcom/android/internal/view/menu/IconMenuPresenter;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/IconMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/IconMenuPresenter;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 179
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@3
    const/4 v1, 0x0

    #@4
    iput v1, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    #@6
    .line 180
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@8
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 181
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@e
    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    #@13
    .line 182
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@15
    iput-object v2, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@17
    .line 178
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 188
    if-eqz p1, :cond_0

    #@2
    .line 189
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    #@4
    check-cast p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@6
    .end local p1    # "subMenu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    #@d
    move-result v1

    #@e
    iput v1, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    #@10
    .line 191
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0
.end method
