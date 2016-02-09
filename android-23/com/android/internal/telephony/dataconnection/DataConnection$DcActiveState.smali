.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    .line 1765
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 11

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1767
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "DcActiveState: enter dc="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1d
    .line 1769
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@29
    const-string/jumbo v1, "DcActiveState: connected after retrying call notifyAllOfConnected"

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2f
    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@33
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    #@36
    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@38
    const-string/jumbo v1, "connected"

    #@3b
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    #@3e
    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@40
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@47
    move-result-object v0

    #@48
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4a
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@4d
    move-result-object v1

    #@4e
    .line 1777
    const v2, 0x4000f

    #@51
    .line 1776
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    #@54
    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@56
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@5d
    move-result-object v0

    #@5e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@60
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@63
    move-result-object v1

    #@64
    .line 1779
    const v2, 0x40010

    #@67
    .line 1778
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@6a
    .line 1783
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@6c
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@6e
    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->restoreCurMaxRetryCount()V

    #@71
    .line 1784
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@73
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@76
    move-result-object v0

    #@77
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@79
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@7c
    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7e
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@81
    move-result-object v0

    #@82
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@84
    .line 1787
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@86
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    .line 1786
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@91
    .line 1788
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@93
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@96
    move-result-object v0

    #@97
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@99
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@9c
    move-result-object v1

    #@9d
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@9f
    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    #@a2
    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a6
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    #@a9
    move-result v1

    #@aa
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    #@ad
    .line 1791
    new-instance v9, Landroid/net/NetworkMisc;

    #@af
    invoke-direct {v9}, Landroid/net/NetworkMisc;-><init>()V

    #@b2
    .line 1792
    .local v9, "misc":Landroid/net/NetworkMisc;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b4
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    iput-object v0, v9, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    #@be
    .line 1793
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    #@c2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@c6
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@cd
    move-result-object v2

    #@ce
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@d0
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@d7
    move-result-object v3

    #@d8
    .line 1794
    const-string/jumbo v4, "DcNetworkAgent"

    #@db
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@dd
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@e0
    move-result-object v5

    #@e1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e3
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    #@e6
    move-result-object v6

    #@e7
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e9
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    #@ec
    move-result-object v7

    #@ed
    .line 1795
    const/16 v8, 0x32

    #@ef
    .line 1793
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    #@f2
    invoke-static {v10, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    #@f5
    .line 1766
    return-void
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1800
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "DcActiveState: exit dc="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1a
    .line 1801
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1c
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 1802
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@26
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->isExecutingCarrierChange()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 1803
    const-string/jumbo v0, "carrierChange"

    #@33
    .line 1809
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@35
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@3c
    move-result-object v1

    #@3d
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@3f
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    #@46
    .line 1810
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@48
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@52
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    #@59
    .line 1812
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@5b
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@5e
    move-result-object v1

    #@5f
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@61
    .line 1813
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@63
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 1812
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    .line 1814
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@70
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@73
    move-result-object v1

    #@74
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@76
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@7d
    .line 1815
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7f
    invoke-static {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    #@82
    .line 1799
    return-void

    #@83
    .line 1804
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@85
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@88
    move-result-object v1

    #@89
    if-eqz v1, :cond_2

    #@8b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@8d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@90
    move-result-object v1

    #@91
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@93
    if-eqz v1, :cond_2

    #@95
    .line 1805
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@97
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@9a
    move-result-object v1

    #@9b
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@9d
    goto :goto_0

    #@9e
    .line 1806
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a0
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@a3
    move-result-object v1

    #@a4
    if-eqz v1, :cond_0

    #@a6
    .line 1807
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a8
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    .line 1822
    iget v8, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v8, :pswitch_data_0

    #@8
    .line 1948
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@a
    new-instance v9, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v10, "DcActiveState not handled msg.what="

    #@12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v9

    #@16
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@18
    iget v11, p1, Landroid/os/Message;->what:I

    #@1a
    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@29
    .line 1950
    const/4 v7, 0x0

    #@2a
    .line 1953
    .local v7, "retVal":Z
    :goto_0
    return v7

    #@2b
    .line 1824
    .end local v7    # "retVal":Z
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2f
    .line 1826
    .local v2, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@31
    new-instance v9, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v10, "DcActiveState: EVENT_CONNECT cp="

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v9

    #@41
    const-string/jumbo v10, " dc="

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@4a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v9

    #@52
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@55
    .line 1828
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@57
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@59
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@5b
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5e
    move-result v8

    #@5f
    if-eqz v8, :cond_0

    #@61
    .line 1829
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@63
    new-instance v9, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v10, "DcActiveState ERROR already added apnContext="

    #@6b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    iget-object v10, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@7c
    .line 1837
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@7e
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@80
    invoke-static {v8, v2, v9, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    #@83
    .line 1838
    const/4 v7, 0x1

    #@84
    .line 1839
    .restart local v7    # "retVal":Z
    goto :goto_0

    #@85
    .line 1831
    .end local v7    # "retVal":Z
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@87
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@89
    iget-object v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@8b
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8e
    .line 1833
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@90
    new-instance v9, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v10, "DcActiveState msg.what=EVENT_CONNECT RefCount="

    #@98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    .line 1834
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@9e
    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@a0
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@a3
    move-result v10

    #@a4
    .line 1833
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v9

    #@ac
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@af
    goto :goto_1

    #@b0
    .line 1842
    .end local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@b4
    .line 1844
    .local v4, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@b6
    new-instance v9, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v10, "DcActiveState: EVENT_DISCONNECT dp="

    #@be
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v9

    #@c2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v9

    #@c6
    .line 1845
    const-string/jumbo v10, " dc="

    #@c9
    .line 1844
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v9

    #@cd
    .line 1845
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@cf
    .line 1844
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v9

    #@d3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v9

    #@d7
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@da
    .line 1847
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@dc
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@de
    iget-object v9, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e0
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@e3
    move-result v8

    #@e4
    if-eqz v8, :cond_2

    #@e6
    .line 1849
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@e8
    new-instance v9, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v10, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    #@f0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v9

    #@f4
    .line 1850
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@f6
    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@f8
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@fb
    move-result v10

    #@fc
    .line 1849
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v9

    #@100
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v9

    #@104
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@107
    .line 1853
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@109
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@10b
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@10e
    move-result v8

    #@10f
    if-ne v8, v13, :cond_1

    #@111
    .line 1854
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@113
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@115
    invoke-interface {v8}, Ljava/util/List;->clear()V

    #@118
    .line 1855
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@11a
    invoke-static {v8, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@11d
    .line 1856
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@11f
    invoke-static {v8, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@122
    .line 1857
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@124
    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@126
    iput v8, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    #@128
    .line 1858
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12a
    invoke-static {v8, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    #@12d
    .line 1859
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@12f
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@131
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@134
    move-result-object v9

    #@135
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@138
    .line 1869
    :goto_2
    const/4 v7, 0x1

    #@139
    .line 1870
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@13b
    .line 1861
    .end local v7    # "retVal":Z
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@13d
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@13f
    iget-object v9, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@141
    invoke-interface {v8, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@144
    .line 1862
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@146
    invoke-static {v8, v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@149
    goto :goto_2

    #@14a
    .line 1865
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@14c
    new-instance v9, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const-string/jumbo v10, "DcActiveState ERROR no such apnContext="

    #@154
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v9

    #@158
    iget-object v10, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@15a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v9

    #@15e
    .line 1866
    const-string/jumbo v10, " in this dc="

    #@161
    .line 1865
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v9

    #@165
    .line 1866
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@167
    .line 1865
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v9

    #@16b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v9

    #@16f
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@172
    .line 1867
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@174
    invoke-static {v8, v4, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@177
    goto :goto_2

    #@178
    .line 1874
    .end local v4    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :pswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@17a
    new-instance v9, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v10, "DcActiveState EVENT_DISCONNECT clearing apn contexts, dc="

    #@182
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v9

    #@186
    .line 1875
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@188
    .line 1874
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v9

    #@18c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v9

    #@190
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@193
    .line 1877
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@195
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@197
    .line 1878
    .restart local v4    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@199
    invoke-static {v8, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@19c
    .line 1879
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@19e
    invoke-static {v8, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@1a1
    .line 1880
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a3
    iget v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@1a5
    iput v8, v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    #@1a7
    .line 1881
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1a9
    invoke-static {v8, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    #@1ac
    .line 1882
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1ae
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1b0
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@1b3
    move-result-object v9

    #@1b4
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@1b7
    .line 1883
    const/4 v7, 0x1

    #@1b8
    .line 1884
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@1ba
    .line 1888
    .end local v4    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v7    # "retVal":Z
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1bc
    new-instance v9, Ljava/lang/StringBuilder;

    #@1be
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1c1
    const-string/jumbo v10, "DcActiveState EVENT_LOST_CONNECTION dc="

    #@1c4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v9

    #@1c8
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1ca
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v9

    #@1ce
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v9

    #@1d2
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1d5
    .line 1890
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1d7
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@1d9
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    #@1dc
    move-result v8

    #@1dd
    if-eqz v8, :cond_3

    #@1df
    .line 1892
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1e1
    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@1e3
    invoke-virtual {v8}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    #@1e6
    move-result v3

    #@1e7
    .line 1894
    .local v3, "delayMillis":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1e9
    new-instance v9, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v10, "DcActiveState EVENT_LOST_CONNECTION startRetryAlarm mTag="

    #@1f1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v9

    #@1f5
    .line 1895
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@1f7
    iget v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@1f9
    .line 1894
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v9

    #@1fd
    .line 1895
    const-string/jumbo v10, " delay="

    #@200
    .line 1894
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v9

    #@204
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@207
    move-result-object v9

    #@208
    .line 1895
    const-string/jumbo v10, "ms"

    #@20b
    .line 1894
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v9

    #@20f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v9

    #@213
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@216
    .line 1897
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@218
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@21b
    move-result-object v8

    #@21c
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@21e
    iget v9, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@220
    const v10, 0x4000a

    #@223
    invoke-virtual {v8, v10, v9, v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    #@226
    .line 1899
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@228
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@22a
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get19(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@22d
    move-result-object v9

    #@22e
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@231
    .line 1904
    .end local v3    # "delayMillis":I
    :goto_3
    const/4 v7, 0x1

    #@232
    .line 1905
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@234
    .line 1901
    .end local v7    # "retVal":Z
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@236
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@239
    move-result-object v8

    #@23a
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@23c
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@23f
    .line 1902
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@241
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@243
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@246
    move-result-object v9

    #@247
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    #@24a
    goto :goto_3

    #@24b
    .line 1908
    :pswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@24d
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@250
    move-result-object v8

    #@251
    invoke-virtual {v8, v13}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@254
    .line 1909
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@256
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@259
    move-result-object v8

    #@25a
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@25c
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@25f
    move-result-object v9

    #@260
    invoke-virtual {v8, v9}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@263
    .line 1910
    const/4 v7, 0x1

    #@264
    .line 1911
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@266
    .line 1914
    .end local v7    # "retVal":Z
    :pswitch_6
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@268
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@26b
    move-result-object v8

    #@26c
    invoke-virtual {v8, v11}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@26f
    .line 1915
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@271
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@274
    move-result-object v8

    #@275
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@277
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@27a
    move-result-object v9

    #@27b
    invoke-virtual {v8, v9}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@27e
    .line 1916
    const/4 v7, 0x1

    #@27f
    .line 1917
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@281
    .line 1920
    .end local v7    # "retVal":Z
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@283
    check-cast v0, Landroid/os/AsyncResult;

    #@285
    .line 1921
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@287
    if-eqz v8, :cond_5

    #@289
    .line 1922
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@28b
    new-instance v9, Ljava/lang/StringBuilder;

    #@28d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@290
    const-string/jumbo v10, "EVENT_BW_REFRESH_RESPONSE: error ignoring, e="

    #@293
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v9

    #@297
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@299
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29c
    move-result-object v9

    #@29d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a0
    move-result-object v9

    #@2a1
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@2a4
    .line 1934
    :cond_4
    :goto_4
    const/4 v7, 0x1

    #@2a5
    .line 1935
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@2a7
    .line 1924
    .end local v7    # "retVal":Z
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2a9
    check-cast v1, Ljava/util/ArrayList;

    #@2ab
    .line 1925
    .local v1, "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ae
    move-result-object v8

    #@2af
    check-cast v8, Ljava/lang/Integer;

    #@2b1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@2b4
    move-result v5

    #@2b5
    .line 1926
    .local v5, "lceBwDownKbps":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2b7
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    #@2ba
    move-result-object v6

    #@2bb
    .line 1927
    .local v6, "nc":Landroid/net/NetworkCapabilities;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2bd
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    #@2c0
    move-result-object v8

    #@2c1
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getLceStatus()I

    #@2c4
    move-result v8

    #@2c5
    if-ne v8, v13, :cond_4

    #@2c7
    .line 1928
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@2ca
    .line 1929
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2cc
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@2cf
    move-result-object v8

    #@2d0
    if-eqz v8, :cond_4

    #@2d2
    .line 1930
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2d4
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@2d7
    move-result-object v8

    #@2d8
    invoke-virtual {v8, v6}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    #@2db
    goto :goto_4

    #@2dc
    .line 1939
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "lceBwDownKbps":I
    .end local v6    # "nc":Landroid/net/NetworkCapabilities;
    :pswitch_8
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2de
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    #@2e1
    move-result v8

    #@2e2
    if-eqz v8, :cond_6

    #@2e4
    .line 1941
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2e6
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    #@2e9
    move-result-object v8

    #@2ea
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2ec
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    #@2ef
    move-result-object v9

    #@2f0
    invoke-virtual {v8, v9}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    #@2f3
    .line 1943
    :cond_6
    const/4 v7, 0x1

    #@2f4
    .line 1944
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    #@2f6
    .line 1822
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
