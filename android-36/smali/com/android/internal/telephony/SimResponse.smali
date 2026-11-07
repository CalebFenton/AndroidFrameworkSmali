.class public Lcom/android/internal/telephony/SimResponse;
.super Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.source "SimResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 7

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 49
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/sim/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/sim/IccIoResult;->sw2:I

    iget-object p2, p2, Landroid/hardware/radio/sim/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    .line 50
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_1d

    .line 51
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 53
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 76
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 77
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 79
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 88
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V
    .registers 9

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v0, :cond_16

    return-void

    .line 120
    :cond_16
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertAidlSimLockMultiSimPolicy(I)I

    move-result p3

    .line 123
    iget-boolean v2, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v1, :cond_63

    .line 131
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object v4, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 132
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertAidlCarrierInfoListToHalCarrierList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;

    move-result-object v4

    .line 131
    invoke-virtual {v1, v4}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object v4, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 134
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertAidlCarrierInfoListToHalCarrierList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;

    move-result-object v4

    .line 133
    invoke-virtual {v1, v4}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    iget v1, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->status:I

    .line 138
    invoke-virtual {p3, v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->setCarrierRestrictionStatus(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    iget-object v1, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 140
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertAidlCarrierInfoList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-virtual {p3, v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarrierInfo(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    iget-object p2, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarrierInfoList:[Landroid/hardware/radio/sim/CarrierInfo;

    .line 142
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertAidlCarrierInfoList([Landroid/hardware/radio/sim/CarrierInfo;)Ljava/util/List;

    move-result-object p2

    .line 141
    invoke-virtual {p3, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarrierInfo(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 143
    invoke-virtual {p2, v3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setCarrierLockInfoFeature(Z)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    goto :goto_87

    .line 146
    :cond_63
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object v3, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 147
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;

    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object p2, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 149
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;

    move-result-object p2

    .line 148
    invoke-virtual {v1, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 150
    invoke-virtual {p2, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 151
    invoke-virtual {p2, p3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 152
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    .line 154
    :goto_87
    iget p3, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p3, :cond_90

    .line 155
    iget-object p3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 157
    :cond_90
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2, p3, p4, p5, p6}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x5

    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 181
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 202
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Landroid/hardware/radio/sim/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object p2

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 204
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_2c

    .line 205
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 207
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public blacklist getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 468
    const-string p0, "fc1a19a4f86a58981158cc8d956763c9d8ace630"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V
    .registers 5

    .line 225
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookCapacity(Landroid/hardware/radio/sim/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p2

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 228
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 229
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 231
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannelWithSessionInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V
    .registers 6

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 275
    :goto_d
    array-length v1, p3

    if-ge p2, v1, :cond_1c

    .line 276
    aget-byte v1, p3, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_1c
    const/4 p2, 0x5

    .line 278
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 303
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 315
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/sim/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/sim/IccIoResult;->sw2:I

    .line 316
    iget-object v4, p2, Landroid/hardware/radio/sim/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 p2, 0x0

    goto :goto_1f

    :cond_19
    iget-object p2, p2, Landroid/hardware/radio/sim/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :goto_1f
    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 317
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_2b

    .line 318
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 320
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public blacklist requestIsimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 332
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Inexplicable response received for requestIsimAuthentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 357
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 367
    iget-object v1, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowedCarriersResponse - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 369
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_30

    .line 371
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_31

    :cond_30
    const/4 v2, 0x2

    .line 373
    :goto_31
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 381
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 388
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x5

    .line 410
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 418
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 426
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 442
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .registers 4

    .line 453
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2, p3}, [I

    move-result-object p2

    const/4 p3, 0x5

    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 463
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method
