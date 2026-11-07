.class public Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;
.super Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.source "SmsDomainSelectionConnection.java"


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Z)V

    .line 38
    const-string p1, "DomainSelectionConnection-SMS"

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->mTag:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/domainselection/DomainSelectionController;Z)V
    .registers 5

    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;-><init>(Lcom/android/internal/telephony/Phone;IZLcom/android/internal/telephony/domainselection/DomainSelectionController;)V

    return-void
.end method


# virtual methods
.method public blacklist onSelectionTerminated(I)V
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;->mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;->onSelectionTerminated(I)V

    :cond_7
    return-void
.end method

.method public blacklist onWlanSelected()V
    .registers 2

    const/4 v0, 0x2

    .line 48
    invoke-super {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onDomainSelected(I)V

    return-void
.end method

.method public blacklist requestDomainSelection(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;)Ljava/util/concurrent/CompletableFuture;
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

    .line 68
    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/SmsDomainSelectionConnection;->mCallback:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionCallback;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->getCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
