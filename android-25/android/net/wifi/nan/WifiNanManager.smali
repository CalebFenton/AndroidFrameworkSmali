.class public Landroid/net/wifi/nan/WifiNanManager;
.super Ljava/lang/Object;
.source "WifiNanManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiNanManager"

.field private static final VDBG:Z


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mService:Landroid/net/wifi/nan/IWifiNanManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/IWifiNanManager;)V
    .locals 0
    .param p1, "service"    # Landroid/net/wifi/nan/IWifiNanManager;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@5
    .line 51
    return-void
.end method


# virtual methods
.method public connect(Landroid/net/wifi/nan/WifiNanEventListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/nan/WifiNanEventListener;
    .param p2, "events"    # I

    #@0
    .prologue
    .line 70
    if-nez p1, :cond_0

    #@2
    .line 71
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Invalid listener - must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 77
    :catch_0
    move-exception v0

    #@c
    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1

    #@11
    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    #@13
    if-nez v1, :cond_1

    #@15
    .line 74
    new-instance v1, Landroid/os/Binder;

    #@17
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@1a
    iput-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    #@1c
    .line 76
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@1e
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    #@20
    iget-object v3, p1, Landroid/net/wifi/nan/WifiNanEventListener;->callback:Landroid/net/wifi/nan/IWifiNanEventListener;

    #@22
    invoke-interface {v1, v2, v3, p2}, Landroid/net/wifi/nan/IWifiNanManager;->connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@25
    .line 67
    return-void
.end method

.method public destroySession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/nan/IWifiNanManager;->destroySession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 307
    return-void

    #@6
    .line 312
    :catch_0
    move-exception v0

    #@7
    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@2
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;

    #@4
    invoke-interface {v1, v2}, Landroid/net/wifi/nan/IWifiNanManager;->disconnect(Landroid/os/IBinder;)V

    #@7
    .line 95
    const/4 v1, 0x0

    #@8
    iput-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 91
    return-void

    #@b
    .line 96
    :catch_0
    move-exception v0

    #@c
    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v1

    #@10
    throw v1
.end method

.method public publish(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanPublishSession;
    .locals 1
    .param p1, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p2, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    #@0
    .prologue
    .line 143
    or-int/lit16 v0, p4, 0xf5

    #@2
    .line 142
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/nan/WifiNanManager;->publishRaw(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanPublishSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p3, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;

    #@0
    .prologue
    .line 188
    iget v1, p3, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 189
    iget v1, p2, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "Invalid publish data & settings: UNSOLICITED publishes (active) can\'t have an Rx filter"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 193
    :cond_0
    iget v1, p3, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 194
    iget v1, p2, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v2, "Invalid publish data & settings: SOLICITED publishes (passive) can\'t have a Tx filter"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 200
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@25
    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/nan/IWifiNanManager;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 185
    return-void

    #@29
    .line 201
    :catch_0
    move-exception v0

    #@2a
    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2d
    move-result-object v1

    #@2e
    throw v1
.end method

.method public publishRaw(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanPublishSession;
    .locals 4
    .param p1, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p2, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    #@0
    .prologue
    .line 155
    iget v2, p2, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 156
    iget v2, p1, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "Invalid publish data & settings: UNSOLICITED publishes (active) can\'t have an Rx filter"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 160
    :cond_0
    iget v2, p2, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 161
    iget v2, p1, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v3, "Invalid publish data & settings: SOLICITED publishes (passive) can\'t have a Tx filter"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 165
    :cond_1
    if-nez p3, :cond_2

    #@25
    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "Invalid listener - must not be null"

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 172
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@30
    iget-object v3, p3, Landroid/net/wifi/nan/WifiNanSessionListener;->callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

    #@32
    invoke-interface {v2, v3, p4}, Landroid/net/wifi/nan/IWifiNanManager;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    #@35
    move-result v1

    #@36
    .line 174
    .local v1, "sessionId":I
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@38
    invoke-interface {v2, v1, p1, p2}, Landroid/net/wifi/nan/IWifiNanManager;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 179
    new-instance v2, Landroid/net/wifi/nan/WifiNanPublishSession;

    #@3d
    invoke-direct {v2, p0, v1}, Landroid/net/wifi/nan/WifiNanPublishSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    #@40
    return-object v2

    #@41
    .line 175
    .end local v1    # "sessionId":I
    :catch_0
    move-exception v0

    #@42
    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@45
    move-result-object v2

    #@46
    throw v2
.end method

.method public requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V
    .locals 2
    .param p1, "configRequest"    # Landroid/net/wifi/nan/ConfigRequest;

    #@0
    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/nan/IWifiNanManager;->requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 114
    return-void

    #@6
    .line 118
    :catch_0
    move-exception v0

    #@7
    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public sendMessage(II[BII)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "peerId"    # I
    .param p3, "message"    # [B
    .param p4, "messageLength"    # I
    .param p5, "messageId"    # I

    #@0
    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/net/wifi/nan/IWifiNanManager;->sendMessage(II[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 321
    return-void

    #@b
    .line 328
    :catch_0
    move-exception v6

    #@c
    .line 329
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@f
    move-result-object v0

    #@10
    throw v0
.end method

.method public stopSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/wifi/nan/IWifiNanManager;->stopSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 294
    return-void

    #@6
    .line 299
    :catch_0
    move-exception v0

    #@7
    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public subscribe(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanSubscribeSession;
    .locals 1
    .param p1, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p2, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    #@0
    .prologue
    .line 226
    or-int/lit16 v0, p4, 0xf5

    #@2
    .line 225
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/nan/WifiNanManager;->subscribeRaw(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanSubscribeSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p3, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;

    #@0
    .prologue
    .line 273
    iget v1, p3, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 274
    iget v1, p2, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    .line 276
    const-string/jumbo v2, "Invalid subscribe data & settings: ACTIVE subscribes can\'t have an Rx filter"

    #@e
    .line 275
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 278
    :cond_0
    iget v1, p3, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    #@14
    if-nez v1, :cond_1

    #@16
    .line 279
    iget v1, p2, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 281
    const-string/jumbo v2, "Invalid subscribe data & settings: PASSIVE subscribes can\'t have a Tx filter"

    #@1f
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 285
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@25
    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/nan/IWifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 268
    return-void

    #@29
    .line 286
    :catch_0
    move-exception v0

    #@2a
    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2d
    move-result-object v1

    #@2e
    throw v1
.end method

.method public subscribeRaw(Landroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;Landroid/net/wifi/nan/WifiNanSessionListener;I)Landroid/net/wifi/nan/WifiNanSubscribeSession;
    .locals 4
    .param p1, "subscribeData"    # Landroid/net/wifi/nan/SubscribeData;
    .param p2, "subscribeSettings"    # Landroid/net/wifi/nan/SubscribeSettings;
    .param p3, "listener"    # Landroid/net/wifi/nan/WifiNanSessionListener;
    .param p4, "events"    # I

    #@0
    .prologue
    .line 240
    iget v2, p2, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    #@2
    const/4 v3, 0x1

    #@3
    if-ne v2, v3, :cond_0

    #@5
    .line 241
    iget v2, p1, Landroid/net/wifi/nan/SubscribeData;->mRxFilterLength:I

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    .line 243
    const-string/jumbo v3, "Invalid subscribe data & settings: ACTIVE subscribes can\'t have an Rx filter"

    #@e
    .line 242
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 245
    :cond_0
    iget v2, p2, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    #@14
    if-nez v2, :cond_1

    #@16
    .line 246
    iget v2, p1, Landroid/net/wifi/nan/SubscribeData;->mTxFilterLength:I

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 248
    const-string/jumbo v3, "Invalid subscribe data & settings: PASSIVE subscribes can\'t have a Tx filter"

    #@1f
    .line 247
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 254
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@25
    iget-object v3, p3, Landroid/net/wifi/nan/WifiNanSessionListener;->callback:Landroid/net/wifi/nan/IWifiNanSessionListener;

    #@27
    invoke-interface {v2, v3, p4}, Landroid/net/wifi/nan/IWifiNanManager;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    #@2a
    move-result v1

    #@2b
    .line 256
    .local v1, "sessionId":I
    iget-object v2, p0, Landroid/net/wifi/nan/WifiNanManager;->mService:Landroid/net/wifi/nan/IWifiNanManager;

    #@2d
    invoke-interface {v2, v1, p1, p2}, Landroid/net/wifi/nan/IWifiNanManager;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 261
    new-instance v2, Landroid/net/wifi/nan/WifiNanSubscribeSession;

    #@32
    invoke-direct {v2, p0, v1}, Landroid/net/wifi/nan/WifiNanSubscribeSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    #@35
    return-object v2

    #@36
    .line 257
    .end local v1    # "sessionId":I
    :catch_0
    move-exception v0

    #@37
    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@3a
    move-result-object v2

    #@3b
    throw v2
.end method
