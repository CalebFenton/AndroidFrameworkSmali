.class Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;
.super Landroid/os/Handler;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/AlwaysOnHotwordDetector;


# direct methods
.method public static synthetic blacklist $r8$lambda$HpO9BXp8bL9hgSWOGHWTbL2pSfw(Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->lambda$handleMessage$1(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VSwtxO8lWCb8KZ2nO-iRCIYIbRU(Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->lambda$handleMessage$0(Landroid/os/Message;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/voice/AlwaysOnHotwordDetector;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1786
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 1787
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1788
    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handle message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysOnHotwordDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b0

    .line 1838
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_ac

    .line 1835
    :pswitch_25
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    .line 1836
    goto/16 :goto_ac

    .line 1832
    :pswitch_34
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/SoundTriggerFailure;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 1833
    goto :goto_ac

    .line 1829
    :pswitch_42
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 1830
    goto :goto_ac

    .line 1826
    :pswitch_50
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onHotwordDetectionServiceRestarted()V

    .line 1827
    goto :goto_ac

    .line 1823
    :pswitch_5a
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onHotwordDetectionServiceInitialized(I)V

    .line 1824
    goto :goto_ac

    .line 1820
    :pswitch_66
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/HotwordRejectedResult;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 1821
    goto :goto_ac

    .line 1817
    :pswitch_74
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionResumed()V

    .line 1818
    goto :goto_ac

    .line 1814
    :pswitch_7e
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onRecognitionPaused()V

    .line 1815
    goto :goto_ac

    .line 1811
    :pswitch_88
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    .line 1812
    goto :goto_ac

    .line 1806
    :pswitch_92
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V

    .line 1807
    goto :goto_ac

    .line 1803
    :pswitch_a0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onAvailabilityChanged(I)V

    .line 1804
    nop

    .line 1840
    :goto_ac
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 1841
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_92
        :pswitch_88
        :pswitch_7e
        :pswitch_74
        :pswitch_66
        :pswitch_5a
        :pswitch_50
        :pswitch_42
        :pswitch_34
        :pswitch_25
    .end packed-switch
.end method

.method private synthetic blacklist lambda$handleMessage$1(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1799
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmExternalExecutor(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1792
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v0, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1793
    :try_start_5
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;->this$0:Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-static {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->-$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_30

    .line 1794
    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for an invalid detector"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    monitor-exit v0

    return-void

    .line 1797
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3e

    .line 1798
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1799
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;Landroid/os/Message;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1842
    return-void

    .line 1797
    .end local v0    # "message":Landroid/os/Message;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method
