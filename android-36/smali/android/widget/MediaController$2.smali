.class Landroid/widget/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/MediaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 231
    iget-object v0, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$mupdateFloatingWindowLayout(Landroid/widget/MediaController;)V

    .line 232
    iget-object v0, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmShowing(Landroid/widget/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 233
    iget-object v0, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmWindowManager(Landroid/widget/MediaController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmDecor(Landroid/widget/MediaController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v2}, Landroid/widget/MediaController;->-$$Nest$fgetmDecorLayoutParams(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_22
    return-void
.end method
