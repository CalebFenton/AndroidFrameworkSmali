.class Lcom/android/server/AnyMotionDetector$3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    #@0
    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 279
    const/4 v0, -0x1

    #@1
    .line 280
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    #@3
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get1(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    monitor-enter v2

    #@8
    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    #@a
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-wrap0(Lcom/android/server/AnyMotionDetector;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v0

    #@e
    monitor-exit v2

    #@f
    .line 286
    const/4 v1, -0x1

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 287
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    #@14
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-get0(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    #@1b
    .line 278
    :cond_0
    return-void

    #@1c
    .line 280
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method
