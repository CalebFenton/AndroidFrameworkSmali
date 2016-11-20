.class Landroid/net/ip/IpManager$RunningState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
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
    .line 1155
    iput-object p1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method private ensureDhcpAction()V
    .locals 6

    #@0
    .prologue
    .line 1217
    iget-boolean v2, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1218
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@6
    iget-object v2, v2, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@8
    invoke-virtual {v2}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    #@b
    .line 1219
    const/4 v2, 0x1

    #@c
    iput-boolean v2, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    #@e
    .line 1220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@11
    move-result-wide v2

    #@12
    .line 1221
    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@14
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@17
    move-result-object v4

    #@18
    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@1a
    int-to-long v4, v4

    #@1b
    .line 1220
    add-long v0, v2, v4

    #@1d
    .line 1222
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@1f
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@26
    .line 1216
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method private stopDhcpAction()V
    .locals 1

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@9
    .line 1228
    iget-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1229
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@f
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@11
    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    #@14
    .line 1230
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    #@17
    .line 1226
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@2
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@4
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    #@a
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@c
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get13(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;

    #@f
    move-result-object v2

    #@10
    .line 1161
    iget-object v3, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@12
    iget-object v3, v3, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@14
    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@16
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    #@19
    move-result v4

    #@1a
    .line 1160
    invoke-static {v1, v2, v3, v4}, Landroid/net/apf/ApfFilter;->maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    #@21
    .line 1164
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@23
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@26
    move-result-object v0

    #@27
    if-nez v0, :cond_0

    #@29
    .line 1165
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@2b
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2d
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@2f
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    #@32
    move-result v1

    #@33
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    #@36
    .line 1168
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@38
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@3b
    move-result-object v0

    #@3c
    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    #@3e
    if-eqz v0, :cond_1

    #@40
    .line 1170
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@42
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap3(Landroid/net/ip/IpManager;)Z

    #@45
    .line 1173
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@47
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@4a
    move-result-object v0

    #@4b
    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    #@4d
    if-eqz v0, :cond_2

    #@4f
    .line 1174
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@51
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap2(Landroid/net/ip/IpManager;)Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_2

    #@57
    .line 1175
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@59
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@5b
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@62
    .line 1176
    return-void

    #@63
    .line 1180
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@65
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@68
    move-result-object v0

    #@69
    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    #@6b
    if-eqz v0, :cond_3

    #@6d
    .line 1181
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@6f
    new-instance v1, Landroid/net/ip/IpReachabilityMonitor;

    #@71
    .line 1182
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@73
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/content/Context;

    #@76
    move-result-object v2

    #@77
    .line 1183
    iget-object v3, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@79
    invoke-static {v3}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    .line 1184
    new-instance v4, Landroid/net/ip/IpManager$RunningState$1;

    #@7f
    invoke-direct {v4, p0}, Landroid/net/ip/IpManager$RunningState$1;-><init>(Landroid/net/ip/IpManager$RunningState;)V

    #@82
    .line 1190
    iget-object v5, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@84
    invoke-static {v5}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Landroid/net/util/AvoidBadWifiTracker;

    #@87
    move-result-object v5

    #@88
    .line 1181
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/AvoidBadWifiTracker;)V

    #@8b
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    #@8e
    .line 1159
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1196
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    #@4
    .line 1198
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@6
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1199
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@e
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->stop()V

    #@15
    .line 1200
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@17
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    #@1a
    .line 1203
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@1c
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 1204
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@24
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@27
    move-result-object v0

    #@28
    const v1, 0x30002

    #@2b
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@2e
    .line 1205
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@30
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->doQuit()V

    #@37
    .line 1208
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@39
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@3c
    move-result-object v0

    #@3d
    if-eqz v0, :cond_2

    #@3f
    .line 1209
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@41
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Landroid/net/apf/ApfFilter;->shutdown()V

    #@48
    .line 1210
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@4a
    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    #@4d
    .line 1213
    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@4f
    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;)V

    #@52
    .line 1195
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
    .line 1236
    iget v1, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v1, :sswitch_data_0

    #@8
    .line 1352
    return v2

    #@9
    .line 1238
    :sswitch_0
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@b
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@d
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@10
    move-result-object v2

    #@11
    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@14
    .line 1355
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@16
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    #@19
    move-result-object v1

    #@1a
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@1c
    invoke-static {v2}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/IState;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, p0, v2}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    #@23
    .line 1356
    return v5

    #@24
    .line 1242
    :sswitch_1
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@26
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get20(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "ALERT: START received in StartedState. Please fix caller."

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0

    #@31
    .line 1250
    :sswitch_2
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@33
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@36
    move-result-object v1

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 1251
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@3b
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Landroid/net/ip/IpReachabilityMonitor;->probeAll()V

    #@42
    goto :goto_0

    #@43
    .line 1259
    :sswitch_3
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@45
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@48
    move-result-object v1

    #@49
    if-eqz v1, :cond_0

    #@4b
    .line 1260
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@4d
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@50
    move-result-object v1

    #@51
    const v2, 0x30006

    #@54
    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@57
    goto :goto_0

    #@58
    .line 1265
    :sswitch_4
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@5a
    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@5d
    move-result v1

    #@5e
    if-nez v1, :cond_0

    #@60
    .line 1266
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@62
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@64
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@67
    move-result-object v2

    #@68
    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@6b
    goto :goto_0

    #@6c
    .line 1271
    :sswitch_5
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@6e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@70
    check-cast v1, Ljava/lang/String;

    #@72
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    #@75
    .line 1273
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@77
    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@7a
    goto :goto_0

    #@7b
    .line 1277
    :sswitch_6
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@7d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7f
    check-cast v1, Landroid/net/ProxyInfo;

    #@81
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    #@84
    .line 1279
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@86
    invoke-static {v1, v5}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Z)Z

    #@89
    goto :goto_0

    #@8a
    .line 1283
    :sswitch_7
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@8c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8e
    check-cast v1, Ljava/lang/Boolean;

    #@90
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@93
    move-result v1

    #@94
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    #@97
    .line 1284
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@99
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@9c
    move-result-object v1

    #@9d
    if-eqz v1, :cond_1

    #@9f
    .line 1285
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@a1
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    #@a4
    move-result-object v1

    #@a5
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@a7
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    #@aa
    move-result v2

    #@ab
    invoke-virtual {v1, v2}, Landroid/net/apf/ApfFilter;->setMulticastFilter(Z)V

    #@ae
    goto/16 :goto_0

    #@b0
    .line 1287
    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@b2
    iget-object v1, v1, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@b4
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@b6
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    #@b9
    move-result v2

    #@ba
    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    #@bd
    goto/16 :goto_0

    #@bf
    .line 1293
    :sswitch_8
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 1297
    :sswitch_9
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@c6
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@c9
    move-result-object v1

    #@ca
    iget v1, v1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    #@cc
    if-lez v1, :cond_2

    #@ce
    .line 1298
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->ensureDhcpAction()V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1300
    :cond_2
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@d5
    const/4 v2, 0x4

    #@d6
    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager;->sendMessage(I)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 1305
    :sswitch_a
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@dd
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;)V

    #@e0
    goto/16 :goto_0

    #@e2
    .line 1309
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e4
    check-cast v0, Landroid/net/LinkAddress;

    #@e6
    .line 1310
    .local v0, "ipAddress":Landroid/net/LinkAddress;
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@e8
    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-wrap1(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z

    #@eb
    move-result v1

    #@ec
    if-eqz v1, :cond_3

    #@ee
    .line 1311
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@f0
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    #@f3
    move-result-object v1

    #@f4
    const v2, 0x30009

    #@f7
    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 1313
    :cond_3
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@fe
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get20(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    const-string/jumbo v2, "Failed to set IPv4 address!"

    #@105
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    .line 1314
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@10a
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@10c
    .line 1315
    new-instance v3, Landroid/net/LinkProperties;

    #@10e
    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@110
    invoke-static {v4}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    #@113
    move-result-object v4

    #@114
    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@117
    .line 1314
    invoke-static {v1, v2, v3}, Landroid/net/ip/IpManager;->-wrap7(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    #@11a
    .line 1316
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@11c
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@11e
    invoke-static {v2}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    #@121
    move-result-object v2

    #@122
    invoke-static {v1, v2}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    #@125
    goto/16 :goto_0

    #@127
    .line 1331
    .end local v0    # "ipAddress":Landroid/net/LinkAddress;
    :sswitch_c
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    #@12a
    .line 1333
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@12c
    packed-switch v1, :pswitch_data_0

    #@12f
    .line 1341
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@131
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get20(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@134
    move-result-object v1

    #@135
    new-instance v2, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v3, "Unknown CMD_POST_DHCP_ACTION status:"

    #@13d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v2

    #@14b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14e
    goto/16 :goto_0

    #@150
    .line 1335
    :pswitch_0
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@152
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@154
    check-cast v1, Landroid/net/DhcpResults;

    #@156
    invoke-static {v2, v1}, Landroid/net/ip/IpManager;->-wrap9(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V

    #@159
    goto/16 :goto_0

    #@15b
    .line 1338
    :pswitch_1
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@15d
    invoke-static {v1}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;)V

    #@160
    goto/16 :goto_0

    #@162
    .line 1347
    :sswitch_d
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@164
    invoke-static {v1}, Landroid/net/ip/IpManager;->-get20(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@167
    move-result-object v1

    #@168
    const-string/jumbo v2, "Unexpected CMD_ON_QUIT."

    #@16b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16e
    .line 1348
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    #@170
    invoke-static {v1, v3}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    #@173
    goto/16 :goto_0

    #@175
    .line 1236
    nop

    #@176
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
        0xa -> :sswitch_8
        0x30003 -> :sswitch_9
        0x30004 -> :sswitch_c
        0x30005 -> :sswitch_d
        0x30007 -> :sswitch_a
        0x30008 -> :sswitch_b
    .end sparse-switch

    #@1b0
    .line 1333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
