.class Landroid/net/dhcp/DhcpClient$StoppedState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 568
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 571
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 580
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 573
    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@9
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get17(Landroid/net/dhcp/DhcpClient;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 574
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@11
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@13
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get23(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@1a
    .line 578
    :goto_0
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 576
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@1e
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@20
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    #@27
    goto :goto_0

    #@28
    .line 571
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
    .end packed-switch
.end method
