.class Landroid/speech/RecognitionService$2;
.super Ljava/lang/Object;
.source "RecognitionService.java"

# interfaces
.implements Landroid/speech/ModelDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsTerminated:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist val$listener:Landroid/speech/IModelDownloadListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/speech/IModelDownloadListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/speech/RecognitionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p2, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    .line 240
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 5
    .param p1, "error"    # I

    .line 289
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 291
    monitor-exit v0

    return-void

    .line 293
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 295
    :try_start_c
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onError(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 298
    nop

    .line 299
    :try_start_12
    monitor-exit v0

    .line 300
    return-void

    .line 296
    :catch_14
    move-exception v1

    .line 297
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    .end local p1    # "error":I
    throw v2

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    .restart local p1    # "error":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist onProgress(I)V
    .registers 5
    .param p1, "completedPercent"    # I

    .line 245
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 247
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    .line 250
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onProgress(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    .line 253
    nop

    .line 254
    :try_start_f
    monitor-exit v0

    .line 255
    return-void

    .line 251
    :catch_11
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    .end local p1    # "completedPercent":I
    throw v2

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    .restart local p1    # "completedPercent":I
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist onScheduled()V
    .registers 4

    .line 274
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 280
    :try_start_c
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onScheduled()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 283
    nop

    .line 284
    :try_start_12
    monitor-exit v0

    .line 285
    return-void

    .line 281
    :catch_14
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    throw v2

    .line 284
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist onSuccess()V
    .registers 4

    .line 259
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 265
    :try_start_c
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onSuccess()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 268
    nop

    .line 269
    :try_start_12
    monitor-exit v0

    .line 270
    return-void

    .line 266
    :catch_14
    move-exception v1

    .line 267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/speech/RecognitionService$2;
    throw v2

    .line 269
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/speech/RecognitionService$2;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method
