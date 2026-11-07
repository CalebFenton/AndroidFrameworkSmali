.class public interface abstract Landroid/net/http/BidirectionalStream$Callback;
.super Ljava/lang/Object;
.source "BidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/BidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract whitelist onCanceled(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V
.end method

.method public abstract whitelist onFailed(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HttpException;)V
.end method

.method public abstract whitelist onReadCompleted(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract whitelist onResponseHeadersReceived(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V
.end method

.method public abstract whitelist onResponseTrailersReceived(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HeaderBlock;)V
.end method

.method public abstract whitelist onStreamReady(Landroid/net/http/BidirectionalStream;)V
.end method

.method public abstract whitelist onSucceeded(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V
.end method

.method public abstract whitelist onWriteCompleted(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
.end method
