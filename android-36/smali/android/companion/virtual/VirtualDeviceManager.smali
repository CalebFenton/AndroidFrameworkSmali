.class public final Landroid/companion/virtual/VirtualDeviceManager;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;,
        Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;,
        Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;,
        Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;,
        Landroid/companion/virtual/VirtualDeviceManager$PendingIntentLaunchStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_VIRTUAL_DEVICE_REMOVED:Ljava/lang/String; = "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

.field public static final blacklist EXTRA_VIRTUAL_DEVICE_ID:Ljava/lang/String; = "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

.field public static final whitelist LAUNCH_FAILURE_NO_ACTIVITY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_FAILURE_PENDING_INTENT_CANCELED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_DEVICE_ID_DEFAULT:Ljava/lang/String; = "default:0"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualDeviceManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/companion/virtual/IVirtualDeviceManager;

.field private final blacklist mVirtualDeviceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;)V
    .registers 4
    .param p1, "service"    # Landroid/companion/virtual/IVirtualDeviceManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    .line 185
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    .line 186
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist createVirtualDevice(ILandroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
    .registers 10
    .param p1, "associationId"    # I
    .param p2, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 211
    const-string/jumbo v0, "params must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    :try_start_6
    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_16

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    .end local p1    # "associationId":I
    .end local p2    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .local v4, "associationId":I
    .local v5, "params":Landroid/companion/virtual/VirtualDeviceParams;
    :try_start_f
    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-object v1

    .line 214
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v4    # "associationId":I
    .end local v5    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .restart local p1    # "associationId":I
    .restart local p2    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    :catch_16
    move-exception v0

    move v4, p1

    move-object v5, p2

    move-object p1, v0

    .line 215
    .end local p2    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .restart local v4    # "associationId":I
    .restart local v5    # "params":Landroid/companion/virtual/VirtualDeviceParams;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getAllPersistentDeviceIds()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_10

    .line 417
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve persistent ids; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 421
    :cond_10
    :try_start_10
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAllPersistentDeviceIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    return-object v0

    .line 422
    :catch_1c
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAudioPlaybackSessionId(I)I
    .registers 4
    .param p1, "deviceId"    # I

    .line 463
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_6

    .line 464
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAudioPlaybackSessionId(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 468
    :catch_d
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAudioRecordingSessionId(I)I
    .registers 4
    .param p1, "deviceId"    # I

    .line 489
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_6

    .line 490
    const/4 v0, 0x0

    return v0

    .line 493
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAudioRecordingSessionId(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 494
    :catch_d
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDeviceIdForDisplayId(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 364
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    goto :goto_20

    .line 368
    :cond_7
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_13

    .line 369
    const-string v1, "VirtualDeviceManager"

    const-string v2, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v0

    .line 373
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return v0

    .line 374
    :catch_1a
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 366
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return v0
.end method

.method public blacklist getDevicePolicy(II)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "policyType"    # I

    .line 341
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 343
    return v0

    .line 345
    :cond_4
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_10

    .line 346
    const-string v1, "VirtualDeviceManager"

    const-string v2, "Failed to retrieve device policy; no virtual device manager service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v0

    .line 350
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->getDevicePolicy(II)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return v0

    .line 351
    :catch_17
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 394
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_d

    .line 395
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    .line 400
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    invoke-interface {v0, v1}, Landroid/companion/virtual/IVirtualDeviceManager;->getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    return-object v0

    .line 401
    :catch_1a
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;
    .registers 5
    .param p1, "deviceId"    # I

    .line 257
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 258
    const-string v0, "VirtualDeviceManager"

    const-string v2, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v1

    .line 261
    :cond_d
    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    if-nez p1, :cond_13

    goto :goto_20

    .line 265
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return-object v0

    .line 266
    :catch_1a
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    :goto_20
    return-object v1
.end method

.method public whitelist getVirtualDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDevice;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_11

    .line 232
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 236
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v0

    .line 237
    :catch_18
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isValidVirtualDeviceId(I)Z
    .registers 4
    .param p1, "deviceId"    # I

    .line 436
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_d

    .line 437
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    .line 442
    :catch_14
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isVirtualDeviceOwnedMirrorDisplay(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 530
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_d

    .line 531
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x0

    return v0

    .line 535
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->isVirtualDeviceOwnedMirrorDisplay(I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    .line 536
    :catch_14
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist playSoundEffect(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "effectType"    # I

    .line 512
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 513
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to dispatch sound effect; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 517
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->playSoundEffect(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 520
    nop

    .line 521
    return-void

    .line 518
    :catch_13
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 282
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 283
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to register listener; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_c
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    .line 287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 288
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;Landroid/companion/virtual/VirtualDeviceManager-IA;)V

    .line 289
    .local v0, "delegate":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    monitor-enter v1

    .line 291
    :try_start_21
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v2, v0}, Landroid/companion/virtual/IVirtualDeviceManager;->registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_30
    .catchall {:try_start_21 .. :try_end_26} :catchall_2e

    .line 294
    nop

    .line 295
    :try_start_27
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_2e
    move-exception v2

    goto :goto_36

    .line 292
    :catch_30
    move-exception v2

    .line 293
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "delegate":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
    throw v3

    .line 296
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "delegate":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_2e

    throw v2
.end method

.method public whitelist unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 307
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 308
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to unregister listener; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 311
    :cond_c
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    monitor-enter v0

    .line 313
    :try_start_12
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 314
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;>;"
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    .line 316
    .local v2, "delegate":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->-$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_3d

    if-ne v3, p1, :cond_3a

    .line 318
    :try_start_2a
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v3, v2}, Landroid/companion/virtual/IVirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_34
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3d

    .line 321
    nop

    .line 322
    :try_start_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3a

    .line 319
    :catch_34
    move-exception v3

    .line 320
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/companion/virtual/VirtualDeviceManager;
    .end local p1    # "listener":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
    throw v4

    .line 324
    .end local v2    # "delegate":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/virtual/VirtualDeviceManager;
    .restart local p1    # "listener":Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
    :cond_3a
    :goto_3a
    goto :goto_18

    .line 325
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;>;"
    :cond_3b
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw v1
.end method
