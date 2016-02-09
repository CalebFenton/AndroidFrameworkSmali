.class Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveAddressState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 804
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 807
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    #@3
    .line 808
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@7
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@a
    move-result-object v1

    #@b
    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@d
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap4(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 809
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Configured IP address "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@23
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@26
    move-result-object v2

    #@27
    iget-object v2, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    #@34
    .line 806
    :goto_0
    return-void

    #@35
    .line 811
    :cond_0
    const-string/jumbo v0, "DhcpClient"

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "Failed to configure IP address "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@46
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@49
    move-result-object v2

    #@4a
    iget-object v2, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 812
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@59
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;)V

    #@5c
    .line 815
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5e
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@60
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@67
    goto :goto_0
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    const-string/jumbo v1, "Clearing IP address"

    #@5
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    #@8
    .line 822
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@a
    new-instance v1, Landroid/net/LinkAddress;

    #@c
    const-string/jumbo v2, "0.0.0.0/0"

    #@f
    invoke-direct {v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    #@12
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap4(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z

    #@15
    .line 820
    return-void
.end method
