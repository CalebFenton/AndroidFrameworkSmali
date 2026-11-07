.class Landroid/widget/ViewFlipper$1;
.super Ljava/lang/Object;
.source "ViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ViewFlipper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/ViewFlipper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 197
    iget-object v0, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v0}, Landroid/widget/ViewFlipper;->-$$Nest$fgetmRunning(Landroid/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 198
    iget-object v0, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 199
    iget-object v0, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1}, Landroid/widget/ViewFlipper;->-$$Nest$fgetmFlipRunnable(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v2}, Landroid/widget/ViewFlipper;->-$$Nest$fgetmFlipInterval(Landroid/widget/ViewFlipper;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    :cond_1f
    return-void
.end method
