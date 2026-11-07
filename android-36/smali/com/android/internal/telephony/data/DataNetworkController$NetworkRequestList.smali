.class public Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
.super Ljava/util/LinkedList;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/android/internal/telephony/data/TelephonyNetworkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 483
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V
    .registers 2

    .line 491
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 2

    .line 510
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/TelephonyNetworkRequest;",
            ">;)V"
        }
    .end annotation

    .line 500
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public blacklist add(ILcom/android/internal/telephony/data/TelephonyNetworkRequest;)V
    .registers 3

    .line 540
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insertion to certain position is illegal."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 478
    check-cast p2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(ILcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    return-void
.end method

.method public blacklist add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 524
    :goto_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 525
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 526
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return v0

    .line 529
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result v2

    if-le v3, v2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 534
    :cond_23
    :goto_23
    invoke-super {p0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 478
    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/internal/telephony/data/TelephonyNetworkRequest;",
            ">;)Z"
        }
    .end annotation

    .line 545
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_4

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist dump(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V
    .registers 3

    .line 614
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 615
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 616
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7

    .line 618
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist get([I)Lcom/android/internal/telephony/data/TelephonyNetworkRequest;
    .registers 6

    const/4 v0, 0x0

    .line 561
    :goto_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 562
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 564
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 565
    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v2

    .line 566
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 567
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    .line 568
    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    .line 567
    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_36

    return-object v1

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hasNetworkRequestsFromPackage(Ljava/lang/String;)Z
    .registers 3

    .line 583
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 585
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NetworkRequestList: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", leading by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_30

    :cond_2e
    const-string p0, ""

    :goto_30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toStringSimplified()Ljava/lang/String;
    .registers 4

    .line 603
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 603
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilitiesToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->connectivityTransportsToString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 605
    :cond_38
    const-string p0, ""

    return-object p0
.end method
