.class public Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;,
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field private mCurrentSoundModelHandle:I

.field private mIsPowerSaveMode:Z

.field private mKeyphraseId:I

.field private final mLock:Ljava/lang/Object;

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mServiceDisabled:Z

.field private mStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;


# direct methods
.method static synthetic -get0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "callActive"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "isPowerSaveMode"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 69
    new-instance v2, Ljava/lang/Object;

    #@9
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@e
    .line 78
    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    #@10
    .line 79
    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@12
    .line 80
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@14
    .line 82
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@16
    .line 83
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@18
    .line 84
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    #@1a
    .line 85
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@1c
    .line 88
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    #@1e
    .line 89
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@20
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 94
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    #@28
    move-result v1

    #@29
    .line 95
    .local v1, "status":I
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@2b
    .line 96
    const-string/jumbo v2, "phone"

    #@2e
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@34
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@36
    .line 97
    const-string/jumbo v2, "power"

    #@39
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Landroid/os/PowerManager;

    #@3f
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    #@41
    .line 98
    new-instance v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;

    #@43
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    #@46
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@48
    .line 99
    if-nez v1, :cond_0

    #@4a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_1

    #@50
    .line 100
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    #@53
    new-instance v3, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v4, "listModules status="

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    const-string/jumbo v4, ", # of modules="

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6d
    move-result v4

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 101
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@7b
    .line 102
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@7d
    .line 92
    :goto_0
    return-void

    #@7e
    .line 105
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v2

    #@82
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@84
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@86
    goto :goto_0
.end method

.method private internalClearSoundModelLocked()V
    .locals 1

    #@0
    .prologue
    .line 538
    const/high16 v0, -0x80000000

    #@2
    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@4
    .line 539
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@7
    .line 537
    return-void
.end method

.method private internalClearStateLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 520
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@4
    .line 521
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@6
    .line 523
    const/high16 v0, -0x80000000

    #@8
    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    #@a
    .line 524
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@c
    .line 525
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@e
    .line 528
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@10
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@12
    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@15
    .line 531
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 532
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@1b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@1d
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@20
    .line 533
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@22
    .line 519
    :cond_0
    return-void
.end method

.method private onCallStateChangedLocked(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    #@0
    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 361
    return-void

    #@5
    .line 363
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    #@7
    .line 364
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    #@b
    .line 357
    return-void
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .locals 1
    .param p1, "isPowerSaveMode"    # Z

    #@0
    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 369
    return-void

    #@5
    .line 371
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@7
    .line 372
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    #@b
    .line 367
    return-void
.end method

.method private onRecognitionAbortLocked()V
    .locals 2

    #@0
    .prologue
    .line 388
    const-string/jumbo v0, "SoundTriggerHelper"

    #@3
    const-string/jumbo v1, "Recognition aborted"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 387
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .locals 3

    #@0
    .prologue
    .line 394
    const-string/jumbo v1, "SoundTriggerHelper"

    #@3
    const-string/jumbo v2, "Recognition failure"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 397
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@f
    const/high16 v2, -0x80000000

    #@11
    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    #@17
    .line 393
    :goto_0
    return-void

    #@18
    .line 399
    :catch_0
    move-exception v0

    #@19
    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    #@1c
    const-string/jumbo v2, "RemoteException in onError"

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 402
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    #@25
    goto :goto_0

    #@26
    .line 401
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@27
    .line 402
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    #@2a
    .line 401
    throw v1
.end method

.method private onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 407
    const-string/jumbo v2, "SoundTriggerHelper"

    #@4
    const-string/jumbo v3, "Recognition success"

    #@7
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 408
    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@c
    .line 410
    .local v1, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v1, :cond_0

    #@e
    array-length v2, v1

    #@f
    if-nez v2, :cond_1

    #@11
    .line 411
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    #@14
    const-string/jumbo v3, "Invalid keyphrase recognition event!"

    #@17
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 412
    return-void

    #@1b
    .line 415
    :cond_1
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    #@1d
    aget-object v3, v1, v4

    #@1f
    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@21
    if-eq v2, v3, :cond_2

    #@23
    .line 416
    const-string/jumbo v2, "SoundTriggerHelper"

    #@26
    const-string/jumbo v3, "received onRecognition event for a different keyphrase"

    #@29
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 417
    return-void

    #@2d
    .line 421
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 422
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@33
    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 428
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@38
    .line 429
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@3a
    iget-boolean v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    #@3c
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@3e
    .line 431
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@40
    if-eqz v2, :cond_4

    #@42
    .line 432
    const/4 v2, 0x1

    #@43
    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    #@46
    .line 406
    :cond_4
    return-void

    #@47
    .line 424
    :catch_0
    move-exception v0

    #@48
    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SoundTriggerHelper"

    #@4b
    const-string/jumbo v3, "RemoteException in onDetected"

    #@4e
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_0
.end method

.method private onServiceDiedLocked()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 439
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@7
    const/16 v2, -0x20

    #@9
    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    #@f
    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    #@12
    .line 446
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 447
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@18
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    #@1b
    .line 448
    :goto_0
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@1d
    .line 436
    :cond_1
    return-void

    #@1e
    .line 441
    :catch_0
    move-exception v0

    #@1f
    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    #@22
    const-string/jumbo v2, "RemoteException in onError"

    #@25
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 444
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    #@2b
    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    #@2e
    .line 446
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 447
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@34
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    #@37
    goto :goto_0

    #@38
    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@39
    .line 444
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    #@3c
    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    #@3f
    .line 446
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 447
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@45
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    #@48
    .line 448
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@4a
    .line 443
    :cond_2
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    #@0
    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 381
    return-void

    #@5
    .line 383
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    #@7
    .line 384
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    #@b
    .line 379
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@0
    .prologue
    .line 375
    return-void
.end method

.method private updateRecognitionLocked(Z)I
    .locals 6
    .param p1, "notify"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 454
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 457
    :cond_0
    return v5

    #@a
    .line 455
    :cond_1
    iget v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@c
    const/high16 v4, -0x80000000

    #@e
    if-eq v3, v4, :cond_0

    #@10
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 460
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@16
    if-eqz v3, :cond_2

    #@18
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    #@1a
    if-eqz v3, :cond_3

    #@1c
    :cond_2
    const/4 v1, 0x0

    #@1d
    .line 461
    .local v1, "start":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@1f
    if-ne v1, v3, :cond_4

    #@21
    .line 463
    return v5

    #@22
    .line 460
    .end local v1    # "start":Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    #@24
    if-nez v3, :cond_2

    #@26
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@28
    if-nez v3, :cond_2

    #@2a
    const/4 v1, 0x1

    #@2b
    .restart local v1    # "start":Z
    goto :goto_0

    #@2c
    .line 467
    :cond_4
    if-eqz v1, :cond_7

    #@2e
    .line 469
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@30
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@32
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@34
    invoke-virtual {v3, v4, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    #@37
    move-result v2

    #@38
    .line 470
    .local v2, "status":I
    if-eqz v2, :cond_6

    #@3a
    .line 471
    const-string/jumbo v3, "SoundTriggerHelper"

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "startRecognition failed with "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 473
    if-eqz p1, :cond_5

    #@56
    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@58
    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5b
    .line 491
    :cond_5
    :goto_1
    return v2

    #@5c
    .line 476
    :catch_0
    move-exception v0

    #@5d
    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@60
    const-string/jumbo v4, "RemoteException in onError"

    #@63
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    goto :goto_1

    #@67
    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v3, 0x1

    #@68
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@6a
    .line 483
    if-eqz p1, :cond_5

    #@6c
    .line 485
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@6e
    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@71
    goto :goto_1

    #@72
    .line 486
    :catch_1
    move-exception v0

    #@73
    .line 487
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@76
    const-string/jumbo v4, "RemoteException in onRecognitionResumed"

    #@79
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    goto :goto_1

    #@7d
    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "status":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@7f
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@81
    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    #@84
    move-result v2

    #@85
    .line 495
    .restart local v2    # "status":I
    if-eqz v2, :cond_9

    #@87
    .line 496
    const-string/jumbo v3, "SoundTriggerHelper"

    #@8a
    new-instance v4, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v5, "stopRecognition call failed with "

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 497
    if-eqz p1, :cond_8

    #@a3
    .line 499
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@a5
    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@a8
    .line 515
    :cond_8
    :goto_2
    return v2

    #@a9
    .line 500
    :catch_2
    move-exception v0

    #@aa
    .line 501
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@ad
    const-string/jumbo v4, "RemoteException in onError"

    #@b0
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b3
    goto :goto_2

    #@b4
    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@b6
    .line 507
    if-eqz p1, :cond_8

    #@b8
    .line 509
    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@ba
    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@bd
    goto :goto_2

    #@be
    .line 510
    :catch_3
    move-exception v0

    #@bf
    .line 511
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    #@c2
    const-string/jumbo v4, "RemoteException in onRecognitionPaused"

    #@c5
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c8
    goto :goto_2
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 568
    :try_start_0
    const-string/jumbo v0, "  module properties="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 569
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@b
    if-nez v0, :cond_0

    #@d
    const-string/jumbo v0, "null"

    #@10
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@13
    .line 570
    const-string/jumbo v0, "  keyphrase ID="

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    #@1b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1e
    .line 571
    const-string/jumbo v0, "  sound model handle="

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@29
    .line 572
    const-string/jumbo v0, "  sound model UUID="

    #@2c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 573
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@31
    if-nez v0, :cond_1

    #@33
    const-string/jumbo v0, "null"

    #@36
    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@39
    .line 574
    const-string/jumbo v0, "  current listener="

    #@3c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    .line 575
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@41
    if-nez v0, :cond_2

    #@43
    const-string/jumbo v0, "null"

    #@46
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@49
    .line 577
    const-string/jumbo v0, "  requested="

    #@4c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@51
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@54
    .line 578
    const-string/jumbo v0, "  started="

    #@57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@5c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@5f
    .line 579
    const-string/jumbo v0, "  call active="

    #@62
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    #@67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@6a
    .line 580
    const-string/jumbo v0, "  power save mode active="

    #@6d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@72
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@75
    .line 581
    const-string/jumbo v0, "  service disabled="

    #@78
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    #@7d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    monitor-exit v1

    #@81
    .line 566
    return-void

    #@82
    .line 569
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@84
    goto :goto_0

    #@85
    .line 573
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@87
    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@89
    goto :goto_1

    #@8a
    .line 575
    :cond_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@8c
    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8f
    move-result-object v0

    #@90
    goto :goto_2

    #@91
    .line 567
    :catchall_0
    move-exception v0

    #@92
    monitor-exit v1

    #@93
    throw v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@0
    .prologue
    .line 303
    if-eqz p1, :cond_0

    #@2
    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 309
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 311
    const-string/jumbo v0, "SoundTriggerHelper"

    #@10
    const-string/jumbo v2, "received onRecognition event without any listener for it"

    #@13
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 312
    return-void

    #@18
    .line 304
    :cond_0
    const-string/jumbo v0, "SoundTriggerHelper"

    #@1b
    const-string/jumbo v1, "Invalid recognition event!"

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 305
    return-void

    #@22
    .line 314
    :cond_1
    :try_start_1
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    packed-switch v0, :pswitch_data_0

    #@27
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_0
    monitor-exit v1

    #@28
    .line 302
    return-void

    #@29
    .line 317
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionAbortLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 309
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0

    #@30
    .line 320
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionFailureLocked()V

    #@33
    goto :goto_0

    #@34
    .line 323
    :pswitch_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@36
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDied()V
    .locals 2

    #@0
    .prologue
    .line 351
    const-string/jumbo v0, "SoundTriggerHelper"

    #@3
    const-string/jumbo v1, "onServiceDied!!"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 352
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v0

    #@c
    .line 353
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceDiedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v0

    #@10
    .line 350
    return-void

    #@11
    .line 352
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v0

    #@13
    throw v1
.end method

.method public onServiceStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 344
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 345
    if-ne v0, p1, :cond_0

    #@6
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 342
    return-void

    #@b
    .line 345
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0

    #@d
    .line 344
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@0
    .prologue
    .line 331
    if-nez p1, :cond_0

    #@2
    .line 332
    const-string/jumbo v0, "SoundTriggerHelper"

    #@5
    const-string/jumbo v1, "Invalid sound model event!"

    #@8
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 333
    return-void

    #@c
    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@e
    monitor-enter v0

    #@f
    .line 337
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v0

    #@13
    .line 330
    return-void

    #@14
    .line 336
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v0

    #@16
    throw v1
.end method

.method startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 10
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v9, -0x80000000

    #@4
    .line 122
    if-eqz p2, :cond_0

    #@6
    if-nez p3, :cond_1

    #@8
    .line 123
    :cond_0
    return v9

    #@9
    .line 122
    :cond_1
    if-eqz p4, :cond_0

    #@b
    .line 126
    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@d
    monitor-enter v6

    #@e
    .line 139
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    #@10
    if-nez v7, :cond_3

    #@12
    .line 141
    iget-object v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@14
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_4

    #@1a
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    #@1c
    .line 143
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@1e
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@20
    const/16 v7, 0x20

    #@22
    invoke-virtual {v4, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@25
    .line 147
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@27
    if-nez v4, :cond_2

    #@29
    .line 148
    new-instance v4, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@2b
    invoke-direct {v4, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    #@2e
    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@30
    .line 149
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    #@32
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    #@34
    .line 150
    new-instance v7, Landroid/content/IntentFilter;

    #@36
    const-string/jumbo v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    #@39
    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@3c
    .line 149
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3f
    .line 152
    :cond_2
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    #@41
    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    #@44
    move-result v4

    #@45
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    #@47
    .line 155
    :cond_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@49
    if-nez v4, :cond_5

    #@4b
    .line 156
    const-string/jumbo v4, "SoundTriggerHelper"

    #@4e
    const-string/jumbo v5, "Attempting startRecognition without the capability"

    #@51
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v6

    #@55
    .line 157
    return v9

    #@56
    :cond_4
    move v4, v5

    #@57
    .line 141
    goto :goto_0

    #@58
    .line 159
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@5a
    if-nez v4, :cond_6

    #@5c
    .line 160
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@5e
    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    #@60
    const/4 v5, 0x0

    #@61
    invoke-static {v4, p0, v5}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@64
    move-result-object v4

    #@65
    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@67
    .line 161
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@69
    if-nez v4, :cond_6

    #@6b
    .line 162
    const-string/jumbo v4, "SoundTriggerHelper"

    #@6e
    const-string/jumbo v5, "startRecognition cannot attach to sound trigger module"

    #@71
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    monitor-exit v6

    #@75
    .line 163
    return v9

    #@76
    .line 170
    :cond_6
    :try_start_2
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@78
    if-eq v4, v9, :cond_7

    #@7a
    .line 171
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@7c
    invoke-virtual {p2, v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v4

    #@80
    if-eqz v4, :cond_a

    #@82
    .line 183
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@84
    if-eqz v4, :cond_8

    #@86
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@88
    invoke-interface {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@8b
    move-result-object v4

    #@8c
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@8f
    move-result-object v5

    #@90
    if-eq v4, v5, :cond_8

    #@92
    .line 184
    const-string/jumbo v4, "SoundTriggerHelper"

    #@95
    const-string/jumbo v5, "Canceling previous recognition"

    #@98
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9b
    .line 186
    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@9d
    const/high16 v5, -0x80000000

    #@9f
    invoke-interface {v4, v5}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a2
    .line 190
    :goto_2
    const/4 v4, 0x0

    #@a3
    :try_start_4
    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@a5
    .line 194
    :cond_8
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@a7
    .line 195
    .local v2, "soundModelHandle":I
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@a9
    if-eq v4, v9, :cond_9

    #@ab
    .line 196
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@ad
    if-nez v4, :cond_e

    #@af
    .line 197
    :cond_9
    const/4 v4, 0x1

    #@b0
    new-array v1, v4, [I

    #@b2
    const/high16 v4, -0x80000000

    #@b4
    const/4 v5, 0x0

    #@b5
    aput v4, v1, v5

    #@b7
    .line 198
    .local v1, "handle":[I
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@b9
    invoke-virtual {v4, p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    #@bc
    move-result v3

    #@bd
    .line 199
    .local v3, "status":I
    if-eqz v3, :cond_c

    #@bf
    .line 200
    const-string/jumbo v4, "SoundTriggerHelper"

    #@c2
    new-instance v5, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v7, "loadSoundModel call failed with "

    #@ca
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v5

    #@d6
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d9
    monitor-exit v6

    #@da
    .line 201
    return v3

    #@db
    .line 172
    .end local v1    # "handle":[I
    .end local v2    # "soundModelHandle":I
    .end local v3    # "status":I
    :cond_a
    :try_start_5
    const-string/jumbo v4, "SoundTriggerHelper"

    #@de
    const-string/jumbo v5, "Unloading previous sound model"

    #@e1
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    .line 173
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@e6
    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@e8
    invoke-virtual {v4, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    #@eb
    move-result v3

    #@ec
    .line 174
    .restart local v3    # "status":I
    if-eqz v3, :cond_b

    #@ee
    .line 175
    const-string/jumbo v4, "SoundTriggerHelper"

    #@f1
    new-instance v5, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v7, "unloadSoundModel call failed with "

    #@f9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v5

    #@fd
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v5

    #@101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v5

    #@105
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    .line 177
    :cond_b
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    #@10b
    .line 178
    const/4 v4, 0x0

    #@10c
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10e
    goto/16 :goto_1

    #@110
    .line 126
    .end local v3    # "status":I
    :catchall_0
    move-exception v4

    #@111
    monitor-exit v6

    #@112
    throw v4

    #@113
    .line 187
    :catch_0
    move-exception v0

    #@114
    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v4, "SoundTriggerHelper"

    #@117
    const-string/jumbo v5, "RemoteException in onDetectionStopped"

    #@11a
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11d
    goto :goto_2

    #@11e
    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handle":[I
    .restart local v2    # "soundModelHandle":I
    .restart local v3    # "status":I
    :cond_c
    const/4 v4, 0x0

    #@11f
    aget v4, v1, v4

    #@121
    if-ne v4, v9, :cond_d

    #@123
    .line 204
    const-string/jumbo v4, "SoundTriggerHelper"

    #@126
    const-string/jumbo v5, "loadSoundModel call returned invalid sound model handle"

    #@129
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@12c
    monitor-exit v6

    #@12d
    .line 205
    return v9

    #@12e
    .line 207
    :cond_d
    const/4 v4, 0x0

    #@12f
    :try_start_7
    aget v2, v1, v4

    #@131
    .line 213
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :cond_e
    const/4 v4, 0x1

    #@132
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@134
    .line 214
    iput p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    #@136
    .line 215
    iput v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    #@138
    .line 216
    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@13a
    .line 217
    iput-object p4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@13c
    .line 220
    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@13e
    .line 222
    const/4 v4, 0x0

    #@13f
    invoke-direct {p0, v4}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@142
    move-result v4

    #@143
    monitor-exit v6

    #@144
    return v4
.end method

.method stopAllRecognitions()V
    .locals 4

    #@0
    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v1, :cond_1

    #@b
    :cond_0
    monitor-exit v2

    #@c
    .line 287
    return-void

    #@d
    .line 290
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    const/high16 v3, -0x80000000

    #@11
    if-ne v1, v3, :cond_2

    #@13
    monitor-exit v2

    #@14
    .line 291
    return-void

    #@15
    .line 294
    :cond_2
    const/4 v1, 0x0

    #@16
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@18
    .line 295
    const/4 v1, 0x0

    #@19
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    #@1c
    move-result v0

    #@1d
    .line 296
    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 284
    return-void

    #@22
    .line 285
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 5
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@0
    .prologue
    const/high16 v4, -0x80000000

    #@2
    .line 237
    if-nez p2, :cond_0

    #@4
    .line 238
    return v4

    #@5
    .line 241
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    #@7
    monitor-enter v2

    #@8
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 250
    :cond_1
    const-string/jumbo v1, "SoundTriggerHelper"

    #@13
    const-string/jumbo v3, "Attempting stopRecognition without the capability"

    #@16
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 251
    return v4

    #@1b
    .line 254
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 256
    const-string/jumbo v1, "SoundTriggerHelper"

    #@22
    const-string/jumbo v3, "Attempting stopRecognition without a successful startRecognition"

    #@25
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 257
    return v4

    #@2a
    .line 259
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@2c
    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v3

    #@34
    if-eq v1, v3, :cond_4

    #@36
    .line 262
    const-string/jumbo v1, "SoundTriggerHelper"

    #@39
    const-string/jumbo v3, "Attempting stopRecognition for another recognition"

    #@3c
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    monitor-exit v2

    #@40
    .line 263
    return v4

    #@41
    .line 267
    :cond_4
    const/4 v1, 0x0

    #@42
    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    #@44
    .line 268
    const/4 v1, 0x0

    #@45
    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    move-result v0

    #@49
    .line 269
    .local v0, "status":I
    if-eqz v0, :cond_5

    #@4b
    monitor-exit v2

    #@4c
    .line 270
    return v0

    #@4d
    .line 276
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    monitor-exit v2

    #@51
    .line 277
    return v0

    #@52
    .line 241
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    #@53
    monitor-exit v2

    #@54
    throw v1
.end method
