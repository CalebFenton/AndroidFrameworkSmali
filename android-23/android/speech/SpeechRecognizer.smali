.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$Connection;,
        Landroid/speech/SpeechRecognizer$InternalListener;,
        Landroid/speech/SpeechRecognizer$1;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_SCORES:Ljava/lang/String; = "confidence_scores"

.field private static final DBG:Z = false

.field public static final ERROR_AUDIO:I = 0x3

.field public static final ERROR_CLIENT:I = 0x5

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final ERROR_NO_MATCH:I = 0x7

.field public static final ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_SPEECH_TIMEOUT:I = 0x6

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_CHANGE_LISTENER:I = 0x4

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field public static final RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private mConnection:Landroid/speech/SpeechRecognizer$Connection;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/speech/SpeechRecognizer$InternalListener;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/speech/IRecognitionService;

.field private final mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static synthetic -get0(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleCancelMessage()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .locals 0
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleStopMessage()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    #@5
    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;)V

    #@8
    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@a
    .line 150
    new-instance v0, Ljava/util/LinkedList;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    #@11
    .line 153
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;-><init>(Landroid/speech/SpeechRecognizer$InternalListener;)V

    #@17
    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@19
    .line 160
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    #@1b
    .line 161
    iput-object p2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    #@1d
    .line 159
    return-void
.end method

.method private static checkIsCalledFromMainThread()V
    .locals 2

    #@0
    .prologue
    .line 324
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    .line 326
    const-string/jumbo v1, "SpeechRecognizer should be used only from the application\'s main thread"

    #@f
    .line 325
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 323
    :cond_0
    return-void
.end method

.method private checkOpenConnection()Z
    .locals 2

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 382
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 384
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@8
    const/4 v1, 0x5

    #@9
    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    #@c
    .line 385
    const-string/jumbo v0, "SpeechRecognizer"

    #@f
    const-string/jumbo v1, "not connected to the recognition service"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 386
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 212
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 233
    if-nez p0, :cond_0

    #@2
    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Context cannot be null)"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 236
    :cond_0
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    #@e
    .line 237
    new-instance v0, Landroid/speech/SpeechRecognizer;

    #@10
    invoke-direct {v0, p0, p1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    #@13
    return-object v0
.end method

.method private handleCancelMessage()V
    .locals 3

    #@0
    .prologue
    .line 368
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 369
    return-void

    #@7
    .line 372
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@9
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@b
    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 367
    :goto_0
    return-void

    #@f
    .line 374
    :catch_0
    move-exception v0

    #@10
    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SpeechRecognizer"

    #@13
    const-string/jumbo v2, "cancel() failed"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 376
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    #@1f
    goto :goto_0
.end method

.method private handleChangeListener(Landroid/speech/RecognitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@2
    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer$InternalListener;->-set0(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    #@5
    .line 390
    return-void
.end method

.method private handleStartListening(Landroid/content/Intent;)V
    .locals 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 340
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 341
    return-void

    #@7
    .line 344
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@9
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@b
    invoke-interface {v1, p1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 339
    :goto_0
    return-void

    #@f
    .line 346
    :catch_0
    move-exception v0

    #@10
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SpeechRecognizer"

    #@13
    const-string/jumbo v2, "startListening() failed"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 348
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    #@1f
    goto :goto_0
.end method

.method private handleStopMessage()V
    .locals 3

    #@0
    .prologue
    .line 354
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 355
    return-void

    #@7
    .line 358
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@9
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@b
    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 353
    :goto_0
    return-void

    #@f
    .line 360
    :catch_0
    move-exception v0

    #@10
    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SpeechRecognizer"

    #@13
    const-string/jumbo v2, "stopListening() failed"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 362
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    #@1f
    goto :goto_0
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v2

    #@5
    .line 198
    new-instance v3, Landroid/content/Intent;

    #@7
    const-string/jumbo v4, "android.speech.RecognitionService"

    #@a
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 197
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    #@13
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_0
    return v1
.end method

.method private putMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 332
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    #@6
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    #@9
    .line 330
    :goto_0
    return-void

    #@a
    .line 334
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@f
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    #@0
    .prologue
    .line 319
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    #@3
    .line 320
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    #@d
    .line 318
    return-void
.end method

.method public destroy()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 399
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@7
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@9
    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 407
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 408
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    #@12
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@14
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@17
    .line 410
    :cond_1
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    #@19
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    #@1c
    .line 411
    iput-object v3, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@1e
    .line 412
    iput-object v3, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@20
    .line 413
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@22
    invoke-static {v1, v3}, Landroid/speech/SpeechRecognizer$InternalListener;->-set0(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    #@25
    .line 398
    return-void

    #@26
    .line 402
    :catch_0
    move-exception v0

    #@27
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    #@0
    .prologue
    .line 249
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    #@3
    .line 250
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x4

    #@6
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    #@d
    .line 248
    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .locals 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 263
    if-nez p1, :cond_0

    #@5
    .line 264
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "intent must not be null"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 266
    :cond_0
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    #@11
    .line 267
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@13
    if-nez v2, :cond_3

    #@15
    .line 268
    new-instance v2, Landroid/speech/SpeechRecognizer$Connection;

    #@17
    invoke-direct {v2, p0, v4}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)V

    #@1a
    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@1c
    .line 270
    new-instance v1, Landroid/content/Intent;

    #@1e
    const-string/jumbo v2, "android.speech.RecognitionService"

    #@21
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24
    .line 272
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    #@26
    if-nez v2, :cond_2

    #@28
    .line 273
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    #@2a
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2d
    move-result-object v2

    #@2e
    .line 274
    const-string/jumbo v3, "voice_recognition_service"

    #@31
    .line 273
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 276
    .local v0, "serviceComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 277
    const-string/jumbo v2, "SpeechRecognizer"

    #@3e
    const-string/jumbo v3, "no selected voice recognition service"

    #@41
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 278
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@46
    invoke-virtual {v2, v6}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    #@49
    .line 279
    return-void

    #@4a
    .line 282
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@51
    .line 287
    .end local v0    # "serviceComponent":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    #@53
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@55
    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@58
    move-result v2

    #@59
    if-nez v2, :cond_3

    #@5b
    .line 288
    const-string/jumbo v2, "SpeechRecognizer"

    #@5e
    const-string/jumbo v3, "bind to recognition service failed"

    #@61
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 289
    iput-object v4, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    #@66
    .line 290
    iput-object v4, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    #@68
    .line 291
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    #@6a
    invoke-virtual {v2, v6}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    #@6d
    .line 292
    return-void

    #@6e
    .line 284
    :cond_2
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    #@70
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@73
    goto :goto_0

    #@74
    .line 295
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@76
    invoke-static {v2, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@79
    move-result-object v2

    #@7a
    invoke-direct {p0, v2}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    #@7d
    .line 262
    return-void
.end method

.method public stopListening()V
    .locals 2

    #@0
    .prologue
    .line 309
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    #@3
    .line 310
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    #@d
    .line 308
    return-void
.end method
