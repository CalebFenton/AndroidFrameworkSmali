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
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaSync;

    #@0
    .prologue
    .line 615
    iput-object p1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 618
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    .line 619
    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    #@5
    invoke-static {v0}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    monitor-enter v1

    #@a
    .line 620
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    #@c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@f
    move-result-object v2

    #@10
    invoke-static {v0, v2}, Landroid/media/MediaSync;->-set1(Landroid/media/MediaSync;Landroid/os/Looper;)Landroid/os/Looper;

    #@13
    .line 621
    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    #@15
    new-instance v2, Landroid/os/Handler;

    #@17
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #@1a
    invoke-static {v0, v2}, Landroid/media/MediaSync;->-set0(Landroid/media/MediaSync;Landroid/os/Handler;)Landroid/os/Handler;

    #@1d
    .line 622
    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    #@1f
    invoke-static {v0}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 624
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@2a
    .line 617
    return-void

    #@2b
    .line 619
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method
