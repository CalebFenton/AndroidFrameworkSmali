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
.field private final mAudioRecord:Landroid/media/AudioRecord;

.field final synthetic this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioRecord;
    .param p2, "recorder"    # Landroid/media/AudioRecord;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1466
    iput-object p1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    #@2
    .line 1467
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1468
    iput-object p2, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    #@7
    .line 1466
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1473
    const/4 v0, 0x0

    #@1
    .line 1474
    .local v0, "listener":Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->this$0:Landroid/media/AudioRecord;

    #@3
    invoke-static {v1}, Landroid/media/AudioRecord;->-get2(Landroid/media/AudioRecord;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    monitor-enter v2

    #@8
    .line 1475
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    #@a
    invoke-static {v1}, Landroid/media/AudioRecord;->-get1(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    .local v0, "listener":Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    monitor-exit v2

    #@f
    .line 1478
    iget v1, p1, Landroid/os/Message;->what:I

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Unknown native event type: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v2, p1, Landroid/os/Message;->what:I

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/media/AudioRecord;->-wrap0(Ljava/lang/String;)V

    #@2d
    .line 1472
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 1474
    .local v0, "listener":Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1

    #@31
    .line 1480
    .local v0, "listener":Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    :pswitch_0
    if-eqz v0, :cond_0

    #@33
    .line 1481
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    #@35
    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onMarkerReached(Landroid/media/AudioRecord;)V

    #@38
    goto :goto_0

    #@39
    .line 1485
    :pswitch_1
    if-eqz v0, :cond_0

    #@3b
    .line 1486
    iget-object v1, p0, Landroid/media/AudioRecord$NativeEventHandler;->mAudioRecord:Landroid/media/AudioRecord;

    #@3d
    invoke-interface {v0, v1}, Landroid/media/AudioRecord$OnRecordPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioRecord;)V

    #@40
    goto :goto_0

    #@41
    .line 1478
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
