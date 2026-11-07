.class public final Landroid/ranging/RangingSessionManager;
.super Landroid/ranging/IRangingCallbacks$Stub;
.source "RangingSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingSessionManager$OobSendDataListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RangingSessionManager"

.field private static blacklist sSessionIdCounter:J


# instance fields
.field private blacklist mOobListenerRegistered:Z

.field private final blacklist mRangingAdapter:Landroid/ranging/IRangingAdapter;

.field private final blacklist mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/ranging/SessionHandle;",
            "Landroid/ranging/RangingSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessions(Landroid/ranging/RangingSessionManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 36
    const-wide/16 v0, 0x1

    sput-wide v0, Landroid/ranging/RangingSessionManager;->sSessionIdCounter:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/ranging/IRangingAdapter;)V
    .registers 3
    .param p1, "rangingAdapter"    # Landroid/ranging/IRangingAdapter;

    .line 41
    invoke-direct {p0}, Landroid/ranging/IRangingCallbacks$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/ranging/RangingSessionManager;->mOobListenerRegistered:Z

    .line 42
    iput-object p1, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method blacklist createRangingSessionInstance(Landroid/content/AttributionSource;Landroid/ranging/RangingSession$Callback;Ljava/util/concurrent/Executor;)Landroid/ranging/RangingSession;
    .registers 15
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "callback"    # Landroid/ranging/RangingSession$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 61
    new-instance v0, Landroid/ranging/SessionHandle;

    sget-wide v1, Landroid/ranging/RangingSessionManager;->sSessionIdCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Landroid/ranging/RangingSessionManager;->sSessionIdCounter:J

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/ranging/SessionHandle;-><init>(JLandroid/content/AttributionSource;I)V

    move-object v7, v0

    .line 63
    .local v7, "sessionHandle":Landroid/ranging/SessionHandle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create ranging session - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v4, Landroid/ranging/RangingSession;

    iget-object v8, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    move-object v5, p0

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "callback":Landroid/ranging/RangingSession$Callback;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .local v6, "attributionSource":Landroid/content/AttributionSource;
    .local v9, "callback":Landroid/ranging/RangingSession$Callback;
    .local v10, "executor":Ljava/util/concurrent/Executor;
    invoke-direct/range {v4 .. v10}, Landroid/ranging/RangingSession;-><init>(Landroid/ranging/RangingSessionManager;Landroid/content/AttributionSource;Landroid/ranging/SessionHandle;Landroid/ranging/IRangingAdapter;Landroid/ranging/RangingSession$Callback;Ljava/util/concurrent/Executor;)V

    .line 66
    .local v4, "rangingSession":Landroid/ranging/RangingSession;
    iget-object p1, v5, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {p1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v4
.end method

.method public blacklist deviceOobClosed(Landroid/ranging/oob/OobHandle;)V
    .registers 5
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceOobClosed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_18
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-interface {v0, p1}, Landroid/ranging/IRangingAdapter;->deviceOobClosed(Landroid/ranging/oob/OobHandle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 185
    goto :goto_24

    .line 183
    :catch_1e
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed mRangingAdapter.deviceOobClosed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public blacklist deviceOobDisconnected(Landroid/ranging/oob/OobHandle;)V
    .registers 5
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceOobReconnected - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_18
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-interface {v0, p1}, Landroid/ranging/IRangingAdapter;->deviceOobDisconnected(Landroid/ranging/oob/OobHandle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 170
    goto :goto_24

    .line 168
    :catch_1e
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed mRangingAdapter.deviceOobDisconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public blacklist deviceOobReconnected(Landroid/ranging/oob/OobHandle;)V
    .registers 5
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceOobReconnected - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_18
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-interface {v0, p1}, Landroid/ranging/IRangingAdapter;->deviceOobReconnected(Landroid/ranging/oob/OobHandle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 156
    goto :goto_24

    .line 154
    :catch_1e
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed mRangingAdapter.deviceOobReconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public blacklist onClosed(Landroid/ranging/SessionHandle;I)V
    .registers 5
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "reason"    # I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 124
    const-string v0, "SessionHandle not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 127
    :cond_30
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingSession;

    invoke-virtual {v0, p2}, Landroid/ranging/RangingSession;->onClosed(I)V

    .line 128
    return-void
.end method

.method public blacklist onOpenFailed(Landroid/ranging/SessionHandle;I)V
    .registers 5
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "reason"    # I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpenFailed - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 84
    const-string v0, "SessionHandle not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 87
    :cond_30
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingSession;

    invoke-virtual {v0, p2}, Landroid/ranging/RangingSession;->onOpenFailed(I)V

    .line 88
    return-void
.end method

.method public blacklist onOpened(Landroid/ranging/SessionHandle;)V
    .registers 4
    .param p1, "session"    # Landroid/ranging/SessionHandle;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpened - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 74
    const-string v0, "SessionHandle not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_26
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingSession;

    invoke-virtual {v0}, Landroid/ranging/RangingSession;->onOpened()V

    .line 78
    return-void
.end method

.method public blacklist onResults(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V
    .registers 6
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "peer"    # Landroid/ranging/RangingDevice;
    .param p3, "data"    # Landroid/ranging/RangingData;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResults - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/ranging/RangingDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 104
    const-string v0, "SessionHandle not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_34
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingSession;

    invoke-virtual {v0, p2, p3}, Landroid/ranging/RangingSession;->onResults(Landroid/ranging/RangingDevice;Landroid/ranging/RangingData;)V

    .line 108
    return-void
.end method

.method public blacklist onStarted(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V
    .registers 6
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "peer"    # Landroid/ranging/RangingDevice;
    .param p3, "technology"    # I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStarted - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 94
    const-string v0, "SessionHandle not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_30
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingSession;

    invoke-virtual {v0, p2, p3}, Landroid/ranging/RangingSession;->onStarted(Landroid/ranging/RangingDevice;I)V

    .line 98
    return-void
.end method

.method public blacklist onStopped(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;I)V
    .registers 6
    .param p1, "session"    # Landroid/ranging/SessionHandle;
    .param p2, "peer"    # Landroid/ranging/RangingDevice;
    .param p3, "technology"    # I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopped - sessionHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 114
    const-string v0, "SessionHandle not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_30
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/RangingSession;

    invoke-virtual {v0, p2, p3}, Landroid/ranging/RangingSession;->onStopped(Landroid/ranging/RangingDevice;I)V

    .line 118
    return-void
.end method

.method public blacklist oobDataReceived(Landroid/ranging/oob/OobHandle;[B)V
    .registers 6
    .param p1, "oobHandle"    # Landroid/ranging/oob/OobHandle;
    .param p2, "data"    # [B

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oobDataReceived - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RangingSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_18
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    invoke-interface {v0, p1, p2}, Landroid/ranging/IRangingAdapter;->oobDataReceived(Landroid/ranging/oob/OobHandle;[B)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 142
    goto :goto_24

    .line 140
    :catch_1e
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed mRangingAdapter.oobDataReceived"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public blacklist registerOobSendDataListener()V
    .registers 4

    .line 49
    iget-boolean v0, p0, Landroid/ranging/RangingSessionManager;->mOobListenerRegistered:Z

    if-nez v0, :cond_1a

    .line 51
    :try_start_4
    iget-object v0, p0, Landroid/ranging/RangingSessionManager;->mRangingAdapter:Landroid/ranging/IRangingAdapter;

    new-instance v1, Landroid/ranging/RangingSessionManager$OobSendDataListener;

    invoke-direct {v1, p0}, Landroid/ranging/RangingSessionManager$OobSendDataListener;-><init>(Landroid/ranging/RangingSessionManager;)V

    invoke-interface {v0, v1}, Landroid/ranging/IRangingAdapter;->registerOobSendDataListener(Landroid/ranging/oob/IOobSendDataListener;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/ranging/RangingSessionManager;->mOobListenerRegistered:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 55
    goto :goto_1a

    .line 53
    :catch_12
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RangingSessionManager"

    const-string v2, "Failed to register OobSendDataListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method
