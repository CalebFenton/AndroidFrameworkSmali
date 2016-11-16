.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@0
    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private cleanupUpstream()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 246
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@b
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    #@12
    .line 258
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@14
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1a
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@20
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    .line 264
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@29
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2f
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@35
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@3c
    .line 268
    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@3e
    invoke-static {v1, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@41
    .line 270
    :cond_0
    return-void

    #@42
    .line 265
    :catch_0
    move-exception v0

    #@43
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_2

    #@44
    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@45
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    #@46
    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@47
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 6

    #@0
    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Z)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 203
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@b
    const/16 v2, 0xa

    #@d
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@10
    .line 204
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@14
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@17
    move-result-object v2

    #@18
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@1b
    .line 205
    return-void

    #@1c
    .line 209
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1e
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@24
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 217
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2d
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->start()Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_1

    #@37
    .line 218
    const-string/jumbo v1, "TetherInterfaceSM"

    #@3a
    const-string/jumbo v2, "Failed to start IPv6TetheringInterfaceServices"

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@42
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    #@45
    move-result-object v1

    #@46
    .line 223
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@48
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@4e
    .line 224
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@50
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    #@53
    move-result v4

    #@54
    const/4 v5, 0x2

    #@55
    .line 222
    invoke-interface {v1, v2, v3, v5, v4}, Lcom/android/server/connectivity/tethering/IControlsTethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    #@58
    .line 201
    return-void

    #@59
    .line 210
    :catch_0
    move-exception v0

    #@5a
    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TetherInterfaceSM"

    #@5d
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "Error Tethering: "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 212
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@7a
    const/4 v2, 0x6

    #@7b
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@7e
    .line 213
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@80
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@82
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@85
    move-result-object v2

    #@86
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@89
    .line 214
    return-void
.end method

.method public exit()V
    .locals 4

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->stop()V

    #@9
    .line 233
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    #@c
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@e
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@14
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 242
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Z)Z

    #@21
    .line 228
    return-void

    #@22
    .line 237
    :catch_0
    move-exception v0

    #@23
    .line 238
    .local v0, "ee":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@25
    const/4 v2, 0x7

    #@26
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@29
    .line 239
    const-string/jumbo v1, "TetherInterfaceSM"

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Failed to untether interface: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 275
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2
    iget v4, p1, Landroid/os/Message;->what:I

    #@4
    invoke-static {v3, p0, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    #@7
    .line 276
    const/4 v2, 0x1

    #@8
    .line 277
    .local v2, "retValue":Z
    iget v3, p1, Landroid/os/Message;->what:I

    #@a
    packed-switch v3, :pswitch_data_0

    #@d
    .line 322
    :pswitch_0
    const/4 v2, 0x0

    #@e
    .line 325
    :cond_0
    :goto_0
    return v2

    #@f
    .line 279
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@11
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@13
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@1a
    goto :goto_0

    #@1b
    .line 283
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1d
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1f
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@22
    move-result-object v4

    #@23
    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@26
    goto :goto_0

    #@27
    .line 287
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v1, Ljava/lang/String;

    #@2b
    .line 288
    .local v1, "newUpstreamIfaceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@2d
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    if-nez v3, :cond_1

    #@33
    if-eqz v1, :cond_0

    #@35
    .line 289
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@37
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 290
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@3f
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v3

    #@47
    .line 288
    if-nez v3, :cond_0

    #@49
    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    #@4c
    .line 295
    if-eqz v1, :cond_3

    #@4e
    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@50
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    #@53
    move-result-object v3

    #@54
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@56
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-interface {v3, v4, v1}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 298
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@5f
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    #@62
    move-result-object v3

    #@63
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@65
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-interface {v3, v4, v1}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 307
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@6e
    invoke-static {v3, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    #@71
    goto :goto_0

    #@72
    .line 300
    :catch_0
    move-exception v0

    #@73
    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TetherInterfaceSM"

    #@76
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v5, "Exception enabling Nat: "

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    .line 302
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@93
    const/16 v4, 0x8

    #@95
    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@98
    .line 303
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@9a
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@9c
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@9f
    move-result-object v4

    #@a0
    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@a3
    .line 304
    const/4 v3, 0x1

    #@a4
    return v3

    #@a5
    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "newUpstreamIfaceName":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@a7
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@aa
    move-result-object v4

    #@ab
    .line 311
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ad
    check-cast v3, Landroid/net/LinkProperties;

    #@af
    .line 310
    invoke-virtual {v4, v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    #@b2
    goto/16 :goto_0

    #@b4
    .line 318
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@b6
    const/4 v4, 0x5

    #@b7
    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    #@ba
    .line 319
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@bc
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@be
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    #@c1
    move-result-object v4

    #@c2
    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->-wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V

    #@c5
    goto/16 :goto_0

    #@c7
    .line 277
    nop

    #@c8
    :pswitch_data_0
    .packed-switch 0x50067
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
