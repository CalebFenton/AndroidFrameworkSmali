.class public Lcom/android/internal/telephony/DataResponse;
.super Landroid/hardware/radio/data/IRadioDataResponse$Stub;
.source "DataResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 48
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist allocatePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 58
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 59
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 61
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist cancelHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 69
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deactivateDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 76
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getDataCallListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/data/SetupDataCallResult;)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 89
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList([Landroid/hardware/radio/data/SetupDataCallResult;)Ljava/util/ArrayList;

    move-result-object p2

    .line 90
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 91
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 93
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 235
    const-string p0, "70713939dbe39fdbd3a294b3a3e3d2842b3bf4eb"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist getSlicingConfigResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SlicingConfig;)V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 106
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlicingConfig(Landroid/hardware/radio/data/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;

    move-result-object p2

    .line 107
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 108
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 110
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist releasePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataThrottlingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 139
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setInitialAttachApnResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 146
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setupDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SetupDataCallResult;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 158
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Landroid/hardware/radio/data/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    .line 159
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 160
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 162
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist startHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 170
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/KeepaliveStatus;)V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v2, 0x0

    .line 185
    :try_start_b
    iget v3, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-eqz v3, :cond_2c

    const/4 p2, 0x6

    if-eq v3, p2, :cond_26

    const/16 p2, 0x2a

    if-eq v3, p2, :cond_1f

    .line 206
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_49

    :catchall_1d
    move-exception p2

    goto :goto_4f

    .line 203
    :cond_1f
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_49

    .line 200
    :cond_26
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_49

    .line 187
    :cond_2c
    iget v3, p2, Landroid/hardware/radio/data/KeepaliveStatus;->code:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalKeepaliveStatusCode(I)I

    move-result v3

    if-gez v3, :cond_3b

    .line 190
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    move-object v2, p2

    goto :goto_43

    .line 192
    :cond_3b
    new-instance v1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    iget p2, p2, Landroid/hardware/radio/data/KeepaliveStatus;->sessionHandle:I

    invoke-direct {v1, p2, v3}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    move-object v2, v1

    .line 197
    :goto_43
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_1d

    move-object p2, v2

    .line 211
    :goto_49
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_4f
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 212
    throw p2
.end method

.method public blacklist stopKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 5

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 223
    :try_start_b
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_17

    .line 224
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v2

    goto :goto_1d

    .line 229
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :goto_1d
    iget-object p0, p0, Lcom/android/internal/telephony/DataResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 230
    throw v2
.end method
