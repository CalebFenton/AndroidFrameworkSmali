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
.field private mClosingActionMenu:Z

.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;

    #@0
    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 529
    return-void

    #@5
    .line 532
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    #@8
    .line 533
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@a
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    #@11
    .line 534
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@13
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 535
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@1b
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@1e
    move-result-object v0

    #@1f
    const/16 v1, 0x8

    #@21
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@24
    .line 537
    :cond_1
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    #@27
    .line 527
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 520
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@a
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@d
    move-result-object v0

    #@e
    const/16 v1, 0x8

    #@10
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@13
    .line 521
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 523
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method
