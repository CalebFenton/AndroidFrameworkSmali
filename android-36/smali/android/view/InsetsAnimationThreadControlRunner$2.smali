.class Landroid/view/InsetsAnimationThreadControlRunner$2;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationThreadControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mTmpFloat9:[F


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsAnimationThreadControlRunner;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/InsetsAnimationThreadControlRunner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$2;->mTmpFloat9:[F

    return-void
.end method


# virtual methods
.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 6
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 98
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 99
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_14

    .line 100
    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/view/InsetsAnimationThreadControlRunner$2;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 99
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 102
    .end local v1    # "i":I
    :cond_14
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 103
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 104
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 105
    return-void
.end method
