.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;
.super Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BidirectionalStreamCallback"
.end annotation


# instance fields
.field private final blacklist mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    .line 92
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist onCanceled(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 4
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 145
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onCanceled(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 146
    return-void
.end method

.method public blacklist onFailed(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 5
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "error"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 140
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onFailed(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 141
    return-void
.end method

.method public blacklist onReadCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .registers 6
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "endOfStream"    # Z

    .line 112
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onReadCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 113
    return-void
.end method

.method public blacklist onResponseHeadersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 4
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 103
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onResponseHeadersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 104
    return-void
.end method

.method public blacklist onResponseTrailersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V
    .registers 5
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "trailers"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    .line 129
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onResponseTrailersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V

    .line 130
    return-void
.end method

.method public blacklist onStreamReady(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V
    .registers 3
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    .line 98
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onStreamReady(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V

    .line 99
    return-void
.end method

.method public blacklist onSucceeded(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 4
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 134
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onSucceeded(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 135
    return-void
.end method

.method public blacklist onWriteCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .registers 6
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .param p4, "endOfStream"    # Z

    .line 121
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;->onWriteCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 122
    return-void
.end method
