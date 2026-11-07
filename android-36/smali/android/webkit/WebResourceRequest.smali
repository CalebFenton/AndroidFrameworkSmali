.class public interface abstract Landroid/webkit/WebResourceRequest;
.super Ljava/lang/Object;
.source "WebResourceRequest.java"


# virtual methods
.method public abstract whitelist getMethod()Ljava/lang/String;
.end method

.method public abstract whitelist getRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getUrl()Landroid/net/Uri;
.end method

.method public abstract whitelist hasGesture()Z
.end method

.method public abstract whitelist isForMainFrame()Z
.end method

.method public abstract whitelist isRedirect()Z
.end method
