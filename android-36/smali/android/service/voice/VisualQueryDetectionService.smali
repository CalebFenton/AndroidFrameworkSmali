.class public abstract Landroid/service/voice/VisualQueryDetectionService;
.super Landroid/app/Service;
.source "VisualQueryDetectionService.java"

# interfaces
.implements Landroid/service/voice/SandboxedDetectionInitializer;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VisualQueryDetectionService"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UPDATE_TIMEOUT_MILLIS:J = 0x4e20L


# instance fields
.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mDetectorSessionStorageService:Landroid/service/voice/IDetectorSessionStorageService;

.field private blacklist mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

.field private final blacklist mInterface:Landroid/service/voice/ISandboxedDetectionService;

.field private blacklist mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContentCaptureManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDetectorSessionStorageService(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionStorageService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mDetectorSessionStorageService:Landroid/service/voice/IDetectorSessionStorageService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/VisualQueryDetectionService;Landroid/speech/IRecognitionServiceManager;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteCallback(Landroid/service/voice/VisualQueryDetectionService;Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateStateInternal(Landroid/service/voice/VisualQueryDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/VisualQueryDetectionService;->onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    nop

    .line 71
    const-class v0, Landroid/service/voice/VisualQueryDetectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    .line 98
    new-instance v0, Landroid/service/voice/VisualQueryDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetectionService$1;-><init>(Landroid/service/voice/VisualQueryDetectionService;)V

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    return-void
.end method

.method private blacklist onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 10
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;

    .line 211
    nop

    .line 212
    invoke-static {p3}, Landroid/service/voice/SandboxedDetectionInitializer;->createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;

    move-result-object v5

    .line 213
    .local v5, "intConsumer":Ljava/util/function/IntConsumer;
    const-wide/16 v3, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "options":Landroid/os/PersistableBundle;
    .end local p2    # "sharedMemory":Landroid/os/SharedMemory;
    .local v1, "options":Landroid/os/PersistableBundle;
    .local v2, "sharedMemory":Landroid/os/SharedMemory;
    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VisualQueryDetectionService;->onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final whitelist finishQuery()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryFinished()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 409
    nop

    .line 410
    return-void

    .line 406
    :catch_7
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#finishQuery must be only be triggered after calling #streamQuery to be in the query streaming state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist gainedAttention()V
    .registers 3

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 277
    nop

    .line 278
    return-void

    .line 275
    :catch_8
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist gainedAttention(Landroid/service/voice/VisualQueryAttentionResult;)V
    .registers 4
    .param p1, "attentionResult"    # Landroid/service/voice/VisualQueryAttentionResult;

    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 302
    nop

    .line 303
    return-void

    .line 300
    :catch_7
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 175
    const-string v0, "content_capture"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    .line 177
    :cond_b
    const-string/jumbo v0, "speech_recognition"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    if-eqz v0, :cond_1f

    .line 179
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    invoke-interface {v0}, Landroid/speech/IRecognitionServiceManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1f
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist lostAttention()V
    .registers 3

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionLost(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 313
    nop

    .line 314
    return-void

    .line 311
    :catch_8
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist lostAttention(I)V
    .registers 4
    .param p1, "interactionIntention"    # I

    .line 328
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onAttentionLost(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 331
    nop

    .line 332
    return-void

    .line 329
    :catch_7
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 201
    const-string v0, "android.service.voice.VisualQueryDetectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 202
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {v0}, Landroid/service/voice/ISandboxedDetectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 204
    :cond_13
    sget-object v0, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.voice.VisualQueryDetectionService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onStartDetection()V
    .registers 2

    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onStopDetection()V
    .registers 1

    .line 261
    return-void
.end method

.method public whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callbackTimeoutMillis"    # J
    .param p5, "statusCallback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 196
    return-void
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 424
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 425
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    nop

    .line 426
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectionService;->mDetectorSessionStorageService:Landroid/service/voice/IDetectorSessionStorageService;

    invoke-interface {v1, p1, v0}, Landroid/service/voice/IDetectorSessionStorageService;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 427
    invoke-virtual {v0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 428
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1d

    .line 432
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v2

    .line 429
    :cond_1d
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not exist. Unable to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/service/voice/VisualQueryDetectionService;
    .end local p1    # "filename":Ljava/lang/String;
    throw v2
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_3c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3c} :catch_3c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3c} :catch_3c

    .line 433
    .end local v0    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/service/voice/VisualQueryDetectionService;
    .restart local p1    # "filename":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/service/voice/VisualQueryDetectionService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot open file due to remote service failure"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist rejectQuery()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 388
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryRejected()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 392
    nop

    .line 393
    return-void

    .line 389
    :catch_7
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#rejectQuery must be only be triggered after calling #streamQuery to be in the query streaming state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist streamQuery(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 5
    .param p1, "partialResult"    # Landroid/service/voice/VisualQueryDetectedResult;

    .line 369
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 375
    nop

    .line 376
    return-void

    .line 372
    :catch_a
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#streamQuery must be only be triggered after calling #gainedAttention to be in the attention gained state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist streamQuery(Ljava/lang/String;)V
    .registers 5
    .param p1, "partialQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :try_start_3
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetectionService;->mRemoteCallback:Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    invoke-interface {v0, p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;->onQueryDetected(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 354
    nop

    .line 355
    return-void

    .line 351
    :catch_a
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#streamQuery must be only be triggered after calling #gainedAttention to be in the attention gained state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
