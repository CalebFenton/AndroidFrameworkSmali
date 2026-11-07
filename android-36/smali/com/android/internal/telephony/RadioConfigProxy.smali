.class public Lcom/android/internal/telephony/RadioConfigProxy;
.super Ljava/lang/Object;
.source "RadioConfigProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;,
        Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;
    }
.end annotation


# instance fields
.field private volatile blacklist mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

.field private volatile blacklist mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

.field private blacklist mIsAidl:Z

.field private final blacklist mRadioConfigAidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;

.field private blacklist mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

.field private final blacklist mRadioConfigHidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;

.field private blacklist mRadioHalVersion:Lcom/android/internal/telephony/HalVersion;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

    .line 42
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 47
    new-instance p2, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigAidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;

    .line 49
    new-instance p2, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 112
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    .line 114
    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->clear()V

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigAidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->clear()V

    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/config/IRadioConfig;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

    return-object p0
.end method

.method public blacklist getFullCapabilitySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/RILUtils;->getCaps(Lcom/android/internal/telephony/HalVersion;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHalDeviceCapabilities(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/IRadioConfig;->getHalDeviceCapabilities(I)V

    return-void

    .line 262
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getHidl13()Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->getHalDeviceCapabilities(I)V

    return-void
.end method

.method public blacklist getHidl11()Landroid/hardware/radio/config/V1_1/IRadioConfig;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    return-object p0
.end method

.method public blacklist getHidl13()Landroid/hardware/radio/config/V1_3/IRadioConfig;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    check-cast p0, Landroid/hardware/radio/config/V1_3/IRadioConfig;

    return-object p0
.end method

.method public blacklist getPhoneCapability(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/IRadioConfig;->getPhoneCapability(I)V

    return-void

    .line 212
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getHidl11()Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->getPhoneCapability(I)V

    return-void
.end method

.method public blacklist getSimSlotStatus(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/IRadioConfig;->getSimSlotsStatus(I)V

    return-void

    .line 190
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getHidl11()Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->getSimSlotsStatus(I)V

    return-void
.end method

.method public blacklist getVersion()Lcom/android/internal/telephony/HalVersion;
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist isAidl()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mIsAidl:Z

    return p0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist linkToDeath(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigAidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->linkToDeath(I)V

    return-void

    .line 126
    :cond_d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->linkToDeath(J)V

    return-void
.end method

.method public blacklist setAidl(Landroid/hardware/radio/config/IRadioConfig;)V
    .registers 6

    .line 91
    const-string v0, "RadioConfigProxy"

    :try_start_2
    invoke-interface {p1}, Landroid/hardware/radio/config/IRadioConfig;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAidl: setting HAL version to version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_38

    :catch_23
    move-exception v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_38
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mIsAidl:Z

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigAidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;

    invoke-interface {p1}, Landroid/hardware/radio/config/IRadioConfig;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigAidlServiceDeathRecipient;->setService(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/V1_1/IRadioConfig;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mIsAidl:Z

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHidlServiceDeathRecipient:Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfigProxy$RadioConfigHidlServiceDeathRecipient;->setService(Landroid/hardware/radio/config/V1_1/IRadioConfig;)V

    return-void
.end method

.method public blacklist setNumOfLiveModems(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    int-to-byte p2, p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/IRadioConfig;->setNumOfLiveModems(IB)V

    return-void

    .line 248
    :cond_f
    new-instance v0, Landroid/hardware/radio/config/V1_1/ModemsConfig;

    invoke-direct {v0}, Landroid/hardware/radio/config/V1_1/ModemsConfig;-><init>()V

    int-to-byte p2, p2

    .line 250
    iput-byte p2, v0, Landroid/hardware/radio/config/V1_1/ModemsConfig;->numOfLiveModems:B

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getHidl11()Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->setModemsConfig(ILandroid/hardware/radio/config/V1_1/ModemsConfig;)V

    return-void
.end method

.method public blacklist setPreferredDataModem(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    int-to-byte p2, p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/IRadioConfig;->setPreferredDataModem(IB)V

    return-void

    .line 201
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getHidl11()Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    int-to-byte p2, p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->setPreferredDataModem(IB)V

    return-void
.end method

.method public blacklist setResponseFunctions(Lcom/android/internal/telephony/RadioConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mAidlRadioConfigProxy:Landroid/hardware/radio/config/IRadioConfig;

    new-instance v1, Lcom/android/internal/telephony/RadioConfigResponseAidl;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/RadioConfigResponseAidl;-><init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V

    new-instance p0, Lcom/android/internal/telephony/RadioConfigIndicationAidl;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioConfigIndicationAidl;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    invoke-interface {v0, v1, p0}, Landroid/hardware/radio/config/IRadioConfig;->setResponseFunctions(Landroid/hardware/radio/config/IRadioConfigResponse;Landroid/hardware/radio/config/IRadioConfigIndication;)V

    return-void

    .line 169
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mHidlRadioConfigProxy:Landroid/hardware/radio/config/V1_1/IRadioConfig;

    new-instance v1, Lcom/android/internal/telephony/RadioConfigResponseHidl;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;-><init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V

    new-instance p0, Lcom/android/internal/telephony/RadioConfigIndicationHidl;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioConfigIndicationHidl;-><init>(Lcom/android/internal/telephony/RadioConfig;)V

    invoke-interface {v0, v1, p0}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->setResponseFunctions(Landroid/hardware/radio/config/V1_0/IRadioConfigResponse;Landroid/hardware/radio/config/V1_0/IRadioConfigIndication;)V

    return-void
.end method

.method public blacklist setSimSlotsMapping(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertSimSlotsMapping(Ljava/util/List;)[Landroid/hardware/radio/config/SlotPortMapping;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/IRadioConfig;->setSimSlotsMapping(I[Landroid/hardware/radio/config/SlotPortMapping;)V

    return-void

    .line 225
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getHidl11()Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object p0

    .line 226
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertSlotMappingToList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 225
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->setSimSlotsMapping(ILjava/util/ArrayList;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioConfigProxy[mRadioHalVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioConfigHalVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigProxy;->mRadioConfigHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateSimultaneousCallingSupport(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getAidl()Landroid/hardware/radio/config/IRadioConfig;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/radio/config/IRadioConfig;->getSimultaneousCallingSupport(I)V

    :cond_d
    return-void
.end method
