.class public Landroid/net/http/HeaderBlockWrapper;
.super Landroid/net/http/HeaderBlock;
.source "HeaderBlockWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    .line 27
    invoke-direct {p0}, Landroid/net/http/HeaderBlock;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/net/http/HeaderBlockWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist getAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Landroid/net/http/HeaderBlockWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;->getAsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/net/http/HeaderBlockWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
