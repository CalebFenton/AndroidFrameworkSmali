.class public Lcom/android/internal/telephony/RadioNetworkProxy;
.super Lcom/android/internal/telephony/RadioServiceProxy;
.source "RadioNetworkProxy.java"


# instance fields
.field private volatile blacklist mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$Zf5M-SwtBJ4xsKVGbN-bj3T7hzE(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 1

    .line 656
    new-array p0, p0, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$tyP24y5DXV8n15P-bT4oGSMec3M(I)[Ljava/lang/String;
    .registers 1

    .line 688
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xep5kfGgIjtD_me1UqUFJh6LP5g(I)[Landroid/hardware/radio/network/RadioAccessSpecifier;
    .registers 1

    .line 703
    new-array p0, p0, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-void
.end method


# virtual methods
.method public blacklist cancelEmergencyNetworkScan(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 854
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 855
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->cancelEmergencyNetworkScan(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 100
    invoke-super {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-void
.end method

.method public blacklist exitEmergencyMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 868
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 869
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->exitEmergencyMode(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist getAidl()Landroid/hardware/radio/network/IRadioNetwork;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-object p0
.end method

.method public blacklist getAllowedNetworkTypesBitmap(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getAllowedNetworkTypesBitmap(I)V

    return-void

    .line 122
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getAllowedNetworkTypesBitmap(I)V

    return-void

    .line 125
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getPreferredNetworkTypeBitmap(I)V

    return-void
.end method

.method public blacklist getAvailableBandModes(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getAvailableNetworks(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 151
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getAvailableNetworks(I)V

    return-void

    .line 154
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getAvailableNetworks(I)V

    return-void
.end method

.method public blacklist getBarringInfo(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 165
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 166
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getBarringInfo(I)V

    return-void

    .line 168
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->getBarringInfo(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getCdmaRoamingPreference(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist getCellInfoList(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 194
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getCellInfoList(I)V

    return-void

    .line 196
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 197
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getCellInfoList_1_6(I)V

    return-void

    .line 199
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getCellInfoList(I)V

    return-void
.end method

.method public blacklist getDataRegistrationState(ILcom/android/internal/telephony/HalVersion;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 212
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getDataRegistrationState(I)V

    return-void

    :cond_13
    if-eqz p2, :cond_1d

    .line 214
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 215
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 216
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getDataRegistrationState_1_6(I)V

    return-void

    :cond_2f
    if-eqz p2, :cond_39

    .line 218
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 219
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    :cond_39
    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 220
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->getDataRegistrationState_1_5(I)V

    return-void

    .line 223
    :cond_4b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getDataRegistrationState(I)V

    return-void
.end method

.method public blacklist getImsRegistrationState(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 234
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getImsRegistrationState(I)V

    return-void

    .line 237
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getImsRegistrationState(I)V

    return-void
.end method

.method public blacklist getNetworkSelectionMode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 248
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 249
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getNetworkSelectionMode(I)V

    return-void

    .line 251
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getNetworkSelectionMode(I)V

    return-void
.end method

.method public blacklist getOperator(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 263
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getOperator(I)V

    return-void

    .line 265
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getOperator(I)V

    return-void
.end method

.method public blacklist getSignalStrength(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 276
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getSignalStrength(I)V

    return-void

    .line 278
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSignalStrength_1_6(I)V

    return-void

    .line 281
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getSignalStrength_1_4(I)V

    return-void
.end method

.method public blacklist getSystemSelectionChannels(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 292
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getSystemSelectionChannels(I)V

    return-void

    .line 295
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getSystemSelectionChannels(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist getUsageSetting(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 790
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 791
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getUsageSetting(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist getVoiceRadioTechnology(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 307
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getVoiceRadioTechnology(I)V

    return-void

    .line 309
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getVoiceRadioTechnology(I)V

    return-void
.end method

.method public blacklist getVoiceRegistrationState(ILcom/android/internal/telephony/HalVersion;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 322
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->getVoiceRegistrationState(I)V

    return-void

    :cond_13
    if-eqz p2, :cond_1d

    .line 324
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 325
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 326
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 328
    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->getVoiceRegistrationState_1_6(I)V

    return-void

    :cond_2f
    if-eqz p2, :cond_39

    .line 329
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 330
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    :cond_39
    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 331
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 333
    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_5/IRadio;->getVoiceRegistrationState_1_5(I)V

    return-void

    .line 335
    :cond_4b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->getVoiceRegistrationState(I)V

    return-void
.end method

.method public blacklist isCellularIdentifierTransparencyEnabled(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 955
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 956
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isCellularIdentifierTransparencyEnabled(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isN1ModeEnabled(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 912
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 913
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isN1ModeEnabled(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist isNrDualConnectivityEnabled(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 346
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isNrDualConnectivityEnabled(I)V

    return-void

    .line 349
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_6/IRadio;->isNrDualConnectivityEnabled(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist isNullCipherAndIntegrityEnabled(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 898
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 899
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isNullCipherAndIntegrityEnabled(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist isSatelliteEnabledForCarrier(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 1035
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1036
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isSatelliteEnabledForCarrier(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist isSecurityAlgorithmsUpdatedEnabled(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 969
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 970
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->isSecurityAlgorithmsUpdatedEnabled(I)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist responseAcknowledgement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 360
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0}, Landroid/hardware/radio/network/IRadioNetwork;->responseAcknowledgement()V

    return-void

    .line 363
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V

    return-void
.end method

.method public blacklist setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)Lcom/android/internal/telephony/HalVersion;
    .registers 7

    .line 73
    const-string v0, "RadioNetworkProxy"

    .line 75
    :try_start_2
    invoke-interface {p2}, Landroid/hardware/radio/network/IRadioNetwork;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_20

    :catch_b
    move-exception v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_20
    iput-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mIsAidl:Z

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AIDL initialized mHalVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist setAllowedNetworkTypesBitmap(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2c

    .line 376
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 377
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 378
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessFamilyAidl(I)I

    move-result p2

    .line 377
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setAllowedNetworkTypesBitmap(II)V

    return-void

    .line 380
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    .line 381
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessFamily(I)I

    move-result p2

    .line 380
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->setAllowedNetworkTypesBitmap(II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist setBandMode(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 425
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 426
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/network/IRadioNetwork;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 428
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_4/IRadio;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setCdmaRoamingPreference(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 456
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 457
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setCellInfoListRate(II)V

    return-void

    .line 459
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setCellInfoListRate(II)V

    return-void
.end method

.method public blacklist setCellularIdentifierTransparencyEnabled(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 942
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 943
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setCellularIdentifierTransparencyEnabled(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setEmergencyMode(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 819
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 820
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setEmergencyMode(II)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setIndicationFilter(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 471
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 472
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    and-int/lit8 p2, p2, 0x7f

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setIndicationFilter(II)V

    return-void

    .line 473
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 474
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    and-int/lit8 p2, p2, 0x7f

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_5/IRadio;->setIndicationFilter_1_5(II)V

    return-void

    .line 477
    :cond_29
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setIndicationFilter_1_2(II)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(IIII[I[II)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 500
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 501
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 503
    invoke-static {p7}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result p7

    .line 501
    invoke-interface/range {p0 .. p7}, Landroid/hardware/radio/network/IRadioNetwork;->setLinkCapacityReportingCriteria(IIII[I[II)V

    return-void

    :cond_17
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 504
    iget-object p1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object p2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    move-object v0, p0

    check-cast v0, Landroid/hardware/radio/V1_5/IRadio;

    .line 507
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 508
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 509
    invoke-static {p7}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v7

    .line 505
    invoke-interface/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio;->setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    :cond_3a
    const/4 p1, 0x6

    if-eq p7, p1, :cond_4f

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 516
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 517
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 518
    invoke-static {p7}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v7

    .line 514
    invoke-interface/range {v0 .. v7}, Landroid/hardware/radio/V1_4/IRadio;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    .line 512
    :cond_4f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NGRAN unsupported on IRadio version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setLocationUpdates(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setN1ModeEnabled(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 927
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 928
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setN1ModeEnabled(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 546
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 547
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->setNetworkSelectionModeAutomatic(I)V

    return-void

    .line 549
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->setNetworkSelectionModeAutomatic(I)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 563
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 564
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 565
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetworkAidl(I)I

    move-result p3

    .line 564
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/network/IRadioNetwork;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    return-void

    .line 566
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 567
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 568
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result p3

    .line 567
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/V1_5/IRadio;->setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V

    return-void

    .line 570
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityState(IB)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_24

    .line 583
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 584
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setNrDualConnectivityState(IB)V

    return-void

    .line 586
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_6/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_6/IRadio;->setNrDualConnectivityState(IB)V

    :cond_24
    :goto_24
    return-void
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 884
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 885
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setNullCipherAndIntegrityEnabled(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setPreferredNetworkTypeBitmap(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 394
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 395
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessFamily(I)I

    move-result p2

    .line 394
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->setPreferredNetworkTypeBitmap(II)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 1021
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1022
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setSatelliteEnabledForCarrier(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_23

    .line 1004
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 1005
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1006
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 1007
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/radio/network/IRadioNetwork;->setSatellitePlmn(I[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist setSecurityAlgorithmsUpdatedEnabled(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 985
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 986
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setSecurityAlgorithmsUpdatedEnabled(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8d

    .line 600
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 602
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/radio/network/SignalThresholdInfo;

    const/4 v1, 0x0

    .line 603
    :goto_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 605
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalThresholdInfo;

    .line 604
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSignalThresholdInfoAidl(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/network/SignalThresholdInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 607
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, v0}, Landroid/hardware/radio/network/IRadioNetwork;->setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V

    return-void

    .line 608
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 609
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalThresholdInfo;

    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast v1, Landroid/hardware/radio/V1_5/IRadio;

    .line 612
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalSignalThresholdInfo(Landroid/telephony/SignalThresholdInfo;)Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    move-result-object v2

    .line 614
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    .line 613
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v0

    .line 611
    invoke-interface {v1, p1, v2, v0}, Landroid/hardware/radio/V1_5/IRadio;->setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V

    goto :goto_3e

    .line 617
    :cond_5e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_62
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalThresholdInfo;

    .line 618
    iget-object v1, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 619
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisMs()I

    move-result v3

    .line 620
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getHysteresisDb()I

    move-result v4

    .line 621
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getThresholds()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 623
    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v0

    .line 622
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertToHalAccessNetwork(I)I

    move-result v6

    move v2, p1

    .line 618
    invoke-interface/range {v1 .. v6}, Landroid/hardware/radio/V1_4/IRadio;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    goto :goto_62

    :cond_8d
    :goto_8d
    return-void
.end method

.method public blacklist setSuppServiceNotifications(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist setSystemSelectionChannels(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 653
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 655
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda3;-><init>()V

    .line 656
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 654
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    return-void

    .line 657
    :cond_31
    iget-object v0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 658
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    .line 659
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda4;-><init>()V

    .line 660
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;-><init>()V

    .line 661
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 658
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/V1_5/IRadio;->setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V

    return-void

    .line 663
    :cond_65
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 664
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda6;-><init>()V

    .line 665
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda5;-><init>()V

    .line 666
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 663
    invoke-interface {p0, p1, v0, p2}, Landroid/hardware/radio/V1_4/IRadio;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    return-void
.end method

.method public blacklist setUsageSetting(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 804
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 805
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->setUsageSetting(II)V

    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 680
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_84

    .line 681
    new-instance p3, Landroid/hardware/radio/network/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/network/NetworkScanRequest;-><init>()V

    .line 683
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->type:I

    .line 684
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->interval:I

    .line 685
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->maxSearchTime:I

    .line 686
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 687
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v0

    iput-boolean v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->incrementalResults:Z

    .line 688
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p3, Landroid/hardware/radio/network/NetworkScanRequest;->mccMncs:[Ljava/lang/String;

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v4, p2

    :goto_52
    if-ge v3, v4, :cond_6d

    aget-object v5, p2, v3

    .line 693
    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/network/RadioAccessSpecifier;

    move-result-object v5

    if-nez v5, :cond_67

    .line 696
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 695
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 697
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 700
    :cond_67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 702
    :cond_6d
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/internal/telephony/RadioNetworkProxy$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    iput-object p2, p3, Landroid/hardware/radio/network/NetworkScanRequest;->specifiers:[Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 704
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/network/IRadioNetwork;->startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V

    return-void

    :cond_84
    if-eqz p3, :cond_8e

    .line 705
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 706
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-eqz p3, :cond_ee

    :cond_8e
    iget-object p3, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 707
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-eqz p3, :cond_ee

    .line 708
    new-instance p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 710
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 711
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 712
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 713
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 714
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v0

    iput-boolean v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 715
    iget-object v0, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 716
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v0, p2

    :goto_c9
    if-ge v3, v0, :cond_e6

    aget-object v4, p2, v3

    .line 718
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifier15(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    move-result-object v4

    if-nez v4, :cond_de

    .line 721
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 720
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 722
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 725
    :cond_de
    iget-object v5, p3, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    .line 727
    :cond_e6
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    check-cast p0, Landroid/hardware/radio/V1_5/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_5/IRadio;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V

    return-void

    .line 730
    :cond_ee
    new-instance p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {p3}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 732
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->type:I

    .line 733
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->interval:I

    .line 734
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->maxSearchTime:I

    .line 735
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    iput v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 736
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v0

    iput-boolean v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->incrementalResults:Z

    .line 737
    iget-object v0, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 739
    invoke-virtual {p2}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object p2

    array-length v0, p2

    :goto_11f
    if-ge v3, v0, :cond_13c

    aget-object v4, p2, v3

    .line 741
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessSpecifier11(Landroid/telephony/RadioAccessSpecifier;)Landroid/hardware/radio/V1_1/RadioAccessSpecifier;

    move-result-object v4

    if-nez v4, :cond_134

    .line 744
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 743
    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 745
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 748
    :cond_134
    iget-object v5, p3, Landroid/hardware/radio/V1_2/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11f

    .line 750
    :cond_13c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/V1_4/IRadio;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    return-void
.end method

.method public blacklist stopNetworkScan(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 761
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 762
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1}, Landroid/hardware/radio/network/IRadioNetwork;->stopNetworkScan(I)V

    return-void

    .line 764
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1}, Landroid/hardware/radio/V1_4/IRadio;->stopNetworkScan(I)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 776
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 777
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    return-void

    .line 779
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/V1_4/IRadio;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    .line 836
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 837
    iget-object p0, p0, Lcom/android/internal/telephony/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/network/IRadioNetwork;->triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V

    :cond_12
    :goto_12
    return-void
.end method
