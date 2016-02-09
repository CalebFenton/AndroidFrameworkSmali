.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field public static final MANAGE_ACTION_ENROLL:I = 0x0

.field public static final MANAGE_ACTION_RE_ENROLL:I = 0x1

.field public static final MANAGE_ACTION_UN_ENROLL:I = 0x2

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_HOTWORD_DETECTED:I = 0x2

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final STATE_INVALID:I = -0x3

.field public static final STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final STATE_KEYPHRASE_UNSUPPORTED:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final STATUS_ERROR:I = -0x80000000

.field private static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"


# instance fields
.field private mAvailability:I

.field private final mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private final mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private final mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private final mText:Ljava/lang/String;

.field private final mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;


# direct methods
.method static synthetic -get0(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/IVoiceInteractionService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/service/voice/AlwaysOnHotwordDetector;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/service/voice/AlwaysOnHotwordDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Landroid/service/voice/IVoiceInteractionService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .param p4, "keyphraseEnrollmentInfo"    # Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .param p5, "voiceInteractionService"    # Landroid/service/voice/IVoiceInteractionService;
    .param p6, "modelManagementService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 196
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@b
    .line 199
    iput v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@d
    .line 339
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    #@f
    .line 340
    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    #@11
    .line 341
    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@13
    .line 342
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@15
    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@1b
    .line 343
    iput-object p3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@1d
    .line 344
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    #@1f
    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    #@22
    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    #@24
    .line 345
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    #@26
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    #@28
    invoke-direct {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    #@2b
    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    #@2d
    .line 346
    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    #@2f
    .line 347
    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@31
    .line 348
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    #@33
    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    #@36
    new-array v1, v2, [Ljava/lang/Void;

    #@38
    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@3b
    .line 338
    return-void
.end method

.method private getManageIntentLocked(I)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # I

    #@0
    .prologue
    .line 512
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@2
    const/4 v1, -0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 513
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "getManageIntent called on an invalid detector"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 517
    :cond_0
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@10
    const/4 v1, 0x2

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 518
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@15
    const/4 v1, 0x1

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 519
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1a
    .line 520
    const-string/jumbo v1, "Managing the given keyphrase is not supported"

    #@1d
    .line 519
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 523
    :cond_1
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@23
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    #@25
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    #@27
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method private getSupportedRecognitionModesLocked()I
    .locals 2

    #@0
    .prologue
    .line 372
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@2
    const/4 v1, -0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    .line 374
    const-string/jumbo v1, "getSupportedRecognitionModes called on an invalid detector"

    #@a
    .line 373
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 378
    :cond_0
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@10
    const/4 v1, 0x2

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 379
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@15
    const/4 v1, 0x1

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1a
    .line 381
    const-string/jumbo v1, "Getting supported recognition modes for the keyphrase is not supported"

    #@1d
    .line 380
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 384
    :cond_1
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@23
    iget v0, v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    #@25
    return v0
.end method

.method private notifyStateChangedLocked()V
    .locals 3

    #@0
    .prologue
    .line 605
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 606
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@9
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@b
    .line 607
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 604
    return-void
.end method

.method private startRecognitionLocked(I)I
    .locals 12
    .param p1, "recognitionFlags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 566
    const/4 v0, 0x1

    #@2
    new-array v10, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@4
    .line 568
    .local v10, "recognitionExtra":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@6
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8
    iget v1, v1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    #@a
    .line 569
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@c
    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->recognitionModeFlags:I

    #@e
    new-array v3, v4, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@10
    .line 568
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    #@13
    aput-object v0, v10, v4

    #@15
    .line 571
    and-int/lit8 v0, p1, 0x1

    #@17
    if-eqz v0, :cond_1

    #@19
    const/4 v7, 0x1

    #@1a
    .line 573
    .local v7, "captureTriggerAudio":Z
    :goto_0
    and-int/lit8 v0, p1, 0x2

    #@1c
    if-eqz v0, :cond_2

    #@1e
    const/4 v6, 0x1

    #@1f
    .line 574
    .local v6, "allowMultipleTriggers":Z
    :goto_1
    const/high16 v8, -0x80000000

    #@21
    .line 576
    .local v8, "code":I
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@23
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    #@25
    .line 577
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@27
    iget v2, v2, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    #@29
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    #@2b
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    #@31
    .line 578
    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@33
    .line 579
    const/4 v11, 0x0

    #@34
    .line 578
    invoke-direct {v5, v7, v6, v10, v11}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    #@37
    .line 576
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result v8

    #@3b
    .line 583
    :goto_2
    if-eqz v8, :cond_0

    #@3d
    .line 584
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "startRecognition() failed with error code "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 586
    :cond_0
    return v8

    #@58
    .line 571
    .end local v6    # "allowMultipleTriggers":Z
    .end local v7    # "captureTriggerAudio":Z
    .end local v8    # "code":I
    :cond_1
    const/4 v7, 0x0

    #@59
    .restart local v7    # "captureTriggerAudio":Z
    goto :goto_0

    #@5a
    .line 573
    :cond_2
    const/4 v6, 0x0

    #@5b
    .restart local v6    # "allowMultipleTriggers":Z
    goto :goto_1

    #@5c
    .line 580
    .restart local v8    # "code":I
    :catch_0
    move-exception v9

    #@5d
    .line 581
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@60
    const-string/jumbo v1, "RemoteException in startRecognition!"

    #@63
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66
    goto :goto_2
.end method

.method private stopRecognitionLocked()I
    .locals 6

    #@0
    .prologue
    .line 590
    const/high16 v0, -0x80000000

    #@2
    .line 592
    .local v0, "code":I
    :try_start_0
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@4
    .line 593
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mVoiceInteractionService:Landroid/service/voice/IVoiceInteractionService;

    #@6
    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8
    iget v4, v4, Landroid/hardware/soundtrigger/KeyphraseMetadata;->id:I

    #@a
    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    #@c
    .line 592
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v0

    #@10
    .line 598
    :goto_0
    if-eqz v0, :cond_0

    #@12
    .line 599
    const-string/jumbo v2, "AlwaysOnHotwordDetector"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "stopRecognition() failed with error code "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 601
    :cond_0
    return v0

    #@2d
    .line 594
    :catch_0
    move-exception v1

    #@2e
    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AlwaysOnHotwordDetector"

    #@31
    const-string/jumbo v3, "RemoteException in stopRecognition!"

    #@34
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_0
.end method


# virtual methods
.method public createEnrollIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 465
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    monitor-exit v0

    #@9
    return-object v1

    #@a
    .line 464
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public createReEnrollIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 507
    const/4 v1, 0x1

    #@4
    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    monitor-exit v0

    #@9
    return-object v1

    #@a
    .line 506
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public createUnEnrollIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 486
    const/4 v1, 0x2

    #@4
    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    monitor-exit v0

    #@9
    return-object v1

    #@a
    .line 485
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 756
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 757
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v0, "Text="

    #@9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    #@e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 758
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    const-string/jumbo v0, "Locale="

    #@17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1f
    .line 759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    const-string/jumbo v0, "Availability="

    #@25
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@2a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2d
    .line 760
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    const-string/jumbo v0, "KeyphraseMetadata="

    #@33
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@38
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3b
    .line 761
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    const-string/jumbo v0, "EnrollmentInfo="

    #@41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@46
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    monitor-exit v1

    #@4a
    .line 755
    return-void

    #@4b
    .line 756
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit v1

    #@4d
    throw v0
.end method

.method public getSupportedRecognitionModes()I
    .locals 2

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 367
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 366
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method invalidate()V
    .locals 2

    #@0
    .prologue
    .line 533
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 534
    const/4 v0, -0x3

    #@4
    :try_start_0
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@6
    .line 535
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 532
    return-void

    #@b
    .line 533
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method onSoundModelsChanged()V
    .locals 3

    #@0
    .prologue
    .line 545
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 546
    :try_start_0
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@5
    const/4 v2, -0x3

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 547
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@a
    const/4 v2, -0x2

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 549
    :cond_0
    const-string/jumbo v0, "AlwaysOnHotwordDetector"

    #@10
    const-string/jumbo v2, "Received onSoundModelsChanged for an unsupported keyphrase/config"

    #@13
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 550
    return-void

    #@18
    .line 548
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@1a
    const/4 v2, -0x1

    #@1b
    if-eq v0, v2, :cond_0

    #@1d
    .line 558
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    #@20
    .line 561
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;

    #@22
    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    #@25
    const/4 v2, 0x0

    #@26
    new-array v2, v2, [Ljava/lang/Void;

    #@28
    invoke-virtual {v0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabiltyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v1

    #@2c
    .line 544
    return-void

    #@2d
    .line 545
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0
.end method

.method public startRecognition(I)Z
    .locals 4
    .param p1, "recognitionFlags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 404
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 405
    :try_start_0
    iget v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@6
    const/4 v3, -0x3

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "startRecognition called on an invalid detector"

    #@e
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 404
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0

    #@15
    .line 410
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@17
    const/4 v3, 0x2

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1c
    .line 412
    const-string/jumbo v2, "Recognition for the given keyphrase is not supported"

    #@1f
    .line 411
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 415
    :cond_1
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_2

    #@29
    const/4 v0, 0x1

    #@2a
    :cond_2
    monitor-exit v1

    #@2b
    return v0
.end method

.method public stopRecognition()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 432
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 433
    :try_start_0
    iget v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@6
    const/4 v3, -0x3

    #@7
    if-ne v2, v3, :cond_0

    #@9
    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "stopRecognition called on an invalid detector"

    #@e
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 432
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0

    #@15
    .line 438
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    #@17
    const/4 v3, 0x2

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1c
    .line 440
    const-string/jumbo v2, "Recognition for the given keyphrase is not supported"

    #@1f
    .line 439
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 443
    :cond_1
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_2

    #@29
    const/4 v0, 0x1

    #@2a
    :cond_2
    monitor-exit v1

    #@2b
    return v0
.end method
