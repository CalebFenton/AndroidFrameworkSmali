.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlRequestCallback"
.end annotation


# instance fields
.field private final blacklist mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    .line 37
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist onCanceled(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 4
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 70
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;->onCanceled(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 71
    return-void
.end method

.method public blacklist onFailed(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 5
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "error"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 65
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;->onFailed(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V

    .line 66
    return-void
.end method

.method public blacklist onReadCompleted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;->onReadCompleted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    .line 56
    return-void
.end method

.method public blacklist onRedirectReceived(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "newLocationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;->onRedirectReceived(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public blacklist onResponseStarted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 4
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;->onResponseStarted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 50
    return-void
.end method

.method public blacklist onSucceeded(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 4
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 60
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestCallback;->mWrappedCallback:Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;->onSucceeded(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 61
    return-void
.end method
