.class Landroid/net/dhcp/DhcpClient$DhcpBoundState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpBoundState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 826
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    #@0
    .prologue
    .line 829
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    #@3
    .line 830
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@5
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;)V

    #@8
    .line 831
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@a
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;)V

    #@d
    .line 834
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@f
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    #@12
    .line 828
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 839
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    #@3
    .line 840
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 849
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 842
    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@c
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get12(Landroid/net/dhcp/DhcpClient;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 843
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@14
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@16
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get15(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@1d
    .line 847
    :goto_0
    const/4 v0, 0x1

    #@1e
    return v0

    #@1f
    .line 845
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@21
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@23
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@2a
    goto :goto_0

    #@2b
    .line 840
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x30003
        :pswitch_0
    .end packed-switch
.end method
