.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;
.super Lcom/android/ims/ImsConnectionStateListener;
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
    .line 1439
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-direct {p0}, Lcom/android/ims/ImsConnectionStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 8
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1475
    if-ne p1, v7, :cond_5

    #@3
    .line 1476
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@5
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    #@8
    move-result v3

    #@9
    .line 1478
    .local v3, "tmpIsVideoCallEnabled":Z
    const/4 v2, 0x0

    #@a
    .line 1479
    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    #@b
    .line 1478
    if-gt v2, v4, :cond_2

    #@d
    .line 1480
    aget v4, p2, v2

    #@f
    if-ne v4, v2, :cond_0

    #@11
    .line 1482
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "onFeatureCapabilityChanged("

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    const-string/jumbo v6, ", "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2c
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    aget-object v6, v6, v2

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    const-string/jumbo v6, "): value=true"

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@44
    .line 1483
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@46
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z

    #@49
    move-result-object v4

    #@4a
    aput-boolean v7, v4, v2

    #@4c
    .line 1479
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1484
    :cond_0
    aget v4, p2, v2

    #@51
    .line 1485
    const/4 v5, -0x1

    #@52
    .line 1484
    if-ne v4, v5, :cond_1

    #@54
    .line 1487
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "onFeatureCapabilityChanged("

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    const-string/jumbo v6, ", "

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@6f
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    aget-object v6, v6, v2

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    const-string/jumbo v6, "): value=false"

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@87
    .line 1488
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@89
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get3(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Z

    #@8c
    move-result-object v4

    #@8d
    const/4 v5, 0x0

    #@8e
    aput-boolean v5, v4, v2

    #@90
    goto :goto_1

    #@91
    .line 1492
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@93
    new-instance v5, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v6, "onFeatureCapabilityChanged("

    #@9b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    const-string/jumbo v6, ", "

    #@a6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v5

    #@aa
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@ac
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)[Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    aget-object v6, v6, v2

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    const-string/jumbo v6, "): unexpectedValue="

    #@b9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    .line 1493
    aget v6, p2, v2

    #@bf
    .line 1492
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    #@ca
    goto :goto_1

    #@cb
    .line 1497
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@cd
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    #@d0
    move-result v4

    #@d1
    if-eq v3, v4, :cond_3

    #@d3
    .line 1498
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@d5
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@d9
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    #@dc
    move-result v5

    #@dd
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    #@e0
    .line 1504
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@e2
    new-instance v5, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v6, "onFeatureCapabilityChanged: isVowifiEnabled="

    #@ea
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v5

    #@ee
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@f0
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@f3
    move-result v6

    #@f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@ff
    .line 1505
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@101
    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/util/ArrayList;

    #@104
    move-result-object v4

    #@105
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@108
    move-result-object v1

    #@109
    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10c
    move-result v4

    #@10d
    if-eqz v4, :cond_4

    #@10f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@112
    move-result-object v0

    #@113
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@115
    .line 1506
    .local v0, "connection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    #@118
    goto :goto_2

    #@119
    .line 1509
    .end local v0    # "connection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@11b
    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@11d
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onFeatureCapabilityChanged()V

    #@120
    .line 1474
    .end local v1    # "connection$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "tmpIsVideoCallEnabled":Z
    :cond_5
    return-void
.end method

.method public onImsConnected()V
    .locals 2

    #@0
    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v1, "onImsConnected"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    #@10
    .line 1444
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@12
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    #@18
    .line 1441
    return-void
.end method

.method public onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onImsDisconnected imsReasonInfo="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@19
    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1b
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    #@21
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@23
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@25
    const/4 v1, 0x0

    #@26
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    #@29
    .line 1452
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2b
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@2d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Lcom/android/ims/ImsReasonInfo;)V

    #@30
    .line 1448
    return-void
.end method

.method public onImsProgressing()V
    .locals 2

    #@0
    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v1, "onImsProgressing"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1456
    return-void
.end method

.method public onImsResumed()V
    .locals 2

    #@0
    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v1, "onImsResumed"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    #@10
    .line 1461
    return-void
.end method

.method public onImsSuspended()V
    .locals 2

    #@0
    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    const-string/jumbo v1, "onImsSuspended"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    #@8
    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    #@10
    .line 1467
    return-void
.end method
