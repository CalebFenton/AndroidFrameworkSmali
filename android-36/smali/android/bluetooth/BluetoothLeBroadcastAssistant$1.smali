.class Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;
.super Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;
.source "BluetoothLeBroadcastAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveStateChanged$11(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "state"    # Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 241
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 114
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStartFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStarted$0(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 102
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStarted(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStopFailed$3(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 138
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStopFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSearchStopped$2(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "reason"    # I

    .line 126
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStopped(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceAddFailed$6(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "reason"    # I

    .line 175
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceAdded$5(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 162
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceFound$4(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 150
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceLost$12(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "broadcastId"    # I

    .line 253
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceLost(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceModified$7(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 187
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceModifyFailed$8(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 200
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceRemoveFailed$10(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 225
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic blacklist lambda$onSourceRemoved$9(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 212
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method


# virtual methods
.method public blacklist onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "state"    # Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 236
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 239
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 240
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 242
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 243
    :cond_30
    return-void
.end method

.method public blacklist onSearchStartFailed(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 110
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 113
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 114
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 115
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 116
    :cond_30
    return-void
.end method

.method public blacklist onSearchStarted(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 98
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 101
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 102
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda12;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda12;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 104
    :cond_30
    return-void
.end method

.method public blacklist onSearchStopFailed(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 134
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 137
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 138
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda9;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 140
    :cond_30
    return-void
.end method

.method public blacklist onSearchStopped(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 122
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 125
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 126
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda10;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 127
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 128
    :cond_30
    return-void
.end method

.method public blacklist onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "reason"    # I

    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 174
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 175
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 176
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 177
    :cond_30
    return-void
.end method

.method public blacklist onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 158
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 161
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 162
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 164
    :cond_30
    return-void
.end method

.method public blacklist onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 7
    .param p1, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 146
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 149
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 150
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda11;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 152
    :cond_30
    return-void
.end method

.method public blacklist onSourceLost(I)V
    .registers 7
    .param p1, "broadcastId"    # I

    .line 249
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 252
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 253
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 254
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 255
    :cond_30
    return-void
.end method

.method public blacklist onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 183
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 186
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 187
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 188
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 189
    :cond_30
    return-void
.end method

.method public blacklist onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 195
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 198
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 199
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 202
    :cond_30
    return-void
.end method

.method public blacklist onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 220
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 222
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 223
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 224
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 226
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 227
    :cond_30
    return-void
.end method

.method public blacklist onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I

    .line 208
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1;->this$0:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcastAssistant;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    nop

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 211
    .local v2, "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 212
    .local v3, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$1$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 213
    .end local v1    # "callbackExecutorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "callback":Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_e

    .line 214
    :cond_30
    return-void
.end method
