.class Landroid/net/http/UploadDataSinkWrapper;
.super Landroid/net/http/UploadDataSink;
.source "UploadDataSinkWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/UploadDataSink;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    .line 23
    invoke-direct {p0}, Landroid/net/http/UploadDataSink;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/net/http/UploadDataSinkWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    .line 25
    return-void
.end method


# virtual methods
.method public whitelist onReadError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 34
    iget-object v0, p0, Landroid/net/http/UploadDataSinkWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    .line 35
    return-void
.end method

.method public whitelist onReadSucceeded(Z)V
    .registers 3
    .param p1, "finalChunk"    # Z

    .line 29
    iget-object v0, p0, Landroid/net/http/UploadDataSinkWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 30
    return-void
.end method

.method public whitelist onRewindError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 44
    iget-object v0, p0, Landroid/net/http/UploadDataSinkWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    .line 45
    return-void
.end method

.method public whitelist onRewindSucceeded()V
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/net/http/UploadDataSinkWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindSucceeded()V

    .line 40
    return-void
.end method
