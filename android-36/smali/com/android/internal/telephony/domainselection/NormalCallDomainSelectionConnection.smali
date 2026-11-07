.class public Lcom/android/internal/telephony/domainselection/NormalCallDomainSelectionConnection;
.super Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.source "NormalCallDomainSelectionConnection.java"


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;IZLcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    .line 54
    const-string p1, "NormalCallDomainSelectionConnection"

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static blacklist getSelectionAttributes(IILjava/lang/String;Ljava/lang/String;ZILandroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 9

    .line 114
    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;-><init>(III)V

    const/4 p0, 0x0

    .line 117
    invoke-virtual {v0, p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p2}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setCallId(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    const-string p1, "tel"

    const/4 p2, 0x0

    .line 119
    invoke-static {p1, p3, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setAddress(Landroid/net/Uri;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p5}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setCsDisconnectCause(I)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p4}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setVideoCall(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    move-result-object p0

    if-eqz p6, :cond_27

    .line 124
    invoke-virtual {p0, p6}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->setPsDisconnectCause(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;

    .line 126
    :cond_27
    invoke-virtual {p0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->build()Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist createNormalConnection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;
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

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/NormalCallDomainSelectionConnection;->mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public blacklist onRequestEmergencyNetworkScan([IIZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist onSelectionTerminated(I)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/NormalCallDomainSelectionConnection;->mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;->onSelectionTerminated(I)V

    :cond_7
    return-void
.end method

.method public blacklist onWlanSelected()V
    .registers 2

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/4 v0, 0x2

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist onWwanSelected()V
    .registers 1

    .line 0
    return-void
.end method
