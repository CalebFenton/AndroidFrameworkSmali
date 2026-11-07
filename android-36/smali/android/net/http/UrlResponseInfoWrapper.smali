.class public Landroid/net/http/UrlResponseInfoWrapper;
.super Landroid/net/http/UrlResponseInfo;
.source "UrlResponseInfoWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;
    }
.end annotation


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 29
    invoke-direct {p0}, Landroid/net/http/UrlResponseInfo;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist getHeaders()Landroid/net/http/HeaderBlock;
    .registers 3

    .line 55
    new-instance v0, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;

    iget-object v1, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/http/UrlResponseInfoWrapper$HeaderBlockImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public whitelist getHttpStatusCode()I
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public whitelist getHttpStatusText()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNegotiatedProtocol()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReceivedByteCount()J
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getReceivedByteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUrlChain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist wasCached()Z
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/net/http/UrlResponseInfoWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;->wasCached()Z

    move-result v0

    return v0
.end method
