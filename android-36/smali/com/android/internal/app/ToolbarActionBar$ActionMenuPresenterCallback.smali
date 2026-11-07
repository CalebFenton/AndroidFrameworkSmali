.class final Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private blacklist mClosingActionMenu:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 538
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 552
    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz v0, :cond_5

    .line 553
    return-void

    .line 556
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 557
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 561
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 562
    return-void
.end method

.method public blacklist onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 543
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 545
    const/4 v0, 0x1

    return v0

    .line 547
    :cond_15
    const/4 v0, 0x0

    return v0
.end method
