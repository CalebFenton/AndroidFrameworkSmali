.class public abstract Landroid/net/http/UrlResponseInfo;
.super Ljava/lang/Object;
.source "UrlResponseInfo.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getHeaders()Landroid/net/http/HeaderBlock;
.end method

.method public abstract whitelist getHttpStatusCode()I
.end method

.method public abstract whitelist getHttpStatusText()Ljava/lang/String;
.end method

.method public abstract whitelist getNegotiatedProtocol()Ljava/lang/String;
.end method

.method public abstract whitelist getReceivedByteCount()J
.end method

.method public abstract whitelist getUrl()Ljava/lang/String;
.end method

.method public abstract whitelist getUrlChain()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist wasCached()Z
.end method
