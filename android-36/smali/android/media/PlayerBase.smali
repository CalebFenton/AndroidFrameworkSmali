.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard;,
        Landroid/media/PlayerBase$IPlayerWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEBUG_APP_OPS:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PlayerBase"

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field protected greylist-max-o mAuxEffectSendLevel:F

.field private blacklist mDeviceIds:[I

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private final greylist-max-o mImplType:I

.field protected greylist-max-o mLeftVolume:F

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mPanMultiplierL:F

.field private greylist-max-o mPanMultiplierR:F

.field protected greylist-max-o mPlayerIId:I

.field protected greylist-max-o mRightVolume:F

.field private greylist-max-o mStartDelayMs:I

.field private greylist-max-o mState:I

.field private blacklist mVolMultiplier:F


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioAttributes;I)V
    .registers 6
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "implType"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 67
    iput v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 83
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 87
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 89
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 91
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 93
    iput v0, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    .line 95
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->PLAYER_DEVICEIDS_INVALID:[I

    iput-object v0, p0, Landroid/media/PlayerBase;->mDeviceIds:[I

    .line 105
    if-eqz p1, :cond_2f

    .line 108
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 109
    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 110
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 111
    return-void

    .line 106
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "streamType"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 535
    const/16 v0, 0xa

    if-eq p0, v0, :cond_26

    .line 539
    const-string v0, "Use of stream types is deprecated for operations other than volume control"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See the documentation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for what to use instead with android.media.AudioAttributes to qualify your playback use case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 536
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getService()Landroid/media/IAudioService;
    .registers 2

    .line 306
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 307
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 309
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 310
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    .line 311
    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method protected static blacklist resolvePlaybackSessionId(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestedSessionId"    # I

    .line 566
    if-eqz p1, :cond_3

    .line 568
    return p1

    .line 571
    :cond_3
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 572
    return v0

    .line 575
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    .line 576
    .local v1, "deviceId":I
    if-nez v1, :cond_e

    .line 577
    return v0

    .line 580
    :cond_e
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 581
    .local v2, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v2, :cond_25

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result v3

    if-nez v3, :cond_20

    goto :goto_25

    .line 586
    :cond_20
    invoke-virtual {v2, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getAudioPlaybackSessionId(I)I

    move-result v0

    return v0

    .line 583
    :cond_25
    :goto_25
    return v0
.end method

.method private blacklist updatePlayerVolume()V
    .registers 5

    .line 246
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    iget v2, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v1, v2

    .line 248
    .local v1, "finalLeftVol":F
    iget v2, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    iget v3, p0, Landroid/media/PlayerBase;->mRightVolume:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v2, v3

    .line 249
    .local v2, "finalRightVol":F
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 251
    return-void

    .line 249
    .end local v1    # "finalLeftVol":F
    .end local v2    # "finalRightVol":F
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private blacklist updateState(I[I)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "deviceIds"    # [I

    .line 186
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mState:I

    .line 188
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 189
    .local v1, "piid":I
    iput-object p2, p0, Landroid/media/PlayerBase;->mDeviceIds:[I

    .line 190
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3a

    .line 192
    :try_start_a
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/media/IAudioService;->playerEvent(II[I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 197
    goto :goto_39

    .line 193
    :catch_12
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error talking to audio service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 195
    invoke-static {p1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state will not be tracked for piid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void

    .line 190
    .end local v1    # "piid":I
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method


# virtual methods
.method greylist-max-o basePause()V
    .registers 3

    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/PlayerBase;->updateState(I[I)V

    .line 223
    return-void
.end method

.method protected blacklist baseRegisterPlayer(I)V
    .registers 7
    .param p1, "sessionId"    # I

    .line 125
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/PlayerBase$PlayerIdCard;

    iget v2, p0, Landroid/media/PlayerBase;->mImplType:I

    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    new-instance v4, Landroid/media/PlayerBase$IPlayerWrapper;

    invoke-direct {v4, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;I)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase;->mPlayerIId:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 130
    goto :goto_21

    .line 128
    :catch_19
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, player will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21
    return-void
.end method

.method greylist-max-o baseRelease()V
    .registers 5

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "releasePlayer":Z
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_4
    iget v2, p0, Landroid/media/PlayerBase;->mState:I

    if-eqz v2, :cond_c

    .line 284
    const/4 v0, 0x1

    .line 285
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mState:I

    .line 287
    :cond_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_31

    .line 289
    if-eqz v0, :cond_22

    .line 290
    :try_start_f
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->releasePlayer(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_22

    .line 292
    :catch_19
    move-exception v1

    .line 293
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    const-string v3, "Error talking to audio service, the player will still be tracked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 294
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    nop

    .line 296
    :goto_23
    :try_start_23
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_2e

    .line 297
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_2f

    .line 301
    :cond_2e
    goto :goto_30

    .line 299
    :catch_2f
    move-exception v1

    .line 302
    :goto_30
    return-void

    .line 287
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method greylist-max-o baseSetAuxEffectSendLevel(F)I
    .registers 4
    .param p1, "level"    # F

    .line 269
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 271
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    move-result v0

    return v0

    .line 271
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist-max-o baseSetPan(F)V
    .registers 6
    .param p1, "pan"    # F

    .line 231
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 232
    .local v0, "p":F
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 233
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1b

    .line 234
    sub-float v3, v1, v0

    :try_start_16
    iput v3, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 235
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    goto :goto_20

    .line 237
    :cond_1b
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 238
    add-float/2addr v1, v0

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 240
    :goto_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_25

    .line 241
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 242
    return-void

    .line 240
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method greylist-max-o baseSetStartDelayMs(I)V
    .registers 4
    .param p1, "delayMs"    # I

    .line 209
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method greylist-max-o baseSetVolume(FF)V
    .registers 5
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 261
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 263
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 264
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 265
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 266
    return-void

    .line 264
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method blacklist baseStart([I)V
    .registers 3
    .param p1, "deviceIds"    # [I

    .line 205
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/PlayerBase;->updateState(I[I)V

    .line 206
    return-void
.end method

.method greylist-max-o baseStop()V
    .registers 3

    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/media/PlayerBase;->updateState(I[I)V

    .line 228
    return-void
.end method

.method greylist-max-o baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 138
    if-eqz p1, :cond_1e

    .line 142
    :try_start_2
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 145
    goto :goto_14

    .line 143
    :catch_c
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, audio attributes will not be updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_17
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1b

    throw v1

    .line 139
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist baseUpdateDeviceIds(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "deviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 165
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    aput v2, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 170
    .end local v1    # "i":I
    :cond_1c
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_1f
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 172
    .local v2, "piid":I
    iput-object v0, p0, Landroid/media/PlayerBase;->mDeviceIds:[I

    .line 173
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_55

    .line 175
    :try_start_24
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3, v0}, Landroid/media/IAudioService;->playerEvent(II[I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_2d

    .line 181
    goto :goto_54

    .line 177
    :catch_2d
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PlayerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error talking to audio service, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 179
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device id will not be tracked for piid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_54
    return-void

    .line 173
    .end local v2    # "piid":I
    :catchall_55
    move-exception v2

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v2
.end method

.method blacklist baseUpdateSessionId(I)V
    .registers 5
    .param p1, "sessionId"    # I

    .line 157
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerSessionId(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 160
    goto :goto_12

    .line 158
    :catch_a
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, the session ID will not be updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method protected blacklist getCurrentOpPackageName()Ljava/lang/String;
    .registers 2

    .line 546
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlayerIId()I
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    monitor-exit v0

    return v1

    .line 117
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected greylist-max-o getStartDelayMs()I
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    monitor-exit v0

    return v1

    .line 217
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method abstract greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract greylist-max-o playerPause()V
.end method

.method abstract greylist-max-o playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract greylist-max-o playerSetVolume(ZFF)V
.end method

.method abstract greylist-max-o playerStart()V
.end method

.method abstract greylist-max-o playerStop()V
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .registers 2
    .param p1, "delayMs"    # I

    .line 319
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 320
    return-void
.end method

.method blacklist setVolumeMultiplier(F)V
    .registers 4
    .param p1, "vol"    # F

    .line 254
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    .line 256
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 257
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 258
    return-void

    .line 256
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method
