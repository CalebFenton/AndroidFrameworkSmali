.class Landroid/media/AudioRecord$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private final greylist-max-o mAudioRecord:Landroid/media/AudioRecord;

.field final synthetic blacklist this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V
    .registers 4
    .param p2, "recorder"    # Landroid/media/AudioRecord;
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

    .line 2406
    iput-object p1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    .line 2407
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2408
    iput-object p2, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2409
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2413
    const/4 v0, 0x0

    .line 2414
    .local v0, "listener":Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    invoke-static {v1}, Landroid/media/AudioRecord;->-$$Nest$fgetmPositionListenerLock(Landroid/media/AudioRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2415
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {v2}, Landroid/media/AudioRecord;->-$$Nest$fgetmPositionListener(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    move-result-object v2

    move-object v0, v2

    .line 2416
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_3e

    .line 2418
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 2430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioRecord;->-$$Nest$smloge(Ljava/lang/String;)V

    goto :goto_3d

    .line 2425
    :pswitch_2e
    if-eqz v0, :cond_3d

    .line 2426
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioRecord;)V

    goto :goto_3d

    .line 2420
    :pswitch_36
    if-eqz v0, :cond_3d

    .line 2421
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onMarkerReached(Landroid/media/AudioRecord;)V

    .line 2433
    :cond_3d
    :goto_3d
    return-void

    .line 2416
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2

    nop

    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method
