.class Lcom/android/internal/view/SurfaceCallbackHelper$1;
.super Ljava/lang/Object;
.source "SurfaceCallbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/SurfaceCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/view/SurfaceCallbackHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/SurfaceCallbackHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/view/SurfaceCallbackHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    .line 36
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v1, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingCollected:I

    iget-object v2, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget v2, v2, Lcom/android/internal/view/SurfaceCallbackHelper;->mFinishDrawingExpected:I

    if-ge v1, v2, :cond_17

    .line 37
    monitor-exit v0

    return-void

    .line 39
    :cond_17
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    iget-object v1, v1, Lcom/android/internal/view/SurfaceCallbackHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 40
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-static {v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->-$$Nest$fgetmSurfaceRedrawImplemented(Lcom/android/internal/view/SurfaceCallbackHelper;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-static {v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->-$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 41
    iget-object v1, p0, Lcom/android/internal/view/SurfaceCallbackHelper$1;->this$0:Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-static {v1}, Lcom/android/internal/view/SurfaceCallbackHelper;->-$$Nest$fgetmTag(Lcom/android/internal/view/SurfaceCallbackHelper;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "surfaceRedrawNeeded implemented"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0xea66

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 44
    :cond_41
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method
