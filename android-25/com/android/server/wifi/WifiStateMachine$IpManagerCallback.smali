.class Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;
.super Landroid/net/ip/IpManager$Callback;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    #@0
    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 2
    .param p1, "filter"    # [B

    #@0
    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x200ca

    #@5
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@8
    .line 1269
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x2008c

    #@5
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@8
    .line 1259
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 4
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 1237
    if-eqz p1, :cond_0

    #@2
    .line 1238
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@4
    const v1, 0x200c8

    #@7
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@a
    .line 1236
    :goto_0
    return-void

    #@b
    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    const v1, 0x200c9

    #@10
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@13
    .line 1241
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@15
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1b
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1242
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@21
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 1243
    const/4 v3, 0x3

    #@26
    .line 1241
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    #@29
    goto :goto_0
.end method

.method public onPostDhcpAction()V
    .locals 2

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x30004

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@8
    .line 1231
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 2

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x30003

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@8
    .line 1226
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x2008b

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@8
    .line 1254
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x2008c

    #@5
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@8
    .line 1250
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    const v1, 0x2008a

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    #@10
    .line 1248
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 2
    .param p1, "logMsg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    const v1, 0x20095

    #@5
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@8
    .line 1264
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    const v2, 0x200cb

    #@9
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@c
    .line 1274
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1280
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$IpManagerCallback;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    const v2, 0x200cc

    #@8
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    #@b
    .line 1279
    return-void

    #@c
    .line 1280
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
