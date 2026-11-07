.class Lcom/android/internal/jank/FrameTracker$2;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/FrameTracker;->end(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mFlushAttempts:I

.field final synthetic blacklist this$0:Lcom/android/internal/jank/FrameTracker;

.field final synthetic blacklist val$name:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$WpG3mX9vavBQdpb_FXETBOcnAvw(Lcom/android/internal/jank/FrameTracker$2;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker$2;->lambda$run$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/jank/FrameTracker;
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

    .line 354
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/jank/FrameTracker$2;->mFlushAttempts:I

    return-void
.end method

.method private synthetic blacklist lambda$run$0(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force finish cuj, time out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V

    .line 379
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_71

    .line 364
    :cond_11
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 365
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl$Transaction;->sendSurfaceFlushJankData(Landroid/view/SurfaceControl;)V

    .line 367
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmJankDataListenerRegistration(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 368
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmJankDataListenerRegistration(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->flush()V

    .line 372
    :cond_3f
    iget v0, p0, Lcom/android/internal/jank/FrameTracker$2;->mFlushAttempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4d

    .line 373
    const-wide/16 v0, 0x3c

    .line 374
    .local v0, "delay":J
    iget v2, p0, Lcom/android/internal/jank/FrameTracker$2;->mFlushAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/jank/FrameTracker$2;->mFlushAttempts:I

    goto :goto_61

    .line 376
    .end local v0    # "delay":J
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$2;->val$name:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/jank/FrameTracker$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/jank/FrameTracker$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker$2;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fputmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V

    .line 380
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 382
    .restart local v0    # "delay":J
    :goto_61
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker$2;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v3}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    return-void

    .line 360
    .end local v0    # "delay":J
    :cond_71
    :goto_71
    return-void
.end method
