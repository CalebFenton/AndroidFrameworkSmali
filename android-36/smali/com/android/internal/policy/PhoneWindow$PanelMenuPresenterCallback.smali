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
.field final synthetic blacklist this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2455
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 9
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2458
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 2459
    .local v0, "parentMenu":Landroid/view/Menu;
    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 2460
    .local v2, "isSubMenu":Z
    :goto_a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v2, :cond_10

    move-object v4, v0

    goto :goto_11

    :cond_10
    move-object v4, p1

    :goto_11
    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 2461
    .local v3, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2b

    .line 2462
    if-eqz v2, :cond_26

    .line 2463
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-static {v4, v5, v3, v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$mcallOnPanelClosed(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 2464
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_2b

    .line 2468
    :cond_26
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 2471
    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 2475
    if-nez p1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2476
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2477
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1f

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2478
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2482
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
