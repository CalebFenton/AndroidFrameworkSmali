.class Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "misc"    # Landroid/net/NetworkMisc;

    #@0
    .prologue
    .line 6313
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-object v2, p3

    #@5
    move-object v3, p4

    #@6
    move-object v4, p5

    #@7
    move-object v5, p6

    #@8
    move-object/from16 v6, p7

    #@a
    move/from16 v7, p8

    #@c
    move-object/from16 v8, p9

    #@e
    .line 6315
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@11
    .line 6314
    return-void
.end method


# virtual methods
.method protected networkStatus(ILjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6327
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@6
    move-result-object v0

    #@7
    if-eq p0, v0, :cond_0

    #@9
    return-void

    #@a
    .line 6328
    :cond_0
    const/4 v0, 0x2

    #@b
    if-ne p1, v0, :cond_3

    #@d
    .line 6329
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v1, "WifiNetworkAgent -> Wifi networkStatus invalid, score="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 6330
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@24
    move-result-object v1

    #@25
    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@27
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 6329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@36
    .line 6331
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@38
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    #@3b
    .line 6326
    :cond_2
    :goto_0
    return-void

    #@3c
    .line 6332
    :cond_3
    if-ne p1, v2, :cond_2

    #@3e
    .line 6333
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 6334
    new-instance v0, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v1, "WifiNetworkAgent -> Wifi networkStatus valid, score= "

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 6335
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@52
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@55
    move-result-object v1

    #@56
    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 6334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@67
    .line 6337
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@69
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->doNetworkStatus(I)V

    #@6c
    goto :goto_0
.end method

.method protected preventAutomaticReconnect()V
    .locals 2

    #@0
    .prologue
    .line 6402
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    return-void

    #@9
    .line 6403
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    #@f
    .line 6401
    return-void
.end method

.method protected saveAcceptUnvalidated(Z)V
    .locals 3
    .param p1, "accept"    # Z

    #@0
    .prologue
    .line 6343
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    return-void

    #@9
    .line 6344
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    if-eqz p1, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    const v2, 0x20099

    #@11
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@14
    .line 6342
    return-void

    #@15
    .line 6344
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method protected setSignalStrengthThresholds([I)V
    .locals 9
    .param p1, "thresholds"    # [I

    #@0
    .prologue
    const v8, 0x200a3

    #@3
    const/16 v7, 0x7f

    #@5
    const/16 v6, -0x80

    #@7
    .line 6371
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "Received signal strength thresholds: "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@22
    .line 6372
    array-length v4, p1

    #@23
    if-nez v4, :cond_0

    #@25
    .line 6373
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    .line 6374
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@29
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@30
    move-result v5

    #@31
    .line 6373
    invoke-virtual {v4, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@34
    .line 6375
    return-void

    #@35
    .line 6377
    :cond_0
    array-length v4, p1

    #@36
    add-int/lit8 v4, v4, 0x2

    #@38
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    #@3b
    move-result-object v2

    #@3c
    .line 6378
    .local v2, "rssiVals":[I
    array-length v4, v2

    #@3d
    add-int/lit8 v4, v4, -0x2

    #@3f
    aput v6, v2, v4

    #@41
    .line 6379
    array-length v4, v2

    #@42
    add-int/lit8 v4, v4, -0x1

    #@44
    aput v7, v2, v4

    #@46
    .line 6380
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    #@49
    .line 6381
    array-length v4, v2

    #@4a
    new-array v1, v4, [B

    #@4c
    .line 6382
    .local v1, "rssiRange":[B
    const/4 v0, 0x0

    #@4d
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@4e
    if-ge v0, v4, :cond_2

    #@50
    .line 6383
    aget v3, v2, v0

    #@52
    .line 6384
    .local v3, "val":I
    if-gt v3, v7, :cond_1

    #@54
    if-lt v3, v6, :cond_1

    #@56
    .line 6385
    int-to-byte v4, v3

    #@57
    aput-byte v4, v1, v0

    #@59
    .line 6382
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 6387
    :cond_1
    const-string/jumbo v4, "WifiStateMachine"

    #@5f
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "Illegal value "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    const-string/jumbo v6, " for RSSI thresholds: "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    .line 6388
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 6387
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 6389
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@87
    .line 6390
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@89
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@90
    move-result v5

    #@91
    .line 6389
    invoke-virtual {v4, v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@94
    .line 6391
    return-void

    #@95
    .line 6395
    .end local v3    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@97
    invoke-static {v4, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set24(Lcom/android/server/wifi/WifiStateMachine;[B)[B

    #@9a
    .line 6396
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9c
    .line 6397
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9e
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@a5
    move-result v5

    #@a6
    .line 6396
    const v6, 0x200a2

    #@a9
    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@ac
    .line 6360
    return-void
.end method

.method protected startPacketKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 6349
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    .line 6350
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    const v4, 0x200a0

    #@b
    .line 6349
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@e
    .line 6348
    return-void
.end method

.method protected stopPacketKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 6355
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    .line 6356
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@4
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    const v4, 0x200a1

    #@b
    .line 6355
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@e
    .line 6354
    return-void
.end method

.method protected unwanted()V
    .locals 2

    #@0
    .prologue
    .line 6319
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    return-void

    #@9
    .line 6320
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "WifiNetworkAgent -> Wifi unwanted score "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 6321
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1d
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    #@20
    move-result-object v1

    #@21
    iget v1, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 6320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->log(Ljava/lang/String;)V

    #@32
    .line 6322
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->unwantedNetwork(I)V

    #@38
    .line 6317
    return-void
.end method
