.class Lcom/android/internal/jank/FrameTracker$1;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$CV2_1zd4g7Ur0OvNcymaUqHPESc(Lcom/android/internal/jank/FrameTracker$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker$1;->lambda$surfaceDestroyed$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FO-oRNueXad4yoTsfN_sNG1uigk(Lcom/android/internal/jank/FrameTracker$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker$1;->lambda$surfaceCreated$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/jank/FrameTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$surfaceCreated$0()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_28

    .line 244
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 247
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->begin()V

    .line 250
    :cond_28
    return-void
.end method

.method private synthetic blacklist lambda$surfaceDestroyed$1()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 262
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    .line 264
    :cond_e
    return-void
.end method


# virtual methods
.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 241
    const-string v0, "FrameTracker#surfaceCreated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 251
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 252
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 256
    return-void
.end method
