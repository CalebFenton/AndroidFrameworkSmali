.class public final Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;,
        Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceStateManagerGlobal"

.field private static blacklist sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# instance fields
.field private blacklist mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

.field private final blacklist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

.field private blacklist mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestActive(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleRequestActive(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestCanceled(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->handleRequestCanceled(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/devicestate/IDeviceStateManager;)V
    .registers 3
    .param p1, "deviceStateManager"    # Landroid/hardware/devicestate/IDeviceStateManager;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    .line 93
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    .line 94
    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerCallbackLocked()V

    .line 95
    return-void
.end method

.method private blacklist findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 305
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->-$$Nest$fgetmDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;)Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 306
    return v0

    .line 304
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;
    .registers 4
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 316
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-static {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->-$$Nest$fgetmRequest(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)Landroid/hardware/devicestate/DeviceStateRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 317
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    return-object v1

    .line 315
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .registers 4

    .line 62
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    if-nez v1, :cond_1a

    .line 64
    const-string v1, "device_state"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 65
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 66
    new-instance v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 67
    invoke-static {v1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;-><init>(Landroid/hardware/devicestate/IDeviceStateManager;)V

    sput-object v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 70
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->sInstance:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private blacklist handleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 327
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 329
    .local v1, "oldInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;>;"
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4e

    .line 333
    if-nez v1, :cond_13

    const/4 v0, -0x1

    goto :goto_17

    :cond_13
    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceStateInfo;->diff(Landroid/hardware/devicestate/DeviceStateInfo;)I

    move-result v0

    .line 334
    .local v0, "diff":I
    :goto_17
    and-int/lit8 v3, v0, 0x1

    if-lez v3, :cond_34

    .line 335
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 336
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget-object v5, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 337
    invoke-static {v5}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 336
    invoke-virtual {v4, v5}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifySupportedDeviceStatesChanged(Ljava/util/List;)V

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 340
    .end local v3    # "i":I
    :cond_34
    and-int/lit8 v3, v0, 0x4

    if-lez v3, :cond_4d

    .line 341
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 342
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    iget-object v5, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v4, v5}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 345
    .end local v3    # "i":I
    :cond_4d
    return-void

    .line 331
    .end local v0    # "diff":I
    .end local v1    # "oldInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;>;"
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private blacklist handleRequestActive(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 353
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    .line 355
    .local v1, "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 356
    if-eqz v1, :cond_11

    .line 357
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->notifyRequestActive()V

    .line 359
    :cond_11
    return-void

    .line 355
    .end local v1    # "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist handleRequestCanceled(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 367
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    .line 369
    .local v1, "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 370
    if-eqz v1, :cond_11

    .line 371
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->notifyRequestCanceled()V

    .line 373
    :cond_11
    return-void

    .line 369
    .end local v1    # "request":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist registerCallbackLocked()V
    .registers 5

    .line 288
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateManagerGlobal-IA;)V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    .line 290
    :try_start_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->wlinfoOncreate()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 291
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_29

    .line 292
    :try_start_11
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    invoke-interface {v2, v3}, Landroid/hardware/devicestate/IDeviceStateManager;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    .line 293
    monitor-exit v0

    goto :goto_27

    :catchall_1d
    move-exception v2

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :try_start_1f
    throw v2

    .line 295
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :cond_20
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    invoke-interface {v0, v2}, Landroid/hardware/devicestate/IDeviceStateManager;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_29

    .line 300
    :goto_27
    nop

    .line 301
    return-void

    .line 297
    :catch_29
    move-exception v0

    .line 298
    .local v0, "ex":Landroid/os/RemoteException;
    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallback:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;

    .line 299
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist cancelBaseStateOverride()V
    .registers 4

    .line 216
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->cancelBaseStateOverride()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 221
    nop

    .line 222
    :try_start_9
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 219
    :catch_d
    move-exception v1

    .line 220
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    throw v2

    .line 222
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public blacklist cancelStateRequest()V
    .registers 4

    .line 166
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->cancelStateRequest()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 171
    nop

    .line 172
    :try_start_9
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 169
    :catch_d
    move-exception v1

    .line 170
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    throw v2

    .line 172
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public blacklist getSupportedDeviceStates()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    if-eqz v1, :cond_a

    .line 109
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    .local v1, "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    goto :goto_11

    .line 114
    .end local v1    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v1}, Landroid/hardware/devicestate/IDeviceStateManager;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_19
    .catchall {:try_start_a .. :try_end_10} :catchall_1f

    .line 117
    .restart local v1    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    nop

    .line 120
    :goto_11
    :try_start_11
    iget-object v2, v1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 115
    .end local v1    # "currentInfo":Landroid/hardware/devicestate/DeviceStateInfo;
    :catch_19
    move-exception v1

    .line 116
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    throw v2

    .line 121
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist onStateRequestOverlayDismissed(Z)V
    .registers 4
    .param p1, "shouldCancelRequest"    # Z

    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManager;->onStateRequestOverlayDismissed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catch_7
    move-exception v0

    .line 282
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 233
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I

    move-result v1

    .line 235
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 237
    monitor-exit v0

    return-void

    .line 242
    :cond_c
    new-instance v2, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;

    invoke-direct {v2, p1, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 244
    .local v2, "wrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    if-eqz v3, :cond_2c

    .line 247
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget-object v3, v3, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    .line 248
    invoke-static {v3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 247
    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifySupportedDeviceStatesChanged(Ljava/util/List;)V

    .line 249
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLastReceivedInfo:Landroid/hardware/devicestate/DeviceStateInfo;

    iget-object v3, v3, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;->notifyDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V

    .line 251
    .end local v1    # "index":I
    .end local v2    # "wrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateCallbackWrapper;
    :cond_2c
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 10
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 185
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-direct {v0, p1, p3, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    .line 187
    .local v0, "requestWrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 190
    monitor-exit v1

    return-void

    .line 195
    :cond_10
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 196
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    .line 199
    :try_start_1a
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getState()I

    move-result v4

    .line 200
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getFlags()I

    move-result v5

    .line 199
    invoke-interface {v3, v2, v4, v5}, Landroid/hardware/devicestate/IDeviceStateManager;->requestBaseStateOverride(Landroid/os/IBinder;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_2a
    .catchall {:try_start_1a .. :try_end_27} :catchall_35

    .line 204
    nop

    .line 205
    .end local v2    # "token":Landroid/os/IBinder;
    :try_start_28
    monitor-exit v1

    .line 206
    return-void

    .line 201
    .restart local v2    # "token":Landroid/os/IBinder;
    :catch_2a
    move-exception v3

    .line 202
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "requestWrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .end local p1    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    throw v4

    .line 205
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "requestWrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .restart local p1    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 10
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 135
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-direct {v0, p1, p3, p2}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;-><init>(Landroid/hardware/devicestate/DeviceStateRequest;Landroid/hardware/devicestate/DeviceStateRequest$Callback;Ljava/util/concurrent/Executor;)V

    .line 137
    .local v0, "requestWrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findRequestTokenLocked(Landroid/hardware/devicestate/DeviceStateRequest;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 140
    monitor-exit v1

    return-void

    .line 145
    :cond_10
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 146
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    .line 149
    :try_start_1a
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mDeviceStateManager:Landroid/hardware/devicestate/IDeviceStateManager;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getState()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateRequest;->getFlags()I

    move-result v5

    invoke-interface {v3, v2, v4, v5}, Landroid/hardware/devicestate/IDeviceStateManager;->requestState(Landroid/os/IBinder;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_2a
    .catchall {:try_start_1a .. :try_end_27} :catchall_35

    .line 153
    nop

    .line 154
    .end local v2    # "token":Landroid/os/IBinder;
    :try_start_28
    monitor-exit v1

    .line 155
    return-void

    .line 150
    .restart local v2    # "token":Landroid/os/IBinder;
    :catch_2a
    move-exception v3

    .line 151
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "requestWrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    .end local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .end local p1    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    throw v4

    .line 154
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "requestWrapper":Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;
    .restart local p0    # "this":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .restart local p1    # "request":Landroid/hardware/devicestate/DeviceStateRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/hardware/devicestate/DeviceStateRequest$Callback;
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public blacklist unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 262
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->findCallbackLocked(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)I

    move-result v1

    .line 264
    .local v1, "indexToRemove":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 265
    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .end local v1    # "indexToRemove":I
    :cond_f
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
