.class Landroid/media/MediaSync$3;
.super Ljava/lang/Thread;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->createAudioThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaSync;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaSync;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaSync;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 615
    iput-object p1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 618
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 619
    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioLock(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 620
    :try_start_a
    iget-object v1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaSync;->-$$Nest$fputmAudioLooper(Landroid/media/MediaSync;Landroid/os/Looper;)V

    .line 621
    iget-object v1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Landroid/media/MediaSync;->-$$Nest$fputmAudioHandler(Landroid/media/MediaSync;Landroid/os/Handler;)V

    .line 622
    iget-object v1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmAudioLock(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 623
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2b

    .line 624
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 625
    return-void

    .line 623
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method
