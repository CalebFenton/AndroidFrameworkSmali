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
.field final synthetic blacklist this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
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

    .line 688
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$Container;->this$0:Landroid/widget/ZoomButtonsController;

    .line 689
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 690
    return-void
.end method


# virtual methods
.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 700
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$Container;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0, p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$monContainerKey(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_e

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_e
    return v0
.end method
