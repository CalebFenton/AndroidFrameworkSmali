.class public Lcom/android/internal/telephony/NetworkResponse;
.super Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;
.source "NetworkResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist cancelEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 458
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist exitEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 451
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 59
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result p2

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iput p2, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    const/4 v0, 0x4

    .line 61
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .registers 4

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    .line 70
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x4

    .line 69
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V
    .registers 12

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2b

    aget-object v4, p2, v3

    .line 84
    new-instance v5, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v6, v4, Landroid/hardware/radio/network/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v7, v4, Landroid/hardware/radio/network/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v8, v4, Landroid/hardware/radio/network/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    iget v4, v4, Landroid/hardware/radio/network/OperatorInfo;->status:I

    .line 85
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalOperatorStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 87
    :cond_2b
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_34

    .line 88
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 90
    :cond_34
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public blacklist getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 105
    new-instance v1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 106
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList([Landroid/hardware/radio/network/BarringInfo;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 107
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_2c

    .line 108
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 110
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p3, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 113
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public blacklist getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 134
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList([Landroid/hardware/radio/network/CellInfo;)Ljava/util/ArrayList;

    move-result-object p2

    .line 135
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 136
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 138
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 151
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 152
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 154
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .registers 4

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    if-nez p3, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x2

    .line 167
    :goto_7
    filled-new-array {p2, p3}, [I

    move-result-object p2

    const/4 p3, 0x4

    .line 165
    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 586
    const-string p0, "5867b4f5be491ec815fafea8a3f268b0295427df"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 4

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 199
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Landroid/hardware/radio/network/SignalStrength;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 200
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 201
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 203
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V
    .registers 8

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, p2, v3

    .line 218
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessSpecifier(Landroid/hardware/radio/network/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 220
    :cond_1e
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemSelectionChannelsResponse: from AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 221
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_3d

    .line 222
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 224
    :cond_3d
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public blacklist getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 420
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 233
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 244
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_12

    .line 245
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 247
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public blacklist isCellularIdentifierTransparencyEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 524
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 525
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 527
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist isN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 493
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 494
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 496
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 261
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 262
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 264
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist isNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 478
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 479
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 481
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist isSatelliteEnabledForCarrierResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 577
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 578
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 580
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist isSecurityAlgorithmsUpdatedEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 547
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 548
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 550
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 272
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 286
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 293
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 300
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCellularIdentifierTransparencyEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 511
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/EmergencyRegResult;)V
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 432
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalEmergencyRegResult(Landroid/hardware/radio/network/EmergencyRegResult;)Landroid/telephony/EmergencyRegistrationResult;

    move-result-object p2

    .line 433
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 434
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 436
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 307
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 504
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 335
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 342
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 465
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrierResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSatellitePlmnResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 558
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSecurityAlgorithmsUpdatedEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 535
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 373
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 374
    new-instance v1, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 376
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v2, v1

    .line 378
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public blacklist stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 389
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 390
    new-instance v1, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 392
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v2, v1

    .line 394
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 4

    .line 404
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist triggerEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x4

    .line 444
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method
