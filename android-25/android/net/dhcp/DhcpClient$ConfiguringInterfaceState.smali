.class Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfiguringInterfaceState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 835
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

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
    .line 838
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    #@3
    .line 839
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@b
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    #@e
    move-result-object v1

    #@f
    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@11
    const v2, 0x30008

    #@14
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@17
    .line 837
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 844
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    #@3
    .line 845
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 850
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 847
    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@c
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@e
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@15
    .line 848
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 845
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x30009
        :pswitch_0
    .end packed-switch
.end method
