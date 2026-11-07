.class public abstract Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
.super Ljava/lang/Object;
.source "BidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCanceled(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 3
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 279
    return-void
.end method

.method public abstract blacklist onFailed(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
.end method

.method public abstract blacklist onReadCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract blacklist onResponseHeadersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
.end method

.method public blacklist onResponseTrailersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V
    .registers 4
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "trailers"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    .line 246
    return-void
.end method

.method public abstract blacklist onStreamReady(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V
.end method

.method public abstract blacklist onSucceeded(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
.end method

.method public abstract blacklist onWriteCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
.end method
