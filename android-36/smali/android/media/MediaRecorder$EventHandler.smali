.class Landroid/media/MediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final greylist-max-o MEDIA_RECORDER_AUDIO_ROUTING_CHANGED:I = 0x2710

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final greylist-max-o MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final greylist-max-o MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private greylist-max-o mMediaRecorder:Landroid/media/MediaRecorder;

.field final synthetic blacklist this$0:Landroid/media/MediaRecorder;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V
    .registers 4
    .param p2, "mr"    # Landroid/media/MediaRecorder;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1590
    iput-object p1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    .line 1591
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1592
    iput-object p2, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1593
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1613
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmNativeContext(Landroid/media/MediaRecorder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 1614
    const-string v0, "MediaRecorder"

    const-string v1, "mediarecorder went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void

    .line 1617
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_92

    .line 1643
    const-string v0, "MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return-void

    .line 1633
    :sswitch_34
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1634
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmRoutingChangeListeners(Landroid/media/MediaRecorder;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1636
    :try_start_3e
    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v1}, Landroid/media/MediaRecorder;->-$$Nest$fgetmRoutingChangeListeners(Landroid/media/MediaRecorder;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1637
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 1638
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_4c

    .line 1639
    :cond_5c
    monitor-exit v0

    .line 1640
    return-void

    .line 1639
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3e .. :try_end_60} :catchall_5e

    throw v1

    .line 1627
    :sswitch_61
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 1628
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnInfoListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    .line 1630
    :cond_78
    return-void

    .line 1620
    :sswitch_79
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 1621
    iget-object v0, p0, Landroid/media/MediaRecorder$EventHandler;->this$0:Landroid/media/MediaRecorder;

    invoke-static {v0}, Landroid/media/MediaRecorder;->-$$Nest$fgetmOnErrorListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRecorder$EventHandler;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaRecorder$OnErrorListener;->onError(Landroid/media/MediaRecorder;II)V

    .line 1623
    :cond_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_79
        0x2 -> :sswitch_61
        0x64 -> :sswitch_79
        0x65 -> :sswitch_61
        0x2710 -> :sswitch_34
    .end sparse-switch
.end method
