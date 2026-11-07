.class public Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;
.super Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
.source "RequestFinishedInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl$FinishedReason;
    }
.end annotation


# instance fields
.field private final blacklist mAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mException:Landroid/net/connectivity/org/chromium/net/CronetException;

.field private final blacklist mFinishedReason:I

.field private final blacklist mMetrics:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;

.field private final blacklist mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

.field private final blacklist mUrl:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Collection;Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;ILandroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "metrics"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;
    .param p4, "finishedReason"    # I
    .param p5, "responseInfo"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p6, "exception"    # Landroid/net/connectivity/org/chromium/net/CronetException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;",
            "I",
            "Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;",
            "Landroid/net/connectivity/org/chromium/net/CronetException;",
            ")V"
        }
    .end annotation

    .line 40
    .local p2, "annotations":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mUrl:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mAnnotations:Ljava/util/Collection;

    .line 43
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mMetrics:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;

    .line 44
    iput p4, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mFinishedReason:I

    .line 45
    iput-object p5, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 46
    iput-object p6, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getAnnotations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mAnnotations:Ljava/util/Collection;

    if-nez v0, :cond_9

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mAnnotations:Ljava/util/Collection;

    return-object v0
.end method

.method public blacklist getException()Landroid/net/connectivity/org/chromium/net/CronetException;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mException:Landroid/net/connectivity/org/chromium/net/CronetException;

    return-object v0
.end method

.method public blacklist getFinishedReason()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mFinishedReason:I

    return v0
.end method

.method public blacklist getMetrics()Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mMetrics:Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;

    return-object v0
.end method

.method public blacklist getResponseInfo()Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mResponseInfo:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/RequestFinishedInfoImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
