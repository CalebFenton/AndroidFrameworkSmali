.class Landroid/speech/SpeechRecognizerImpl;
.super Landroid/speech/SpeechRecognizer;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;,
        Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;,
        Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;,
        Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;,
        Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MSG_CANCEL:I = 0x3

.field private static final blacklist MSG_CHANGE_LISTENER:I = 0x4

.field private static final blacklist MSG_CHECK_RECOGNITION_SUPPORT:I = 0x6

.field private static final blacklist MSG_DESTROY:I = 0x8

.field private static final blacklist MSG_SET_TEMPORARY_ON_DEVICE_COMPONENT:I = 0x5

.field private static final blacklist MSG_START:I = 0x1

.field private static final blacklist MSG_STOP:I = 0x2

.field private static final blacklist MSG_TRIGGER_MODEL_DOWNLOAD:I = 0x7

.field private static final blacklist TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

.field private blacklist mManagerService:Landroid/speech/IRecognitionServiceManager;

.field private final blacklist mOnDevice:Z

.field private final blacklist mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/speech/IRecognitionService;

.field private final blacklist mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizerImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/speech/SpeechRecognizerImpl;)Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizerImpl;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/IRecognitionService;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCancelMessage(Landroid/speech/SpeechRecognizerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->handleCancelMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChangeListener(Landroid/speech/SpeechRecognizerImpl;Landroid/speech/RecognitionListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCheckRecognitionSupport(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl;->handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroy(Landroid/speech/SpeechRecognizerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->handleDestroy()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetTemporaryComponent(Landroid/speech/SpeechRecognizerImpl;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleSetTemporaryComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStartListening(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleStopMessage(Landroid/speech/SpeechRecognizerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->handleStopMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTriggerModelDownload(Landroid/speech/SpeechRecognizerImpl;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizerImpl;->handleTriggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 129
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "onDevice"    # Z

    .line 142
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;-><init>()V

    .line 81
    new-instance v0, Landroid/speech/SpeechRecognizerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizerImpl$1;-><init>(Landroid/speech/SpeechRecognizerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    .line 117
    new-instance v0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;-><init>(Landroid/speech/SpeechRecognizerImpl-IA;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    .line 119
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mClientToken:Landroid/os/IBinder;

    .line 143
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Landroid/speech/SpeechRecognizerImpl;->mServiceComponent:Landroid/content/ComponentName;

    .line 145
    iput-boolean p3, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    .line 146
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onDevice"    # Z

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 137
    return-void
.end method

.method static blacklist checkIsCalledFromMainThread()V
    .registers 2

    .line 289
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 293
    return-void

    .line 290
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkOpenConnection()Z
    .registers 3

    .line 413
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    invoke-interface {v0}, Landroid/speech/IRecognitionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_12
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 417
    const-string v0, "SpeechRecognizer"

    const-string/jumbo v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist connectToSystemService()V
    .registers 6

    .line 448
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 449
    return-void

    .line 452
    :cond_7
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->getSpeechRecognizerComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 454
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-boolean v1, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    .line 455
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 456
    return-void

    .line 460
    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mClientToken:Landroid/os/IBinder;

    iget-boolean v3, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    new-instance v4, Landroid/speech/SpeechRecognizerImpl$2;

    invoke-direct {v4, p0}, Landroid/speech/SpeechRecognizerImpl$2;-><init>(Landroid/speech/SpeechRecognizerImpl;)V

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/speech/IRecognitionServiceManager;->createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_27

    .line 485
    goto :goto_2b

    .line 483
    :catch_27
    move-exception v1

    .line 484
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 486
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method private blacklist getSpeechRecognizerComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 526
    iget-boolean v0, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 527
    return-object v1

    .line 530
    :cond_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mServiceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_d

    .line 531
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0

    .line 534
    :cond_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "voice_recognition_service"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "serviceComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 538
    const-string v2, "SpeechRecognizer"

    const-string/jumbo v3, "no selected voice recognition service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 540
    return-object v1

    .line 543
    :cond_2f
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist handleCancelMessage()V
    .registers 4

    .line 333
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 334
    return-void

    .line 337
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 342
    goto :goto_1e

    .line 339
    :catch_10
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private blacklist handleChangeListener(Landroid/speech/RecognitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 424
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    .line 425
    return-void
.end method

.method private blacklist handleCheckRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 8
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "recognitionSupportCallback"    # Landroid/speech/RecognitionSupportCallback;

    .line 365
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_30

    .line 369
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Landroid/speech/SpeechRecognizerImpl$InternalSupportCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizerImpl-IA;)V

    .line 369
    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    .line 377
    goto :goto_2f

    .line 374
    :catch_1f
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpeechRecognizer"

    const-string v2, "checkRecognitionSupport() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v1, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/speech/RecognitionSupportCallback;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void

    .line 366
    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist handleDestroy()V
    .registers 4

    .line 433
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_e

    .line 435
    :try_start_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    .line 438
    goto :goto_e

    .line 436
    :catch_d
    move-exception v0

    .line 441
    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    .line 442
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 443
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fputmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;Landroid/speech/RecognitionListener;)V

    .line 444
    return-void
.end method

.method private blacklist handleSetTemporaryComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 350
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 351
    return-void

    .line 355
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionServiceManager;->setTemporaryComponent(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 358
    goto :goto_11

    .line 356
    :catch_d
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method private blacklist handleStartListening(Landroid/content/Intent;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 305
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 306
    return-void

    .line 309
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    .line 314
    goto :goto_24

    .line 311
    :catch_15
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method private blacklist handleStopMessage()V
    .registers 4

    .line 319
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_7

    .line 320
    return-void

    .line 323
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-interface {v0, v1}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 328
    goto :goto_1e

    .line 325
    :catch_f
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private blacklist handleTriggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 9
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 384
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->maybeInitializeManagerService()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->checkOpenConnection()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 388
    :cond_d
    const/4 v0, 0x0

    const-string v1, "SpeechRecognizer"

    if-nez p3, :cond_2c

    .line 391
    :try_start_12
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v3, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 391
    invoke-interface {v2, p1, v3, v0}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_2b

    .line 394
    :catch_1e
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "triggerModelDownload() without a listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    goto :goto_4c

    .line 401
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    iget-object v3, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    new-instance v4, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;

    invoke-direct {v4, p2, p3, v0}, Landroid/speech/SpeechRecognizerImpl$InternalModelDownloadListener;-><init>(Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl-IA;)V

    .line 401
    invoke-interface {v2, p1, v3, v4}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3c} :catch_3d

    .line 408
    goto :goto_4c

    .line 405
    :catch_3d
    move-exception v0

    .line 406
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "triggerModelDownload() with a listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    new-instance v1, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Landroid/speech/SpeechRecognizerImpl$$ExternalSyntheticLambda1;-><init>(Landroid/speech/ModelDownloadListener;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void

    .line 385
    :cond_4d
    :goto_4d
    return-void
.end method

.method static synthetic blacklist lambda$handleCheckRecognitionSupport$0(Landroid/speech/RecognitionSupportCallback;)V
    .registers 2
    .param p0, "recognitionSupportCallback"    # Landroid/speech/RecognitionSupportCallback;

    .line 376
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/RecognitionSupportCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleTriggerModelDownload$1(Landroid/speech/ModelDownloadListener;)V
    .registers 2
    .param p0, "modelDownloadListener"    # Landroid/speech/ModelDownloadListener;

    .line 407
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/speech/ModelDownloadListener;->onError(I)V

    return-void
.end method

.method static blacklist lenientlyCreateOnDeviceSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizerImpl;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    if-eqz p0, :cond_c

    .line 155
    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    .line 156
    new-instance v0, Landroid/speech/SpeechRecognizerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/speech/SpeechRecognizerImpl;-><init>(Landroid/content/Context;Z)V

    return-object v0

    .line 153
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized blacklist maybeInitializeManagerService()Z
    .registers 5

    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 493
    monitor-exit p0

    return v1

    .line 496
    :cond_8
    :try_start_8
    const-string/jumbo v0, "speech_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 497
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_21

    iget-boolean v2, p0, Landroid/speech/SpeechRecognizerImpl;->mOnDevice:Z

    if-eqz v2, :cond_21

    .line 498
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "speech_recognition"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    move-object v0, v2

    .line 500
    .end local p0    # "this":Landroid/speech/SpeechRecognizerImpl;
    :cond_21
    invoke-static {v0}, Landroid/speech/IRecognitionServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    .line 502
    iget-object v2, p0, Landroid/speech/SpeechRecognizerImpl;->mManagerService:Landroid/speech/IRecognitionServiceManager;

    if-nez v2, :cond_38

    .line 503
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    if-eqz v1, :cond_35

    .line 504
    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->onError(I)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3a

    .line 506
    :cond_35
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 508
    :cond_38
    monitor-exit p0

    return v1

    .line 491
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method private blacklist putMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 296
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_a

    .line 297
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_f

    .line 299
    :cond_a
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    :goto_f
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 3

    .line 215
    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    .line 216
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 217
    return-void
.end method

.method public whitelist checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .registers 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "supportListener"    # Landroid/speech/RecognitionSupportCallback;

    .line 224
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_13

    .line 236
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    .line 238
    :cond_13
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/speech/SpeechRecognizerImpl$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizerImpl-IA;)V

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 240
    return-void
.end method

.method public whitelist destroy()V
    .registers 3

    .line 429
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 430
    return-void
.end method

.method public whitelist setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .line 162
    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    .line 163
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mListener:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_f

    .line 169
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizerImpl;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    goto :goto_19

    .line 171
    :cond_f
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 173
    :goto_19
    return-void
.end method

.method public blacklist setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 284
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    .line 285
    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void
.end method

.method public whitelist startListening(Landroid/content/Intent;)V
    .registers 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 178
    if-eqz p1, :cond_17

    .line 181
    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    .line 190
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_c

    .line 192
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    .line 194
    :cond_c
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 195
    return-void

    .line 179
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopListening()V
    .registers 3

    .line 200
    invoke-static {}, Landroid/speech/SpeechRecognizerImpl;->checkIsCalledFromMainThread()V

    .line 209
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 244
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_d

    .line 253
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    .line 255
    :cond_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2, v2}, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl-IA;)V

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 258
    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .registers 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/speech/ModelDownloadListener;

    .line 265
    const-string/jumbo v0, "intent must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_d

    .line 274
    invoke-direct {p0}, Landroid/speech/SpeechRecognizerImpl;->connectToSystemService()V

    .line 276
    :cond_d
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/speech/SpeechRecognizerImpl$ModelDownloadListenerArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;Landroid/speech/SpeechRecognizerImpl-IA;)V

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizerImpl;->putMessage(Landroid/os/Message;)V

    .line 279
    return-void
.end method
