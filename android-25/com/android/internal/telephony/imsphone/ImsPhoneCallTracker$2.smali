.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@0
    .prologue
    .line 1455
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 10
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    const/16 v2, 0x12

    #@4
    .line 1937
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "onCallHandover ::  srcAccessTech="

    #@e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v3, ", targetAccessTech="

    #@19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1938
    const-string/jumbo v3, ", reasonInfo="

    #@24
    .line 1937
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@33
    .line 1941
    if-eq p2, v2, :cond_0

    #@35
    .line 1942
    if-ne p3, v2, :cond_0

    #@37
    const/4 v9, 0x1

    #@38
    .line 1943
    .local v9, "isHandoverToWifi":Z
    :cond_0
    if-eqz v9, :cond_1

    #@3a
    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3c
    const/16 v1, 0x19

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    #@41
    .line 1949
    :cond_1
    if-ne p2, v2, :cond_4

    #@43
    .line 1950
    if-eq p3, v2, :cond_3

    #@45
    const/4 v8, 0x1

    #@46
    .line 1951
    .local v8, "isHandoverFromWifi":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@48
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    if-eqz v8, :cond_2

    #@50
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_2

    #@56
    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@58
    const-string/jumbo v1, "onCallHandover :: notifying of WIFI to LTE handover."

    #@5b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@5e
    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@60
    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@63
    move-result-object v7

    #@64
    .line 1954
    .local v7, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v7, :cond_5

    #@66
    .line 1956
    const-string/jumbo v0, "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

    #@69
    .line 1955
    invoke-virtual {v7, v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@6c
    .line 1962
    .end local v7    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6e
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@71
    move-result-object v0

    #@72
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@74
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@76
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@79
    move-result v1

    #@7a
    .line 1963
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@7d
    move-result-object v3

    #@7e
    move v4, p2

    #@7f
    move v5, p3

    #@80
    move-object v6, p4

    #@81
    .line 1962
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHandoverEvent(IILcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    #@84
    .line 1935
    return-void

    #@85
    .line 1950
    .end local v8    # "isHandoverFromWifi":Z
    :cond_3
    const/4 v8, 0x0

    #@86
    .restart local v8    # "isHandoverFromWifi":Z
    goto :goto_0

    #@87
    .line 1949
    .end local v8    # "isHandoverFromWifi":Z
    :cond_4
    const/4 v8, 0x0

    #@88
    .restart local v8    # "isHandoverFromWifi":Z
    goto :goto_0

    #@89
    .line 1958
    .restart local v7    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@8b
    const-string/jumbo v1, "onCallHandover :: failed to notify of handover; connection is null."

    #@8e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@91
    goto :goto_1
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 10
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/16 v9, 0x12

    #@2
    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "onCallHandoverFailed :: srcAccessTech="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 1972
    const-string/jumbo v2, ", targetAccessTech="

    #@17
    .line 1971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1972
    const-string/jumbo v2, ", reasonInfo="

    #@22
    .line 1971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@31
    .line 1974
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@33
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@39
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3b
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@3e
    move-result v1

    #@3f
    .line 1976
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@42
    move-result-object v3

    #@43
    .line 1975
    const/16 v2, 0x13

    #@45
    move v4, p2

    #@46
    move v5, p3

    #@47
    move-object v6, p4

    #@48
    .line 1974
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHandoverEvent(IILcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    #@4b
    .line 1978
    if-eq p2, v9, :cond_2

    #@4d
    .line 1979
    if-ne p3, v9, :cond_1

    #@4f
    const/4 v8, 0x1

    #@50
    .line 1980
    .local v8, "isHandoverToWifi":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@52
    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@55
    move-result-object v7

    #@56
    .line 1981
    .local v7, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v7, :cond_0

    #@58
    if-eqz v8, :cond_0

    #@5a
    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5c
    const-string/jumbo v1, "onCallHandoverFailed - handover to WIFI Failed"

    #@5f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@62
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@64
    const/16 v1, 0x19

    #@66
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    #@69
    .line 1987
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6b
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_0

    #@71
    .line 1989
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHandoverToWifiFailed()V

    #@74
    .line 1969
    :cond_0
    return-void

    #@75
    .line 1979
    .end local v7    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v8    # "isHandoverToWifi":Z
    :cond_1
    const/4 v8, 0x0

    #@76
    .restart local v8    # "isHandoverToWifi":Z
    goto :goto_0

    #@77
    .line 1978
    .end local v8    # "isHandoverToWifi":Z
    :cond_2
    const/4 v8, 0x0

    #@78
    .restart local v8    # "isHandoverToWifi":Z
    goto :goto_0
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 1654
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@7
    move-result-object v1

    #@8
    if-ne v1, p1, :cond_3

    #@a
    .line 1655
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "onCallHeld (fg) "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@23
    .line 1661
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@25
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get18(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    monitor-enter v2

    #@2a
    .line 1662
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2c
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2e
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@31
    move-result-object v0

    #@32
    .line 1663
    .local v0, "oldState":Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@34
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@36
    .line 1664
    const/4 v4, 0x0

    #@37
    .line 1663
    invoke-static {v1, p1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@3a
    .line 1670
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@3c
    if-ne v0, v1, :cond_6

    #@3e
    .line 1674
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@40
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@42
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@45
    move-result-object v1

    #@46
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@48
    if-eq v1, v3, :cond_1

    #@4a
    .line 1675
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4c
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4e
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@51
    move-result-object v1

    #@52
    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@54
    if-ne v1, v3, :cond_4

    #@56
    .line 1676
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@58
    const/16 v3, 0x13

    #@5a
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    :cond_2
    :goto_1
    monitor-exit v2

    #@5e
    .line 1701
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@60
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@63
    move-result-object v1

    #@64
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@66
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@68
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@6b
    move-result v2

    #@6c
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHeld(ILcom/android/ims/internal/ImsCallSession;)V

    #@73
    .line 1652
    return-void

    #@74
    .line 1656
    .end local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@76
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@78
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@7b
    move-result-object v1

    #@7c
    if-ne v1, p1, :cond_0

    #@7e
    .line 1657
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@80
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v3, "onCallHeld (bg) "

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@97
    goto :goto_0

    #@98
    .line 1681
    .restart local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9a
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@9d
    move-result-object v1

    #@9e
    if-eqz v1, :cond_5

    #@a0
    .line 1682
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a2
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@a5
    .line 1689
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a7
    const/4 v3, 0x0

    #@a8
    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ab
    goto :goto_1

    #@ac
    .line 1661
    .end local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v1

    #@ad
    monitor-exit v2

    #@ae
    throw v1

    #@af
    .line 1691
    .restart local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :cond_6
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@b1
    if-ne v0, v1, :cond_2

    #@b3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b5
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@b8
    move-result v1

    #@b9
    if-eqz v1, :cond_2

    #@bb
    .line 1694
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@bd
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@bf
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@c2
    move-result-object v1

    #@c3
    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@c5
    if-ne v1, v3, :cond_2

    #@c7
    .line 1695
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c9
    const/16 v3, 0x13

    #@cb
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@ce
    .line 1696
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@d0
    const/4 v3, 0x0

    #@d1
    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@d4
    .line 1697
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@d6
    const/4 v3, 0x0

    #@d7
    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@da
    goto :goto_1
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1706
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "onCallHoldFailed reasonCode="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@11
    move-result v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1d
    .line 1708
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1f
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get18(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    monitor-enter v2

    #@24
    .line 1709
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@26
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@28
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@2b
    move-result-object v0

    #@2c
    .line 1710
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@2f
    move-result v1

    #@30
    const/16 v3, 0x94

    #@32
    if-ne v1, v3, :cond_1

    #@34
    .line 1712
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@36
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@39
    move-result-object v1

    #@3a
    if-eqz v1, :cond_0

    #@3c
    .line 1713
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3e
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@41
    .line 1723
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@43
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@45
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HOLD:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@47
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v2

    #@4b
    .line 1725
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4d
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@53
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@55
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@58
    move-result v2

    #@59
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@60
    .line 1705
    return-void

    #@61
    .line 1715
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@63
    if-ne v0, v1, :cond_0

    #@65
    .line 1716
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@67
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@69
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6b
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@6d
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@70
    .line 1718
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@72
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@75
    move-result-object v1

    #@76
    if-eqz v1, :cond_0

    #@78
    .line 1719
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@7a
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@7d
    move-result-object v1

    #@7e
    const/16 v3, 0x24

    #@80
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    #@83
    .line 1720
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@85
    const-wide/16 v4, 0x1f4

    #@87
    const/16 v3, 0x12

    #@89
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    goto :goto_0

    #@8d
    .line 1708
    .end local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v1

    #@8e
    monitor-exit v2

    #@8f
    throw v1
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1810
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4
    const-string/jumbo v3, "onCallHoldReceived"

    #@7
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a
    .line 1812
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c
    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@f
    move-result-object v0

    #@10
    .line 1813
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_1

    #@12
    .line 1814
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@14
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 1815
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@23
    move-result-object v2

    #@24
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 1816
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2a
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2c
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    #@2f
    .line 1817
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@31
    invoke-static {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@34
    .line 1818
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@36
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@39
    move-result v3

    #@3a
    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I

    #@3d
    .line 1821
    :cond_0
    const-string/jumbo v2, "android.telecom.event.CALL_REMOTELY_HELD"

    #@40
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@43
    .line 1824
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@45
    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@48
    .line 1827
    .local v1, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput v4, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@4a
    .line 1828
    const/4 v2, 0x2

    #@4b
    iput v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@4d
    .line 1829
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4f
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@51
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    #@54
    .line 1830
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@59
    move-result-object v2

    #@5a
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5c
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5e
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@61
    move-result v3

    #@62
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallHoldReceived(ILcom/android/ims/internal/ImsCallSession;)V

    #@69
    .line 1809
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1896
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "onCallMergeFailed reasonInfo="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@19
    .line 1901
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1b
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    sget-object v2, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->CONFERENCE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@22
    .line 1905
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@24
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@27
    move-result-object v0

    #@28
    .line 1906
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    #@2a
    .line 1907
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConferenceMergeFailed()V

    #@2d
    .line 1895
    :cond_0
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .locals 9
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1850
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3
    const-string/jumbo v6, "onCallMerged"

    #@6
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@9
    .line 1852
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b
    invoke-static {v5, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@12
    move-result-object v2

    #@13
    .line 1853
    .local v2, "foregroundImsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@15
    invoke-static {v5, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@18
    move-result-object v3

    #@19
    .line 1854
    .local v3, "peerConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v3, :cond_2

    #@1b
    const/4 v4, 0x0

    #@1c
    .line 1857
    :goto_0
    if-eqz p3, :cond_0

    #@1e
    .line 1858
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    #@23
    .line 1860
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@25
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V

    #@28
    .line 1863
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2a
    invoke-static {v5, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2d
    move-result-object v0

    #@2e
    .line 1864
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@30
    new-instance v6, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v7, "onCallMerged: ImsPhoneConnection="

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@47
    .line 1865
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@49
    new-instance v6, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v7, "onCallMerged: CurrentVideoProvider="

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@64
    .line 1866
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@66
    invoke-static {v5, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap10(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    #@69
    .line 1867
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6b
    new-instance v6, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v7, "onCallMerged: CurrentVideoProvider="

    #@73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@86
    .line 1874
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@88
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@8a
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8c
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@8f
    move-result-object v6

    #@90
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@92
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@95
    .line 1876
    if-eqz v3, :cond_1

    #@97
    .line 1877
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@99
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@9b
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@9d
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@a0
    move-result-object v6

    #@a1
    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@a3
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@a6
    .line 1883
    :cond_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMergeRequestedByConf()Z

    #@a9
    move-result v5

    #@aa
    if-nez v5, :cond_3

    #@ac
    .line 1884
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@ae
    const-string/jumbo v6, "onCallMerged :: calling onMultipartyStateChanged()"

    #@b1
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@b4
    .line 1885
    const/4 v5, 0x1

    #@b5
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    #@b8
    .line 1891
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@ba
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    #@bd
    .line 1849
    return-void

    #@be
    .line 1855
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@c1
    move-result-object v4

    #@c2
    .local v4, "peerImsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    goto/16 :goto_0

    #@c4
    .line 1868
    .end local v4    # "peerImsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    :catch_0
    move-exception v1

    #@c5
    .line 1869
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c7
    new-instance v6, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v7, "onCallMerged: exception "

    #@cf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v6

    #@d3
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v6

    #@d7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@de
    goto :goto_1

    #@df
    .line 1887
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@e1
    const-string/jumbo v6, "onCallMerged :: Merge requested by existing conference."

    #@e4
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@e7
    .line 1889
    invoke-virtual {p1, v8}, Lcom/android/ims/ImsCall;->resetIsMergeRequestedByConf(Z)V

    #@ea
    goto :goto_2
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v1, "onCallProgressing"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@e
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@10
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@12
    .line 1462
    const/4 v2, 0x0

    #@13
    .line 1461
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@16
    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1e
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallProgressing(ILcom/android/ims/internal/ImsCallSession;)V

    #@2b
    .line 1457
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@d
    move-result-object v0

    #@e
    if-ne p1, v0, :cond_0

    #@10
    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "onCallResumeFailed : switching "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " with "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 1769
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2f
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@31
    .line 1768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@3c
    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3e
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@40
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@42
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@44
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@47
    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@49
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4b
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@4e
    move-result-object v0

    #@4f
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@51
    if-ne v0, v1, :cond_0

    #@53
    .line 1773
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@55
    const/16 v1, 0x13

    #@57
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@5a
    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5c
    const/4 v1, 0x0

    #@5d
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@60
    .line 1779
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@62
    const/4 v1, 0x0

    #@63
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@66
    .line 1781
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@68
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6a
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->RESUME:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    #@6c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    #@6f
    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@71
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@74
    move-result-object v0

    #@75
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@77
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@79
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@7c
    move-result v1

    #@7d
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumeFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@84
    .line 1761
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1788
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3
    const-string/jumbo v3, "onCallResumeReceived"

    #@6
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@9
    .line 1789
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b
    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@e
    move-result-object v0

    #@f
    .line 1790
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_1

    #@11
    .line 1791
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@13
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 1792
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1b
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    #@20
    .line 1793
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@26
    .line 1796
    :cond_0
    const-string/jumbo v2, "android.telecom.event.CALL_REMOTELY_UNHELD"

    #@29
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2c
    .line 1799
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@2e
    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@31
    .line 1802
    .local v1, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    const/4 v2, 0x1

    #@32
    iput v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@34
    .line 1803
    const/4 v2, 0x3

    #@35
    iput v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@37
    .line 1804
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@39
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3b
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    #@3e
    .line 1805
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@40
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@43
    move-result-object v2

    #@44
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@46
    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@48
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@4b
    move-result v3

    #@4c
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumeReceived(ILcom/android/ims/internal/ImsCallSession;)V

    #@53
    .line 1787
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1731
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3
    const-string/jumbo v1, "onCallResumed"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@9
    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@13
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@16
    move-result-object v0

    #@17
    if-eq p1, v0, :cond_1

    #@19
    .line 1741
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "onCallResumed : switching "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@29
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string/jumbo v2, " with "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 1742
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@38
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3a
    .line 1741
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@45
    .line 1744
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@47
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@49
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4b
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@50
    .line 1752
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@52
    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@55
    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@57
    const/4 v1, 0x0

    #@58
    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@5b
    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5d
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@5f
    invoke-static {v0, p1, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@62
    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@64
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@67
    move-result-object v0

    #@68
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6a
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6c
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@6f
    move-result v1

    #@70
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallResumed(ILcom/android/ims/internal/ImsCallSession;)V

    #@77
    .line 1730
    return-void

    #@78
    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@7a
    const-string/jumbo v1, "onCallResumed : expected call resumed."

    #@7d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@80
    goto :goto_0
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onTtyModeReceived(I)V

    #@7
    .line 1929
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1516
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onCallStartFailed reasonCode="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@12
    move-result v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 1521
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@28
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@30
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@33
    move-result-object v1

    #@34
    if-ne v1, p1, :cond_0

    #@36
    .line 1522
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@38
    const-string/jumbo v2, "onCallStarted: starting a call as a result of a switch."

    #@3b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@3e
    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@40
    const/4 v2, 0x0

    #@41
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@44
    .line 1524
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@46
    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@49
    .line 1528
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4b
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@4e
    move-result-object v1

    #@4f
    if-eqz v1, :cond_2

    #@51
    .line 1530
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@54
    move-result v1

    #@55
    const/16 v2, 0x92

    #@57
    if-ne v1, v2, :cond_1

    #@59
    .line 1531
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5b
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@5d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@60
    move-result-object v1

    #@61
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@63
    if-ne v1, v2, :cond_1

    #@65
    .line 1532
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@67
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@69
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@6c
    move-result-object v1

    #@6d
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@6f
    if-ne v1, v2, :cond_1

    #@71
    .line 1533
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@73
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@75
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@77
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@7e
    .line 1534
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@80
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@82
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@85
    move-result-object v2

    #@86
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    #@89
    .line 1535
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@8b
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    #@92
    .line 1536
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@94
    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@97
    .line 1537
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@99
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@9b
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial()V

    #@9e
    .line 1538
    return-void

    #@9f
    .line 1540
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a1
    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@a4
    .line 1541
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a6
    invoke-static {v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I

    #@a9
    move-result v0

    #@aa
    .line 1542
    .local v0, "cause":I
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@ac
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@ae
    invoke-static {v1, p1, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@b1
    .line 1544
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b3
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@b6
    move-result-object v1

    #@b7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b9
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@bb
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@be
    move-result v2

    #@bf
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v1, v2, v3, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStartFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@c6
    .line 1515
    .end local v0    # "cause":I
    :cond_2
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4
    const-string/jumbo v1, "onCallStarted"

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@a
    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@c
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@14
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1c
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@1f
    move-result-object v0

    #@20
    if-ne v0, p1, :cond_0

    #@22
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@24
    const-string/jumbo v1, "onCallStarted: starting a call as a result of a switch."

    #@27
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@2a
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2c
    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@2f
    .line 1476
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@31
    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@34
    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@36
    invoke-static {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@39
    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3b
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@3d
    invoke-static {v0, p1, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@40
    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@42
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_1

    #@48
    .line 1485
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_2

    #@4e
    .line 1491
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@50
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@53
    move-result-object v0

    #@54
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@58
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@5b
    move-result v1

    #@5c
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStarted(ILcom/android/ims/internal/ImsCallSession;)V

    #@63
    .line 1467
    return-void

    #@64
    .line 1485
    :cond_2
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    #@67
    move-result v0

    #@68
    .line 1484
    if-eqz v0, :cond_1

    #@6a
    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6c
    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@6f
    move-result v0

    #@70
    .line 1484
    if-eqz v0, :cond_1

    #@72
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@74
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@76
    const/16 v2, 0x19

    #@78
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7b
    move-result-object v1

    #@7c
    .line 1488
    const-wide/32 v2, 0xea60

    #@7f
    .line 1487
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@82
    goto :goto_0
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    #@0
    .prologue
    .line 1836
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "onCallSuppServiceReceived: suppServiceInfo="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@19
    .line 1838
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    #@1b
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    #@1e
    .line 1839
    .local v0, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    #@20
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@22
    .line 1840
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    #@24
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@26
    .line 1841
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    #@28
    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    #@2a
    .line 1842
    iget-object v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    #@2c
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    #@2e
    .line 1843
    iget-object v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    #@30
    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    #@32
    .line 1845
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@34
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@36
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    #@39
    .line 1835
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 11
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 1551
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "onCallTerminated reasonCode="

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@14
    move-result v6

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@20
    .line 1553
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    invoke-static {v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I

    #@25
    move-result v0

    #@26
    .line 1554
    .local v0, "cause":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@28
    invoke-static {v4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@2b
    move-result-object v1

    #@2c
    .line 1555
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2e
    new-instance v5, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v6, "cause = "

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, " conn = "

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@50
    .line 1557
    if-eqz v1, :cond_0

    #@52
    .line 1558
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    #@55
    move-result-object v2

    #@56
    .line 1559
    .local v2, "videoProvider":Landroid/telecom/Connection$VideoProvider;
    instance-of v4, v2, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@58
    if-eqz v4, :cond_0

    #@5a
    move-object v3, v2

    #@5b
    .line 1560
    check-cast v3, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    #@5d
    .line 1563
    .local v3, "wrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    invoke-virtual {v3, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->removeImsVideoProviderCallback(Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;)V

    #@60
    .line 1566
    .end local v2    # "videoProvider":Landroid/telecom/Connection$VideoProvider;
    .end local v3    # "wrapper":Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@62
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    #@65
    move-result v4

    #@66
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@69
    move-result v5

    #@6a
    if-ne v4, v5, :cond_2

    #@6c
    .line 1567
    if-eqz v1, :cond_1

    #@6e
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@70
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get13(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@73
    move-result v4

    #@74
    if-eqz v4, :cond_1

    #@76
    .line 1568
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@78
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@7a
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    #@7d
    .line 1570
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@7f
    invoke-static {v4, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@82
    .line 1571
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@84
    const/4 v5, -0x1

    #@85
    invoke-static {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)I

    #@88
    .line 1573
    :cond_2
    if-eqz v1, :cond_4

    #@8a
    .line 1574
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isPulledCall()Z

    #@8d
    move-result v4

    #@8e
    if-eqz v4, :cond_b

    #@90
    .line 1575
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@93
    move-result v4

    #@94
    const/16 v5, 0x3f7

    #@96
    if-eq v4, v5, :cond_3

    #@98
    .line 1576
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@9b
    move-result v4

    #@9c
    const/16 v5, 0x150

    #@9e
    if-ne v4, v5, :cond_a

    #@a0
    .line 1578
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a2
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@a4
    if-eqz v4, :cond_b

    #@a6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a8
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@aa
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@ad
    move-result-object v4

    #@ae
    if-eqz v4, :cond_b

    #@b0
    .line 1580
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@b2
    const-string/jumbo v5, "Call pull failed."

    #@b5
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@b8
    .line 1584
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@ba
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@bc
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@bf
    move-result-object v4

    #@c0
    .line 1585
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getPulledDialogId()I

    #@c3
    move-result v5

    #@c4
    .line 1584
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getConnectionById(I)Lcom/android/internal/telephony/Connection;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    #@cb
    .line 1588
    const/4 v0, 0x0

    #@cc
    .line 1603
    :cond_4
    :goto_0
    if-ne v0, v10, :cond_5

    #@ce
    if-eqz v1, :cond_5

    #@d0
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->isMerged()Z

    #@d7
    move-result v4

    #@d8
    if-eqz v4, :cond_5

    #@da
    .line 1605
    const/16 v0, 0x2d

    #@dc
    .line 1608
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@de
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@e1
    move-result-object v4

    #@e2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@e4
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@e6
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@e9
    move-result v5

    #@ea
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@ed
    move-result-object v6

    #@ee
    invoke-virtual {v4, v5, v6, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallTerminated(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    #@f1
    .line 1611
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@f3
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@f5
    invoke-static {v4, p1, v5, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    #@f8
    .line 1612
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@fa
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@fc
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@ff
    move-result-object v4

    #@100
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@102
    if-eq v4, v5, :cond_6

    #@104
    .line 1613
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@106
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@108
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10b
    move-result-object v4

    #@10c
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@10f
    move-result v4

    #@110
    if-eqz v4, :cond_d

    #@112
    .line 1615
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@114
    invoke-static {v4, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@117
    .line 1621
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@119
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get17(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    #@11c
    move-result v4

    #@11d
    if-eqz v4, :cond_9

    #@11f
    .line 1623
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@121
    const-string/jumbo v5, "onCallTerminated: Call terminated in the midst of Switching Fg and Bg calls."

    #@124
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@127
    .line 1629
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@129
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    #@12c
    move-result-object v4

    #@12d
    if-ne p1, v4, :cond_7

    #@12f
    .line 1631
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@131
    new-instance v5, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string/jumbo v6, "onCallTerminated: switching "

    #@139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v5

    #@13d
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@13f
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v5

    #@145
    const-string/jumbo v6, " with "

    #@148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v5

    #@14c
    .line 1632
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@14e
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@150
    .line 1631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v5

    #@154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v5

    #@158
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@15b
    .line 1634
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@15d
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@15f
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@161
    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@163
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@166
    .line 1638
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@168
    new-instance v4, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v6, "onCallTerminated: foreground call in state "

    #@170
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v4

    #@174
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@176
    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@178
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@17b
    move-result-object v6

    #@17c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    .line 1639
    const-string/jumbo v6, " and ringing call in state "

    #@183
    .line 1638
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v6

    #@187
    .line 1639
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@189
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@18b
    if-nez v4, :cond_e

    #@18d
    const-string/jumbo v4, "null"

    #@190
    .line 1638
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v4

    #@194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v4

    #@198
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@19b
    .line 1642
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@19d
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@19f
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1a2
    move-result-object v4

    #@1a3
    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@1a5
    if-eq v4, v5, :cond_8

    #@1a7
    .line 1643
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1a9
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1ab
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@1ae
    move-result-object v4

    #@1af
    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@1b1
    if-ne v4, v5, :cond_9

    #@1b3
    .line 1644
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1b5
    const/16 v5, 0x13

    #@1b7
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@1ba
    .line 1645
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1bc
    invoke-static {v4, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    #@1bf
    .line 1646
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1c1
    invoke-static {v4, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    #@1c4
    .line 1550
    :cond_9
    return-void

    #@1c5
    .line 1577
    :cond_a
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@1c8
    move-result v4

    #@1c9
    const/16 v5, 0x14c

    #@1cb
    if-eq v4, v5, :cond_3

    #@1cd
    .line 1590
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    #@1d0
    move-result v4

    #@1d1
    if-eqz v4, :cond_4

    #@1d3
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTime()J

    #@1d6
    move-result-wide v4

    #@1d7
    const-wide/16 v6, 0x0

    #@1d9
    cmp-long v4, v4, v6

    #@1db
    if-nez v4, :cond_4

    #@1dd
    .line 1591
    const/16 v4, 0x34

    #@1df
    if-eq v0, v4, :cond_4

    #@1e1
    .line 1593
    if-ne v0, v10, :cond_c

    #@1e3
    .line 1594
    const/4 v0, 0x1

    #@1e4
    .line 1598
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1e6
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v6, "Incoming connection of 0 connect time detected - translated cause = "

    #@1ee
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v5

    #@1f2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v5

    #@1f6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v5

    #@1fa
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 1596
    :cond_c
    const/16 v0, 0x10

    #@201
    goto :goto_3

    #@202
    .line 1616
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@204
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get14(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@207
    move-result-object v4

    #@208
    if-eqz v4, :cond_6

    #@20a
    .line 1617
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20c
    const/16 v5, 0x14

    #@20e
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    #@211
    goto/16 :goto_1

    #@213
    .line 1640
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@215
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@217
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@21a
    move-result-object v4

    #@21b
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    #@21e
    move-result-object v4

    #@21f
    goto/16 :goto_2
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v2, "onCallUpdated"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1497
    if-nez p1, :cond_0

    #@a
    .line 1498
    return-void

    #@b
    .line 1500
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@d
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@10
    move-result-object v0

    #@11
    .line 1501
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_1

    #@13
    .line 1502
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@18
    move-result-object v2

    #@19
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@1b
    .line 1503
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    .line 1502
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    #@20
    .line 1504
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get9(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@28
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2a
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@2d
    move-result v2

    #@2e
    .line 1505
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@35
    move-result-object v4

    #@36
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@38
    .line 1504
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeImsCallState(ILcom/android/ims/internal/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V

    #@3b
    .line 1495
    :cond_1
    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1920
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v2, "onConferenceParticipantsStateChanged"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1922
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@d
    move-result-object v0

    #@e
    .line 1923
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    #@10
    .line 1924
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateConferenceParticipants(Ljava/util/List;)V

    #@13
    .line 1919
    :cond_0
    return-void
.end method

.method public onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    #@0
    .prologue
    .line 2004
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "onMultipartyStateChanged to "

    #@a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    if-eqz p2, :cond_1

    #@10
    const-string/jumbo v1, "Y"

    #@13
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@1e
    .line 2006
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@23
    move-result-object v0

    #@24
    .line 2007
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    #@26
    .line 2008
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMultipartyState(Z)V

    #@29
    .line 2003
    :cond_0
    return-void

    #@2a
    .line 2004
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    const-string/jumbo v1, "N"

    #@2d
    goto :goto_0
.end method
