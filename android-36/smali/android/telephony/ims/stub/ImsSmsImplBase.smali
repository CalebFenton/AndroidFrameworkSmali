.class public Landroid/telephony/ims/stub/ImsSmsImplBase;
.super Ljava/lang/Object;
.source "ImsSmsImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsSmsImplBase$StatusReportResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$DeliverStatusResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$SendStatusResult;
    }
.end annotation


# static fields
.field public static final whitelist DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field public static final whitelist DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field public static final whitelist DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field public static final whitelist DELIVER_STATUS_OK:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SmsImplBase"

.field public static final whitelist RESULT_NO_NETWORK_ERROR:I = -0x1

.field public static final whitelist SEND_STATUS_ERROR:I = 0x2

.field public static final whitelist SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field public static final whitelist SEND_STATUS_ERROR_RETRY:I = 0x3

.field public static final whitelist SEND_STATUS_OK:I = 0x1

.field public static final whitelist STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final whitelist STATUS_REPORT_STATUS_OK:I = 0x1


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist acknowledgeSms(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 222
    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSms() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public whitelist acknowledgeSms(III[B)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B

    .line 242
    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSms() not implemented. acknowledgeSms(int, int, int) called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 244
    return-void
.end method

.method public whitelist acknowledgeSmsReport(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 261
    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSmsReport() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 559
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_c

    :cond_7
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    :goto_c
    return-object v0
.end method

.method public whitelist getSmsFormat()Ljava/lang/String;
    .registers 2

    .line 525
    const-string v0, "3gpp"

    return-object v0
.end method

.method public blacklist onMemoryAvailable(I)V
    .registers 2
    .param p1, "token"    # I

    .line 204
    return-void
.end method

.method public final blacklist onMemoryAvailableResult(III)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "result"    # I
    .param p3, "networkErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 427
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    .line 429
    if-eqz v0, :cond_13

    .line 433
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onMemoryAvailableResult(III)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 436
    goto :goto_12

    .line 434
    :catch_e
    move-exception v1

    .line 435
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 437
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void

    .line 430
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public whitelist onReady()V
    .registers 1

    .line 535
    return-void
.end method

.method public final whitelist onSendSmsResult(IIII)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_4
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2b

    move-object v3, v0

    .line 358
    .end local v1    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .local v3, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_start_7
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_23

    .line 360
    if-eqz v3, :cond_19

    .line 364
    const/4 v8, -0x1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "status":I
    .end local p4    # "reason":I
    .local v4, "token":I
    .local v5, "messageRef":I
    .local v6, "status":I
    .local v7, "reason":I
    :try_start_f
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 368
    goto :goto_18

    .line 366
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 367
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 369
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 361
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    .local p1, "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "status":I
    .restart local p4    # "reason":I
    :cond_19
    move v4, p1

    move v5, p2

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    :catchall_23
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object p1, v0

    move-object v1, v3

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "status":I
    .end local p4    # "reason":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    .restart local v6    # "status":I
    .restart local v7    # "reason":I
    goto :goto_31

    .end local v3    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    .restart local v1    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "status":I
    .restart local p4    # "reason":I
    :catchall_2b
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object p1, v0

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "status":I
    .end local p4    # "reason":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    .restart local v6    # "status":I
    .restart local v7    # "reason":I
    :goto_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_33

    throw p1

    :catchall_33
    move-exception v0

    move-object p1, v0

    goto :goto_31
.end method

.method public final whitelist onSendSmsResultError(IIIII)V
    .registers 15
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .param p5, "networkErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_4
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2c

    move-object v3, v0

    .line 395
    .end local v1    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .local v3, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_start_7
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_23

    .line 397
    if-eqz v3, :cond_19

    .line 401
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "status":I
    .end local p4    # "reason":I
    .end local p5    # "networkErrorCode":I
    .local v4, "token":I
    .local v5, "messageRef":I
    .local v6, "status":I
    .local v7, "reason":I
    .local v8, "networkErrorCode":I
    :try_start_f
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 404
    goto :goto_18

    .line 402
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 403
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 405
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 398
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    .end local v8    # "networkErrorCode":I
    .local p1, "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "status":I
    .restart local p4    # "reason":I
    .restart local p5    # "networkErrorCode":I
    :cond_19
    move v4, p1

    move v5, p2

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    :catchall_23
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object p1, v0

    move-object v1, v3

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "status":I
    .end local p4    # "reason":I
    .end local p5    # "networkErrorCode":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    .restart local v6    # "status":I
    .restart local v7    # "reason":I
    .restart local v8    # "networkErrorCode":I
    goto :goto_33

    .end local v3    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    .end local v8    # "networkErrorCode":I
    .restart local v1    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    .restart local p3    # "status":I
    .restart local p4    # "reason":I
    .restart local p5    # "networkErrorCode":I
    :catchall_2c
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object p1, v0

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .end local p3    # "status":I
    .end local p4    # "reason":I
    .end local p5    # "networkErrorCode":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    .restart local v6    # "status":I
    .restart local v7    # "reason":I
    .restart local v8    # "networkErrorCode":I
    :goto_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_35

    throw p1

    :catchall_35
    move-exception v0

    move-object p1, v0

    goto :goto_33
.end method

.method public final whitelist onSendSmsResultSuccess(II)V
    .registers 12
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_4
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_29

    move-object v3, v0

    .line 321
    .end local v1    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .local v3, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    :try_start_7
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_23

    .line 323
    if-eqz v3, :cond_19

    .line 327
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x1

    move v4, p1

    move v5, p2

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .local v4, "token":I
    .local v5, "messageRef":I
    :try_start_f
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 331
    goto :goto_18

    .line 329
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 330
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 332
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 324
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .local p1, "token":I
    .restart local p2    # "messageRef":I
    :cond_19
    move v4, p1

    move v5, p2

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Feature not ready."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    :catchall_23
    move-exception v0

    move v4, p1

    move v5, p2

    move-object p1, v0

    move-object v1, v3

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    goto :goto_2d

    .end local v3    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .end local v4    # "token":I
    .end local v5    # "messageRef":I
    .restart local v1    # "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    .restart local p1    # "token":I
    .restart local p2    # "messageRef":I
    :catchall_29
    move-exception v0

    move v4, p1

    move v5, p2

    move-object p1, v0

    .end local p1    # "token":I
    .end local p2    # "messageRef":I
    .restart local v4    # "token":I
    .restart local v5    # "messageRef":I
    :goto_2d
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    throw p1

    :catchall_2f
    move-exception v0

    move-object p1, v0

    goto :goto_2d
.end method

.method public final whitelist onSmsReceived(ILjava/lang/String;[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 283
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_52

    .line 285
    if-eqz v0, :cond_4a

    .line 289
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 300
    goto :goto_49

    .line 290
    :catch_e
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not deliver sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 293
    .local v2, "message":Landroid/telephony/SmsMessage;
    const/4 v3, 0x2

    if-eqz v2, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3e

    .line 294
    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    goto :goto_49

    .line 297
    :cond_3e
    const-string v4, "SmsImplBase"

    const-string v5, "onSmsReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    :goto_49
    return-void

    .line 286
    :cond_4a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public final whitelist onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 464
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 465
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_38

    .line 467
    if-eqz v0, :cond_30

    .line 471
    :try_start_a
    invoke-interface {v0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 475
    goto :goto_2f

    .line 472
    :catch_e
    move-exception v1

    .line 473
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 476
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void

    .line 468
    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public final whitelist onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 497
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_52

    .line 499
    if-eqz v0, :cond_4a

    .line 503
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 516
    goto :goto_49

    .line 504
    :catch_e
    move-exception v1

    .line 505
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 507
    .local v2, "message":Landroid/telephony/SmsMessage;
    const/4 v3, 0x2

    if-eqz v2, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3e

    .line 508
    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    goto :goto_49

    .line 513
    :cond_3e
    const-string v4, "SmsImplBase"

    const-string v5, "onSmsStatusReportReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 517
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    :goto_49
    return-void

    .line 500
    :cond_4a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public final greylist-max-o registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 158
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 183
    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResult(IIII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    .line 187
    goto :goto_23

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not send sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_23
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 545
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 546
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 548
    :cond_6
    return-void
.end method
