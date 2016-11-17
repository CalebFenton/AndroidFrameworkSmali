.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;
.super Landroid/net/ip/IpManager$Callback;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->startIpManager(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@0
    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 2
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x23020

    #@9
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@c
    .line 436
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 2

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x2301f

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@c
    .line 432
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 2

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x2301e

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@c
    .line 428
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x23022

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@c
    .line 444
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get13(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x23021

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    #@c
    .line 440
    return-void
.end method
