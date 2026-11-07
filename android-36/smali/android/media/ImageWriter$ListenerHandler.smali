.class final Landroid/media/ImageWriter$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/ImageWriter;


# direct methods
.method public constructor blacklist <init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 780
    iput-object p1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    .line 781
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 782
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 788
    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->-$$Nest$fgetmListenerLock(Landroid/media/ImageWriter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 789
    :try_start_7
    iget-object v1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v1}, Landroid/media/ImageWriter;->-$$Nest$fgetmListener(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;

    move-result-object v1

    .line 790
    .local v1, "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_29

    .line 793
    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->-$$Nest$fgetmCloseLock(Landroid/media/ImageWriter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 794
    :try_start_15
    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->-$$Nest$fgetmIsWriterValid(Landroid/media/ImageWriter;)Z

    move-result v0

    .line 795
    .local v0, "isWriterValid":Z
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_26

    .line 796
    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 797
    iget-object v2, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-interface {v1, v2}, Landroid/media/ImageWriter$OnImageReleasedListener;->onImageReleased(Landroid/media/ImageWriter;)V

    .line 799
    :cond_25
    return-void

    .line 795
    .end local v0    # "isWriterValid":Z
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    .line 790
    .end local v1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method
