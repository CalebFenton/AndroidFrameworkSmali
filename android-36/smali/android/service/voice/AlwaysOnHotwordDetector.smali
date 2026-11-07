.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Landroid/service/voice/AbstractDetector;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParams;,
        Landroid/service/voice/AlwaysOnHotwordDetector$AudioCapabilities;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionModes;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionFlags;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field static final greylist-max-o DBG:Z = false

.field public static final whitelist MODEL_PARAM_THRESHOLD_FACTOR:I = 0x0

.field private static final greylist-max-o MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_DETECTION_ERROR:I = 0x3

.field private static final blacklist MSG_DETECTION_HOTWORD_DETECTION_SERVICE_FAILURE:I = 0x9

.field private static final greylist-max-o MSG_DETECTION_PAUSE:I = 0x4

.field private static final greylist-max-o MSG_DETECTION_RESUME:I = 0x5

.field private static final blacklist MSG_DETECTION_SOUND_TRIGGER_FAILURE:I = 0xa

.field private static final blacklist MSG_DETECTION_UNKNOWN_FAILURE:I = 0xb

.field private static final greylist-max-o MSG_HOTWORD_DETECTED:I = 0x2

.field private static final blacklist MSG_HOTWORD_REJECTED:I = 0x6

.field private static final blacklist MSG_HOTWORD_STATUS_REPORTED:I = 0x7

.field private static final blacklist MSG_PROCESS_RESTARTED:I = 0x8

.field public static final whitelist RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_ECHO_CANCELLATION:I = 0x4

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_NOISE_SUPPRESSION:I = 0x8

.field public static final greylist-max-o RECOGNITION_FLAG_NONE:I = 0x0

.field public static final whitelist RECOGNITION_FLAG_RUN_IN_BATTERY_SAVER:I = 0x10

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field static final blacklist SEND_ON_FAILURE_FOR_ASYNC_EXCEPTIONS:J = 0x10b7a7d9L

.field public static final whitelist STATE_ERROR:I = 0x3

.field public static final whitelist STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final greylist-max-o STATE_INVALID:I = -0x3

.field public static final whitelist STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final whitelist STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final whitelist STATE_KEYPHRASE_UNSUPPORTED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STATE_NOT_READY:I = 0x0

.field private static final greylist-max-o STATUS_ERROR:I = -0x80000000

.field private static final greylist-max-o STATUS_OK:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"

.field static final blacklist THROW_ON_INITIALIZE_IF_NO_DSP:J = 0x100b2394L


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private greylist-max-o mAvailability:I

.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final greylist-max-o mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final blacklist mExternalExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private blacklist mIsAvailabilityOverriddenByTestApi:Z

.field private final greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private greylist-max-o mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private final greylist-max-o mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field private final blacklist mSupportSandboxedDetectionService:Z

.field private final greylist-max-o mText:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .registers 1

    iget p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalExecutor(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocale(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelManagementService(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundTriggerSession(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/hardware/soundtrigger/KeyphraseMetadata;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendUnknownFailure(Landroid/service/voice/AlwaysOnHotwordDetector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendUnknownFailure(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAndNotifyStateChangedLocked(Landroid/service/voice/AlwaysOnHotwordDetector;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLjava/lang/String;)V
    .registers 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .param p5, "keyphraseEnrollmentInfo"    # Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .param p6, "modelManagementService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p7, "targetSdkVersion"    # I
    .param p8, "supportSandboxedDetectionService"    # Z
    .param p9, "attributionTag"    # Ljava/lang/String;

    .line 897
    invoke-direct {p0, p6, p3, p4}, Landroid/service/voice/AbstractDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    .line 328
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 334
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 899
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    .line 900
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    .line 901
    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    .line 902
    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 903
    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    .line 904
    if-eqz p3, :cond_26

    move-object v0, p3

    goto :goto_34

    :cond_26
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    .line 905
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_34
    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalExecutor:Ljava/util/concurrent/Executor;

    .line 906
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 907
    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 908
    iput-boolean p8, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    .line 909
    iput-object p9, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAttributionTag:Ljava/lang/String;

    .line 910
    return-void
.end method

.method private blacklist detachSessionLocked()V
    .registers 2

    .line 1416
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    if-eqz v0, :cond_9

    .line 1417
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->detach()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1421
    :cond_9
    goto :goto_e

    .line 1419
    :catch_a
    move-exception v0

    .line 1420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1422
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private greylist-max-o getManageIntentLocked(I)Landroid/content/Intent;
    .registers 5
    .param p1, "action"    # I

    .line 1385
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_28

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    .line 1391
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    goto :goto_1d

    .line 1393
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Managing the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1397
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1386
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getManageIntent called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getParameterLocked(I)I
    .registers 4
    .param p1, "modelParam"    # I

    .line 1595
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1596
    :catch_d
    move-exception v0

    .line 1597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getSupportedAudioCapabilitiesLocked()I
    .registers 3

    .line 1106
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    .line 1107
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    .line 1108
    .local v0, "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    if-eqz v0, :cond_d

    .line 1109
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    return v1

    .line 1112
    :cond_d
    const/4 v1, 0x0

    return v1

    .line 1113
    .end local v0    # "properties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catch_f
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getSupportedRecognitionModesLocked()I
    .registers 3

    .line 1070
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_22

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 1076
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v0, :cond_1a

    .line 1081
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v0

    return v0

    .line 1077
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Getting supported recognition modes for the keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getSupportedRecognitionModes called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$initialize$0(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .registers 3
    .param p0, "prop"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 933
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    .line 934
    const-string/jumbo v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 933
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o notifyStateChangedLocked()V
    .registers 3

    .line 1637
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1638
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1639
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1640
    return-void
.end method

.method private blacklist queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .registers 4
    .param p1, "modelParam"    # I

    .line 1605
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1606
    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0

    .line 1608
    .local v0, "modelParamRange":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    if-nez v0, :cond_10

    .line 1609
    const/4 v1, 0x0

    return-object v1

    .line 1612
    :cond_10
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    invoke-direct {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 1613
    .end local v0    # "modelParamRange":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    :catch_16
    move-exception v0

    .line 1614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 4
    .param p1, "soundTriggerFailure"    # Landroid/service/voice/SoundTriggerFailure;

    .line 1650
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1651
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1652
    return-void
.end method

.method private blacklist sendUnknownFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "failureMessage"    # Ljava/lang/String;

    .line 1645
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAvailabilityLocked(I)V

    .line 1646
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1647
    return-void
.end method

.method private blacklist setParameterLocked(II)I
    .registers 7
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 1579
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    .line 1582
    .local v0, "code":I
    if-eqz v0, :cond_27

    .line 1583
    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameter failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 1586
    :cond_27
    return v0

    .line 1587
    .end local v0    # "code":I
    :catch_28
    move-exception v0

    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist startRecognitionLocked(I[B)I
    .registers 14
    .param p1, "recognitionFlags"    # I
    .param p2, "data"    # [B

    .line 1506
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_b0

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b0

    .line 1512
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a8

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    .line 1520
    .local v2, "recognitionExtra":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v3

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1521
    invoke-virtual {v4}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v4

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    .line 1520
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_33

    move v0, v1

    goto :goto_34

    :cond_33
    move v0, v5

    :goto_34
    move v3, v0

    .line 1524
    .local v3, "captureTriggerAudio":Z
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3b

    move v0, v1

    goto :goto_3c

    :cond_3b
    move v0, v5

    :goto_3c
    move v4, v0

    .line 1526
    .local v4, "allowMultipleTriggers":Z
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move v1, v5

    :goto_43
    move v10, v1

    .line 1528
    .local v10, "runInBatterySaver":Z
    const/4 v0, 0x0

    .line 1529
    .local v0, "audioCapabilities":I
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4b

    .line 1530
    or-int/lit8 v0, v0, 0x1

    .line 1532
    :cond_4b
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_53

    .line 1533
    or-int/lit8 v0, v0, 0x2

    move v1, v0

    goto :goto_54

    .line 1532
    :cond_53
    move v1, v0

    .line 1538
    .end local v0    # "audioCapabilities":I
    .local v1, "audioCapabilities":I
    :goto_54
    :try_start_54
    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 1539
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v6

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    .line 1540
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;-><init>()V

    .line 1543
    invoke-virtual {v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setCaptureRequested(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 1544
    invoke-virtual {v0, v4}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setMultipleTriggersAllowed(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 1545
    invoke-virtual {v0, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setKeyphrases(Ljava/util/Collection;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 1546
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setData([B)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 1547
    invoke-virtual {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->setAudioCapabilities(I)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;

    move-result-object v0

    .line 1548
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->build()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v9

    .line 1538
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_85} :catch_a2

    .line 1552
    .local v0, "code":I
    nop

    .line 1554
    if-eqz v0, :cond_a1

    .line 1555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRecognition() failed with error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlwaysOnHotwordDetector"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_a1
    return v0

    .line 1550
    .end local v0    # "code":I
    :catch_a2
    move-exception v0

    .line 1551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1513
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "audioCapabilities":I
    .end local v2    # "recognitionExtra":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    .end local v3    # "captureTriggerAudio":Z
    .end local v4    # "allowMultipleTriggers":Z
    .end local v10    # "runInBatterySaver":Z
    :cond_a8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Recognition for the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_b0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecognition called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o stopRecognitionLocked()I
    .registers 4

    .line 1564
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_2b

    .line 1568
    .local v0, "code":I
    nop

    .line 1570
    if-eqz v0, :cond_2a

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition() failed with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlwaysOnHotwordDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_2a
    return v0

    .line 1566
    .end local v0    # "code":I
    :catch_2b
    move-exception v0

    .line 1567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist updateAndNotifyStateChangedLocked(I)V
    .registers 2
    .param p1, "availability"    # I

    .line 1620
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAvailabilityLocked(I)V

    .line 1621
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 1622
    return-void
.end method

.method private blacklist updateAvailabilityLocked(I)V
    .registers 3
    .param p1, "availability"    # I

    .line 1630
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    if-nez v0, :cond_6

    .line 1631
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 1633
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist createEnrollIntent()Landroid/content/Intent;
    .registers 3

    .line 1334
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1336
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist createReEnrollIntent()Landroid/content/Intent;
    .registers 3

    .line 1378
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1380
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist createUnEnrollIntent()Landroid/content/Intent;
    .registers 3

    .line 1356
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1357
    const/4 v1, 0x2

    :try_start_4
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1358
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist destroy()V
    .registers 3

    .line 1403
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->detachSessionLocked()V

    .line 1406
    const/4 v1, -0x3

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 1407
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 1408
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 1409
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    .line 1410
    invoke-super {p0}, Landroid/service/voice/AbstractDetector;->destroy()V

    .line 1411
    return-void

    .line 1409
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1941
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Text="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Locale="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Availability="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KeyphraseMetadata="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1946
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "EnrollmentInfo="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1947
    monitor-exit v0

    .line 1948
    return-void

    .line 1947
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1922
    const-wide/32 v0, 0xb847d3f

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1923
    instance-of v0, p1, Landroid/service/voice/AlwaysOnHotwordDetector;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1924
    return v1

    .line 1926
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 1927
    .local v0, "other":Landroid/service/voice/AlwaysOnHotwordDetector;
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1

    .line 1930
    .end local v0    # "other":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_28
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getParameter(I)I
    .registers 5
    .param p1, "modelParam"    # I

    .line 1276
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1277
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_13

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 1282
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getParameterLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1278
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    throw v1

    .line 1283
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist getSupportedAudioCapabilities()I
    .registers 3

    .line 1098
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedAudioCapabilitiesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1100
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist getSupportedRecognitionModes()I
    .registers 3

    .line 1063
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_3
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1065
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1935
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 3
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 915
    return-void
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    .registers 11
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "moduleProperties"    # Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 919
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    if-eqz v0, :cond_10

    .line 920
    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAttributionTag:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .local v2, "options":Landroid/os/PersistableBundle;
    .local v3, "sharedMemory":Landroid/os/SharedMemory;
    invoke-virtual/range {v1 .. v6}, Landroid/service/voice/AlwaysOnHotwordDetector;->initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V

    goto :goto_13

    .line 919
    .end local v2    # "options":Landroid/os/PersistableBundle;
    .end local v3    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :cond_10
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 924
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v2    # "options":Landroid/os/PersistableBundle;
    .restart local v3    # "sharedMemory":Landroid/os/SharedMemory;
    :goto_13
    :try_start_13
    new-instance p1, Landroid/media/permission/Identity;

    invoke-direct {p1}, Landroid/media/permission/Identity;-><init>()V

    .line 925
    .local p1, "identity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 929
    if-nez p3, :cond_53

    .line 930
    iget-object p2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 931
    invoke-interface {p2, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object p2

    .line 932
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;-><init>()V

    .line 933
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 935
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p2

    .line 936
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object p3, p2

    .line 937
    const-wide/32 v4, 0x100b2394

    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_53

    if-eqz p3, :cond_4b

    goto :goto_53

    .line 939
    :cond_4b
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "No DSP module available to attach to"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "options":Landroid/os/PersistableBundle;
    .end local v3    # "sharedMemory":Landroid/os/SharedMemory;
    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p3    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    throw p2

    .line 942
    .restart local v2    # "options":Landroid/os/PersistableBundle;
    .restart local v3    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p3    # "moduleProperties":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :cond_53
    :goto_53
    iget-object p2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    .line 943
    invoke-interface {p2, p1, v0, p3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object p2

    iput-object p2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_5d} :catch_6a

    .line 947
    .end local p1    # "identity":Landroid/media/permission/Identity;
    nop

    .line 948
    new-instance p1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {p1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 949
    return-void

    .line 945
    :catch_6a
    move-exception v0

    move-object p1, v0

    .line 946
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist isUsingSandboxedDetectionService()Z
    .registers 2

    .line 1429
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    return v0
.end method

.method blacklist onDetectorRemoteException()V
    .registers 5

    .line 1779
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const/4 v2, 0x7

    const-string v3, "Detector remote exception occurs"

    invoke-direct {v1, v2, v3}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1783
    return-void
.end method

.method greylist-max-o onSoundModelsChanged()V
    .registers 8

    .line 1439
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1440
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_94

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_94

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    goto/16 :goto_94

    .line 1451
    :cond_14
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    if-eqz v1, :cond_21

    .line 1452
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Suppressing system availability update. Availability is overridden by test API."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    monitor-exit v0

    return-void

    .line 1461
    :cond_21
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_9d

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_88

    .line 1469
    :try_start_27
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    .line 1470
    .local v1, "result":I
    if-nez v1, :cond_39

    .line 1471
    new-instance v3, Landroid/service/voice/SoundTriggerFailure;

    const-string/jumbo v5, "stopped recognition because of enrollment update"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 1477
    :cond_39
    const-string v3, "AlwaysOnHotwordDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop recognition after enrollment update: code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_51} :catch_52
    .catchall {:try_start_27 .. :try_end_51} :catchall_9d

    .line 1490
    .end local v1    # "result":I
    goto :goto_88

    .line 1479
    :catch_52
    move-exception v1

    .line 1480
    .local v1, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v3, "AlwaysOnHotwordDetector"

    const-string v5, "Failed to stop recognition after enrollment update"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    const-wide/32 v5, 0x10b7a7d9

    invoke-static {v5, v6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1482
    new-instance v3, Landroid/service/voice/SoundTriggerFailure;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop recognition after enrollment update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1484
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    .line 1482
    invoke-direct {p0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    goto :goto_86

    .line 1487
    :cond_83
    invoke-direct {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    .line 1489
    :goto_86
    monitor-exit v0

    return-void

    .line 1494
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_88
    :goto_88
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1495
    monitor-exit v0

    .line 1496
    return-void

    .line 1443
    :cond_94
    :goto_94
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Received onSoundModelsChanged for an unsupported keyphrase/config or in the error state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    monitor-exit v0

    return-void

    .line 1495
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_53 .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method public blacklist overrideAvailability(I)V
    .registers 7
    .param p1, "availability"    # I

    .line 986
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_3
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    .line 988
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 991
    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-nez v2, :cond_24

    iget v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 992
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 993
    .local v2, "fakeSupportedLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v3, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2, v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Ljava/util/Set;I)V

    iput-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 997
    .end local v2    # "fakeSupportedLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    :cond_24
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    .line 998
    monitor-exit v0

    .line 999
    return-void

    .line 998
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist queryParameter(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .registers 5
    .param p1, "modelParam"    # I

    .line 1306
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1307
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_13

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 1312
    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1308
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "queryParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    throw v1

    .line 1313
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public blacklist resetAvailability()V
    .registers 3

    .line 1009
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    .line 1011
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 1013
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1014
    return-void

    .line 1011
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist setParameter(II)I
    .registers 6
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 1244
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_13

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 1250
    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->setParameterLocked(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1246
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "modelParam":I
    .end local p2    # "value":I
    throw v1

    .line 1251
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "modelParam":I
    .restart local p2    # "value":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist startRecognition()Z
    .registers 2

    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognition(I)Z

    move-result v0

    return v0
.end method

.method public whitelist startRecognition(I)Z
    .registers 5
    .param p1, "recognitionFlags"    # I

    .line 1166
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1167
    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [B

    invoke-direct {p0, p1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I[B)I

    move-result v2

    if-nez v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    monitor-exit v0

    return v1

    .line 1168
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist startRecognition(I[B)Z
    .registers 5
    .param p1, "recognitionFlags"    # I
    .param p2, "data"    # [B

    .line 1140
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I[B)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 1143
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public bridge synthetic whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/service/voice/AbstractDetector;->startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist stopRecognition()Z
    .registers 4

    .line 1202
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_3
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_25

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    .line 1209
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 1214
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    monitor-exit v0

    return v1

    .line 1210
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1204
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stopRecognition called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    throw v1

    .line 1215
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public blacklist triggerHardwareRecognitionEventForTest(IIJZIIIZLandroid/media/AudioFormat;[BLjava/util/List;)V
    .registers 30
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "halEventReceivedMillis"    # J
    .param p5, "captureAvailable"    # Z
    .param p6, "captureSession"    # I
    .param p7, "captureDelayMs"    # I
    .param p8, "capturePreambleMs"    # I
    .param p9, "triggerInData"    # Z
    .param p10, "captureFormat"    # Landroid/media/AudioFormat;
    .param p11, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZIIIZ",
            "Landroid/media/AudioFormat;",
            "[B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    .line 1028
    .local p12, "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    move-object/from16 v1, p0

    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v2, "triggerHardwareRecognitionEventForTest()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1030
    :try_start_d
    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v3, -0x3

    if-eq v0, v3, :cond_51

    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_5a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_51

    .line 1035
    :try_start_17
    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1038
    move-object/from16 v5, p12

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    new-instance v16, Landroid/os/Binder;

    invoke-direct/range {v16 .. v16}, Landroid/os/Binder;-><init>()V

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v14, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v3 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;JLandroid/os/IBinder;)V

    iget-object v4, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    .line 1035
    invoke-interface {v0, v3, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_48} :catch_4b
    .catchall {:try_start_17 .. :try_end_48} :catchall_5a

    .line 1044
    nop

    .line 1045
    :try_start_49
    monitor-exit v2

    .line 1046
    return-void

    .line 1042
    :catch_4b
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "status":I
    .end local p2    # "soundModelHandle":I
    .end local p3    # "halEventReceivedMillis":J
    .end local p5    # "captureAvailable":Z
    .end local p6    # "captureSession":I
    .end local p7    # "captureDelayMs":I
    .end local p8    # "capturePreambleMs":I
    .end local p9    # "triggerInData":Z
    .end local p10    # "captureFormat":Landroid/media/AudioFormat;
    .end local p11    # "data":[B
    .end local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v3

    .line 1031
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "status":I
    .restart local p2    # "soundModelHandle":I
    .restart local p3    # "halEventReceivedMillis":J
    .restart local p5    # "captureAvailable":Z
    .restart local p6    # "captureSession":I
    .restart local p7    # "captureDelayMs":I
    .restart local p8    # "capturePreambleMs":I
    .restart local p9    # "triggerInData":Z
    .restart local p10    # "captureFormat":Landroid/media/AudioFormat;
    .restart local p11    # "data":[B
    .restart local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "triggerHardwareRecognitionEventForTest called on an invalid detector or error state"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "status":I
    .end local p2    # "soundModelHandle":I
    .end local p3    # "halEventReceivedMillis":J
    .end local p5    # "captureAvailable":Z
    .end local p6    # "captureSession":I
    .end local p7    # "captureDelayMs":I
    .end local p8    # "capturePreambleMs":I
    .end local p9    # "triggerInData":Z
    .end local p10    # "captureFormat":Landroid/media/AudioFormat;
    .end local p11    # "data":[B
    .end local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    throw v0

    .line 1045
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "status":I
    .restart local p2    # "soundModelHandle":I
    .restart local p3    # "halEventReceivedMillis":J
    .restart local p5    # "captureAvailable":Z
    .restart local p6    # "captureSession":I
    .restart local p7    # "captureDelayMs":I
    .restart local p8    # "capturePreambleMs":I
    .restart local p9    # "triggerInData":Z
    .restart local p10    # "captureFormat":Landroid/media/AudioFormat;
    .restart local p11    # "data":[B
    .restart local p12    # "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    :catchall_5a
    move-exception v0

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public final whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 6
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 961
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_3
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    if-eqz v1, :cond_1f

    .line 966
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_16

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    .line 970
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    .line 972
    invoke-super {p0, p1, p2}, Landroid/service/voice/AbstractDetector;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 973
    return-void

    .line 967
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw v1

    .line 963
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called, but it doesn\'t support hotword detection service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    throw v1

    .line 970
    .restart local p0    # "this":Landroid/service/voice/AlwaysOnHotwordDetector;
    .restart local p1    # "options":Landroid/os/PersistableBundle;
    .restart local p2    # "sharedMemory":Landroid/os/SharedMemory;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_28

    throw v1
.end method
