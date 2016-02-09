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
    .line 766
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 767
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 768
    const/16 v0, 0x4650

    #@7
    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->mTimeout:I

    #@9
    .line 766
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
    .line 780
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
    .line 781
    :cond_0
    instance-of v1, p1, Landroid/net/dhcp/DhcpAckPacket;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 782
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    #@11
    move-result-object v0

    #@12
    .line 783
    .local v0, "results":Landroid/net/DhcpResults;
    if-eqz v0, :cond_1

    #@14
    .line 784
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@16
    invoke-static {v1, v0}, Landroid/net/dhcp/DhcpClient;->-set0(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@19
    .line 785
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1b
    invoke-static {v1, v3}, Landroid/net/dhcp/DhcpClient;->-set1(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@1e
    .line 786
    const-string/jumbo v1, "DhcpClient"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Confirmed lease: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2f
    invoke-static {v3}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 787
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@40
    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    #@43
    .line 788
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@45
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@47
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@4e
    .line 779
    .end local v0    # "results":Landroid/net/DhcpResults;
    :cond_1
    :goto_0
    return-void

    #@4f
    .line 790
    :cond_2
    instance-of v1, p1, Landroid/net/dhcp/DhcpNakPacket;

    #@51
    if-eqz v1, :cond_1

    #@53
    .line 791
    const-string/jumbo v1, "DhcpClient"

    #@56
    const-string/jumbo v2, "Received NAK, returning to INIT"

    #@59
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 792
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5e
    invoke-static {v1, v3}, Landroid/net/dhcp/DhcpClient;->-set1(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@61
    .line 793
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@63
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@65
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@68
    move-result-object v2

    #@69
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@6c
    goto :goto_0
.end method

.method protected sendPacket()Z
    .locals 5

    #@0
    .prologue
    .line 772
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 773
    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@4
    .line 774
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@6
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get8(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

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
    .line 775
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@14
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get8(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@17
    move-result-object v1

    #@18
    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@1a
    check-cast v1, Ljava/net/Inet4Address;

    #@1c
    .line 776
    sget-object v4, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@1e
    .line 772
    invoke-static {v2, v3, v0, v1, v4}, Landroid/net/dhcp/DhcpClient;->-wrap3(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method protected timeout()V
    .locals 2

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@b
    .line 798
    return-void
.end method
