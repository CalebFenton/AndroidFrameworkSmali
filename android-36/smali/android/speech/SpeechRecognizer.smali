.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$RecognitionError;,
        Landroid/speech/SpeechRecognizer$LanguageSwitchResult;,
        Landroid/speech/SpeechRecognizer$LanguageDetectionConfidenceLevel;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_SCORES:Ljava/lang/String; = "confidence_scores"

.field public static final whitelist DETECTED_LANGUAGE:Ljava/lang/String; = "detected_language"

.field public static final whitelist ERROR_AUDIO:I = 0x3

.field public static final whitelist ERROR_CANNOT_CHECK_SUPPORT:I = 0xe

.field public static final whitelist ERROR_CANNOT_LISTEN_TO_DOWNLOAD_EVENTS:I = 0xf

.field public static final whitelist ERROR_CLIENT:I = 0x5

.field public static final whitelist ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final whitelist ERROR_LANGUAGE_NOT_SUPPORTED:I = 0xc

.field public static final whitelist ERROR_LANGUAGE_UNAVAILABLE:I = 0xd

.field public static final whitelist ERROR_NETWORK:I = 0x2

.field public static final whitelist ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final whitelist ERROR_NO_MATCH:I = 0x7

.field public static final whitelist ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final whitelist ERROR_SERVER:I = 0x4

.field public static final whitelist ERROR_SERVER_DISCONNECTED:I = 0xb

.field public static final whitelist ERROR_SPEECH_TIMEOUT:I = 0x6

.field public static final whitelist ERROR_TOO_MANY_REQUESTS:I = 0xa

.field public static final whitelist LANGUAGE_DETECTION_CONFIDENCE_LEVEL:Ljava/lang/String; = "language_detection_confidence_level"

.field public static final whitelist LANGUAGE_DETECTION_CONFIDENCE_LEVEL_CONFIDENT:I = 0x2

.field public static final whitelist LANGUAGE_DETECTION_CONFIDENCE_LEVEL_HIGHLY_CONFIDENT:I = 0x3

.field public static final whitelist LANGUAGE_DETECTION_CONFIDENCE_LEVEL_NOT_CONFIDENT:I = 0x1

.field public static final whitelist LANGUAGE_DETECTION_CONFIDENCE_LEVEL_UNKNOWN:I = 0x0

.field public static final whitelist LANGUAGE_SWITCH_RESULT:Ljava/lang/String; = "language_switch_result"

.field public static final whitelist LANGUAGE_SWITCH_RESULT_FAILED:I = 0x2

.field public static final whitelist LANGUAGE_SWITCH_RESULT_NOT_ATTEMPTED:I = 0x0

.field public static final whitelist LANGUAGE_SWITCH_RESULT_SKIPPED_NO_MODEL:I = 0x3

.field public static final whitelist LANGUAGE_SWITCH_RESULT_SUCCEEDED:I = 0x1

.field private static final greylist-max-o MSG_CANCEL:I = 0x3

.field private static final greylist-max-o MSG_CHANGE_LISTENER:I = 0x4

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x6

.field private static final blacklist MSG_SET_TEMPORARY_ON_DEVICE_COMPONENT:I = 0x5

.field private static final greylist-max-o MSG_START:I = 0x1

.field private static final greylist-max-o MSG_STOP:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x7

.field public static final whitelist RECOGNITION_PARTS:Ljava/lang/String; = "recognition_parts"

.field public static final whitelist RESULTS_ALTERNATIVES:Ljava/lang/String; = "results_alternatives"

.field public static final whitelist RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field public static final whitelist TOP_LOCALE_ALTERNATIVES:Ljava/lang/String; = "top_locale_alternatives"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 409
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isOnDeviceRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 412
    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl;->lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizerImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->wrapWithProxy(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0

    .line 410
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "On-device recognition is not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createOnDeviceTestingSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 430
    invoke-static {p0}, Landroid/speech/SpeechRecognizerImpl;->lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizerImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->wrapWithProxy(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 343
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .line 384
    if-eqz p0, :cond_f

    .line 387
    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    .line 388
    new-instance v0, Landroid/speech/SpeechRecognizerImpl;

    invoke-direct {v0, p0, p1}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->wrapWithProxy(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0

    .line 385
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isOnDeviceRecognitionAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 312
    nop

    .line 314
    const v0, 0x104024a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 315
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static whitelist isRecognitionAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2
.end method

.method private static blacklist wrapWithProxy(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .param p0, "delegate"    # Landroid/speech/SpeechRecognizer;

    .line 416
    new-instance v0, Landroid/speech/SpeechRecognizerProxy;

    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizerProxy;-><init>(Landroid/speech/SpeechRecognizer;)V

    return-object v0
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 2

    .line 492
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "supportListener"    # Landroid/speech/RecognitionSupportCallback;

    .line 508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist destroy()V
    .registers 2

    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist startListening(Landroid/content/Intent;)V
    .registers 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist stopListening()V
    .registers 2

    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;)V
    .registers 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 520
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/speech/ModelDownloadListener;

    .line 556
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
