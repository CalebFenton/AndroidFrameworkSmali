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

    .line 565
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 574
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    .line 576
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_37

    .line 577
    :cond_20
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 579
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmWindowCallback(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 582
    :cond_37
    :goto_37
    return-void
.end method
