.class public final Landroid/net/thread/ThreadNetworkController;
.super Ljava/lang/Object;
.source "ThreadNetworkController.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;,
        Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;,
        Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;,
        Landroid/net/thread/ThreadNetworkController$StateCallback;,
        Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;,
        Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;,
        Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;,
        Landroid/net/thread/ThreadNetworkController$ThreadVersion;,
        Landroid/net/thread/ThreadNetworkController$EphemeralKeyState;,
        Landroid/net/thread/ThreadNetworkController$EnabledState;,
        Landroid/net/thread/ThreadNetworkController$DeviceRole;
    }
.end annotation


# static fields
.field public static final whitelist DEVICE_ROLE_CHILD:I = 0x2

.field public static final whitelist DEVICE_ROLE_DETACHED:I = 0x1

.field public static final whitelist DEVICE_ROLE_LEADER:I = 0x4

.field public static final whitelist DEVICE_ROLE_ROUTER:I = 0x3

.field public static final whitelist DEVICE_ROLE_STOPPED:I = 0x0

.field public static final whitelist EPHEMERAL_KEY_DISABLED:I = 0x0

.field public static final whitelist EPHEMERAL_KEY_ENABLED:I = 0x1

.field public static final whitelist EPHEMERAL_KEY_IN_USE:I = 0x2

.field private static final blacklist EPHEMERAL_KEY_LIFETIME_MAX:Ljava/time/Duration;

.field public static final whitelist MAX_POWER_CHANNEL_DISABLED:I = -0x80000000

.field public static final whitelist STATE_DISABLED:I = 0x0

.field public static final whitelist STATE_DISABLING:I = 0x2

.field public static final whitelist STATE_ENABLED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ThreadNetworkController"

.field public static final whitelist THREAD_VERSION_1_3:I = 0x4


# instance fields
.field private final blacklist mConfigurationCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/function/Consumer<",
            "Landroid/net/thread/ThreadConfiguration;",
            ">;",
            "Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigurationCallbackMapLock:Ljava/lang/Object;

.field private final blacklist mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

.field private final blacklist mOpDatasetCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;",
            "Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOpDatasetCallbackMapLock:Ljava/lang/Object;

.field private final blacklist mStateCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/thread/ThreadNetworkController$StateCallback;",
            "Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStateCallbackMapLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smpropagateError(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/thread/ThreadNetworkController;->propagateError(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 141
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/net/thread/ThreadNetworkController;->EPHEMERAL_KEY_LIFETIME_MAX:Ljava/time/Duration;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/android/net/thread/IThreadNetworkController;)V
    .registers 3
    .param p1, "controllerService"    # Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMapLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMap:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMapLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMap:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMapLock:Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMap:Ljava/util/Map;

    .line 169
    const-string v0, "controllerService cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    .line 171
    return-void
.end method

.method public static whitelist isAttached(I)Z
    .registers 2
    .param p0, "deviceRole"    # I

    .line 328
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method static synthetic blacklist lambda$propagateError$0(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 4
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 956
    new-instance v0, Landroid/net/thread/ThreadNetworkException;

    invoke-direct {v0, p1, p2}, Landroid/net/thread/ThreadNetworkException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static blacklist propagateError(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;ILjava/lang/String;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "TT;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 953
    .local p1, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<TT;Landroid/net/thread/ThreadNetworkException;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 955
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/net/thread/ThreadNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/thread/ThreadNetworkController$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;ILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 958
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    nop

    .line 960
    return-void

    .line 958
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    throw v2
.end method

.method private static blacklist toChannelMaxPowerArray(Landroid/util/SparseIntArray;)[Landroid/net/connectivity/android/net/thread/ChannelMaxPower;
    .registers 5
    .param p0, "channelMaxPowers"    # Landroid/util/SparseIntArray;

    .line 937
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/connectivity/android/net/thread/ChannelMaxPower;

    .line 939
    .local v0, "powerArray":[Landroid/net/connectivity/android/net/thread/ChannelMaxPower;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 940
    new-instance v2, Landroid/net/connectivity/android/net/thread/ChannelMaxPower;

    invoke-direct {v2}, Landroid/net/connectivity/android/net/thread/ChannelMaxPower;-><init>()V

    aput-object v2, v0, v1

    .line 941
    aget-object v2, v0, v1

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Landroid/net/connectivity/android/net/thread/ChannelMaxPower;->channel:I

    .line 942
    aget-object v2, v0, v1

    aget-object v3, v0, v1

    iget v3, v3, Landroid/net/connectivity/android/net/thread/ChannelMaxPower;->channel:I

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iput v3, v2, Landroid/net/connectivity/android/net/thread/ChannelMaxPower;->maxPower:I

    .line 939
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 945
    .end local v1    # "i":I
    :cond_2b
    return-object v0
.end method


# virtual methods
.method public whitelist activateEphemeralKeyMode(Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "lifetime"    # Ljava/time/Duration;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p1, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-lez v0, :cond_26

    sget-object v0, Landroid/net/thread/ThreadNetworkController;->EPHEMERAL_KEY_LIFETIME_MAX:Ljava/time/Duration;

    .line 250
    invoke-virtual {p1, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gtz v0, :cond_26

    .line 256
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 258
    .local v0, "lifetimeMillis":J
    :try_start_14
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v3, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v3, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v2, v0, v1, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->activateEphemeralKeyMode(JLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_20

    .line 262
    nop

    .line 263
    return-void

    .line 260
    :catch_20
    move-exception v2

    .line 261
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 251
    .end local v0    # "lifetimeMillis":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ephemeral key lifetime: the value must be in range of (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/thread/ThreadNetworkController;->EPHEMERAL_KEY_LIFETIME_MAX:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createRandomizedDataset(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "networkName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/net/thread/ActiveOperationalDataset;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/net/thread/ActiveOperationalDataset;Landroid/net/thread/ThreadNetworkException;>;"
    invoke-static {p1}, Landroid/net/thread/ActiveOperationalDataset;->checkNetworkName(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    const-string v0, "receiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    :try_start_d
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/thread/ThreadNetworkController$ActiveDatasetReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->createRandomizedDataset(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 323
    goto :goto_1c

    .line 321
    :catch_18
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist deactivateEphemeralKeyMode(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->deactivateEphemeralKeyMode(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_c
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxEphemeralKeyLifetime()Ljava/time/Duration;
    .registers 2

    .line 211
    sget-object v0, Landroid/net/thread/ThreadNetworkController;->EPHEMERAL_KEY_LIFETIME_MAX:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getThreadVersion()I
    .registers 3

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v0}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->getThreadVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 294
    :catch_7
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist join(Landroid/net/thread/ActiveOperationalDataset;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "activeDataset"    # Landroid/net/thread/ActiveOperationalDataset;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/thread/ActiveOperationalDataset;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 655
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    const-string v0, "activeDataset cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 657
    const-string v0, "receiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 659
    :try_start_f
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->join(Landroid/net/thread/ActiveOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    .line 662
    nop

    .line 663
    return-void

    .line 660
    :catch_1b
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist leave(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p2, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 734
    const-string v0, "receiver cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    :try_start_a
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->leave(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 739
    nop

    .line 740
    return-void

    .line 737
    :catch_16
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerConfigurationCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/thread/ThreadConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 793
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_d
    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 798
    new-instance v1, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 800
    .local v1, "callbackProxy":Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_38

    .line 802
    :try_start_1f
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v2, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->registerConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25
    .catchall {:try_start_1f .. :try_end_24} :catchall_38

    .line 806
    goto :goto_2e

    .line 803
    :catch_25
    move-exception v2

    .line 804
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    iget-object v3, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 807
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v0

    .line 808
    return-void

    .line 796
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    throw v1

    .line 807
    .restart local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist registerOperationalDatasetCallback(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

    .line 576
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 577
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 578
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_d
    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 582
    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;)V

    .line 584
    .local v1, "callbackProxy":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_38

    .line 587
    :try_start_1f
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v2, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->registerOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25
    .catchall {:try_start_1f .. :try_end_24} :catchall_38

    .line 591
    goto :goto_2e

    .line 588
    :catch_25
    move-exception v2

    .line 589
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    iget-object v3, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 592
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v0

    .line 593
    return-void

    .line 580
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;
    throw v1

    .line 592
    .restart local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist registerStateCallback(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/thread/ThreadNetworkController$StateCallback;

    .line 457
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_d
    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 463
    new-instance v1, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;

    invoke-direct {v1, p1, p2}, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V

    .line 464
    .local v1, "callbackProxy":Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_38

    .line 467
    :try_start_1f
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v2, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->registerStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25
    .catchall {:try_start_1f .. :try_end_24} :catchall_38

    .line 471
    goto :goto_2e

    .line 468
    :catch_25
    move-exception v2

    .line 469
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    iget-object v3, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 472
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v0

    .line 473
    return-void

    .line 461
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/net/thread/ThreadNetworkController$StateCallback;
    throw v1

    .line 472
    .restart local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/net/thread/ThreadNetworkController$StateCallback;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist scheduleMigration(Landroid/net/thread/PendingOperationalDataset;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "pendingDataset"    # Landroid/net/thread/PendingOperationalDataset;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/thread/PendingOperationalDataset;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    const-string v0, "pendingDataset cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 709
    const-string v0, "receiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 711
    :try_start_f
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->scheduleMigration(Landroid/net/thread/PendingOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    .line 715
    nop

    .line 716
    return-void

    .line 713
    :catch_1b
    move-exception v0

    .line 714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist setChannelMaxPowers(Landroid/util/SparseIntArray;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "channelMaxPowers"    # Landroid/util/SparseIntArray;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 902
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    const-string v0, "channelMaxPowers cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 903
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 904
    const-string v0, "receiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 906
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_75

    .line 910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 911
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 913
    .local v1, "channel":I
    const/16 v2, 0x1a

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2c

    if-gt v1, v2, :cond_2c

    .line 910
    .end local v1    # "channel":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 915
    .restart local v1    # "channel":I
    :cond_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exceeds allowed range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 927
    .end local v0    # "i":I
    .end local v1    # "channel":I
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    .line 928
    invoke-static {p1}, Landroid/net/thread/ThreadNetworkController;->toChannelMaxPowerArray(Landroid/util/SparseIntArray;)[Landroid/net/connectivity/android/net/thread/ChannelMaxPower;

    move-result-object v1

    new-instance v2, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v2, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 927
    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->setChannelMaxPowers([Landroid/net/connectivity/android/net/thread/ChannelMaxPower;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6d} :catch_6f

    .line 932
    nop

    .line 933
    return-void

    .line 930
    :catch_6f
    move-exception v0

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 907
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channelMaxPowers cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConfiguration(Landroid/net/thread/ThreadConfiguration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "configuration"    # Landroid/net/thread/ThreadConfiguration;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/thread/ThreadConfiguration;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 766
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    const-string v0, "Configuration cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 767
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 768
    const-string v0, "receiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 770
    :try_start_f
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->setConfiguration(Landroid/net/thread/ThreadConfiguration;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    .line 774
    nop

    .line 775
    return-void

    .line 772
    :catch_1b
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setEnabled(ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->setEnabled(ZLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 204
    nop

    .line 205
    return-void

    .line 202
    :catch_c
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestNetworkAsUpstream(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "testNetworkInterfaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/net/thread/ThreadNetworkException;",
            ">;)V"
        }
    .end annotation

    .line 851
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Landroid/net/thread/ThreadNetworkException;>;"
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 852
    const-string v0, "receiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 854
    :try_start_a
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    new-instance v1, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/thread/ThreadNetworkController$OperationReceiverProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->setTestNetworkAsUpstream(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    .line 858
    nop

    .line 859
    return-void

    .line 856
    :catch_16
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterConfigurationCallback(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/thread/ThreadConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 820
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_8
    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2d

    .line 823
    .local v1, "callbackProxy":Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    if-eqz v1, :cond_25

    .line 827
    :try_start_12
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v2, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->unregisterConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V

    .line 828
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mConfigurationCallbackMap:Ljava/util/Map;

    iget-object v3, v1, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->mConfigurationConsumer:Ljava/util/function/Consumer;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1e} :catch_1f
    .catchall {:try_start_12 .. :try_end_1e} :catchall_2d

    .line 831
    goto :goto_23

    .line 829
    :catch_1f
    move-exception v2

    .line 830
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_20
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 832
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_23
    monitor-exit v0

    .line 833
    return-void

    .line 824
    .restart local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback hasn\'t been registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .end local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    throw v2

    .line 832
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;
    .restart local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .restart local p1    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/thread/ThreadConfiguration;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public whitelist unregisterOperationalDatasetCallback(Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;

    .line 608
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_8
    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2b

    .line 611
    .local v1, "callbackProxy":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    if-eqz v1, :cond_23

    .line 615
    :try_start_12
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v2, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->unregisterOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V

    .line 616
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mOpDatasetCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d
    .catchall {:try_start_12 .. :try_end_1c} :catchall_2b

    .line 619
    goto :goto_21

    .line 617
    :catch_1d
    move-exception v2

    .line 618
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 620
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    monitor-exit v0

    .line 621
    return-void

    .line 612
    .restart local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback hasn\'t been registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .end local p1    # "callback":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;
    throw v2

    .line 620
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallbackProxy;
    .restart local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .restart local p1    # "callback":Landroid/net/thread/ThreadNetworkController$OperationalDatasetCallback;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist unregisterStateCallback(Landroid/net/thread/ThreadNetworkController$StateCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/net/thread/ThreadNetworkController$StateCallback;

    .line 483
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_8
    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2b

    .line 486
    .local v1, "callbackProxy":Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    if-eqz v1, :cond_23

    .line 490
    :try_start_12
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mControllerService:Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-interface {v2, v1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;->unregisterStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V

    .line 491
    iget-object v2, p0, Landroid/net/thread/ThreadNetworkController;->mStateCallbackMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d
    .catchall {:try_start_12 .. :try_end_1c} :catchall_2b

    .line 494
    goto :goto_21

    .line 492
    :catch_1d
    move-exception v2

    .line 493
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 495
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    monitor-exit v0

    .line 496
    return-void

    .line 487
    .restart local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback hasn\'t been registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .end local p1    # "callback":Landroid/net/thread/ThreadNetworkController$StateCallback;
    throw v2

    .line 495
    .end local v1    # "callbackProxy":Landroid/net/thread/ThreadNetworkController$StateCallbackProxy;
    .restart local p0    # "this":Landroid/net/thread/ThreadNetworkController;
    .restart local p1    # "callback":Landroid/net/thread/ThreadNetworkController$StateCallback;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v1
.end method
