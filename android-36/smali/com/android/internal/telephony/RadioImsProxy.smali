.class public Lcom/android/internal/telephony/RadioImsProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioImsProxy.java"


# instance fields
.field private volatile blacklist mImsProxy:Landroid/hardware/radio/ims/IRadioIms;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/ims/IRadioIms;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    return-object p0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist responseAcknowledgement()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist sendAnbrQuery(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 176
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 177
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/ims/IRadioIms;->sendAnbrQuery(IIII)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/ims/IRadioIms;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 38
    const-string v0, "RadioImsProxy"

    .line 40
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/ims/IRadioIms;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 45
    iput-object p2, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/ims/IRadioIms;->setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist startImsTraffic(IIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface/range {p0 .. p5}, Landroid/hardware/radio/ims/IRadioIms;->startImsTraffic(IIIII)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist stopImsTraffic(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 146
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/ims/IRadioIms;->stopImsTraffic(II)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist triggerEpsFallback(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 161
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/ims/IRadioIms;->triggerEpsFallback(II)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 191
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/ims/IRadioIms;->updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 114
    iget-object p0, p0, Lcom/android/internal/telephony/RadioImsProxy;->mImsProxy:Landroid/hardware/radio/ims/IRadioIms;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/ims/IRadioIms;->updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V

    :cond_12
    :goto_12
    return-void
.end method
