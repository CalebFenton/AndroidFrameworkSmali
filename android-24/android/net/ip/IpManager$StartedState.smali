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
.field private mDhcpActionInFlight:Z

.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    #@0
    .prologue
    .line 1029
    iput-object p1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private ensureDhcpAction()V
    .locals 6

    #@0
    .prologue
    .line 1092
    iget-boolean v2, p0, Landroid/net/ip/IpManager$StartedState;->mDhcpActionInFlight:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1093
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@6
    iget-object v2, v2, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@8
    invoke-virtual {v2}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    #@b
    .line 1094
    const/4 v2, 0x1

    #@c
    iput-boolean v2, p0, Landroid/net/ip/IpManager$StartedState;->mDhcpActionInFlight:Z

    #@e
    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@11
    move-result-wide v2

    #@12
    .line 1096
    iget-object v4, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@14
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@17
    move-result-object v4

    #@18
    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@1a
    int-to-long v4, v4

    #@1b
    .line 1095
    add-long v0, v2, v4

    #@1d
    .line 1097
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@1f
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@26
    .line 1091
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method private stopDhcpAction()V
    .locals 1

    #@0
    .prologue
    .line 1102
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@9
    .line 1103
    iget-boolean v0, p0, Landroid/net/ip/IpManager$StartedState;->mDhcpActionInFlight:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1104
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@f
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@11
    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    #@14
    .line 1105
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Landroid/net/ip/IpManager$StartedState;->mDhcpActionInFlight:Z

    #@17
    .line 1101
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    #@0
    .prologue
    .line 1034
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v2, v3}, Landroid/net/ip/IpManager;->-set6(Landroid/net/ip/IpManager;J)J

    #@9
    .line 1036
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@b
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@d
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@10
    move-result-object v1

    #@11
    iget-object v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@13
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@15
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;

    #@18
    move-result-object v2

    #@19
    .line 1037
    iget-object v3, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@1b
    iget-object v3, v3, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@1d
    iget-object v4, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@1f
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Z

    #@22
    move-result v4

    #@23
    .line 1036
    invoke-static {v1, v2, v3, v4}, Landroid/net/apf/ApfFilter;->maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    #@2a
    .line 1040
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2c
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@2f
    move-result-object v0

    #@30
    if-nez v0, :cond_0

    #@32
    .line 1041
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@34
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@36
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@38
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Z

    #@3b
    move-result v1

    #@3c
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    #@3f
    .line 1044
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@41
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@44
    move-result-object v0

    #@45
    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@47
    if-eqz v0, :cond_1

    #@49
    .line 1046
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@4b
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap3(Landroid/net/ip/IpManager;)Z

    #@4e
    .line 1049
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@50
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@53
    move-result-object v0

    #@54
    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@56
    if-eqz v0, :cond_2

    #@58
    .line 1050
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@5a
    new-instance v1, Landroid/net/ip/IpReachabilityMonitor;

    #@5c
    .line 1051
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@5e
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/content/Context;

    #@61
    move-result-object v2

    #@62
    .line 1052
    iget-object v3, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@64
    invoke-static {v3}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    .line 1053
    new-instance v4, Landroid/net/ip/IpManager$StartedState$1;

    #@6a
    invoke-direct {v4, p0}, Landroid/net/ip/IpManager$StartedState$1;-><init>(Landroid/net/ip/IpManager$StartedState;)V

    #@6d
    .line 1050
    invoke-direct {v1, v2, v3, v4}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;)V

    #@70
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    #@73
    .line 1061
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@75
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@78
    move-result-object v0

    #@79
    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@7b
    if-eqz v0, :cond_3

    #@7d
    .line 1062
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@7f
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap2(Landroid/net/ip/IpManager;)Z

    #@82
    move-result v0

    #@83
    if-nez v0, :cond_3

    #@85
    .line 1063
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@87
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@89
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@8c
    move-result-object v1

    #@8d
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@90
    .line 1033
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1070
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@3
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get13(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@a
    .line 1071
    invoke-direct {p0}, Landroid/net/ip/IpManager$StartedState;->stopDhcpAction()V

    #@d
    .line 1073
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@f
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1074
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@17
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->stop()V

    #@1e
    .line 1075
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@20
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    #@23
    .line 1078
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@25
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@28
    move-result-object v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 1079
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2d
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@30
    move-result-object v0

    #@31
    const v1, 0x30002

    #@34
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@37
    .line 1080
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@39
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->doQuit()V

    #@40
    .line 1083
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@42
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_2

    #@48
    .line 1084
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@4a
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Landroid/net/apf/ApfFilter;->shutdown()V

    #@51
    .line 1085
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@53
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    #@56
    .line 1088
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@58
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap11(Landroid/net/ip/IpManager;)V

    #@5b
    .line 1069
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    .line 1111
    iget v1, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v1, :sswitch_data_0

    #@8
    .line 1231
    return v2

    #@9
    .line 1113
    :sswitch_0
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@b
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@d
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@10
    move-result-object v2

    #@11
    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@14
    .line 1233
    :cond_0
    :goto_0
    return v5

    #@15
    .line 1117
    :sswitch_1
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@17
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get18(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "ALERT: START received in StartedState. Please fix caller."

    #@1e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_0

    #@22
    .line 1125
    :sswitch_2
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@24
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@27
    move-result-object v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 1126
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@2c
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Landroid/net/ip/IpReachabilityMonitor;->probeAll()V

    #@33
    goto :goto_0

    #@34
    .line 1134
    :sswitch_3
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@36
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@39
    move-result-object v1

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 1135
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@3e
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@41
    move-result-object v1

    #@42
    const v2, 0x30006

    #@45
    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@48
    goto :goto_0

    #@49
    .line 1140
    :sswitch_4
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@4b
    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_0

    #@51
    .line 1141
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@53
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@55
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@58
    move-result-object v2

    #@59
    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@5c
    goto :goto_0

    #@5d
    .line 1146
    :sswitch_5
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@5f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@61
    check-cast v1, Ljava/lang/String;

    #@63
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    #@66
    .line 1148
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@68
    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@6b
    goto :goto_0

    #@6c
    .line 1152
    :sswitch_6
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@6e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@70
    check-cast v1, Landroid/net/ProxyInfo;

    #@72
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@75
    .line 1154
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@77
    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@7a
    goto :goto_0

    #@7b
    .line 1158
    :sswitch_7
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@7d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7f
    check-cast v1, Ljava/lang/Boolean;

    #@81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@84
    move-result v1

    #@85
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    #@88
    .line 1159
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@8a
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@8d
    move-result-object v1

    #@8e
    if-eqz v1, :cond_1

    #@90
    .line 1160
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@92
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@95
    move-result-object v1

    #@96
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@98
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Z

    #@9b
    move-result v2

    #@9c
    invoke-virtual {v1, v2}, Landroid/net/apf/ApfFilter;->setMulticastFilter(Z)V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 1162
    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@a3
    iget-object v1, v1, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@a5
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@a7
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Z

    #@aa
    move-result v2

    #@ab
    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 1168
    :sswitch_8
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@b2
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap9(Landroid/net/ip/IpManager;)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 1172
    :sswitch_9
    invoke-direct {p0}, Landroid/net/ip/IpManager$StartedState;->stopDhcpAction()V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 1176
    :sswitch_a
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@be
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@c1
    move-result-object v1

    #@c2
    iget v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@c4
    if-lez v1, :cond_2

    #@c6
    .line 1177
    invoke-direct {p0}, Landroid/net/ip/IpManager$StartedState;->ensureDhcpAction()V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 1179
    :cond_2
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@cd
    const/4 v2, 0x4

    #@ce
    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager;->sendMessage(I)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1184
    :sswitch_b
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@d5
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 1188
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dc
    check-cast v0, Landroid/net/LinkAddress;

    #@de
    .line 1189
    .local v0, "ipAddress":Landroid/net/LinkAddress;
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@e0
    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-wrap1(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z

    #@e3
    move-result v1

    #@e4
    if-eqz v1, :cond_3

    #@e6
    .line 1190
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@e8
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@eb
    move-result-object v1

    #@ec
    const v2, 0x30009

    #@ef
    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1192
    :cond_3
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@f6
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get18(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@f9
    move-result-object v1

    #@fa
    const-string/jumbo v2, "Failed to set IPv4 address!"

    #@fd
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    .line 1193
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@102
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@104
    .line 1194
    new-instance v3, Landroid/net/LinkProperties;

    #@106
    iget-object v4, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@108
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    #@10b
    move-result-object v4

    #@10c
    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@10f
    .line 1193
    invoke-static {v1, v2, v3}, Landroid/net/ip/IpManager;->-wrap6(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    #@112
    .line 1195
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@114
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@116
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@119
    move-result-object v2

    #@11a
    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 1210
    .end local v0    # "ipAddress":Landroid/net/LinkAddress;
    :sswitch_d
    invoke-direct {p0}, Landroid/net/ip/IpManager$StartedState;->stopDhcpAction()V

    #@122
    .line 1212
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@124
    packed-switch v1, :pswitch_data_0

    #@127
    .line 1220
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@129
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get18(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@12c
    move-result-object v1

    #@12d
    new-instance v2, Ljava/lang/StringBuilder;

    #@12f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@132
    const-string/jumbo v3, "Unknown CMD_POST_DHCP_ACTION status:"

    #@135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v2

    #@139
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@13b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v2

    #@13f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v2

    #@143
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    goto/16 :goto_0

    #@148
    .line 1214
    :pswitch_0
    iget-object v2, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@14a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14c
    check-cast v1, Landroid/net/DhcpResults;

    #@14e
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V

    #@151
    goto/16 :goto_0

    #@153
    .line 1217
    :pswitch_1
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@155
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap7(Landroid/net/ip/IpManager;)V

    #@158
    goto/16 :goto_0

    #@15a
    .line 1226
    :sswitch_e
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@15c
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get18(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@15f
    move-result-object v1

    #@160
    const-string/jumbo v2, "Unexpected CMD_ON_QUIT."

    #@163
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@166
    .line 1227
    iget-object v1, p0, Landroid/net/ip/IpManager$StartedState;->this$0:Landroid/net/ip/IpManager;

    #@168
    invoke-static {v1, v3}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    #@16b
    goto/16 :goto_0

    #@16d
    .line 1111
    nop

    #@16e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0x30003 -> :sswitch_a
        0x30004 -> :sswitch_d
        0x30005 -> :sswitch_e
        0x30007 -> :sswitch_b
        0x30008 -> :sswitch_c
    .end sparse-switch

    #@1ac
    .line 1212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
