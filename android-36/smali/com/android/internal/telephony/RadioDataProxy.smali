.class public Lcom/android/internal/telephony/RadioDataProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioDataProxy.java"


# instance fields
.field private volatile blacklist mDataProxy:Landroid/hardware/radio/data/IRadioData;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    return-void
.end method


# virtual methods
.method public blacklist allocatePduSessionId(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 97
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1}, Landroid/hardware/radio/data/IRadioData;->allocatePduSessionId(I)V

    return-void

    .line 100
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->allocatePduSessionId(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist cancelHandover(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 112
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->cancelHandover(II)V

    return-void

    .line 115
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->cancelHandover(II)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    return-void
.end method

.method public blacklist deactivateDataCall(III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/data/IRadioData;->deactivateDataCall(III)V

    return-void

    .line 131
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_4/IRadio;->deactivateDataCall_1_2(III)V

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/data/IRadioData;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    return-object p0
.end method

.method public blacklist getDataCallList(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1}, Landroid/hardware/radio/data/IRadioData;->getDataCallList(I)V

    return-void

    .line 144
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getDataCallList_1_6(I)V

    return-void

    .line 147
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getDataCallList(I)V

    return-void
.end method

.method public blacklist getSlicingConfig(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 158
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 159
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1}, Landroid/hardware/radio/data/IRadioData;->getSlicingConfig(I)V

    return-void

    .line 161
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSlicingConfig(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist releasePduSessionId(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 173
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->releasePduSessionId(II)V

    return-void

    .line 176
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->releasePduSessionId(II)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0}, Landroid/hardware/radio/data/IRadioData;->responseAcknowledgement()V

    return-void

    .line 190
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/data/IRadioData;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 50
    const-string v0, "RadioDataProxy"

    .line 52
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/data/IRadioData;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 57
    iput-object p2, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setDataAllowed(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 202
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->setDataAllowed(IZ)V

    return-void

    .line 205
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setDataAllowed(IZ)V

    return-void
.end method

.method public blacklist setDataProfile(I[Landroid/telephony/data/DataProfile;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 217
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 218
    array-length v0, p2

    new-array v0, v0, [Landroid/hardware/radio/data/DataProfileInfo;

    .line 220
    :goto_11
    array-length v2, p2

    if-ge v1, v2, :cond_1f

    .line 221
    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 223
    :cond_1f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/data/IRadioData;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    return-void

    .line 224
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    array-length v2, p2

    :goto_35
    if-ge v1, v2, :cond_43

    aget-object v3, p2, v1

    .line 227
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 229
    :cond_43
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_5/IRadio;->setDataProfile_1_5(ILjava/util/ArrayList;)V

    return-void

    .line 231
    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    array-length v2, p2

    :goto_51
    if-ge v1, v2, :cond_5f

    aget-object v3, p2, v1

    .line 233
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 235
    :cond_5f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setDataThrottling(IBJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 250
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/data/IRadioData;->setDataThrottling(IBJ)V

    return-void

    .line 253
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_6/IRadio;->setDataThrottling(IBJ)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist setInitialAttachApn(ILandroid/telephony/data/DataProfile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 267
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    return-void

    .line 269
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 271
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object p2

    .line 270
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadio;->setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V

    return-void

    .line 273
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 274
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object p2

    .line 273
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    return-void
.end method

.method public blacklist setupDataCall(IILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 299
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 300
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p6, :cond_6d

    .line 304
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 305
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 307
    :cond_32
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 308
    :goto_3c
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6a

    .line 309
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual/range {p6 .. p6}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_6a
    :goto_6a
    move-object/from16 v16, v2

    goto :goto_70

    .line 313
    :cond_6d
    new-array v2, v1, [Ljava/lang/String;

    goto :goto_6a

    .line 315
    :goto_70
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 317
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    move-object/from16 v2, p9

    .line 320
    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 323
    iget-object v9, v0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/data/DataProfileInfo;

    move-result-object v12

    .line 324
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->convertToHalLinkProperties(Landroid/net/LinkProperties;)[Landroid/hardware/radio/data/LinkAddress;

    move-result-object v15

    .line 325
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/RILUtils;->convertToHalSliceInfoAidl(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/data/SliceInfo;

    move-result-object v18

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v17, p7

    move/from16 v19, p10

    .line 323
    invoke-interface/range {v9 .. v19}, Landroid/hardware/radio/data/IRadioData;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    return-void

    :cond_bb
    move-object/from16 v2, p9

    .line 327
    iget-object v1, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 328
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    move-object v9, v0

    check-cast v9, Landroid/hardware/radio/V1_6/IRadio;

    .line 329
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object v12

    .line 330
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;

    move-result-object v15

    .line 331
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/RILUtils;->convertToHalSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    move-result-object v18

    .line 332
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;

    move-result-object v19

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v17, p7

    move/from16 v20, p10

    move-object/from16 v16, v7

    .line 328
    invoke-interface/range {v9 .. v20}, Landroid/hardware/radio/V1_6/IRadio;->setupDataCall_1_6(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;ILandroid/hardware/radio/V1_6/OptionalSliceInfo;Landroid/hardware/radio/V1_6/OptionalTrafficDescriptor;Z)V

    return-void

    .line 334
    :cond_ee
    iget-object v1, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 335
    iget-object v0, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast v0, Landroid/hardware/radio/V1_5/IRadio;

    .line 336
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile15(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_5/DataProfileInfo;

    move-result-object v3

    .line 337
    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/RILUtils;->convertToHalLinkProperties15(Landroid/net/LinkProperties;)Ljava/util/ArrayList;

    move-result-object v6

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 335
    invoke-interface/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio;->setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 340
    :cond_110
    iget-object v2, v0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 341
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalDataProfile14(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v5

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move-object v9, v7

    move/from16 v7, p5

    .line 340
    invoke-interface/range {v2 .. v9}, Landroid/hardware/radio/V1_4/IRadio;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist startHandover(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 354
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 355
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->startHandover(II)V

    return-void

    .line 357
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->startHandover(II)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist startKeepalive(IILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 373
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_82

    .line 374
    new-instance v0, Landroid/hardware/radio/data/KeepaliveRequest;

    invoke-direct {v0}, Landroid/hardware/radio/data/KeepaliveRequest;-><init>()V

    .line 376
    iput p2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->cid:I

    .line 378
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-eqz p2, :cond_24

    .line 379
    iput v4, v0, Landroid/hardware/radio/data/KeepaliveRequest;->type:I

    goto :goto_2e

    .line 380
    :cond_24
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet6Address;

    if-eqz p2, :cond_77

    .line 381
    iput v3, v0, Landroid/hardware/radio/data/KeepaliveRequest;->type:I

    .line 389
    :goto_2e
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 390
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p5

    .line 391
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    move v3, v4

    :goto_3e
    if-ge v3, v1, :cond_4b

    .line 393
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v5, v5, v3

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 395
    :cond_4b
    iput-object v2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->sourceAddress:[B

    .line 396
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->sourcePort:I

    .line 397
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    array-length p2, p2

    new-array v1, p2, [B

    :goto_5a
    if-ge v4, p2, :cond_67

    .line 399
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    aget-byte v2, v2, v4

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 401
    :cond_67
    iput-object v1, v0, Landroid/hardware/radio/data/KeepaliveRequest;->destinationAddress:[B

    .line 402
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/data/KeepaliveRequest;->destinationPort:I

    .line 403
    iput p4, v0, Landroid/hardware/radio/data/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 405
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/data/IRadioData;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    return-void

    .line 384
    :cond_77
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 383
    invoke-static {p5, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 385
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 407
    :cond_82
    new-instance v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v0}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 410
    iput p2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->cid:I

    .line 412
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-eqz p2, :cond_94

    .line 413
    iput v4, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    goto :goto_9e

    .line 414
    :cond_94
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet6Address;

    if-eqz p2, :cond_cc

    .line 415
    iput v3, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->type:I

    .line 423
    :goto_9e
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 424
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p5

    .line 426
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    iget-object v1, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourceAddress:Ljava/util/ArrayList;

    .line 425
    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 427
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->sourcePort:I

    .line 429
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    iget-object p5, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationAddress:Ljava/util/ArrayList;

    .line 428
    invoke-static {p2, p5}, Lcom/android/internal/telephony/RILUtils;->appendPrimitiveArrayToArrayList([BLjava/util/ArrayList;)V

    .line 430
    invoke-virtual {p3}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result p2

    iput p2, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->destinationPort:I

    .line 431
    iput p4, v0, Landroid/hardware/radio/V1_1/KeepaliveRequest;->maxKeepaliveIntervalMillis:I

    .line 433
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/V1_4/IRadio;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    return-void

    .line 418
    :cond_cc
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 417
    invoke-static {p5, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 419
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist stopKeepalive(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 445
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 446
    iget-object p0, p0, Lcom/android/internal/telephony/RadioDataProxy;->mDataProxy:Landroid/hardware/radio/data/IRadioData;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/data/IRadioData;->stopKeepalive(II)V

    return-void

    .line 448
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->stopKeepalive(II)V

    return-void
.end method
