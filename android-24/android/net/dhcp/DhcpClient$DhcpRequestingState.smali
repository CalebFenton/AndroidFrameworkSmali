.class Landroid/net/dhcp/DhcpClient$DhcpRequestingState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRequestingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 749
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 750
    const/16 v0, 0x4650

    #@7
    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->mTimeout:I

    #@9
    .line 749
    return-void
.end method


# virtual methods
.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 4
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 762
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@3
    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    return-void

    #@a
    .line 763
    :cond_0
    instance-of v1, p1, Landroid/net/dhcp/DhcpAckPacket;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 764
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    #@11
    move-result-object v0

    #@12
    .line 765
    .local v0, "results":Landroid/net/DhcpResults;
    if-eqz v0, :cond_1

    #@14
    .line 766
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@16
    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    #@19
    .line 767
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1b
    const-string/jumbo v2, "Confirmed"

    #@1e
    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    #@21
    .line 768
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@23
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@25
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@2c
    .line 761
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 770
    :cond_2
    instance-of v1, p1, Landroid/net/dhcp/DhcpNakPacket;

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 772
    const-string/jumbo v1, "DhcpClient"

    #@34
    const-string/jumbo v2, "Received NAK, returning to INIT"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 773
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@3c
    invoke-static {v1, v3}, Landroid/net/dhcp/DhcpClient;->-set0(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@3f
    .line 774
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@41
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@43
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@4a
    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    #@0
    .prologue
    .line 754
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 755
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    .line 756
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@6
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@9
    move-result-object v0

    #@a
    iget-object v0, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@c
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/net/Inet4Address;

    #@12
    .line 757
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@14
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@17
    move-result-object v3

    #@18
    iget-object v3, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    #@1a
    .line 758
    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@1c
    .line 754
    invoke-static {v1, v2, v0, v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method protected timeout()V
    .locals 2

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@b
    .line 779
    return-void
.end method
