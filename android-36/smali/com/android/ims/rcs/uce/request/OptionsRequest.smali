.class public Lcom/android/ims/rcs/uce/request/OptionsRequest;
.super Lcom/android/ims/rcs/uce/request/CapabilityRequest;
.source "OptionsRequest.java"


# instance fields
.field private blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

.field private blacklist mResponseCallback:Landroid/telephony/ims/aidl/IOptionsResponseCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monCommandError(Lcom/android/ims/rcs/uce/request/OptionsRequest;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onCommandError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/request/OptionsRequest;ILjava/lang/String;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/options/OptionsController;)V
    .registers 6
    .param p1, "subId"    # I
    .param p2, "requestType"    # I
    .param p3, "taskMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "optionsController"    # Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V

    .line 46
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;-><init>(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mResponseCallback:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    .line 64
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 65
    const-string v0, "OptionsRequest created"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logd(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/options/OptionsController;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "requestType"    # I
    .param p3, "taskMgrCallback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "optionsController"    # Lcom/android/ims/rcs/uce/options/OptionsController;
    .param p5, "requestResponse"    # Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    .line 72
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;-><init>(IILcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;)V

    .line 46
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/request/OptionsRequest$1;-><init>(Lcom/android/ims/rcs/uce/request/OptionsRequest;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mResponseCallback:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    .line 73
    iput-object p4, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 74
    return-void
.end method

.method private blacklist getContactCapabilities(Landroid/net/Uri;ILjava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 7
    .param p1, "contact"    # Landroid/net/Uri;
    .param p2, "sipCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 159
    .local p3, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x3

    .line 160
    .local v0, "requestResult":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->isNetworkResponseOK()Z

    move-result v1

    if-nez v1, :cond_12

    .line 161
    sparse-switch p2, :sswitch_data_24

    .line 173
    const/4 v0, 0x2

    goto :goto_12

    .line 165
    :sswitch_e
    const/4 v0, 0x1

    .line 166
    goto :goto_12

    .line 170
    :sswitch_10
    const/4 v0, 0x2

    .line 171
    nop

    .line 178
    :cond_12
    :goto_12
    new-instance v1, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    .line 180
    .local v1, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    invoke-virtual {v1, v0}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 181
    invoke-virtual {v1, p3}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->addFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 182
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_24
    .sparse-switch
        0x194 -> :sswitch_10
        0x198 -> :sswitch_e
        0x1e0 -> :sswitch_e
        0x25c -> :sswitch_10
    .end sparse-switch
.end method

.method private blacklist onCommandError(I)V
    .registers 7
    .param p1, "cmdError"    # I

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandError: error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logd(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mIsFinished:Z

    if-eqz v0, :cond_20

    .line 123
    const-string v0, "onCommandError: The request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logw(Ljava/lang/String;)V

    .line 124
    return-void

    .line 126
    :cond_20
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setCommandError(I)V

    .line 127
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mCoordinatorId:J

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mTaskId:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyCommandError(JJ)V

    .line 128
    return-void
.end method

.method private blacklist onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "sipCode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p3, "remoteCaps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkResponse: sipCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteCap size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    if-nez p3, :cond_24

    const-string v1, "null"

    goto :goto_2c

    :cond_24
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logd(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mIsFinished:Z

    if-eqz v0, :cond_41

    .line 135
    const-string v0, "onNetworkResponse: The request is already finished"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logw(Ljava/lang/String;)V

    .line 136
    return-void

    .line 139
    :cond_41
    if-nez p3, :cond_45

    .line 140
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 144
    :cond_45
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setNetworkResponseCode(ILjava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRemoteCapabilities(Ljava/util/Set;)V

    .line 146
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mContactUri:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->getContactCapabilities(Landroid/net/Uri;ILjava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 148
    .local v0, "contactCapabilities":Landroid/telephony/ims/RcsContactUceCapability;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->addUpdatedCapabilities(Ljava/util/List;)V

    .line 151
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mCoordinatorId:J

    iget-wide v4, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mTaskId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyNetworkResponse(JJ)V

    .line 152
    return-void
.end method


# virtual methods
.method public blacklist getResponseCallback()Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mResponseCallback:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    return-object v0
.end method

.method public blacklist onFinish()V
    .registers 2

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 79
    invoke-super {p0}, Lcom/android/ims/rcs/uce/request/CapabilityRequest;->onFinish()V

    .line 80
    const-string v0, "OptionsRequest finish"

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logd(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "requestCapUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 86
    .local v0, "optionsController":Lcom/android/ims/rcs/uce/options/OptionsController;
    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 87
    const-string v2, "requestCapabilities: request is finished"

    invoke-virtual {p0, v2}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logw(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v2, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 89
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mCoordinatorId:J

    iget-wide v4, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mTaskId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestError(JJ)V

    .line 90
    return-void

    .line 94
    :cond_19
    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    .line 96
    .local v2, "deviceCap":Landroid/telephony/ims/RcsContactUceCapability;
    if-nez v2, :cond_36

    .line 97
    const-string v3, "requestCapabilities: Cannot get device capabilities"

    invoke-virtual {p0, v3}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logw(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v3, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 99
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mCoordinatorId:J

    iget-wide v5, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mTaskId:J

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestError(JJ)V

    .line 100
    return-void

    .line 103
    :cond_36
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mContactUri:Landroid/net/Uri;

    .line 104
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    .line 106
    .local v3, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCapabilities: featureTag size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logi(Ljava/lang/String;)V

    .line 109
    :try_start_5d
    iget-object v4, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mContactUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mResponseCallback:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, v4, v3, v5}, Lcom/android/ims/rcs/uce/options/OptionsController;->sendCapabilitiesRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->setupRequestTimeoutTimer()V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_67} :catch_68

    .line 116
    goto :goto_8d

    .line 112
    :catch_68
    move-exception v4

    .line 113
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCapabilities exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ims/rcs/uce/request/OptionsRequest;->logw(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestResponse:Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;

    invoke-virtual {v5, v1}, Lcom/android/ims/rcs/uce/request/CapabilityRequestResponse;->setRequestInternalError(I)V

    .line 115
    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mRequestManagerCallback:Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;

    iget-wide v5, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mCoordinatorId:J

    iget-wide v7, p0, Lcom/android/ims/rcs/uce/request/OptionsRequest;->mTaskId:J

    invoke-interface {v1, v5, v6, v7, v8}, Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;->notifyRequestError(JJ)V

    .line 117
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_8d
    return-void
.end method
