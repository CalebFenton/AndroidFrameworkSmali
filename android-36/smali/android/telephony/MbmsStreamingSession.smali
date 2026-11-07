.class public Landroid/telephony/MbmsStreamingSession;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsStreamingSession"

.field public static final whitelist MBMS_STREAMING_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsStreaming"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MBMS_STREAMING_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-streaming-service-override"

.field private static greylist-max-o sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private greylist-max-o mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

.field private greylist-max-o mKnownActiveStreamingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/mbms/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsStreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private greylist-max-o mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/MbmsStreamingSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsStreamingSession;)I
    .registers 1

    iget p0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscriptionId"    # I
    .param p4, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    new-instance v0, Landroid/telephony/MbmsStreamingSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$1;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 94
    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    .line 95
    iput p3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 96
    new-instance v0, Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 97
    return-void
.end method

.method private greylist-max-o bindAndInitialize()I
    .registers 4

    .line 292
    new-instance v0, Landroid/telephony/MbmsStreamingSession$3;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$3;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 354
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsStreaming"

    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriptionId"    # I
    .param p3, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 126
    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 129
    new-instance v0, Landroid/telephony/MbmsStreamingSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsStreamingSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)V

    .line 132
    .local v0, "session":Landroid/telephony/MbmsStreamingSession;
    invoke-direct {v0}, Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I

    move-result v1

    .line 133
    .local v1, "result":I
    if-eqz v1, :cond_24

    .line 134
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    new-instance v2, Landroid/telephony/MbmsStreamingSession$2;

    invoke-direct {v2, p3, v1}, Landroid/telephony/MbmsStreamingSession$2;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    const/4 v2, 0x0

    return-object v2

    .line 143
    :cond_24
    return-object v0

    .line 127
    .end local v0    # "session":Landroid/telephony/MbmsStreamingSession;
    .end local v1    # "result":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create two instances of MbmsStreamingSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    .line 152
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsStreamingSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsStreamingSessionCallback;)Landroid/telephony/MbmsStreamingSession;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o sendErrorToApp(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 359
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 362
    goto :goto_7

    .line 360
    :catch_6
    move-exception v0

    .line 363
    :goto_7
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 172
    .local v2, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v2, :cond_3d

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_11

    goto :goto_3d

    .line 176
    :cond_11
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->dispose(I)V

    .line 177
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/mbms/StreamingService;

    .line 178
    .local v4, "s":Landroid/telephony/mbms/StreamingService;
    invoke-virtual {v4}, Landroid/telephony/mbms/StreamingService;->getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->stop()V

    .line 179
    .end local v4    # "s":Landroid/telephony/mbms/StreamingService;
    goto :goto_1c

    .line 180
    :cond_30
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 181
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3c} :catch_62
    .catchall {:try_start_2 .. :try_end_3c} :catchall_4f

    .end local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    goto :goto_63

    .line 185
    .restart local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :cond_3d
    :goto_3d
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iput-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 174
    return-void

    .line 185
    .end local v2    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iput-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 189
    throw v2

    .line 182
    :catch_62
    move-exception v2

    .line 185
    :goto_63
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 186
    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iput-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 189
    nop

    .line 190
    return-void
.end method

.method public greylist-max-o onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V
    .registers 3
    .param p1, "service"    # Landroid/telephony/mbms/StreamingService;

    .line 288
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public whitelist requestUpdateStreamingServices(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 208
    .local v0, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v0, :cond_3d

    .line 212
    const/4 v1, 0x0

    :try_start_b
    iget v2, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v2

    .line 214
    .local v2, "returnCode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 219
    if-eqz v2, :cond_19

    .line 220
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 227
    .end local v2    # "returnCode":I
    :cond_19
    goto :goto_3c

    .line 216
    .restart local v2    # "returnCode":I
    :cond_1a
    invoke-virtual {p0}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 217
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .end local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .end local p1    # "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_25} :catch_25

    .line 222
    .end local v2    # "returnCode":I
    .restart local v0    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .restart local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .restart local p1    # "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_25
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MbmsStreamingSession"

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 225
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 228
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void

    .line 209
    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startStreaming(Landroid/telephony/mbms/StreamingServiceInfo;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/StreamingServiceCallback;)Landroid/telephony/mbms/StreamingService;
    .registers 12
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/mbms/StreamingServiceCallback;

    .line 251
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 252
    .local v3, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-eqz v3, :cond_57

    .line 256
    new-instance v6, Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {v6, p3, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;-><init>(Landroid/telephony/mbms/StreamingServiceCallback;Ljava/util/concurrent/Executor;)V

    .line 259
    .local v6, "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    new-instance v1, Landroid/telephony/mbms/StreamingService;

    iget v2, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .local v5, "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    invoke-direct/range {v1 .. v6}, Landroid/telephony/mbms/StreamingService;-><init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    .line 261
    .local v1, "serviceForApp":Landroid/telephony/mbms/StreamingService;
    iget-object p1, v4, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 p1, 0x0

    :try_start_1f
    iget v0, v4, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 265
    invoke-virtual {v5}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-interface {v3, v0, v2, v6}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v0

    .line 266
    .local v0, "returnCode":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_34

    .line 271
    if-eqz v0, :cond_32

    .line 272
    invoke-direct {p0, v0, p1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 273
    return-object p1

    .line 281
    .end local v0    # "returnCode":I
    :cond_32
    nop

    .line 283
    return-object v1

    .line 268
    .restart local v0    # "returnCode":I
    :cond_34
    invoke-virtual {p0}, Landroid/telephony/MbmsStreamingSession;->close()V

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v7, "Middleware must not return an unknown error code"

    invoke-direct {v2, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .end local v3    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .end local v5    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .end local v6    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .end local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/mbms/StreamingServiceCallback;
    throw v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3f} :catch_3f

    .line 275
    .end local v0    # "returnCode":I
    .restart local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .restart local v3    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .restart local v5    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .restart local v6    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .restart local p0    # "this":Landroid/telephony/MbmsStreamingSession;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/mbms/StreamingServiceCallback;
    :catch_3f
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MbmsStreamingSession"

    const-string v7, "Remote process died"

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, v4, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 278
    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 280
    return-object p1

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "serviceForApp":Landroid/telephony/mbms/StreamingService;
    .end local v5    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .end local v6    # "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .restart local p1    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    :cond_57
    move-object v5, p1

    .end local p1    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    .restart local v5    # "serviceInfo":Landroid/telephony/mbms/StreamingServiceInfo;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Middleware not yet bound"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
