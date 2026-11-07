.class public final Landroid/se/omapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "OMAPI.Channel"


# instance fields
.field private final greylist-max-o mChannel:Landroid/se/omapi/ISecureElementChannel;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/se/omapi/SEService;

.field private greylist-max-o mSession:Landroid/se/omapi/Session;


# direct methods
.method constructor greylist-max-o <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    .registers 6
    .param p1, "service"    # Landroid/se/omapi/SEService;
    .param p2, "session"    # Landroid/se/omapi/Session;
    .param p3, "channel"    # Landroid/se/omapi/ISecureElementChannel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    .line 52
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    if-eqz p3, :cond_17

    .line 55
    iput-object p1, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    .line 56
    iput-object p2, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    .line 57
    iput-object p3, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    .line 58
    return-void

    .line 53
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 67
    invoke-virtual {p0}, Landroid/se/omapi/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 68
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_9
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    .line 73
    goto :goto_19

    .line 74
    :catchall_f
    move-exception v1

    goto :goto_1b

    .line 71
    :catch_11
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v2, "OMAPI.Channel"

    const-string v3, "Error closing channel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_19
    monitor-exit v0

    goto :goto_1d

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw v1

    .line 76
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist getSelectResponse()[B
    .registers 4

    .line 201
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 207
    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->getSelectResponse()[B

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_16

    .line 210
    .local v0, "response":[B
    nop

    .line 212
    if-eqz v0, :cond_15

    array-length v1, v0

    if-nez v1, :cond_15

    .line 213
    const/4 v0, 0x0

    .line 215
    :cond_15
    return-object v0

    .line 208
    .end local v0    # "response":[B
    :catch_16
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSession()Landroid/se/omapi/Session;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    return-object v0
.end method

.method public whitelist isBasicChannel()Z
    .registers 4

    .line 104
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 108
    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isBasicChannel()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 109
    :catch_f
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isOpen()Z
    .registers 5

    .line 85
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OMAPI.Channel"

    if-nez v0, :cond_12

    .line 86
    const-string/jumbo v0, "service not connected to system"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 90
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isClosed()Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_1b

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 91
    :catch_1b
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Exception in isClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v1
.end method

.method public whitelist selectNext()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 248
    :try_start_8
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_b} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_16

    .line 249
    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->selectNext()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 250
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    .end local p0    # "this":Landroid/se/omapi/Channel;
    :try_start_15
    throw v1
    :try_end_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_16} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_16} :catch_16

    .line 253
    .restart local p0    # "this":Landroid/se/omapi/Channel;
    :catch_16
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_21
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist transmit([B)[B
    .registers 6
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 166
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_b
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1, p1}, Landroid/se/omapi/ISecureElementChannel;->transmit([B)[B

    move-result-object v1
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_11} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_1f
    .catchall {:try_start_b .. :try_end_11} :catchall_1d

    .line 169
    .local v1, "response":[B
    if-eqz v1, :cond_15

    .line 172
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_1d

    return-object v1

    .line 170
    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in communicating with Secure Element"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/se/omapi/Channel;
    .end local p1    # "command":[B
    throw v2
    :try_end_1d
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_1d} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_1f
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    .line 178
    .end local v1    # "response":[B
    .restart local p0    # "this":Landroid/se/omapi/Channel;
    .restart local p1    # "command":[B
    :catchall_1d
    move-exception v1

    goto :goto_35

    .line 175
    :catch_1f
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/se/omapi/Channel;
    .end local p1    # "command":[B
    throw v2

    .line 173
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/se/omapi/Channel;
    .restart local p1    # "command":[B
    :catch_2a
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/se/omapi/Channel;
    .end local p1    # "command":[B
    throw v2

    .line 178
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .restart local p0    # "this":Landroid/se/omapi/Channel;
    .restart local p1    # "command":[B
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1d

    throw v1

    .line 164
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
