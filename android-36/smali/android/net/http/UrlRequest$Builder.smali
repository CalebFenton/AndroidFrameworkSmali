.class public abstract Landroid/net/http/UrlRequest$Builder;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/UrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist bindToNetwork(Landroid/net/Network;)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist build()Landroid/net/http/UrlRequest;
.end method

.method public abstract whitelist setCacheDisabled(Z)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist setDirectExecutorAllowed(Z)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist setHttpMethod(Ljava/lang/String;)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist setPriority(I)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist setTrafficStatsTag(I)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist setTrafficStatsUid(I)Landroid/net/http/UrlRequest$Builder;
.end method

.method public abstract whitelist setUploadDataProvider(Landroid/net/http/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/http/UrlRequest$Builder;
.end method
