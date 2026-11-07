.class Landroid/view/ViewRootImpl$9;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbackForPendingTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic blacklist $r8$lambda$oslup7xsfmiKu7EQNfqm1RHXE3w(Landroid/view/ViewRootImpl$9;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$9;->lambda$onFrameDraw$0(JZ)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5433
    iput-object p1, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onFrameDraw$0(JZ)V
    .registers 6
    .param p1, "frame"    # J
    .param p3, "didProduceBuffer"    # Z

    .line 5444
    if-nez p3, :cond_12

    .line 5445
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    const-string v1, "Transaction not synced due to no frame drawn"

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mlogAndTrace(Landroid/view/ViewRootImpl;Ljava/lang/String;)V

    .line 5446
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5448
    :cond_12
    return-void
.end method


# virtual methods
.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 6
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 5436
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 5437
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_16

    .line 5439
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5440
    const/4 v0, 0x0

    return-object v0

    .line 5443
    :cond_16
    new-instance v0, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$9;J)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .registers 3
    .param p1, "frame"    # J

    .line 5454
    return-void
.end method
