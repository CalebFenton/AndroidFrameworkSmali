.class public Landroid/app/trust/TrustManager;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/TrustManager$TrustListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_BIND_SIGNIFICANT_PLACE_PROVIDER:Ljava/lang/String; = "com.android.trust.provider.SignificantPlaceProvider.BIND"

.field private static final greylist-max-o DATA_FLAGS:Ljava/lang/String; = "initiatedByUser"

.field private static final blacklist DATA_GRANTED_MESSAGES:Ljava/lang/String; = "grantedMessages"

.field private static final greylist-max-o DATA_MESSAGE:Ljava/lang/String; = "message"

.field private static final blacklist DATA_NEWLY_UNLOCKED:Ljava/lang/String; = "newlyUnlocked"

.field private static final blacklist MSG_ENABLED_TRUST_AGENTS_CHANGED:I = 0x4

.field private static final blacklist MSG_IS_ACTIVE_UNLOCK_RUNNING:I = 0x5

.field private static final greylist-max-o MSG_TRUST_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_TRUST_ERROR:I = 0x3

.field private static final greylist-max-o MSG_TRUST_MANAGED_CHANGED:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TrustManager"


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/app/trust/ITrustManager;

.field private final greylist-max-o mTrustListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/trust/TrustManager$TrustListener;",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/app/trust/TrustManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "b"    # Landroid/os/IBinder;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Landroid/app/trust/TrustManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/trust/TrustManager$2;-><init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .registers 5
    .param p1, "source"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "unlockedUser"    # I

    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 330
    nop

    .line 331
    return-void

    .line 328
    :catch_7
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isActiveUnlockRunning(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->isActiveUnlockRunning(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 187
    :catch_7
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isInSignificantPlace()Z
    .registers 3

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0}, Landroid/app/trust/ITrustManager;->isInSignificantPlace()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 343
    :catch_7
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isTrustUsuallyManaged(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->isTrustUsuallyManaged(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 300
    :catch_7
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;I)V
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/policy/IDeviceLockedStateListener;
    .param p2, "deviceId"    # I

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->registerDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 275
    nop

    .line 276
    return-void

    .line 273
    :catch_7
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .registers 4
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .line 199
    :try_start_0
    new-instance v0, Landroid/app/trust/TrustManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/trust/TrustManager$1;-><init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V

    .line 240
    .local v0, "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, v0}, Landroid/app/trust/ITrustManager;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 241
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 244
    nop

    .line 245
    .end local v0    # "iTrustListener":Landroid/app/trust/ITrustListener$Stub;
    return-void

    .line 242
    :catch_11
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportEnabledTrustAgentsChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->reportEnabledTrustAgentsChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :catch_7
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportKeyguardShowingChanged()V
    .registers 3

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0}, Landroid/app/trust/ITrustManager;->reportKeyguardShowingChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 178
    nop

    .line 179
    return-void

    .line 176
    :catch_7
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist reportUnlockAttempt(ZI)V
    .registers 5
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockAttempt(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 104
    nop

    .line 105
    return-void

    .line 102
    :catch_7
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o reportUnlockLockout(II)V
    .registers 5
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockLockout(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 152
    nop

    .line 153
    return-void

    .line 150
    :catch_7
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportUserMayRequestUnlock(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->reportUserMayRequestUnlock(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catch_7
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportUserRequestedUnlock(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "dismissKeyguard"    # Z

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUserRequestedUnlock(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_7
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setDeviceLockedForUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_7
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "source"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 318
    nop

    .line 319
    return-void

    .line 316
    :catch_7
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/policy/IDeviceLockedStateListener;

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->unregisterDeviceLockedStateListener(Lcom/android/internal/policy/IDeviceLockedStateListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 289
    nop

    .line 290
    return-void

    .line 287
    :catch_7
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .registers 5
    .param p1, "trustListener"    # Landroid/app/trust/TrustManager$TrustListener;

    .line 253
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    .line 254
    .local v0, "iTrustListener":Landroid/app/trust/ITrustListener;
    if-eqz v0, :cond_16

    .line 256
    :try_start_a
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, v0}, Landroid/app/trust/ITrustManager;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 259
    goto :goto_16

    .line 257
    :catch_10
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method
