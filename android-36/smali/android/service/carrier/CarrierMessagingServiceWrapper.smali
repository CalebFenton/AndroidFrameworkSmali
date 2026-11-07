.class public final Landroid/service/carrier/CarrierMessagingServiceWrapper;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;,
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;,
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    }
.end annotation


# instance fields
.field private volatile blacklist mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

.field private blacklist mOnServiceReadyCallback:Ljava/lang/Runnable;

.field private blacklist mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monServiceReady(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/ICarrierMessagingService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .registers 6
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    .line 125
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    .line 126
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1e

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    .local v0, "identity":J
    :try_start_e
    iget-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    goto :goto_1e

    .line 131
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw v2

    .line 134
    .end local v0    # "identity":J
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public whitelist bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrierPackageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "onServiceReadyCallback"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v2, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper-IA;)V

    iput-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    .line 94
    iput-object p4, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    .line 95
    iput-object p3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 96
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->supportCarrierServicesForHsum()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 98
    iget-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 98
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    goto :goto_4a

    .line 101
    :cond_44
    iget-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 97
    :goto_4a
    return v1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 305
    invoke-virtual {p0}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    .line 306
    return-void
.end method

.method public whitelist disconnect()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    .line 115
    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    .line 116
    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 117
    return-void
.end method

.method public whitelist downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 8
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v1, p0, p5, p4}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/carrier/ICarrierMessagingService;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 299
    nop

    .line 300
    return-void

    .line 297
    :catch_11
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist receiveSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 14
    .param p1, "pdu"    # Landroid/service/carrier/MessagePdu;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    if-eqz v0, :cond_22

    .line 156
    :try_start_4
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v6, p0, p6, p5}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_16

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "pdu":Landroid/service/carrier/MessagePdu;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "destPort":I
    .end local p4    # "subId":I
    .local v2, "pdu":Landroid/service/carrier/MessagePdu;
    .local v3, "format":Ljava/lang/String;
    .local v4, "destPort":I
    .local v5, "subId":I
    :try_start_f
    invoke-interface/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 160
    goto :goto_26

    .line 158
    :catch_13
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v2    # "pdu":Landroid/service/carrier/MessagePdu;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "destPort":I
    .end local v5    # "subId":I
    .restart local p1    # "pdu":Landroid/service/carrier/MessagePdu;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "destPort":I
    .restart local p4    # "subId":I
    :catch_16
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object p1, v0

    .line 159
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "destPort":I
    .end local p4    # "subId":I
    .restart local v2    # "pdu":Landroid/service/carrier/MessagePdu;
    .restart local v3    # "format":Ljava/lang/String;
    .restart local v4    # "destPort":I
    .restart local v5    # "subId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 154
    .end local v2    # "pdu":Landroid/service/carrier/MessagePdu;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "destPort":I
    .end local v5    # "subId":I
    .local p1, "pdu":Landroid/service/carrier/MessagePdu;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "destPort":I
    .restart local p4    # "subId":I
    :cond_22
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 162
    .end local p1    # "pdu":Landroid/service/carrier/MessagePdu;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "destPort":I
    .end local p4    # "subId":I
    .restart local v2    # "pdu":Landroid/service/carrier/MessagePdu;
    .restart local v3    # "format":Ljava/lang/String;
    .restart local v4    # "destPort":I
    .restart local v5    # "subId":I
    :goto_26
    return-void
.end method

.method public whitelist sendDataSms([BILjava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 16
    .param p1, "data"    # [B
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sendSmsFlag"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :try_start_5
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v7, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v7, p0, p7, p6}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_19

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "data":[B
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "destPort":I
    .end local p5    # "sendSmsFlag":I
    .local v2, "data":[B
    .local v3, "subId":I
    .local v4, "destAddress":Ljava/lang/String;
    .local v5, "destPort":I
    .local v6, "sendSmsFlag":I
    :try_start_11
    invoke-interface/range {v1 .. v7}, Landroid/service/carrier/ICarrierMessagingService;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    .line 219
    nop

    .line 220
    return-void

    .line 217
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v2    # "data":[B
    .end local v3    # "subId":I
    .end local v4    # "destAddress":Ljava/lang/String;
    .end local v5    # "destPort":I
    .end local v6    # "sendSmsFlag":I
    .restart local p1    # "data":[B
    .restart local p2    # "subId":I
    .restart local p3    # "destAddress":Ljava/lang/String;
    .restart local p4    # "destPort":I
    .restart local p5    # "sendSmsFlag":I
    :catch_19
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object p1, v0

    .line 218
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "destPort":I
    .end local p5    # "sendSmsFlag":I
    .restart local v2    # "data":[B
    .restart local v3    # "subId":I
    .restart local v4    # "destAddress":Ljava/lang/String;
    .restart local v5    # "destPort":I
    .restart local v6    # "sendSmsFlag":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist sendMms(Landroid/net/Uri;ILandroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 8
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :try_start_5
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v1, p0, p5, p4}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/carrier/ICarrierMessagingService;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11

    .line 274
    nop

    .line 275
    return-void

    .line 272
    :catch_11
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 14
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;",
            ")V"
        }
    .end annotation

    .line 242
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :try_start_5
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v6, p0, p6, p5}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_18

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "sendSmsFlag":I
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "subId":I
    .local v4, "destAddress":Ljava/lang/String;
    .local v5, "sendSmsFlag":I
    :try_start_10
    invoke-interface/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .end local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "subId":I
    .end local v4    # "destAddress":Ljava/lang/String;
    .end local v5    # "sendSmsFlag":I
    .restart local p1    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "subId":I
    .restart local p3    # "destAddress":Ljava/lang/String;
    .restart local p4    # "sendSmsFlag":I
    :catch_18
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 247
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "sendSmsFlag":I
    .restart local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "subId":I
    .restart local v4    # "destAddress":Ljava/lang/String;
    .restart local v5    # "sendSmsFlag":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1e
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist sendTextSms(Ljava/lang/String;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "callback"    # Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :try_start_5
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v6, p0, p6, p5}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_18

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "text":Ljava/lang/String;
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "sendSmsFlag":I
    .local v2, "text":Ljava/lang/String;
    .local v3, "subId":I
    .local v4, "destAddress":Ljava/lang/String;
    .local v5, "sendSmsFlag":I
    :try_start_10
    invoke-interface/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    .line 189
    nop

    .line 190
    return-void

    .line 187
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "subId":I
    .end local v4    # "destAddress":Ljava/lang/String;
    .end local v5    # "sendSmsFlag":I
    .restart local p1    # "text":Ljava/lang/String;
    .restart local p2    # "subId":I
    .restart local p3    # "destAddress":Ljava/lang/String;
    .restart local p4    # "sendSmsFlag":I
    :catch_18
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 188
    .end local p2    # "subId":I
    .end local p3    # "destAddress":Ljava/lang/String;
    .end local p4    # "sendSmsFlag":I
    .restart local v2    # "text":Ljava/lang/String;
    .restart local v3    # "subId":I
    .restart local v4    # "destAddress":Ljava/lang/String;
    .restart local v5    # "sendSmsFlag":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1e
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
