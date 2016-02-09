.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
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
    .line 589
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

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
    .line 592
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    #@3
    .line 593
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 594
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@a
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap0(Landroid/net/dhcp/DhcpClient;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@12
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap1(Landroid/net/dhcp/DhcpClient;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 595
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1a
    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@1c
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1e
    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@21
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@24
    .line 596
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@26
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    #@2d
    .line 591
    :goto_0
    return-void

    #@2e
    .line 598
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@30
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;)V

    #@33
    .line 599
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@35
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@37
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@3e
    goto :goto_0
.end method

.method public exit()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 605
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@3
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;)V

    #@6
    .line 606
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@8
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 607
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@10
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    #@17
    .line 608
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@19
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@1c
    .line 610
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1e
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;)V

    #@21
    .line 604
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 615
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    #@4
    .line 616
    iget v0, p1, Landroid/os/Message;->what:I

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 625
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 618
    :sswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@d
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@f
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@12
    move-result-object v1

    #@13
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@16
    .line 619
    return v2

    #@17
    .line 621
    :sswitch_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@19
    const-string/jumbo v1, "Timed out"

    #@1c
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    #@1f
    .line 622
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@21
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;)V

    #@24
    .line 623
    return v2

    #@25
    .line 616
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x30002 -> :sswitch_0
        0x30068 -> :sswitch_1
    .end sparse-switch
.end method
