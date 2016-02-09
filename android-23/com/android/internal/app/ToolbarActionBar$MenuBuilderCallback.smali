.class final Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;

    #@0
    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    #@3
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 545
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v2, 0x8

    #@3
    .line 550
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@5
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 551
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@d
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 552
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@19
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    #@20
    .line 549
    :cond_0
    :goto_0
    return-void

    #@21
    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@23
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@26
    move-result-object v0

    #@27
    const/4 v1, 0x0

    #@28
    invoke-interface {v0, v1, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 555
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@30
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@33
    move-result-object v0

    #@34
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    #@37
    goto :goto_0
.end method
