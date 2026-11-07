.class final Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
.super Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;
.source "LoudnessCodecDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/LoudnessCodecDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoudnessCodecUpdatesDispatcherStub"
.end annotation


# static fields
.field private static blacklist sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;


# instance fields
.field private final blacklist mConfiguratorListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;",
            "Landroid/media/LoudnessCodecController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$OTkOqPriJqnS11TvsEiiJrHQCyM(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->lambda$dispatchLoudnessCodecParameterChange$2(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;-><init>()V

    .line 57
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method private static blacklist filterLoudnessParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "filteredBundle":Landroid/os/Bundle;
    const-string v1, "aac-target-ref-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 137
    nop

    .line 138
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_15
    const-string v1, "aac-drc-heavy-compression"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 141
    nop

    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    :cond_25
    const-string v1, "aac-drc-effect-type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 145
    nop

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    :cond_35
    const-string v1, "aac-drc-boost-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 149
    nop

    .line 150
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    :cond_45
    const-string v1, "aac-drc-cut-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 153
    nop

    .line 154
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    :cond_55
    const-string v1, "aac-drc-album-mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 157
    nop

    .line 158
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_65
    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    .registers 2

    const-class v0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    if-nez v1, :cond_e

    .line 68
    new-instance v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    invoke-direct {v1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;-><init>()V

    sput-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    .line 70
    :cond_e
    sget-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static synthetic blacklist lambda$addLoudnessCodecListener$3(Landroid/media/CallbackUtil$DispatcherStub;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1
    .param p0, "dispatcher"    # Landroid/media/CallbackUtil$DispatcherStub;

    .line 174
    return-object p0
.end method

.method static synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$0(Landroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Ljava/util/Map$Entry;)V
    .registers 14
    .param p0, "params"    # Landroid/os/PersistableBundle;
    .param p1, "l"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    .param p2, "mcEntry"    # Ljava/util/Map$Entry;

    .line 87
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/LoudnessCodecInfo;

    .line 88
    .local v0, "codecInfo":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v0}, Landroid/media/LoudnessCodecInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "infoKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 91
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    move-object v2, v3

    .line 94
    :cond_1f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 95
    .local v3, "mediaCodecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/media/MediaCodec;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaCodec;

    .line 96
    .local v5, "mediaCodec":Landroid/media/MediaCodec;
    nop

    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "mediaCodecKey":Ljava/lang/String;
    if-nez v2, :cond_47

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 99
    goto :goto_29

    .line 101
    :cond_47
    const/4 v7, 0x0

    .line 102
    .local v7, "canBreak":Z
    if-nez v2, :cond_55

    .line 104
    new-instance v8, Landroid/os/Bundle;

    .line 105
    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    move-object v2, v8

    .line 106
    const/4 v7, 0x1

    .line 108
    :cond_55
    nop

    .line 110
    invoke-interface {p1, v5, v2}, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;->onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 109
    invoke-static {v8}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->filterLoudnessParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v8

    if-nez v8, :cond_81

    .line 115
    :try_start_64
    invoke-virtual {v5, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_67
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_67} :catch_68

    .line 119
    goto :goto_81

    .line 116
    :catch_68
    move-exception v8

    .line 117
    .local v8, "e":Ljava/lang/IllegalStateException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot set loudness bundle on media codec "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LoudnessCodecDispatcher"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_81
    :goto_81
    if-eqz v7, :cond_84

    .line 122
    goto :goto_85

    .line 124
    .end local v5    # "mediaCodec":Landroid/media/MediaCodec;
    .end local v6    # "mediaCodecKey":Ljava/lang/String;
    .end local v7    # "canBreak":Z
    :cond_84
    goto :goto_29

    .line 125
    :cond_85
    :goto_85
    return-void
.end method

.method static synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$1(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;)Landroid/media/LoudnessCodecController;
    .registers 5
    .param p0, "sessionId"    # I
    .param p1, "params"    # Landroid/os/PersistableBundle;
    .param p2, "l"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    .param p3, "lcConfig"    # Landroid/media/LoudnessCodecController;

    .line 85
    invoke-virtual {p3}, Landroid/media/LoudnessCodecController;->getSessionId()I

    move-result v0

    if-ne v0, p0, :cond_e

    .line 86
    new-instance v0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda2;-><init>(Landroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    invoke-virtual {p3, v0}, Landroid/media/LoudnessCodecController;->mediaCodecsConsume(Ljava/util/function/Consumer;)V

    .line 127
    :cond_e
    return-object p3
.end method

.method private synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$2(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;
    .param p3, "listener"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    .line 82
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    new-instance v2, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;-><init>(ILandroid/os/PersistableBundle;)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method blacklist addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 8
    .param p1, "dispatcher"    # Landroid/media/CallbackUtil$DispatcherStub;
    .param p2, "configurator"    # Landroid/media/LoudnessCodecController;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    .line 168
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "addLoudnessCodecListener"

    new-instance v2, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/CallbackUtil$DispatcherStub;)V

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 175
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_18
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    invoke-virtual {v1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 81
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 131
    return-void
.end method

.method blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .registers 7
    .param p1, "configurator"    # Landroid/media/LoudnessCodecController;

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "listenerToRemove":Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_7
    iget-object v2, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    .line 186
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 187
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;>;>;"
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 188
    nop

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 190
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2f

    .line 191
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    .line 192
    .local v4, "listener":Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 193
    move-object v0, v4

    .line 194
    goto :goto_30

    .line 196
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;>;"
    .end local v4    # "listener":Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
    :cond_2f
    goto :goto_11

    .line 197
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;>;>;"
    :cond_30
    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3b

    .line 198
    if-eqz v0, :cond_3a

    .line 199
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v2, "removeLoudnessCodecListener"

    invoke-virtual {v1, v0, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_3a
    return-void

    .line 197
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method
