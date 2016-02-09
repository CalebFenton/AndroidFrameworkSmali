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
.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    .line 500
    invoke-direct {p0, p2}, Landroid/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    #@5
    .line 499
    return-void
.end method


# virtual methods
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 505
    invoke-super {p0, p1, p2, p3}, Landroid/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@3
    move-result v0

    #@4
    .line 506
    .local v0, "result":Z
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@8
    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get1(Lcom/android/internal/app/ToolbarActionBar;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 510
    :cond_0
    :goto_0
    return v0

    #@f
    .line 507
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@11
    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    #@18
    .line 508
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@1a
    const/4 v2, 0x1

    #@1b
    invoke-static {v1, v2}, Lcom/android/internal/app/ToolbarActionBar;->-set0(Lcom/android/internal/app/ToolbarActionBar;Z)Z

    #@1e
    goto :goto_0
.end method
