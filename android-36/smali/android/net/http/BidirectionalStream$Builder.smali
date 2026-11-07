.class public abstract Landroid/net/http/BidirectionalStream$Builder;
.super Ljava/lang/Object;
.source "BidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/BidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/BidirectionalStream$Builder;
.end method

.method public abstract whitelist build()Landroid/net/http/BidirectionalStream;
.end method

.method public abstract whitelist setDelayRequestHeadersUntilFirstFlushEnabled(Z)Landroid/net/http/BidirectionalStream$Builder;
.end method

.method public abstract whitelist setHttpMethod(Ljava/lang/String;)Landroid/net/http/BidirectionalStream$Builder;
.end method

.method public abstract whitelist setPriority(I)Landroid/net/http/BidirectionalStream$Builder;
.end method

.method public abstract whitelist setTrafficStatsTag(I)Landroid/net/http/BidirectionalStream$Builder;
.end method

.method public abstract whitelist setTrafficStatsUid(I)Landroid/net/http/BidirectionalStream$Builder;
.end method
