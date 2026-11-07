.class public Lcom/android/internal/telephony/NetworkIndication;
.super Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.source "NetworkIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V
    .registers 3

    .line 479
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :goto_10
    if-nez p0, :cond_14

    const/4 p0, -0x1

    goto :goto_18

    .line 480
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 481
    :goto_18
    invoke-static {p1, p2, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    if-eqz p2, :cond_1e

    if-nez p3, :cond_b

    goto :goto_1e

    .line 92
    :cond_b
    new-instance p1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 93
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    return-void

    .line 86
    :cond_1e
    :goto_1e
    const-string p1, "645b16bb-c930-4c1c-9c5d-568696542e05"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "Invalid barringInfoChanged indication"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist cdmaPrlChanged(II)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 106
    filled-new-array {p2}, [I

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x408

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 110
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaPrlChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 121
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 123
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilCellInfoListRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist cellularIdentifierDisclosed(ILandroid/hardware/radio/network/CellularIdentifierDisclosure;)V
    .registers 5

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 437
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 438
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x420

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 442
    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertCellularIdentifierDisclosure(Landroid/hardware/radio/network/CellularIdentifierDisclosure;)Landroid/telephony/CellularIdentifierDisclosure;

    move-result-object p1

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mCellularIdentifierDisclosedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 135
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLinkCapacityEstimate(Landroid/hardware/radio/network/LinkCapacityEstimate;)Ljava/util/List;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x415

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 139
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mLceInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_28

    .line 140
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V
    .registers 12

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    :try_start_c
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_b5

    aget-object v4, p2, v3

    .line 155
    new-instance v5, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v5}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>()V

    .line 157
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5f

    const/4 v7, 0x2

    if-eq v6, v7, :cond_58

    const/4 v7, 0x3

    if-eq v6, v7, :cond_51

    if-eq v6, v1, :cond_4a

    .line 171
    iget-object v6, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported band type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v8}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getTag()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    move v6, v2

    goto :goto_65

    :catch_47
    move-exception p1

    goto/16 :goto_d2

    .line 168
    :cond_4a
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getNgranBand()I

    move-result v6

    goto :goto_65

    .line 165
    :cond_51
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getEutranBand()I

    move-result v6

    goto :goto_65

    .line 162
    :cond_58
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getUtranBand()I

    move-result v6

    goto :goto_65

    .line 159
    :cond_5f
    iget-object v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->band:Landroid/hardware/radio/network/PhysicalChannelConfigBand;

    invoke-virtual {v6}, Landroid/hardware/radio/network/PhysicalChannelConfigBand;->getGeranBand()I

    move-result v6

    :goto_65
    if-nez v6, :cond_6f

    .line 174
    iget-object v6, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v7, "Unsupported unknown band."

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_72

    .line 180
    :cond_6f
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 182
    :goto_72
    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->status:I

    .line 183
    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->convertHalCellConnectionStatus(I)I

    move-result v6

    .line 182
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->downlinkChannelNumber:I

    .line 184
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->uplinkChannelNumber:I

    .line 185
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setUplinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->cellBandwidthDownlinkKhz:I

    .line 186
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->cellBandwidthUplinkKhz:I

    .line 187
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setCellBandwidthUplinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->rat:I

    .line 188
    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->physicalCellId:I

    .line 189
    invoke-virtual {v5, v6}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v5

    iget-object v4, v4, Landroid/hardware/radio/network/PhysicalChannelConfig;->contextIds:[I

    .line 190
    invoke-virtual {v5, v4}, Landroid/telephony/PhysicalChannelConfig$Builder;->setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v4

    .line 182
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_b1} :catch_47

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    .line 199
    :cond_b5
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_c4

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x44d

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 201
    :cond_c4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhysicalChannelConfigurationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 194
    :goto_d2
    const-string p2, "918f0970-9aa9-4bcd-a28e-e49a83fe77d5"

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    const-string v0, "RIL reported invalid PCC (AIDL)"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PhysicalChannelConfig "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 214
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p1

    .line 217
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogvOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f1

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 219
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSignalStrengthRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_28

    .line 220
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_28
    return-void
.end method

.method public blacklist emergencyNetworkScanResult(ILandroid/hardware/radio/network/EmergencyRegResult;)V
    .registers 5

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 418
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalEmergencyRegResult(Landroid/hardware/radio/network/EmergencyRegResult;)Landroid/telephony/EmergencyRegistrationResult;

    move-result-object p1

    .line 420
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 421
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x452

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 424
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyNetworkScanRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 470
    const-string p0, "5867b4f5be491ec815fafea8a3f268b0295427df"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist imsNetworkStateChanged(I)V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 231
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 233
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImsNetworkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 245
    iget-object p1, p2, Landroid/hardware/radio/network/NetworkScanResult;->networkInfos:[Landroid/hardware/radio/network/CellInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 246
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    iget v1, p2, Landroid/hardware/radio/network/NetworkScanResult;->status:I

    iget p2, p2, Landroid/hardware/radio/network/NetworkScanResult;->error:I

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 247
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p2, 0x419

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 248
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p1, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist networkStateChanged(I)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 258
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    .line 260
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public blacklist nitzTimeReceived(ILjava/lang/String;JJ)V
    .registers 9

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 278
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    :cond_15
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_66

    cmp-long p1, p5, v0

    if-ltz p1, :cond_66

    cmp-long p1, p5, p3

    if-ltz p1, :cond_24

    goto :goto_66

    .line 294
    :cond_24
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 295
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 297
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->ignore_nitz()Ljava/util/Optional;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 300
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const-string p1, "ignoring UNSOL_NITZ_TIME_RECEIVED"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_51
    return-void

    .line 302
    :cond_52
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p2, :cond_61

    .line 303
    new-instance p3, Landroid/os/AsyncResult;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 307
    :cond_61
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    return-void

    .line 283
    :cond_66
    :goto_66
    const-string p1, "fc7c56d4-485d-475a-aaff-394203c6cdfc"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string p2, "NITZ indication with invalid parameter"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NITZ parameter is invalid, ignoring nitzTimeReceived indication. receivedTimeMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", ageMs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V
    .registers 9

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 324
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 325
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4c

    and-int/lit8 p1, p4, 0x3

    if-eqz p1, :cond_4c

    and-int/lit8 p1, p4, -0x4

    if-nez p1, :cond_4c

    if-ltz p5, :cond_4c

    if-ltz p6, :cond_4c

    const p1, 0x7fffffff

    if-ne p5, p1, :cond_26

    if-ne p6, p1, :cond_26

    goto :goto_4c

    .line 342
    :cond_26
    new-instance p1, Lcom/android/internal/telephony/RegistrationFailedEvent;

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/telephony/RegistrationFailedEvent;-><init>(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 344
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 345
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 p3, 0x450

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrationFailedEvent;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/RIL;->unsljLogMore(ILjava/lang/String;)V

    .line 347
    :cond_3e
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRegistrationFailedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    return-void

    .line 330
    :cond_4c
    :goto_4c
    const-string p1, "f16e5703-6105-4341-9eb3-e68189156eb5"

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string v0, "Invalid registrationFailed indication"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/NetworkIndication;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid registrationFailed indication (ci is null)="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_69

    move p2, v1

    goto :goto_6a

    :cond_69
    move p2, v0

    :goto_6a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (chosenPlmn is empty)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (is CS/PS)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p4, 0x3

    if-nez p2, :cond_84

    move p2, v1

    goto :goto_85

    :cond_84
    move p2, v0

    :goto_85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (only CS/PS)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p4, -0x4

    if-eqz p2, :cond_92

    move v0, v1

    :cond_92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (causeCode)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (additionalCauseCode)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist restrictedStateChanged(II)V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 359
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3ff

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 361
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRestrictedStateRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_2c

    .line 362
    new-instance p1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2c
    return-void
.end method

.method public blacklist securityAlgorithmsUpdated(ILandroid/hardware/radio/network/SecurityAlgorithmUpdate;)V
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 457
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 458
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x421

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 462
    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertSecurityAlgorithmUpdate(Landroid/hardware/radio/network/SecurityAlgorithmUpdate;)Landroid/telephony/SecurityAlgorithmUpdate;

    move-result-object p1

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSecurityAlgorithmUpdatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 375
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 376
    iget-boolean v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->isMT:Z

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 377
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->code:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 378
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->index:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 379
    iget v0, p2, Landroid/hardware/radio/network/SuppSvcNotification;->type:I

    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 380
    iget-object p2, p2, Landroid/hardware/radio/network/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 382
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 383
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f3

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 386
    :cond_2e
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSsnRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_3d

    .line 387
    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_3d
    return-void
.end method

.method public blacklist voiceRadioTechChanged(II)V
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 399
    filled-new-array {p2}, [I

    move-result-object p1

    .line 401
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 402
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 405
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mVoiceRadioTechChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
