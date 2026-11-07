.class Landroid/bluetooth/BluetoothLeBroadcast$1;
.super Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;
.source "BluetoothLeBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeBroadcast;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcast;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeBroadcast;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastMetadataChanged$8(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "broadcastId"    # I
    .param p2, "metadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 165
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I

    .line 92
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStartFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStarted$0(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 82
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStarted(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStopFailed$3(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I

    .line 112
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStopFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastStopped$2(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 102
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStopped(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastUpdateFailed$7(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 153
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastUpdateFailed(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onBroadcastUpdated$6(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 142
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastUpdated(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onPlaybackStarted$4(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 122
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onPlaybackStarted(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onPlaybackStopped$5(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 132
    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onPlaybackStopped(II)V

    return-void
.end method


# virtual methods
.method public blacklist onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 8
    .param p1, "broadcastId"    # I
    .param p2, "metadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 161
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 163
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 164
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 167
    :cond_2f
    return-void
.end method

.method public blacklist onBroadcastStartFailed(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 89
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 91
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 92
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 94
    :cond_2f
    return-void
.end method

.method public blacklist onBroadcastStarted(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 79
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 81
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 82
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 84
    :cond_2f
    return-void
.end method

.method public blacklist onBroadcastStopFailed(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 109
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 111
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 112
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 114
    :cond_2f
    return-void
.end method

.method public blacklist onBroadcastStopped(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 99
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 101
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 102
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 104
    :cond_2f
    return-void
.end method

.method public blacklist onBroadcastUpdateFailed(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 149
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 151
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 152
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 154
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 155
    :cond_2f
    return-void
.end method

.method public blacklist onBroadcastUpdated(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 139
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 141
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 142
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 144
    :cond_2f
    return-void
.end method

.method public blacklist onPlaybackStarted(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 119
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 121
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 122
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 124
    :cond_2f
    return-void
.end method

.method public blacklist onPlaybackStopped(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I

    .line 129
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    .line 131
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 132
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcast$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 134
    :cond_2f
    return-void
.end method
