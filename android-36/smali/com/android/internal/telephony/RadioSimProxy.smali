.class public Lcom/android/internal/telephony/RadioSimProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioSimProxy.java"


# instance fields
.field private volatile blacklist mSimProxy:Landroid/hardware/radio/sim/IRadioSim;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-void
.end method


# virtual methods
.method public blacklist areUiccApplicationsEnabled(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 93
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sim/IRadioSim;->areUiccApplicationsEnabled(I)V

    return-void

    .line 96
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->areUiccApplicationsEnabled(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 112
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/sim/IRadioSim;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/sim/IRadioSim;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-void
.end method

.method public blacklist enableUiccApplications(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 144
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->enableUiccApplications(IZ)V

    return-void

    .line 147
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadio;->enableUiccApplications(IZ)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/sim/IRadioSim;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-object p0
.end method

.method public blacklist getAllowedCarriers(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sim/IRadioSim;->getAllowedCarriers(I)V

    return-void

    .line 162
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getAllowedCarriers_1_4(I)V

    return-void
.end method

.method public blacklist getCdmaSubscription(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 208
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 209
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface/range {p0 .. p5}, Landroid/hardware/radio/sim/IRadioSim;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 211
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/radio/V1_4/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist getIccCardStatus(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 222
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sim/IRadioSim;->getIccCardStatus(I)V

    return-void

    .line 225
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getIccCardStatus(I)V

    return-void
.end method

.method public blacklist getImsiForApp(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 237
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->getImsiForApp(ILjava/lang/String;)V

    return-void

    .line 240
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->getImsiForApp(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist getSimPhonebookCapacity(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 251
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 252
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sim/IRadioSim;->getSimPhonebookCapacity(I)V

    return-void

    .line 254
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSimPhonebookCapacity(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getSimPhonebookRecords(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 265
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sim/IRadioSim;->getSimPhonebookRecords(I)V

    return-void

    .line 268
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSimPhonebookRecords(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist iccCloseLogicalChannel(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 282
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 284
    new-instance v0, Landroid/hardware/radio/sim/SessionInfo;

    invoke-direct {v0}, Landroid/hardware/radio/sim/SessionInfo;-><init>()V

    .line 286
    iput p2, v0, Landroid/hardware/radio/sim/SessionInfo;->sessionId:I

    .line 287
    iput-boolean p3, v0, Landroid/hardware/radio/sim/SessionInfo;->isEs10:Z

    .line 288
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/sim/IRadioSim;->iccCloseLogicalChannelWithSessionInfo(ILandroid/hardware/radio/sim/SessionInfo;)V

    return-void

    .line 291
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->iccCloseLogicalChannel(II)V

    return-void

    .line 293
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->iccCloseLogicalChannel(II)V

    return-void
.end method

.method public blacklist iccIoForApp(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 314
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 315
    new-instance v0, Landroid/hardware/radio/sim/IccIo;

    invoke-direct {v0}, Landroid/hardware/radio/sim/IccIo;-><init>()V

    .line 316
    iput p2, v0, Landroid/hardware/radio/sim/IccIo;->command:I

    .line 317
    iput p3, v0, Landroid/hardware/radio/sim/IccIo;->fileId:I

    .line 318
    iput-object p4, v0, Landroid/hardware/radio/sim/IccIo;->path:Ljava/lang/String;

    .line 319
    iput p5, v0, Landroid/hardware/radio/sim/IccIo;->p1:I

    .line 320
    iput p6, v0, Landroid/hardware/radio/sim/IccIo;->p2:I

    .line 321
    iput p7, v0, Landroid/hardware/radio/sim/IccIo;->p3:I

    .line 322
    iput-object p8, v0, Landroid/hardware/radio/sim/IccIo;->data:Ljava/lang/String;

    .line 323
    iput-object p9, v0, Landroid/hardware/radio/sim/IccIo;->pin2:Ljava/lang/String;

    .line 324
    iput-object p10, v0, Landroid/hardware/radio/sim/IccIo;->aid:Ljava/lang/String;

    .line 325
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/sim/IRadioSim;->iccIoForApp(ILandroid/hardware/radio/sim/IccIo;)V

    return-void

    .line 327
    :cond_2a
    new-instance v0, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 328
    iput p2, v0, Landroid/hardware/radio/V1_0/IccIo;->command:I

    .line 329
    iput p3, v0, Landroid/hardware/radio/V1_0/IccIo;->fileId:I

    .line 330
    iput-object p4, v0, Landroid/hardware/radio/V1_0/IccIo;->path:Ljava/lang/String;

    .line 331
    iput p5, v0, Landroid/hardware/radio/V1_0/IccIo;->p1:I

    .line 332
    iput p6, v0, Landroid/hardware/radio/V1_0/IccIo;->p2:I

    .line 333
    iput p7, v0, Landroid/hardware/radio/V1_0/IccIo;->p3:I

    .line 334
    iput-object p8, v0, Landroid/hardware/radio/V1_0/IccIo;->data:Ljava/lang/String;

    .line 335
    iput-object p9, v0, Landroid/hardware/radio/V1_0/IccIo;->pin2:Ljava/lang/String;

    .line 336
    iput-object p10, v0, Landroid/hardware/radio/V1_0/IccIo;->aid:Ljava/lang/String;

    .line 337
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannel(ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 350
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 351
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/sim/IRadioSim;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    return-void

    .line 353
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 371
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 373
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/RILUtils;->convertToHalSimApduAidl(IIIIIILjava/lang/String;ZLcom/android/internal/telephony/HalVersion;)Landroid/hardware/radio/sim/SimApdu;

    move-result-object p0

    .line 372
    invoke-interface {v0, p1, p0}, Landroid/hardware/radio/sim/IRadioSim;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    return-void

    .line 376
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 377
    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/RILUtils;->convertToHalSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object p2

    .line 376
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 395
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/RadioSimProxy;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;Z)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 414
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    iget-object v9, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 416
    invoke-static/range {v1 .. v9}, Lcom/android/internal/telephony/RILUtils;->convertToHalSimApduAidl(IIIIIILjava/lang/String;ZLcom/android/internal/telephony/HalVersion;)Landroid/hardware/radio/sim/SimApdu;

    move-result-object p0

    .line 415
    invoke-interface {v0, p1, p0}, Landroid/hardware/radio/sim/IRadioSim;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/sim/SimApdu;)V

    return-void

    .line 419
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 420
    invoke-static/range {p2 .. p8}, Lcom/android/internal/telephony/RILUtils;->convertToHalSimApdu(IIIIIILjava/lang/String;)Landroid/hardware/radio/V1_0/SimApdu;

    move-result-object p2

    .line 419
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist reportStkServiceIsRunning(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 431
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 432
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1}, Landroid/hardware/radio/sim/IRadioSim;->reportStkServiceIsRunning(I)V

    return-void

    .line 434
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->reportStkServiceIsRunning(I)V

    return-void
.end method

.method public blacklist requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 449
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/sim/IRadioSim;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 452
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 463
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0}, Landroid/hardware/radio/sim/IRadioSim;->responseAcknowledgement()V

    return-void

    .line 466
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist sendEnvelope(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 479
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->sendEnvelope(ILjava/lang/String;)V

    return-void

    .line 482
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendEnvelope(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 495
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 496
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    return-void

    .line 498
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendTerminalResponseToSim(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 511
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 512
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->sendTerminalResponseToSim(ILjava/lang/String;)V

    return-void

    .line 514
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->sendTerminalResponseToSim(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 46
    const-string v0, "RadioSimProxy"

    .line 48
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/sim/IRadioSim;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setAllowedCarriers(ILandroid/telephony/CarrierRestrictionRules;Lcom/android/internal/telephony/HalVersion;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 527
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_86

    .line 528
    new-instance v0, Landroid/hardware/radio/sim/CarrierRestrictions;

    invoke-direct {v0}, Landroid/hardware/radio/sim/CarrierRestrictions;-><init>()V

    .line 530
    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-eqz p3, :cond_3f

    .line 533
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object p3

    .line 532
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierInfoListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/CarrierInfo;

    move-result-object p3

    iput-object p3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 536
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getExcludedCarriers()Ljava/util/List;

    move-result-object p3

    .line 535
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierInfoListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/CarrierInfo;

    move-result-object p3

    iput-object p3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 537
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 538
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;

    move-result-object v3

    iput-object v3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 540
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;

    move-result-object p3

    iput-object p3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    goto :goto_53

    .line 545
    :cond_3f
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object p3

    .line 544
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;

    move-result-object p3

    iput-object p3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 548
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getExcludedCarriers()Ljava/util/List;

    move-result-object p3

    .line 547
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierRestrictionListAidl(Ljava/util/List;)[Landroid/hardware/radio/sim/Carrier;

    move-result-object p3

    iput-object p3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 551
    :goto_53
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getDefaultCarrierRestriction()I

    move-result p3

    if-nez p3, :cond_5a

    move v1, v2

    :cond_5a
    iput-boolean v1, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    .line 553
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getCarrierRestrictionStatus()I

    move-result p3

    iput p3, v0, Landroid/hardware/radio/sim/CarrierRestrictions;->status:I

    .line 554
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 556
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getMultiSimPolicy()I

    move-result p2

    .line 555
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSimLockMultiSimPolicyAidl(I)I

    move-result p2

    .line 554
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/sim/IRadioSim;->setAllowedCarriers(ILandroid/hardware/radio/sim/CarrierRestrictions;I)V

    .line 557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RadioSimProxy setAllowedCarriers params = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioSimProxy"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_86
    new-instance p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {p3}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 563
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object v0

    .line 562
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 565
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getExcludedCarriers()Ljava/util/List;

    move-result-object v0

    .line 564
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalCarrierRestrictionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 567
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getDefaultCarrierRestriction()I

    move-result v0

    if-nez v0, :cond_a6

    move v1, v2

    :cond_a6
    iput-boolean v1, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    .line 569
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 571
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules;->getMultiSimPolicy()I

    move-result p2

    .line 570
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSimLockMultiSimPolicy(I)I

    move-result p2

    .line 569
    invoke-interface {p0, p1, p3, p2}, Landroid/hardware/radio/V1_4/IRadio;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 584
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 585
    new-instance v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;

    invoke-direct {v0}, Landroid/hardware/radio/sim/ImsiEncryptionInfo;-><init>()V

    .line 587
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 588
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 589
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 590
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 591
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->expirationTime:J

    .line 593
    :cond_34
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->carrierKey:[B

    .line 594
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, v0, Landroid/hardware/radio/sim/ImsiEncryptionInfo;->keyType:B

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/sim/IRadioSim;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/sim/ImsiEncryptionInfo;)V

    return-void

    .line 597
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    .line 598
    new-instance v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;-><init>()V

    .line 600
    iget-object v2, v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 601
    iget-object v2, v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 602
    iget-object v2, v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 603
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_85

    .line 604
    iget-object v2, v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->expirationTime:J

    .line 606
    :cond_85
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    :goto_8e
    if-ge v1, v3, :cond_a0

    aget-byte v4, v2, v1

    .line 607
    iget-object v5, v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->carrierKey:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 609
    :cond_a0
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, v0, Landroid/hardware/radio/V1_6/ImsiEncryptionInfo;->keyType:B

    .line 611
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_6/IRadio;->setCarrierInfoForImsiEncryption_1_6(ILandroid/hardware/radio/V1_6/ImsiEncryptionInfo;)V

    return-void

    .line 614
    :cond_af
    new-instance v0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 616
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 617
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 618
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 619
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_d6

    .line 620
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->expirationTime:J

    .line 622
    :cond_d6
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    array-length v2, p2

    :goto_df
    if-ge v1, v2, :cond_ef

    aget-byte v3, p2, v1

    .line 623
    iget-object v4, v0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->carrierKey:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 626
    :cond_ef
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 659
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 660
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface/range {p0 .. p6}, Landroid/hardware/radio/sim/IRadioSim;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 663
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/radio/V1_4/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setSimCardPower(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 676
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 677
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->setSimCardPower(II)V

    return-void

    .line 678
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 679
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->setSimCardPower_1_6(II)V

    return-void

    .line 681
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setSimCardPower_1_1(II)V

    return-void
.end method

.method public blacklist setUiccSubscription(IIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 726
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 727
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/sim/IRadioSim;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 729
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 742
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 743
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/sim/IRadioSim;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 745
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 760
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 761
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/sim/IRadioSim;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 763
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 778
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 779
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/sim/IRadioSim;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 781
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist supplySimDepersonalization(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    .line 795
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 796
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 797
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalPersoTypeAidl(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I

    move-result p2

    .line 796
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/sim/IRadioSim;->supplySimDepersonalization(IILjava/lang/String;)V

    return-void

    .line 799
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 800
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalPersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)I

    move-result p2

    .line 799
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_5/IRadio;->supplySimDepersonalization(IILjava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist updateSimPhonebookRecords(ILcom/android/internal/telephony/uicc/SimPhonebookRecord;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    .line 813
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 814
    iget-object p0, p0, Lcom/android/internal/telephony/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 815
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalPhonebookRecordInfoAidl(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/sim/PhonebookRecordInfo;

    move-result-object p2

    .line 814
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/sim/IRadioSim;->updateSimPhonebookRecords(ILandroid/hardware/radio/sim/PhonebookRecordInfo;)V

    return-void

    .line 817
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 818
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalPhonebookRecordInfo(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    move-result-object p2

    .line 817
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->updateSimPhonebookRecords(ILandroid/hardware/radio/V1_6/PhonebookRecordInfo;)V

    :cond_2c
    :goto_2c
    return-void
.end method
