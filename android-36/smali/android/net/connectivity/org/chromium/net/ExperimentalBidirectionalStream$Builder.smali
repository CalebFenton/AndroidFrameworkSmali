.class public abstract Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.super Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
.source "ExperimentalBidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
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

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.end method

.method public bridge synthetic blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .line 53
    return-object p0
.end method

.method public bridge synthetic blacklist build()Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .registers 2

    .line 33
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;
.end method

.method public bridge synthetic blacklist delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.end method

.method public bridge synthetic blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.end method

.method public bridge synthetic blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 2
    .param p1, "tag"    # I

    .line 58
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 63
    return-object p0
.end method
