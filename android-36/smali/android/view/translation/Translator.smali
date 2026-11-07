.class public Landroid/view/translation/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$ServiceBinderReceiver;,
        Landroid/view/translation/Translator$TranslationResponseCallbackImpl;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_SERVICE_BINDER:Ljava/lang/String; = "binder"

.field public static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final blacklist TAG:Ljava/lang/String; = "Translator"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDestroyed:Z

.field private blacklist mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManager:Landroid/view/translation/TranslationManager;

.field private final blacklist mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

.field private blacklist mSystemServerBinder:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/Translator;->setServiceBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p3, "sessionId"    # I
    .param p4, "translationManager"    # Landroid/view/translation/TranslationManager;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "systemServerBinder"    # Landroid/view/translation/ITranslationManager;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    .line 200
    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    .line 202
    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    .line 203
    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    .line 204
    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    .line 206
    new-instance v0, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {v0, p0}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;)V

    iput-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    .line 207
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p3, "sessionId"    # I
    .param p4, "translationManager"    # Landroid/view/translation/TranslationManager;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "systemServerBinder"    # Landroid/view/translation/ITranslationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/translation/TranslationContext;",
            "I",
            "Landroid/view/translation/TranslationManager;",
            "Landroid/os/Handler;",
            "Landroid/view/translation/ITranslationManager;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p7, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/Translator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    .line 177
    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    .line 178
    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    .line 179
    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    .line 180
    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    .line 181
    new-instance v0, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {v0, p0, p7}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    .line 184
    :try_start_1d
    iget-object v0, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    iget-object v3, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    iget-object v4, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 184
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2e} :catch_2f

    .line 188
    goto :goto_48

    .line 186
    :catch_2f
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling startSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_48
    return-void
.end method

.method private blacklist getNextRequestId()I
    .registers 2

    .line 233
    iget-object v0, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    invoke-virtual {v0}, Landroid/view/translation/TranslationManager;->getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private blacklist setServiceBinder(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 237
    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    if-eqz v1, :cond_9

    .line 239
    monitor-exit v0

    return-void

    .line 241
    :cond_9
    if-eqz p1, :cond_11

    .line 242
    invoke-static {p1}, Landroid/view/translation/ITranslationDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    .line 244
    :cond_11
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 5

    .line 347
    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 349
    monitor-exit v0

    return-void

    .line 351
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    .line 353
    :try_start_c
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v1, v2}, Landroid/view/translation/ITranslationDirectManager;->onFinishTranslationSession(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_28

    .line 356
    goto :goto_1c

    .line 354
    :catch_14
    move-exception v1

    .line 355
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v2, "Translator"

    const-string v3, "RemoteException calling onSessionFinished"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    .line 358
    iget-object v1, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/translation/TranslationManager;->removeTranslator(I)V

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "translationContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public blacklist getTranslationContext()Landroid/view/translation/TranslationContext;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    return-object v0
.end method

.method public blacklist getTranslatorId()I
    .registers 2

    .line 254
    iget v0, p0, Landroid/view/translation/Translator;->mId:I

    return v0
.end method

.method public whitelist isDestroyed()Z
    .registers 3

    .line 368
    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 370
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist isSessionCreated()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-virtual {v0}, Landroid/view/translation/Translator$ServiceBinderReceiver;->getSessionStateResult()I

    move-result v0

    .line 228
    .local v0, "receivedId":I
    if-lez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public blacklist requestUiTranslate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    iget-object v0, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    const-string v1, "Translator"

    if-nez v0, :cond_c

    .line 379
    const-string v0, "Translator created without proper initialization."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 382
    :cond_c
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 385
    .local v0, "translationCallback":Landroid/service/translation/ITranslationCallback;
    :try_start_11
    iget-object v2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v3, p0, Landroid/view/translation/Translator;->mId:I

    .line 386
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 385
    invoke-interface {v2, p1, v3, v4, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 389
    goto :goto_23

    .line 387
    :catch_1d
    move-exception v2

    .line 388
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException calling flushRequest"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method blacklist start()V
    .registers 6

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    iget-object v3, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    iget-object v4, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 214
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 218
    goto :goto_2b

    .line 216
    :catch_12
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling startSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method public whitelist translate(Landroid/view/translation/TranslationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_46

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "transport":Landroid/os/ICancellationSignal;
    if-eqz p2, :cond_1f

    .line 329
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 330
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 332
    :cond_1f
    new-instance v1, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v1, p4, p3}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 336
    .local v1, "responseCallback":Landroid/service/translation/ITranslationCallback;
    :try_start_24
    iget-object v2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v3, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v2, p1, v3, v0, v1}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 340
    goto :goto_45

    .line 338
    :catch_2c
    move-exception v2

    .line 339
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException calling requestTranslate(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Translator"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_45
    return-void

    .line 323
    .end local v0    # "transport":Landroid/os/ICancellationSignal;
    .end local v1    # "responseCallback":Landroid/service/translation/ITranslationCallback;
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This translator has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist translate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_40

    .line 289
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 292
    .local v0, "responseCallback":Landroid/service/translation/ITranslationCallback;
    :try_start_1a
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    .line 293
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 292
    invoke-interface {v1, p1, v2, v3, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_26

    .line 296
    goto :goto_3f

    .line 294
    :catch_26
    move-exception v1

    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling requestTranslate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Translator"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void

    .line 285
    .end local v0    # "responseCallback":Landroid/service/translation/ITranslationCallback;
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This translator has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
