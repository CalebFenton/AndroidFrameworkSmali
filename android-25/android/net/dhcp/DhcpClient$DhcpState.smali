.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 599
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 603
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@7
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap1(Landroid/net/dhcp/DhcpClient;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@f
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap2(Landroid/net/dhcp/DhcpClient;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 604
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@17
    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@19
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1b
    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@1e
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set3(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@21
    .line 605
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@23
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    #@2a
    .line 601
    :goto_0
    return-void

    #@2b
    .line 607
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2d
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    #@30
    .line 608
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@32
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@34
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@37
    move-result-object v1

    #@38
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@3b
    goto :goto_0
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 614
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@3
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 615
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@b
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    #@12
    .line 616
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@14
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set3(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@17
    .line 618
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@19
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    #@1c
    .line 613
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 623
    invoke-super {p0, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    #@3
    .line 624
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 629
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 626
    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@c
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@e
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@15
    .line 627
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 624
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x30002
        :pswitch_0
    .end packed-switch
.end method
