.class Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveLeaseState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 807
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get18(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@9
    .line 825
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@b
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get15(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@12
    .line 826
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@14
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get8(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@1b
    .line 827
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1d
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    #@20
    .line 831
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@22
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    #@25
    move-result-object v0

    #@26
    const v1, 0x30007

    #@29
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@2c
    .line 822
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 810
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 817
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 812
    :pswitch_0
    const-string/jumbo v0, "DhcpClient"

    #@a
    const-string/jumbo v1, "Lease expired!"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 813
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@12
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    #@15
    .line 814
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@17
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@19
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@20
    .line 815
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 810
    :pswitch_data_0
    .packed-switch 0x3006a
        :pswitch_0
    .end packed-switch
.end method
