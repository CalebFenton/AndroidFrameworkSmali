.class Landroid/widget/ZoomButtonsController$Container;
.super Landroid/widget/FrameLayout;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor <init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ZoomButtonsController;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 685
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$Container;->this$0:Landroid/widget/ZoomButtonsController;

    #@2
    .line 686
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    .line 685
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$Container;->this$0:Landroid/widget/ZoomButtonsController;

    #@2
    invoke-static {v0, p1}, Landroid/widget/ZoomButtonsController;->-wrap0(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method
