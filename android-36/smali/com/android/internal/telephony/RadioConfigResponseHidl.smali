.class public Lcom/android/internal/telephony/RadioConfigResponseHidl;
.super Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;
.source "RadioConfigResponseHidl.java"


# instance fields
.field private final blacklist mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field private final blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-void
.end method

.method private static blacklist logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "< "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 230
    const-string v0, "RadioConfigResponse"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "< "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 234
    const-string v0, "RadioConfigResponse"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/RILUtils;->getCaps(Lcom/android/internal/telephony/HalVersion;Z)Ljava/util/Set;

    move-result-object p0

    .line 216
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_21

    .line 218
    iget-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 219
    iget p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_21
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getHalDeviceCapabilities: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/config/V1_1/ModemsConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 165
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_1b

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 168
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1b
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getModemsConfigResponse: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getPhoneCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/config/V1_1/PhoneCapability;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfig;->getDeviceNrCapabilities()[I

    move-result-object p0

    .line 98
    invoke-static {p0, p2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhoneCapability([ILjava/lang/Object;)Landroid/telephony/PhoneCapability;

    move-result-object p0

    .line 100
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_3d

    .line 102
    iget-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_3d
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPhoneCapabilityResponse: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSimSlotsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_0/SimSlotStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 54
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 55
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_37

    .line 57
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_37
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSimSlotsStatusResponse: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSimSlotsStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/config/V1_2/SimSlotStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 188
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlotStatus(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 189
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_37

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_37
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSimSlotsStatusResponse_1_2: Error "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 143
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_21

    .line 145
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 146
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    :cond_21
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setModemsConfigResponse: Error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setPreferredDataModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 121
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 123
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 124
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreferredDataModemResponse: Error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSimSlotsMappingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfigResponseHidl;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 76
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 78
    iget-object p1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 79
    iget p1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->logd(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSimSlotsMappingResponse: Error "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfigResponseHidl;->loge(Ljava/lang/String;)V

    return-void
.end method
