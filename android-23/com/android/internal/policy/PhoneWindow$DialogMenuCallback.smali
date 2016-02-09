.class final Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogMenuCallback"
.end annotation


# instance fields
.field private mFeatureId:I

.field private mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "featureId"    # I

    #@0
    .prologue
    .line 4976
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4977
    iput p2, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    #@7
    .line 4976
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
    .line 4981
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    move-result-object v1

    #@5
    if-eq v1, p1, :cond_0

    #@7
    .line 4982
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@a
    .line 4985
    :cond_0
    if-eqz p2, :cond_3

    #@c
    .line 4986
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@11
    move-result-object v0

    #@12
    .line 4987
    .local v0, "callback":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    #@14
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_4

    #@1c
    .line 4991
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1e
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    #@21
    move-result-object v1

    #@22
    if-ne p1, v1, :cond_2

    #@24
    .line 4992
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@26
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-wrap4(Lcom/android/internal/policy/PhoneWindow;)V

    #@29
    .line 4996
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 4997
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@2f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    #@32
    .line 4998
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@34
    .line 4980
    .end local v0    # "callback":Landroid/view/Window$Callback;
    :cond_3
    return-void

    #@35
    .line 4988
    .restart local v0    # "callback":Landroid/view/Window$Callback;
    :cond_4
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    #@37
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@3a
    goto :goto_0
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 5004
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 5005
    .local v0, "callback":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 5003
    :cond_0
    :goto_0
    return-void

    #@11
    .line 5006
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    #@13
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@1a
    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 5011
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    .line 5012
    .local v0, "callback":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    :goto_0
    return v1

    #@12
    .line 5013
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mFeatureId:I

    #@14
    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@17
    move-result v1

    #@18
    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 5016
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5020
    if-nez p1, :cond_0

    #@3
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 5023
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@8
    .line 5026
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    #@a
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@d
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@f
    .line 5027
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;->mSubMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    #@14
    .line 5029
    const/4 v0, 0x1

    #@15
    return v0
.end method
