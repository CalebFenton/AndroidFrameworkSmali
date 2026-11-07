.class public Landroid/telephony/MbmsGroupCallSession;
.super Ljava/lang/Object;
.source "MbmsGroupCallSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "MbmsGroupCallSession"

.field public static final whitelist MBMS_GROUP_CALL_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsGroupCall"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MBMS_GROUP_CALL_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-group-call-service-override"

.field private static blacklist sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

.field private blacklist mKnownActiveGroupCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/mbms/GroupCall;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsGroupCallService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/MbmsGroupCallSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsGroupCallSession;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsGroupCallSession;)Landroid/telephony/mbms/InternalGroupCallSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/telephony/MbmsGroupCallSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsGroupCallSession;)I
    .registers 1

    iget p0, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsGroupCallSessionCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscriptionId"    # I
    .param p4, "callback"    # Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    new-instance v0, Landroid/telephony/MbmsGroupCallSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsGroupCallSession$1;-><init>(Landroid/telephony/MbmsGroupCallSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    .line 92
    iput-object p1, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    .line 93
    iput p3, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    .line 94
    new-instance v0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;-><init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    .line 95
    return-void
.end method

.method private blacklist bindAndInitialize()I
    .registers 4

    .line 250
    new-instance v0, Landroid/telephony/MbmsGroupCallSession$3;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsGroupCallSession$3;-><init>(Landroid/telephony/MbmsGroupCallSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 313
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsGroupCall"

    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static whitelist create(Landroid/content/Context;ILjava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscriptionId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    .line 121
    sget-object v0, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 124
    new-instance v0, Landroid/telephony/MbmsGroupCallSession;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/telephony/MbmsGroupCallSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsGroupCallSessionCallback;)V

    .line 127
    .local v0, "session":Landroid/telephony/MbmsGroupCallSession;
    invoke-direct {v0}, Landroid/telephony/MbmsGroupCallSession;->bindAndInitialize()I

    move-result v1

    .line 128
    .local v1, "result":I
    if-eqz v1, :cond_24

    .line 129
    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    new-instance v2, Landroid/telephony/MbmsGroupCallSession$2;

    invoke-direct {v2, p3, v1}, Landroid/telephony/MbmsGroupCallSession$2;-><init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    const/4 v2, 0x0

    return-object v2

    .line 138
    :cond_24
    return-object v0

    .line 122
    .end local v0    # "session":Landroid/telephony/MbmsGroupCallSession;
    .end local v1    # "result":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create two instances of MbmsGroupCallSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    .line 147
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Landroid/telephony/MbmsGroupCallSession;->create(Landroid/content/Context;ILjava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsGroupCallSessionCallback;)Landroid/telephony/MbmsGroupCallSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 7

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 167
    .local v2, "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    if-eqz v2, :cond_3d

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_11

    goto :goto_3d

    .line 171
    :cond_11
    iget v3, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->dispose(I)V

    .line 172
    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/mbms/GroupCall;

    .line 173
    .local v4, "s":Landroid/telephony/mbms/GroupCall;
    invoke-virtual {v4}, Landroid/telephony/mbms/GroupCall;->getCallback()Landroid/telephony/mbms/InternalGroupCallCallback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalGroupCallCallback;->stop()V

    .line 174
    .end local v4    # "s":Landroid/telephony/mbms/GroupCall;
    goto :goto_1c

    .line 175
    :cond_30
    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 176
    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_3c} :catch_62
    .catchall {:try_start_2 .. :try_end_3c} :catchall_4f

    .end local v2    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    goto :goto_63

    .line 180
    .restart local v2    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    :cond_3d
    :goto_3d
    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 181
    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iput-object v1, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 183
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->stop()V

    .line 169
    return-void

    .line 180
    .end local v2    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 181
    sget-object v3, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iput-object v1, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 183
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->stop()V

    .line 184
    throw v2

    .line 177
    :catch_62
    move-exception v2

    .line 180
    :goto_63
    iget-object v2, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 181
    sget-object v2, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iput-object v1, p0, Landroid/telephony/MbmsGroupCallSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 183
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->stop()V

    .line 184
    nop

    .line 185
    return-void
.end method

.method public blacklist onGroupCallStopped(Landroid/telephony/mbms/GroupCall;)V
    .registers 3
    .param p1, "service"    # Landroid/telephony/mbms/GroupCall;

    .line 246
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public whitelist startGroupCall(JLjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/GroupCallCallback;)Landroid/telephony/mbms/GroupCall;
    .registers 16
    .param p1, "tmgi"    # J
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/telephony/mbms/GroupCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/mbms/GroupCallCallback;",
            ")",
            "Landroid/telephony/mbms/GroupCall;"
        }
    .end annotation

    .line 209
    .local p3, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;

    .line 210
    .local v1, "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    if-eqz v1, :cond_64

    .line 214
    new-instance v7, Landroid/telephony/mbms/InternalGroupCallCallback;

    invoke-direct {v7, p6, p5}, Landroid/telephony/mbms/InternalGroupCallCallback;-><init>(Landroid/telephony/mbms/GroupCallCallback;Ljava/util/concurrent/Executor;)V

    .line 217
    .local v7, "serviceCallback":Landroid/telephony/mbms/InternalGroupCallCallback;
    move-object v3, v1

    .end local v1    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .local v3, "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    new-instance v1, Landroid/telephony/mbms/GroupCall;

    iget v2, p0, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I

    move-object v4, p0

    move-wide v5, p1

    .end local p1    # "tmgi":J
    .local v5, "tmgi":J
    invoke-direct/range {v1 .. v7}, Landroid/telephony/mbms/GroupCall;-><init>(ILandroid/telephony/mbms/vendor/IMbmsGroupCallService;Landroid/telephony/MbmsGroupCallSession;JLandroid/telephony/mbms/InternalGroupCallCallback;)V

    move-object p2, v1

    move-object v1, v3

    move-object p1, v4

    move-wide v3, v5

    .line 219
    .end local v5    # "tmgi":J
    .restart local v1    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .local v3, "tmgi":J
    .local p2, "serviceForApp":Landroid/telephony/mbms/GroupCall;
    iget-object v0, p1, Landroid/telephony/MbmsGroupCallSession;->mKnownActiveGroupCalls:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v8, 0x0

    :try_start_24
    iget v2, p1, Landroid/telephony/MbmsGroupCallSession;->mSubscriptionId:I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_26} :catch_47

    move-object v5, p3

    move-object v6, p4

    .end local p3    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p4    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_28
    invoke-interface/range {v1 .. v7}, Landroid/telephony/mbms/vendor/IMbmsGroupCallService;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I

    move-result p3

    .line 224
    .local p3, "returnCode":I
    const/4 p4, -0x1

    if-eq p3, p4, :cond_39

    .line 229
    if-eqz p3, :cond_37

    .line 230
    iget-object p4, p1, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    invoke-virtual {p4, p3, v8}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 231
    return-object v8

    .line 239
    .end local p3    # "returnCode":I
    :cond_37
    nop

    .line 241
    return-object p2

    .line 226
    .restart local p3    # "returnCode":I
    :cond_39
    invoke-virtual {p0}, Landroid/telephony/MbmsGroupCallSession;->close()V

    .line 227
    new-instance p4, Ljava/lang/IllegalStateException;

    const-string v0, "Middleware must not return an unknown error code"

    invoke-direct {p4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .end local v3    # "tmgi":J
    .end local v5    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "serviceCallback":Landroid/telephony/mbms/InternalGroupCallCallback;
    .end local p0    # "this":Landroid/telephony/MbmsGroupCallSession;
    .end local p2    # "serviceForApp":Landroid/telephony/mbms/GroupCall;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "callback":Landroid/telephony/mbms/GroupCallCallback;
    throw p4
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_44} :catch_44

    .line 233
    .end local p3    # "returnCode":I
    .restart local v1    # "groupCallService":Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
    .restart local v3    # "tmgi":J
    .restart local v5    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "serviceCallback":Landroid/telephony/mbms/InternalGroupCallCallback;
    .restart local p0    # "this":Landroid/telephony/MbmsGroupCallSession;
    .restart local p2    # "serviceForApp":Landroid/telephony/mbms/GroupCall;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "callback":Landroid/telephony/mbms/GroupCallCallback;
    :catch_44
    move-exception v0

    move-object p3, v0

    goto :goto_4b

    .end local v5    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p4    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_47
    move-exception v0

    move-object v5, p3

    move-object v6, p4

    move-object p3, v0

    .line 234
    .end local p4    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "e":Landroid/os/RemoteException;
    :goto_4b
    const-string p4, "MbmsGroupCallSession"

    const-string v0, "Remote process died"

    invoke-static {p4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p4, p1, Landroid/telephony/MbmsGroupCallSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p4, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 236
    sget-object p4, Landroid/telephony/MbmsGroupCallSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    iget-object p4, p1, Landroid/telephony/MbmsGroupCallSession;->mInternalCallback:Landroid/telephony/mbms/InternalGroupCallSessionCallback;

    const/4 v0, 0x3

    invoke-virtual {p4, v0, v8}, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->onError(ILjava/lang/String;)V

    .line 238
    return-object v8

    .line 211
    .end local v3    # "tmgi":J
    .end local v5    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "serviceCallback":Landroid/telephony/mbms/InternalGroupCallCallback;
    .end local p2    # "serviceForApp":Landroid/telephony/mbms/GroupCall;
    .restart local p1    # "tmgi":J
    .local p3, "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p4    # "frequencyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_64
    move-object v5, p3

    .end local p3    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "saiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Middleware not yet bound"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
