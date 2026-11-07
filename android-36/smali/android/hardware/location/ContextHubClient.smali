.class public Landroid/hardware/location/ContextHubClient;
.super Ljava/lang/Object;
.source "ContextHubClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ContextHubClient"


# instance fields
.field private final greylist-max-o mAttachedHub:Landroid/hardware/location/ContextHubInfo;

.field private greylist-max-o mClientProxy:Landroid/hardware/location/IContextHubClient;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mId:Ljava/lang/Integer;

.field private final greylist-max-o mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPersistent:Z


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;Z)V
    .registers 6
    .param p1, "hubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "persistent"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/hardware/location/ContextHubClient;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;

    .line 70
    iput-object p1, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    .line 71
    iput-boolean p2, p0, Landroid/hardware/location/ContextHubClient;->mPersistent:Z

    .line 72
    iget-boolean v1, p0, Landroid/hardware/location/ContextHubClient;->mPersistent:Z

    if-eqz v1, :cond_1b

    .line 73
    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    goto :goto_28

    .line 75
    :cond_1b
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 76
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "ContextHubClient.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 78
    :goto_28
    return-void
.end method

.method private blacklist doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I
    .registers 7
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p2, "transactionCallback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 238
    const-string v0, "NanoAppMessage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getMaxPacketLengthBytes()I

    move-result v0

    .line 242
    .local v0, "maxPayloadBytes":I
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v1

    .line 243
    .local v1, "payload":[B
    if-eqz v1, :cond_2e

    array-length v2, v1

    if-le v2, v0, :cond_2e

    .line 244
    array-length v2, v1

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 245
    const-string v3, "Message (%d bytes) exceeds max payload length (%d bytes)"

    invoke-virtual {v3, v2}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    const-string v3, "ContextHubClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v2, 0x2

    return v2

    .line 251
    :cond_2e
    if-nez p2, :cond_37

    .line 252
    :try_start_30
    iget-object v2, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v2

    return v2

    .line 254
    :cond_37
    iget-object v2, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IContextHubClient;->sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v2
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3d} :catch_3e

    return v2

    .line 255
    :catch_3e
    move-exception v2

    .line 256
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private blacklist waitForClientProxy()V
    .registers 3

    .line 297
    nop

    :goto_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    if-nez v0, :cond_12

    .line 299
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 302
    :goto_8
    goto :goto_1

    .line 300
    :catch_9
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_8

    .line 304
    :cond_12
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist callbackFinished()V
    .registers 3

    monitor-enter p0

    .line 277
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/location/ContextHubClient;->waitForClientProxy()V

    .line 278
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->callbackFinished()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    .line 281
    nop

    .line 282
    monitor-exit p0

    return-void

    .line 276
    .end local p0    # "this":Landroid/hardware/location/ContextHubClient;
    :catchall_c
    move-exception v0

    goto :goto_14

    .line 279
    :catch_e
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 3

    .line 148
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 149
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_12

    .line 150
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 153
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->close()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 156
    goto :goto_1e

    .line 154
    :catch_18
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 263
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 264
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 266
    :cond_9
    iget-boolean v0, p0, Landroid/hardware/location/ContextHubClient;->mPersistent:Z

    if-nez v0, :cond_10

    .line 267
    invoke-virtual {p0}, Landroid/hardware/location/ContextHubClient;->close()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    .line 270
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 271
    nop

    .line 272
    return-void

    .line 270
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 271
    throw v0
.end method

.method public whitelist getAttachedHub()Landroid/hardware/location/ContextHubInfo;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    .line 131
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist reliableMessageCallbackFinished(IB)V
    .registers 5
    .param p1, "messageSequenceNumber"    # I
    .param p2, "errorCode"    # B

    monitor-enter p0

    .line 288
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/location/ContextHubClient;->waitForClientProxy()V

    .line 289
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubClient;->reliableMessageCallbackFinished(IB)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    .line 292
    nop

    .line 293
    monitor-exit p0

    return-void

    .line 287
    .end local p0    # "this":Landroid/hardware/location/ContextHubClient;
    .end local p1    # "messageSequenceNumber":I
    .end local p2    # "errorCode":B
    :catchall_c
    move-exception p1

    goto :goto_14

    .line 290
    .restart local p1    # "messageSequenceNumber":I
    .restart local p2    # "errorCode":B
    :catch_e
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "messageSequenceNumber":I
    .end local p2    # "errorCode":B
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    throw p1
.end method

.method public whitelist sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .registers 3
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/location/ContextHubClient;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v0

    return v0
.end method

.method public whitelist sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)Landroid/hardware/location/ContextHubTransaction;
    .registers 7
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/NanoAppMessage;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    .line 210
    .local v0, "transaction":Landroid/hardware/location/ContextHubTransaction;, "Landroid/hardware/location/ContextHubTransaction<Ljava/lang/Void;>;"
    iget-object v1, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->supportsReliableMessages()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2a

    .line 216
    :cond_16
    nop

    .line 217
    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    .line 219
    .local v1, "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-direct {p0, p1, v1}, Landroid/hardware/location/ContextHubClient;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v3

    .line 220
    .local v3, "result":I
    if-eqz v3, :cond_29

    .line 221
    new-instance v4, Landroid/hardware/location/ContextHubTransaction$Response;

    invoke-direct {v4, v3, v2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    .line 224
    :cond_29
    return-object v0

    .line 211
    .end local v1    # "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v3    # "result":I
    :cond_2a
    :goto_2a
    new-instance v1, Landroid/hardware/location/ContextHubTransaction$Response;

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    .line 213
    return-object v0
.end method

.method declared-synchronized greylist-max-o setClientProxy(Landroid/hardware/location/IContextHubClient;)V
    .registers 4
    .param p1, "clientProxy"    # Landroid/hardware/location/IContextHubClient;

    monitor-enter p0

    .line 88
    :try_start_1
    const-string v0, "IContextHubClient cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    if-nez v0, :cond_24

    .line 93
    iput-object p1, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    .line 95
    :try_start_c
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1e
    .catchall {:try_start_c .. :try_end_18} :catchall_2c

    .line 98
    nop

    .line 99
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2c

    .line 100
    monitor-exit p0

    return-void

    .line 96
    .end local p0    # "this":Landroid/hardware/location/ContextHubClient;
    :catch_1e
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change client proxy multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    .end local p1    # "clientProxy":Landroid/hardware/location/IContextHubClient;
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw p1
.end method
