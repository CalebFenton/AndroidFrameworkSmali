.class public final Landroid/media/soundtrigger/SoundTriggerDetector;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerDetector$Callback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;,
        Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_SOUND_TRIGGER_DETECTED:I = 0x2

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SoundTriggerDetector"


# instance fields
.field private final mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

.field private final mSoundModelId:Ljava/util/UUID;

.field private final mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;


# direct methods
.method static synthetic -get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "soundTriggerService"    # Lcom/android/internal/app/ISoundTriggerService;
    .param p2, "soundModelId"    # Ljava/util/UUID;
    .param p3, "callback"    # Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    #@b
    .line 221
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    #@d
    .line 222
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    #@f
    .line 223
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@11
    .line 224
    if-nez p4, :cond_0

    #@13
    .line 225
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    #@15
    invoke-direct {v0, p0}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    #@18
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    #@1a
    .line 229
    :goto_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    #@1c
    invoke-direct {v0, p0, v2}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;)V

    #@1f
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    #@21
    .line 220
    return-void

    #@22
    .line 227
    :cond_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    #@24
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, p0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V

    #@2b
    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    #@2d
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 272
    return-void
.end method

.method public startRecognition(I)Z
    .locals 10
    .param p1, "recognitionFlags"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 242
    and-int/lit8 v3, p1, 0x1

    #@3
    if-eqz v3, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    .line 245
    .local v1, "captureTriggerAudio":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    #@8
    if-eqz v3, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    .line 247
    .local v0, "allowMultipleTriggers":Z
    :goto_1
    :try_start_0
    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    #@d
    new-instance v4, Landroid/os/ParcelUuid;

    #@f
    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    #@11
    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@14
    .line 248
    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    #@16
    new-instance v6, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@18
    .line 249
    const/4 v7, 0x0

    #@19
    const/4 v8, 0x0

    #@1a
    .line 248
    invoke-direct {v6, v1, v0, v7, v8}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    #@1d
    .line 247
    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/app/ISoundTriggerService;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 253
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 242
    .end local v0    # "allowMultipleTriggers":Z
    .end local v1    # "captureTriggerAudio":Z
    :cond_0
    const/4 v1, 0x0

    #@23
    .restart local v1    # "captureTriggerAudio":Z
    goto :goto_0

    #@24
    .line 245
    :cond_1
    const/4 v0, 0x0

    #@25
    .restart local v0    # "allowMultipleTriggers":Z
    goto :goto_1

    #@26
    .line 250
    :catch_0
    move-exception v2

    #@27
    .line 251
    .local v2, "e":Landroid/os/RemoteException;
    return v9
.end method

.method public stopRecognition()Z
    .locals 4

    #@0
    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    #@2
    new-instance v2, Landroid/os/ParcelUuid;

    #@4
    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    #@6
    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    #@9
    .line 262
    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    #@b
    .line 261
    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/ISoundTriggerService;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 266
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 263
    :catch_0
    move-exception v0

    #@11
    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@12
    return v1
.end method
