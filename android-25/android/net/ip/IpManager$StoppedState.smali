.class Landroid/net/ip/IpManager$StoppedState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    #@0
    .prologue
    .line 1004
    iput-object p1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1007
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@4
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap13(Landroid/net/ip/IpManager;)V

    #@7
    .line 1009
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@9
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;)V

    #@c
    .line 1010
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@e
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)J

    #@11
    move-result-wide v0

    #@12
    cmp-long v0, v0, v2

    #@14
    if-lez v0, :cond_0

    #@16
    .line 1011
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@18
    const/4 v1, 0x3

    #@19
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap11(Landroid/net/ip/IpManager;I)V

    #@1c
    .line 1012
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@1e
    invoke-static {v0, v2, v3}, Landroid/net/ip/IpManager;->-set6(Landroid/net/ip/IpManager;J)J

    #@21
    .line 1006
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1018
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    sparse-switch v0, :sswitch_data_0

    #@6
    .line 1051
    return v2

    #@7
    .line 1023
    :sswitch_0
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@d
    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@10
    .line 1024
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@12
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@14
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@17
    move-result-object v1

    #@18
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@1b
    .line 1054
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@1d
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@23
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    #@2a
    .line 1055
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 1028
    :sswitch_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@2e
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@31
    goto :goto_0

    #@32
    .line 1032
    :sswitch_3
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    check-cast v0, Ljava/lang/String;

    #@38
    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    #@3b
    .line 1033
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@3d
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@40
    goto :goto_0

    #@41
    .line 1037
    :sswitch_4
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@45
    check-cast v0, Landroid/net/ProxyInfo;

    #@47
    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@4a
    .line 1038
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@4c
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@4f
    goto :goto_0

    #@50
    .line 1042
    :sswitch_5
    iget-object v1, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@54
    check-cast v0, Ljava/lang/Boolean;

    #@56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@59
    move-result v0

    #@5a
    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    #@5d
    goto :goto_0

    #@5e
    .line 1047
    :sswitch_6
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppedState;->this$0:Landroid/net/ip/IpManager;

    #@60
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get20(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    const-string/jumbo v1, "Unexpected CMD_ON_QUIT (already stopped)."

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_0

    #@6b
    .line 1018
    nop

    #@6c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x30005 -> :sswitch_6
    .end sparse-switch
.end method
