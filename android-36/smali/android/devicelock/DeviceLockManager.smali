.class public final Landroid/devicelock/DeviceLockManager;
.super Ljava/lang/Object;
.source "DeviceLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devicelock/DeviceLockManager$DeviceLockRole;
    }
.end annotation


# static fields
.field public static final whitelist DEVICE_LOCK_ROLE_FINANCING:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceLockManager"


# instance fields
.field private final blacklist mService:Landroid/devicelock/IDeviceLockService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/devicelock/IDeviceLockService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/devicelock/IDeviceLockService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    .line 79
    return-void
.end method

.method static synthetic blacklist lambda$clearDeviceRestrictions$3(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getDeviceId$4(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getKioskApps$5(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$isDeviceLocked$2(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$lockDevice$0(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$unlockDevice$1(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist clearDeviceRestrictions(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :try_start_6
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    new-instance v1, Landroid/devicelock/DeviceLockManager$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/devicelock/DeviceLockManager$4;-><init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/devicelock/IDeviceLockService;->clearDeviceRestrictions(Landroid/devicelock/IVoidResultCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 240
    goto :goto_1a

    .line 238
    :catch_11
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v0}, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public whitelist getDeviceId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/devicelock/DeviceId;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/devicelock/DeviceId;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :try_start_6
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    new-instance v1, Landroid/devicelock/DeviceLockManager$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/devicelock/DeviceLockManager$5;-><init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/devicelock/IDeviceLockService;->getDeviceId(Landroid/devicelock/IGetDeviceIdCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 279
    goto :goto_1a

    .line 277
    :catch_11
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public whitelist getKioskApps(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :try_start_6
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    new-instance v1, Landroid/devicelock/DeviceLockManager$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/devicelock/DeviceLockManager$6;-><init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/devicelock/IDeviceLockService;->getKioskApps(Landroid/devicelock/IGetKioskAppsCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 314
    goto :goto_1a

    .line 312
    :catch_11
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, v0}, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public blacklist getService()Landroid/devicelock/IDeviceLockService;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    return-object v0
.end method

.method public whitelist isDeviceLocked(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :try_start_6
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    new-instance v1, Landroid/devicelock/DeviceLockManager$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/devicelock/DeviceLockManager$3;-><init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/devicelock/IDeviceLockService;->isDeviceLocked(Landroid/devicelock/IIsDeviceLockedCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 181
    goto :goto_1a

    .line 179
    :catch_11
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, v0}, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public whitelist lockDevice(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :try_start_6
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    new-instance v1, Landroid/devicelock/DeviceLockManager$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/devicelock/DeviceLockManager$1;-><init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/devicelock/IDeviceLockService;->lockDevice(Landroid/devicelock/IVoidResultCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 120
    goto :goto_1a

    .line 118
    :catch_11
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, v0}, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public whitelist unlockDevice(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :try_start_6
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager;->mService:Landroid/devicelock/IDeviceLockService;

    new-instance v1, Landroid/devicelock/DeviceLockManager$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/devicelock/DeviceLockManager$2;-><init>(Landroid/devicelock/DeviceLockManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Landroid/devicelock/IDeviceLockService;->unlockDevice(Landroid/devicelock/IVoidResultCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    .line 150
    goto :goto_1a

    .line 148
    :catch_11
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, v0}, Landroid/devicelock/DeviceLockManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/RemoteException;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
