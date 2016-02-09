.class Landroid/net/dhcp/DhcpClient$DhcpRenewingState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRenewingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 855
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 856
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 857
    const v0, 0x8ca0

    #@8
    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->mTimeout:I

    #@a
    .line 855
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 862
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    #@3
    .line 863
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 861
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 2
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    .line 875
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 876
    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 877
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@f
    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    #@12
    .line 878
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@14
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@16
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@1d
    .line 874
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 879
    :cond_2
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 880
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@24
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@26
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@2d
    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    #@0
    .prologue
    .line 867
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 868
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

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
    .line 869
    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@12
    .line 870
    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@14
    .line 871
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@16
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@19
    move-result-object v1

    #@1a
    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@1c
    check-cast v1, Ljava/net/Inet4Address;

    #@1e
    .line 867
    invoke-static {v2, v0, v3, v4, v1}, Landroid/net/dhcp/DhcpClient;->-wrap3(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method protected timeout()V
    .locals 2

    #@0
    .prologue
    .line 886
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@b
    .line 887
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@d
    const v1, 0x30068

    #@10
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@13
    .line 885
    return-void
.end method
