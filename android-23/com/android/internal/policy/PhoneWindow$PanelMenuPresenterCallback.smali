.class Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 2144
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 2147
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    move-result-object v2

    #@4
    .line 2148
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    #@6
    const/4 v0, 0x1

    #@7
    .line 2149
    .local v0, "isSubMenu":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@9
    if-eqz v0, :cond_0

    #@b
    move-object p1, v2

    #@c
    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_0
    invoke-virtual {v3, p1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    #@f
    move-result-object v1

    #@10
    .line 2150
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1

    #@12
    .line 2151
    if-eqz v0, :cond_3

    #@14
    .line 2152
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@16
    iget v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    #@18
    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->-wrap3(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    #@1b
    .line 2153
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1d
    const/4 v4, 0x1

    #@1e
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@21
    .line 2146
    :cond_1
    :goto_1
    return-void

    #@22
    .line 2148
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .restart local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2
    const/4 v0, 0x0

    #@23
    .restart local v0    # "isSubMenu":Z
    goto :goto_0

    #@24
    .line 2157
    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@26
    invoke-virtual {v3, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    #@29
    goto :goto_1
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 2164
    if-nez p1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@6
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2165
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    #@11
    move-result-object v0

    #@12
    .line 2166
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    #@14
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@16
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 2171
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@1d
    return v1

    #@1e
    .line 2167
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@21
    goto :goto_0
.end method
