.class Landroid/media/AudioManager$3;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
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
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5869
    iput-object p1, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 9
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .line 5873
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    if-eqz p2, :cond_5

    .line 5874
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 5876
    :cond_5
    iget-object v0, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5877
    :try_start_c
    iget-object v1, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 5878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget-object v2, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 5879
    iget-object v2, p0, Landroid/media/AudioManager$3;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    .line 5880
    .local v2, "arci":Landroid/media/AudioManager$AudioPlaybackCallbackInfo;
    iget-object v3, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_44

    .line 5881
    iget-object v3, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    iget-object v5, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-direct {v4, v5, p1}, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Ljava/util/List;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5884
    .local v3, "m":Landroid/os/Message;
    iget-object v4, v2, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5878
    .end local v2    # "arci":Landroid/media/AudioManager$AudioPlaybackCallbackInfo;
    .end local v3    # "m":Landroid/os/Message;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 5888
    .end local v1    # "i":I
    :cond_47
    monitor-exit v0

    .line 5889
    return-void

    .line 5888
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw v1
.end method
