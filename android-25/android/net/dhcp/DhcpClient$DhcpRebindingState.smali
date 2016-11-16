.class Landroid/net/dhcp/DhcpClient$DhcpRebindingState;
.super Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRebindingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 984
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 985
    const-string/jumbo v0, "Rebound"

    #@8
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->mLeaseMsg:Ljava/lang/String;

    #@a
    .line 984
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 990
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->enter()V

    #@3
    .line 994
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get21(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap8(Ljava/io/FileDescriptor;)V

    #@c
    .line 995
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@e
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap3(Landroid/net/dhcp/DhcpClient;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 996
    const-string/jumbo v0, "DhcpClient"

    #@17
    const-string/jumbo v1, "Failed to recreate UDP socket"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 997
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1f
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@21
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@28
    .line 989
    :cond_0
    return-void
.end method

.method protected packetDestination()Ljava/net/Inet4Address;
    .locals 1

    #@0
    .prologue
    .line 1003
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@2
    return-object v0
.end method
