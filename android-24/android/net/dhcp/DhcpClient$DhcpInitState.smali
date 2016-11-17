.class Landroid/net/dhcp/DhcpClient$DhcpInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 719
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    .line 720
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 719
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 725
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    #@3
    .line 726
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 724
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 735
    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpOfferPacket;

    #@b
    if-nez v0, :cond_1

    #@d
    return-void

    #@e
    .line 736
    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@10
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    #@13
    move-result-object v1

    #@14
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set0(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    #@17
    .line 737
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@19
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 738
    const-string/jumbo v0, "DhcpClient"

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Got pending lease: "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@30
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 739
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@41
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@43
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@4a
    .line 733
    :cond_2
    return-void
.end method

.method protected sendPacket()Z
    .locals 1

    #@0
    .prologue
    .line 730
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap4(Landroid/net/dhcp/DhcpClient;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
