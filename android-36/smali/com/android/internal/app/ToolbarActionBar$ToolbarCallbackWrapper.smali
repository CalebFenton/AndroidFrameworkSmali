.class Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroid/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .registers 3
    .param p2, "wrapped"    # Landroid/view/Window$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 513
    invoke-direct {p0, p2}, Landroid/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 514
    return-void
.end method


# virtual methods
.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 4
    .param p1, "featureId"    # I

    .line 528
    if-nez p1, :cond_12

    .line 532
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 534
    :cond_12
    invoke-super {p0, p1}, Landroid/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 518
    invoke-super {p0, p1, p2, p3}, Landroid/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 519
    .local v0, "result":Z
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 520
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 521
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fputmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;Z)V

    .line 523
    :cond_1d
    return v0
.end method
