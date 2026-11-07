.class public Lcom/android/internal/telephony/RadioModemProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioModemProxy.java"


# instance fields
.field private volatile blacklist mModemProxy:Landroid/hardware/radio/modem/IRadioModem;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 68
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-void
.end method

.method public blacklist enableModem(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/modem/IRadioModem;->enableModem(IZ)V

    return-void

    .line 92
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->enableModem(IZ)V

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/modem/IRadioModem;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-object p0
.end method

.method public blacklist getBasebandVersion(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 103
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getBasebandVersion(I)V

    return-void

    .line 106
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getBasebandVersion(I)V

    return-void
.end method

.method public blacklist getDeviceIdentity(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 117
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getDeviceIdentity(I)V

    return-void

    .line 120
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getDeviceIdentity(I)V

    return-void
.end method

.method public blacklist getHardwareConfig(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getHardwareConfig(I)V

    return-void

    .line 147
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getHardwareConfig(I)V

    return-void
.end method

.method public blacklist getImei(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 132
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 133
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getImei(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist getModemActivityInfo(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 158
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 159
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getModemActivityInfo(I)V

    return-void

    .line 161
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getModemActivityInfo(I)V

    return-void
.end method

.method public blacklist getModemStackStatus(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getModemStackStatus(I)V

    return-void

    .line 175
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getModemStackStatus(I)V

    return-void
.end method

.method public blacklist getRadioCapability(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 186
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->getRadioCapability(I)V

    return-void

    .line 189
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getRadioCapability(I)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist nvReadItem(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist nvResetConfig(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    goto :goto_a

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    .line 218
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalResetNvTypeAidl(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/modem/IRadioModem;->nvResetConfig(II)V

    return-void

    .line 221
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalResetNvType(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->nvResetConfig(II)V

    return-void
.end method

.method public blacklist nvWriteCdmaPrl(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist nvWriteItem(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist requestShutdown(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 273
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1}, Landroid/hardware/radio/modem/IRadioModem;->requestShutdown(I)V

    return-void

    .line 276
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->requestShutdown(I)V

    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 287
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0}, Landroid/hardware/radio/modem/IRadioModem;->responseAcknowledgement()V

    return-void

    .line 290
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist sendDeviceState(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 304
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 305
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/modem/IRadioModem;->sendDeviceState(IIZ)V

    return-void

    .line 307
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->sendDeviceState(IIZ)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 41
    const-string v0, "RadioModemProxy"

    .line 43
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/modem/IRadioModem;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setRadioCapability(ILcom/android/internal/telephony/RadioCapability;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 320
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 321
    new-instance v0, Landroid/hardware/radio/modem/RadioCapability;

    invoke-direct {v0}, Landroid/hardware/radio/modem/RadioCapability;-><init>()V

    .line 323
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/modem/RadioCapability;->session:I

    .line 324
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/modem/RadioCapability;->phase:I

    .line 325
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/modem/RadioCapability;->raf:I

    .line 326
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/modem/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 327
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/modem/RadioCapability;->status:I

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/modem/IRadioModem;->setRadioCapability(ILandroid/hardware/radio/modem/RadioCapability;)V

    return-void

    .line 330
    :cond_3a
    new-instance v0, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 332
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->session:I

    .line 333
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->phase:I

    .line 334
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->raf:I

    .line 335
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/RadioCapability;->logicalModemUuid:Ljava/lang/String;

    .line 336
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_0/RadioCapability;->status:I

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    return-void
.end method

.method public blacklist setRadioPower(IZZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 355
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/modem/IRadioModem;->setRadioPower(IZZZ)V

    return-void

    .line 357
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_6/IRadio;->setRadioPower_1_6(IZZZ)V

    return-void

    .line 360
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_5/IRadio;->setRadioPower_1_5(IZZZ)V

    return-void

    .line 364
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setRadioPower(IZ)V

    return-void
.end method
