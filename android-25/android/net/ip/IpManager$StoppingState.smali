.class Landroid/net/ip/IpManager$StoppingState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    #@0
    .prologue
    .line 1059
    iput-object p1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 1062
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1064
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@a
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@c
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get18(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@f
    move-result-object v1

    #@10
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@13
    .line 1061
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1070
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 1084
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@7
    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->-wrap6(Landroid/net/ip/IpManager;Landroid/os/Message;)V

    #@a
    .line 1087
    :goto_0
    :sswitch_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@c
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@12
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    #@19
    .line 1088
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1075
    :sswitch_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@1d
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;)V

    #@20
    goto :goto_0

    #@21
    .line 1079
    :sswitch_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@23
    const/4 v1, 0x0

    #@24
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    #@27
    .line 1080
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@29
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    #@2b
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get18(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@32
    goto :goto_0

    #@33
    .line 1070
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x30005 -> :sswitch_2
        0x30007 -> :sswitch_1
    .end sparse-switch
.end method
