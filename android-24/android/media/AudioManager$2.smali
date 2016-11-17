.class Landroid/media/AudioManager$2;
.super Landroid/media/IRecordingConfigDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    #@0
    .prologue
    .line 2912
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    #@2
    invoke-direct {p0}, Landroid/media/IRecordingConfigDispatcher$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispatchRecordingConfigChange(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2915
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    #@2
    invoke-static {v3}, Landroid/media/AudioManager;->-get3(Landroid/media/AudioManager;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 2916
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    #@9
    invoke-static {v3}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/util/List;

    #@c
    move-result-object v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 2917
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    #@12
    invoke-static {v3}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/util/List;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@19
    move-result v3

    #@1a
    if-ge v1, v3, :cond_1

    #@1c
    .line 2918
    iget-object v3, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    #@1e
    invoke-static {v3}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Ljava/util/List;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    #@28
    .line 2919
    .local v0, "arci":Landroid/media/AudioManager$AudioRecordingCallbackInfo;
    iget-object v3, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    #@2a
    if-eqz v3, :cond_0

    #@2c
    .line 2920
    iget-object v3, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    #@2e
    .line 2922
    new-instance v5, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    #@30
    iget-object v6, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    #@32
    invoke-direct {v5, v6, p1}, Landroid/media/AudioManager$RecordConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Ljava/util/List;)V

    #@35
    .line 2921
    const/4 v6, 0x1

    #@36
    .line 2920
    invoke-virtual {v3, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@39
    move-result-object v2

    #@3a
    .line 2923
    .local v2, "m":Landroid/os/Message;
    iget-object v3, v0, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mHandler:Landroid/os/Handler;

    #@3c
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 2917
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .end local v0    # "arci":Landroid/media/AudioManager$AudioRecordingCallbackInfo;
    .end local v1    # "i":I
    :cond_1
    monitor-exit v4

    #@43
    .line 2914
    return-void

    #@44
    .line 2915
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v4

    #@46
    throw v3
.end method
