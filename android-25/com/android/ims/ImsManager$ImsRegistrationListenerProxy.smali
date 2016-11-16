.class Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mServiceClass:I

.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    #@0
    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    #@5
    .line 1484
    iput p2, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    #@7
    .line 1485
    iput-object p3, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@9
    .line 1483
    return-void
.end method


# virtual methods
.method public isSameProxy(I)Z
    .locals 1
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1489
    iget v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    #@0
    .prologue
    .line 1605
    const-string/jumbo v0, "registrationAssociatedUriChanged ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@6
    .line 1607
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1608
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    #@f
    .line 1604
    :cond_0
    return-void
.end method

.method public registrationConnected()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1495
    const-string/jumbo v0, "registrationConnected ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@6
    .line 1498
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1499
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@f
    .line 1493
    :cond_0
    return-void
.end method

.method public registrationConnectedWithRadioTech(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    #@0
    .prologue
    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationConnectedWithRadioTech :: imsRadioTech="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@17
    .line 1522
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1523
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@20
    .line 1515
    :cond_0
    return-void
.end method

.method public registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationDisconnected :: imsReasonInfo"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@17
    .line 1546
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1547
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    #@20
    .line 1541
    :cond_0
    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    #@0
    .prologue
    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationFeatureCapabilityChanged :: serviceClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@17
    .line 1588
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1589
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    #@20
    .line 1585
    :cond_0
    return-void
.end method

.method public registrationProgressing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1506
    const-string/jumbo v0, "registrationProgressing ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@6
    .line 1509
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1510
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing()V

    #@f
    .line 1504
    :cond_0
    return-void
.end method

.method public registrationProgressingWithRadioTech(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    #@0
    .prologue
    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationProgressingWithRadioTech :: imsRadioTech="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@17
    .line 1535
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1536
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing()V

    #@20
    .line 1528
    :cond_0
    return-void
.end method

.method public registrationResumed()V
    .locals 1

    #@0
    .prologue
    .line 1554
    const-string/jumbo v0, "registrationResumed ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@6
    .line 1557
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1558
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsResumed()V

    #@f
    .line 1552
    :cond_0
    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationServiceCapabilityChanged :: serviceClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1576
    const-string/jumbo v1, ", event="

    #@13
    .line 1575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@22
    .line 1578
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 1579
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@28
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@2b
    .line 1574
    :cond_0
    return-void
.end method

.method public registrationSuspended()V
    .locals 1

    #@0
    .prologue
    .line 1565
    const-string/jumbo v0, "registrationSuspended ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@6
    .line 1568
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1569
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsSuspended()V

    #@f
    .line 1563
    :cond_0
    return-void
.end method

.method public voiceMessageCountUpdate(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "voiceMessageCountUpdate :: count="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap3(Ljava/lang/String;)V

    #@17
    .line 1598
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1599
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onVoiceMessageCountChanged(I)V

    #@20
    .line 1595
    :cond_0
    return-void
.end method
