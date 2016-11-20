.class abstract Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DhcpReacquiringState"
.end annotation


# instance fields
.field protected mLeaseMsg:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 876
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 881
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    #@3
    .line 882
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 880
    return-void
.end method

.method protected abstract packetDestination()Ljava/net/Inet4Address;
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    .line 896
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-void

    #@9
    .line 897
    :cond_0
    instance-of v1, p1, Landroid/net/dhcp/DhcpAckPacket;

    #@b
    if-eqz v1, :cond_3

    #@d
    .line 898
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    #@10
    move-result-object v0

    #@11
    .line 899
    .local v0, "results":Landroid/net/DhcpResults;
    if-eqz v0, :cond_2

    #@13
    .line 900
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@15
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@18
    move-result-object v1

    #@19
    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@1b
    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@1d
    invoke-virtual {v1, v2}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_1

    #@23
    .line 901
    const-string/jumbo v1, "DhcpClient"

    #@26
    const-string/jumbo v2, "Renewed lease not for our current IP address!"

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 902
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2e
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;)V

    #@31
    .line 903
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@33
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@35
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@38
    move-result-object v2

    #@39
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@3c
    .line 905
    :cond_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@3e
    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    #@41
    .line 911
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@43
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->mLeaseMsg:Ljava/lang/String;

    #@45
    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    #@48
    .line 912
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4a
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4c
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@53
    .line 895
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_2
    :goto_0
    return-void

    #@54
    .line 914
    :cond_3
    instance-of v1, p1, Landroid/net/dhcp/DhcpNakPacket;

    #@56
    if-eqz v1, :cond_2

    #@58
    .line 915
    const-string/jumbo v1, "DhcpClient"

    #@5b
    const-string/jumbo v2, "Received NAK, returning to INIT"

    #@5e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 916
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@63
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;)V

    #@66
    .line 917
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@68
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@6a
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@6d
    move-result-object v2

    #@6e
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@71
    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    #@0
    .prologue
    .line 888
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 889
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@7
    move-result-object v0

    #@8
    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@a
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/net/Inet4Address;

    #@10
    .line 890
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@12
    .line 892
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->packetDestination()Ljava/net/Inet4Address;

    #@15
    move-result-object v3

    #@16
    .line 891
    const/4 v4, 0x0

    #@17
    .line 888
    invoke-static {v1, v0, v2, v4, v3}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method
