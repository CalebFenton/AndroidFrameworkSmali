.class Landroid/net/ip/IpManager$StartedState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    #@0
    .prologue
    .line 1092
    iput-object p1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    #@0
    .prologue
    .line 1095
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v4

    #@6
    invoke-static {v2, v4, v5}, Landroid/net/ip/IpManager;->-set6(Landroid/net/ip/IpManager;J)J

    #@9
    .line 1097
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@b
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@e
    move-result-object v2

    #@f
    iget v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@11
    if-lez v2, :cond_0

    #@13
    .line 1098
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@16
    move-result-wide v2

    #@17
    .line 1099
    iget-object v4, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@19
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@1c
    move-result-object v4

    #@1d
    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@1f
    int-to-long v4, v4

    #@20
    .line 1098
    add-long v0, v2, v4

    #@22
    .line 1100
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@24
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get14(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@2b
    .line 1103
    .end local v0    # "alarmTime":J
    :cond_0
    invoke-virtual {p0}, Landroid/net/ip/IpManager$StartedState;->readyToProceed()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 1104
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@33
    iget-object v3, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@35
    invoke-static {v3}, Landroid/net/ip/IpManager;->-get15(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@38
    move-result-object v3

    #@39
    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@3c
    .line 1094
    :goto_0
    return-void

    #@3d
    .line 1109
    :cond_1
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@3f
    invoke-static {v2}, Landroid/net/ip/IpManager;->-wrap13(Landroid/net/ip/IpManager;)V

    #@42
    goto :goto_0
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 1115
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get14(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@9
    .line 1114
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1120
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 1142
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@7
    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->-wrap6(Landroid/net/ip/IpManager;Landroid/os/Message;)V

    #@a
    .line 1145
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@c
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@12
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    #@19
    .line 1146
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1122
    :sswitch_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@1d
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@1f
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@26
    goto :goto_0

    #@27
    .line 1126
    :sswitch_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@29
    const/4 v1, 0x0

    #@2a
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@2d
    .line 1127
    invoke-virtual {p0}, Landroid/net/ip/IpManager$StartedState;->readyToProceed()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 1128
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@35
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@37
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get15(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1133
    :sswitch_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@41
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap10(Landroid/net/ip/IpManager;)V

    #@44
    goto :goto_0

    #@45
    .line 1120
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method readyToProceed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1150
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@3
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1151
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@f
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 1150
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 1151
    :cond_1
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method
