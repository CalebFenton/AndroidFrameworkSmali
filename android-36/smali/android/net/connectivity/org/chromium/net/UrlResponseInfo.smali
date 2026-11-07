.class public abstract Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
.super Ljava/lang/Object;
.source "UrlResponseInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getAllHeaders()Ljava/util/Map;
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
.end method

.method public abstract blacklist getAllHeadersAsList()Ljava/util/List;
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
.end method

.method public abstract blacklist getHttpStatusCode()I
.end method

.method public abstract blacklist getHttpStatusText()Ljava/lang/String;
.end method

.method public abstract blacklist getNegotiatedProtocol()Ljava/lang/String;
.end method

.method public abstract blacklist getProxyServer()Ljava/lang/String;
.end method

.method public abstract blacklist getReceivedByteCount()J
.end method

.method public abstract blacklist getUrl()Ljava/lang/String;
.end method

.method public abstract blacklist getUrlChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist wasCached()Z
.end method
