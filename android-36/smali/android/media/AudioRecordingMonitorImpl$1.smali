.class Landroid/media/AudioRecordingMonitorImpl$1;
.super Landroid/media/IRecordingConfigDispatcher$Stub;
.source "AudioRecordingMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecordingMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioRecordingMonitorImpl;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioRecordingMonitorImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioRecordingMonitorImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {p0}, Landroid/media/IRecordingConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchRecordingConfigChange(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v0, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->getMyConfig(Ljava/util/List;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    .line 152
    .local v0, "config":Landroid/media/AudioRecordingConfiguration;
    if-eqz v0, :cond_30

    .line 153
    iget-object v1, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v1}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioRecordingMonitorImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_f
    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v2}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordingCallbackHandler(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 155
    iget-object v2, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v2}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordingCallbackHandler(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 157
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Landroid/media/AudioRecordingMonitorImpl$1;->this$0:Landroid/media/AudioRecordingMonitorImpl;

    invoke-static {v3}, Landroid/media/AudioRecordingMonitorImpl;->-$$Nest$fgetmRecordingCallbackHandler(Landroid/media/AudioRecordingMonitorImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    .end local v2    # "m":Landroid/os/Message;
    :cond_2b
    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_2d

    throw v2

    .line 161
    :cond_30
    :goto_30
    return-void
.end method
