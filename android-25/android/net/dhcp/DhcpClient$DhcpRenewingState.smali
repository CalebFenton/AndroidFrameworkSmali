.class Landroid/net/dhcp/DhcpClient$DhcpRenewingState;
.super Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
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
    .line 955
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 956
    const-string/jumbo v0, "Renewed"

    #@8
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->mLeaseMsg:Ljava/lang/String;

    #@a
    .line 955
    return-void
.end method


# virtual methods
.method protected packetDestination()Ljava/net/Inet4Address;
    .locals 1

    #@0
    .prologue
    .line 978
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 979
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@c
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@f
    move-result-object v0

    #@10
    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    #@12
    .line 978
    :goto_0
    return-object v0

    #@13
    .line 979
    :cond_0
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@15
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 961
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->processMessage(Landroid/os/Message;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 962
    return v2

    #@8
    .line 965
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 970
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 967
    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@11
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@13
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@1a
    .line 968
    return v2

    #@1b
    .line 965
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x30069
        :pswitch_0
    .end packed-switch
.end method
