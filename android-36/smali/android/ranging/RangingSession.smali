.class public final Landroid/ranging/RangingSession;
.super Ljava/lang/Object;
.source "RangingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingSession$Callback;,
        Landroid/ranging/RangingSession$TransportHandleReceiveCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RangingSession"


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallback:Landroid/ranging/RangingSession$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRangingAdapter:Landroid/ranging/IRangingAdapter;

.field private final blacklist mRangingSessionManager:Landroid/ranging/RangingSessionManager;

.field private final blacklist mSessionHandle:Landroid/ranging/SessionHandle;

.field private final blacklist mTransportHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/ranging/RangingDevice;",
            "Landroid/ranging/oob/TransportHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$5PglmuMCbAMZAmFECuVUwXgYiVo(Landroid/ranging/RangingSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/ranging/RangingSession;->lambda$onOpenFailed$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CdBf3vlZ1gRgiy0VfN6CAFAk0dw(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/ranging/RangingSession;->lambda$onStopped$3(Landroid/ranging/RangingDevice;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SHtKMx1zKaouTnuY57n7ZfQDT_A(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/ranging/RangingSession;->lambda$onStarted$1(Landroid/ranging/RangingDevice;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$peTSJ1xDCzA7ANsIwLgd6KOxHcE(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/ranging/RangingSession;->lambda$onResults$2(Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uSQGcB_vprxH_Cj7iMW0maBkc4w(Landroid/ranging/RangingSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/ranging/RangingSession;->lambda$onClosed$4(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingSessionManager(Landroid/ranging/RangingSession;)Landroid/ranging/RangingSessionManager;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingSession;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionHandle(Landroid/ranging/RangingSession;)Landroid/ranging/SessionHandle;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/ranging/RangingSessionManager;Landroid/content/AttributionSource;Landroid/ranging/SessionHandle;Landroid/ranging/IRangingAdapter;Landroid/ranging/RangingSession$Callback;Ljava/util/concurrent/Executor;)V
    .registers 8
    .param p1, "rangingSessionManager"    # Landroid/ranging/RangingSessionManager;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "sessionHandle"    # Landroid/ranging/SessionHandle;
    .param p4, "rangingAdapter"    # Landroid/ranging/IRangingAdapter;
    .param p5, "callback"    # Landroid/ranging/RangingSession$Callback;
    .param p6, "executor"    # Ljava/util/concurrent/Executor;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/ranging/RangingSession;->mTransportHandles:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Landroid/ranging/RangingSession;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    .line 82
    iput-object p2, p0, Landroid/ranging/RangingSession;->mAttributionSource:Landroid/content/AttributionSource;

    .line 83
    iput-object p3, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    .line 84
    iput-object p4, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    .line 85
    iput-object p5, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    .line 86
    iput-object p6, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 87
    return-void
.end method

.method private synthetic blacklist lambda$onClosed$4(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 270
    iget-object v0, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/ranging/RangingSession$Callback;->onClosed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onOpenFailed$0(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 242
    iget-object v0, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-interface {v0, p1}, Landroid/ranging/RangingSession$Callback;->onOpenFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onResults$2(Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .registers 4
    .param p1, "peer"    # Landroid/ranging/RangingDevice;
    .param p2, "data"    # Landroid/ranging/RangingData;

    .line 256
    iget-object v0, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/ranging/RangingSession$Callback;->onResults(Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStarted$1(Landroid/ranging/RangingDevice;I)V
    .registers 4
    .param p1, "peer"    # Landroid/ranging/RangingDevice;
    .param p2, "technology"    # I

    .line 249
    iget-object v0, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/ranging/RangingSession$Callback;->onStarted(Landroid/ranging/RangingDevice;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStopped$3(Landroid/ranging/RangingDevice;I)V
    .registers 4
    .param p1, "peer"    # Landroid/ranging/RangingDevice;
    .param p2, "technology"    # I

    .line 263
    iget-object v0, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-interface {v0, p1, p2}, Landroid/ranging/RangingSession$Callback;->onStopped(Landroid/ranging/RangingDevice;I)V

    return-void
.end method

.method private blacklist setupTransportHandles(Landroid/ranging/RangingPreference;)V
    .registers 9
    .param p1, "rangingPreference"    # Landroid/ranging/RangingPreference;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "deviceHandleList":Ljava/util/List;, "Ljava/util/List<Landroid/ranging/oob/DeviceHandle;>;"
    invoke-virtual {p1}, Landroid/ranging/RangingPreference;->getRangingParams()Landroid/ranging/RangingConfig;

    move-result-object v1

    instance-of v1, v1, Landroid/ranging/oob/OobInitiatorRangingConfig;

    if-eqz v1, :cond_1c

    .line 126
    nop

    .line 127
    invoke-virtual {p1}, Landroid/ranging/RangingPreference;->getRangingParams()Landroid/ranging/RangingConfig;

    move-result-object v1

    check-cast v1, Landroid/ranging/oob/OobInitiatorRangingConfig;

    invoke-virtual {v1}, Landroid/ranging/oob/OobInitiatorRangingConfig;->getDeviceHandles()Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 128
    :cond_1c
    invoke-virtual {p1}, Landroid/ranging/RangingPreference;->getRangingParams()Landroid/ranging/RangingConfig;

    move-result-object v1

    instance-of v1, v1, Landroid/ranging/oob/OobResponderRangingConfig;

    if-eqz v1, :cond_32

    .line 129
    nop

    .line 130
    invoke-virtual {p1}, Landroid/ranging/RangingPreference;->getRangingParams()Landroid/ranging/RangingConfig;

    move-result-object v1

    check-cast v1, Landroid/ranging/oob/OobResponderRangingConfig;

    invoke-virtual {v1}, Landroid/ranging/oob/OobResponderRangingConfig;->getDeviceHandle()Landroid/ranging/oob/DeviceHandle;

    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/ranging/oob/DeviceHandle;

    .line 133
    .local v2, "deviceHandle":Landroid/ranging/oob/DeviceHandle;
    new-instance v3, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;

    .line 134
    invoke-virtual {v2}, Landroid/ranging/oob/DeviceHandle;->getRangingDevice()Landroid/ranging/RangingDevice;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;-><init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;)V

    .line 135
    .local v3, "receiveCallback":Landroid/ranging/RangingSession$TransportHandleReceiveCallback;
    invoke-virtual {v2}, Landroid/ranging/oob/DeviceHandle;->getTransportHandle()Landroid/ranging/oob/TransportHandle;

    move-result-object v4

    .line 136
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 135
    invoke-interface {v4, v5, v3}, Landroid/ranging/oob/TransportHandle;->registerReceiveCallback(Ljava/util/concurrent/Executor;Landroid/ranging/oob/TransportHandle$ReceiveCallback;)V

    .line 137
    iget-object v4, p0, Landroid/ranging/RangingSession;->mTransportHandles:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/ranging/oob/DeviceHandle;->getRangingDevice()Landroid/ranging/RangingDevice;

    move-result-object v5

    .line 138
    invoke-virtual {v2}, Landroid/ranging/oob/DeviceHandle;->getTransportHandle()Landroid/ranging/oob/TransportHandle;

    move-result-object v6

    .line 137
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v2    # "deviceHandle":Landroid/ranging/oob/DeviceHandle;
    .end local v3    # "receiveCallback":Landroid/ranging/RangingSession$TransportHandleReceiveCallback;
    goto :goto_36

    .line 140
    :cond_64
    return-void
.end method


# virtual methods
.method public whitelist addDeviceToRangingSession(Landroid/ranging/RangingConfig;)V
    .registers 5
    .param p1, "deviceRangingParams"    # Landroid/ranging/RangingConfig;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Add device - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_1a
    instance-of v0, p1, Landroid/ranging/raw/RawResponderRangingConfig;

    if-eqz v0, :cond_29

    .line 164
    iget-object v0, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    move-object v2, p1

    check-cast v2, Landroid/ranging/raw/RawResponderRangingConfig;

    invoke-interface {v0, v1, v2}, Landroid/ranging/IRangingAdapter;->addRawDevice(Landroid/ranging/SessionHandle;Landroid/ranging/raw/RawResponderRangingConfig;)V

    goto :goto_2f

    .line 167
    :cond_29
    iget-object v0, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/ranging/RangingSession$Callback;->onOpenFailed(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2f} :catch_31

    .line 171
    :goto_2f
    nop

    .line 172
    return-void

    .line 169
    :catch_31
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 287
    invoke-virtual {p0}, Landroid/ranging/RangingSession;->stop()V

    .line 288
    return-void
.end method

.method public blacklist onClosed(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 270
    iget-object v0, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/ranging/RangingSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda0;-><init>(Landroid/ranging/RangingSession;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public blacklist onOpenFailed(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 242
    iget-object v0, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda6;-><init>(Landroid/ranging/RangingSession;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public blacklist onOpened()V
    .registers 4

    .line 235
    iget-object v0, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/ranging/RangingSession$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda3;-><init>(Landroid/ranging/RangingSession$Callback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public blacklist onResults(Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .registers 5
    .param p1, "peer"    # Landroid/ranging/RangingDevice;
    .param p2, "data"    # Landroid/ranging/RangingData;

    .line 256
    iget-object v0, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda1;-><init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public blacklist onStarted(Landroid/ranging/RangingDevice;I)V
    .registers 5
    .param p1, "peer"    # Landroid/ranging/RangingDevice;
    .param p2, "technology"    # I

    .line 249
    iget-object v0, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda5;-><init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method public blacklist onStopped(Landroid/ranging/RangingDevice;I)V
    .registers 5
    .param p1, "peer"    # Landroid/ranging/RangingDevice;
    .param p2, "technology"    # I

    .line 263
    iget-object v0, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/ranging/RangingSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda4;-><init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public whitelist reconfigureRangingInterval(I)V
    .registers 4
    .param p1, "intervalSkipCount"    # I

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Reconfiguring ranging interval - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_1a
    iget-object v0, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/ranging/IRangingAdapter;->reconfigureRangingInterval(Landroid/ranging/SessionHandle;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_23

    .line 212
    nop

    .line 213
    return-void

    .line 210
    :catch_23
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeDeviceFromRangingSession(Landroid/ranging/RangingDevice;)V
    .registers 4
    .param p1, "rangingDevice"    # Landroid/ranging/RangingDevice;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Remove device - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_1a
    iget-object v0, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-interface {v0, v1, p1}, Landroid/ranging/IRangingAdapter;->removeDevice(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_23

    .line 195
    nop

    .line 196
    return-void

    .line 193
    :catch_23
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist sendOobData(Landroid/ranging/RangingDevice;[B)V
    .registers 5
    .param p1, "toDevice"    # Landroid/ranging/RangingDevice;
    .param p2, "data"    # [B

    .line 277
    iget-object v0, p0, Landroid/ranging/RangingSession;->mTransportHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportHandle not found for session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2c
    iget-object v0, p0, Landroid/ranging/RangingSession;->mTransportHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/oob/TransportHandle;

    invoke-interface {v0, p2}, Landroid/ranging/oob/TransportHandle;->sendData([B)V

    .line 282
    return-void
.end method

.method public whitelist start(Landroid/ranging/RangingPreference;)Landroid/os/CancellationSignal;
    .registers 6
    .param p1, "rangingPreference"    # Landroid/ranging/RangingPreference;

    .line 105
    invoke-virtual {p1}, Landroid/ranging/RangingPreference;->getRangingParams()Landroid/ranging/RangingConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/ranging/RangingConfig;->getRangingSessionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 107
    iget-object v0, p0, Landroid/ranging/RangingSession;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    invoke-virtual {v0}, Landroid/ranging/RangingSessionManager;->registerOobSendDataListener()V

    .line 108
    invoke-direct {p0, p1}, Landroid/ranging/RangingSession;->setupTransportHandles(Landroid/ranging/RangingPreference;)V

    .line 110
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start ranging - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_2d
    iget-object v0, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    iget-object v1, p0, Landroid/ranging/RangingSession;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    iget-object v3, p0, Landroid/ranging/RangingSession;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/ranging/IRangingAdapter;->startRanging(Landroid/content/AttributionSource;Landroid/ranging/SessionHandle;Landroid/ranging/RangingPreference;Landroid/ranging/IRangingCallbacks;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_47

    .line 116
    nop

    .line 117
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 118
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    new-instance v1, Landroid/ranging/RangingSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/ranging/RangingSession$$ExternalSyntheticLambda2;-><init>(Landroid/ranging/RangingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 120
    return-object v0

    .line 114
    .end local v0    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_47
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stop()V
    .registers 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop ranging - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_1a
    iget-object v0, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-interface {v0, v1}, Landroid/ranging/IRangingAdapter;->stopRanging(Landroid/ranging/SessionHandle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_23

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catch_23
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingSession{ mSessionHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mSessionHandle:Landroid/ranging/SessionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingSessionManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mRangingSessionManager:Landroid/ranging/RangingSessionManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mCallback:Landroid/ranging/RangingSession$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportHandles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession;->mTransportHandles:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
