.class public Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;
.super Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.source "EmergencyCallDomainSelectionConnection.java"


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

.field private blacklist mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field private blacklist mPreferredTransportCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

.field private blacklist mPreferredTransportType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 4

    .line 74
    invoke-static {}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->getInstance()Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Lcom/android/internal/telephony/emergency/EmergencyStateTracker;)V
    .registers 5

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;IZLcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mPreferredTransportType:I

    .line 165
    new-instance p1, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection$1;

    new-instance p2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection$1;-><init>(Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mPreferredTransportCallback:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    .line 88
    const-string p1, "EmergencyCallDomainSelectionConnection"

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    return-void
.end method

.method private blacklist changePreferredTransport(I)V
    .registers 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePreferredTransport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->initHandler()V

    .line 159
    iput p1, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mPreferredTransportType:I

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyEmergencyDomainSelected(I)V

    return-void
.end method

.method public static blacklist getSelectionAttributes(IIZLjava/lang/String;Ljava/lang/String;ZILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/EmergencyRegistrationResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 11

    const/16 v0, 0x53e

    if-eq p6, v0, :cond_c

    const/16 v0, 0x53f

    if-eq p6, v0, :cond_9

    goto :goto_e

    :cond_9
    const/16 p6, 0x146

    goto :goto_e

    :cond_c
    const/16 p6, 0x145

    .line 260
    :goto_e
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;-><init>(III)V

    .line 263
    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 264
    invoke-virtual {p0, p5}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setTestEmergencyNumber(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 265
    invoke-virtual {p0, p2}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setExitedFromAirplaneMode(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 266
    invoke-virtual {p0, p3}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setCallId(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    const-string p1, "tel"

    const/4 p2, 0x0

    .line 267
    invoke-static {p1, p4, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setAddress(Landroid/net/Uri;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 268
    invoke-virtual {p0, p6}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setCsDisconnectCause(I)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    if-eqz p7, :cond_38

    .line 270
    invoke-virtual {p0, p7}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setPsDisconnectCause(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    :cond_38
    if-eqz p8, :cond_3d

    .line 271
    invoke-virtual {p0, p8}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergencyRegistrationResult(Landroid/telephony/EmergencyRegistrationResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    .line 273
    :cond_3d
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->build()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist cancelSelection()V
    .registers 3

    .line 196
    const-string v0, "cancelSelection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V

    .line 199
    invoke-super {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->cancelSelection()V

    return-void
.end method

.method public blacklist createEmergencyConnection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/DomainSelectionService$SelectionAttributes;",
            "Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getSelectionAttributesToRebindService()Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 12

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getSelectionAttributes()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_8
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    .line 283
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getSlotIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;-><init>(III)V

    .line 284
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setCallId(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setAddress(Landroid/net/Uri;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->isVideoCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setVideoCall(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->isTestEmergencyNumber()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setTestEmergencyNumber(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->isExitedFromAirplaneMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setExitedFromAirplaneMode(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    new-instance v0, Landroid/telephony/EmergencyRegistrationResult;

    const-string v9, ""

    const-string v10, ""

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    invoke-direct/range {v0 .. v10}, Landroid/telephony/EmergencyRegistrationResult;-><init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, v0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergencyRegistrationResult(Landroid/telephony/EmergencyRegistrationResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->build()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p0

    return-object p0
.end method

.method public blacklist onDomainSelected(IZ)V
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2c

    if-eqz p2, :cond_2c

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    const/16 v1, 0x200

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDomainSelected curTransportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    .line 134
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->changePreferredTransport(I)V

    return-void

    .line 138
    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onDomainSelected(IZ)V

    return-void
.end method

.method protected blacklist onQualifiedNetworksChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x200

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getPreferredTransport(ILjava/util/List;)I

    move-result p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQualifiedNetworksChanged preferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mPreferredTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mPreferredTransportType:I

    if-ne p1, v0, :cond_4c

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3a

    const/4 p1, 0x4

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_41

    .line 185
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 188
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mHandler:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V

    :cond_4c
    return-void
.end method

.method public blacklist onSelectionTerminated(I)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;->onSelectionTerminated(I)V

    :cond_7
    return-void
.end method

.method public blacklist onWlanSelected(Z)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChanged(II)V

    if-eqz p1, :cond_2f

    .line 99
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object p1

    const/16 v0, 0x200

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result p1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWlanSelected curTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logi(Ljava/lang/String;)V

    if-eq p1, v2, :cond_2f

    .line 103
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->changePreferredTransport(I)V

    return-void

    .line 108
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    if-eqz p0, :cond_3d

    const/4 p1, 0x4

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_3d
    return-void
.end method

.method public blacklist onWwanSelected()V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->mEmergencyStateTracker:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->onEmergencyTransportChangedAndWait(II)V

    return-void
.end method

.method public blacklist reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)Ljava/util/concurrent/CompletableFuture;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/DomainSelectionService$SelectionAttributes;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getDisconnectCause()I

    move-result v0

    .line 207
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getCsDisconnectCause()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_10

    const/16 v1, 0x145

    :cond_e
    :goto_e
    move v8, v1

    goto :goto_17

    :cond_10
    const/16 v2, 0x40

    if-ne v0, v2, :cond_e

    const/16 v1, 0x146

    goto :goto_e

    .line 214
    :goto_17
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getCsDisconnectCause()I

    move-result v0

    if-eq v8, v0, :cond_50

    .line 216
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getSlotIndex()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getSubscriptionId()I

    move-result v3

    .line 217
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->isExitedFromAirplaneMode()Z

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getCallId()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getAddress()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 219
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    move-object v6, v0

    goto :goto_40

    :cond_3d
    const-string v0, ""

    goto :goto_3b

    .line 220
    :goto_40
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->isTestEmergencyNumber()Z

    move-result v7

    .line 221
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getPsDisconnectCause()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v9

    .line 222
    invoke-virtual {p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->getEmergencyRegistrationResult()Landroid/telephony/EmergencyRegistrationResult;

    move-result-object v10

    .line 215
    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;->getSelectionAttributes(IIZLjava/lang/String;Ljava/lang/String;ZILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/EmergencyRegistrationResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p1

    .line 225
    :cond_50
    invoke-super {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
