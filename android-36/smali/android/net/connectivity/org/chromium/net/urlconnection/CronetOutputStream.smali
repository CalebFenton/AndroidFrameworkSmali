.class abstract Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;
.super Ljava/io/OutputStream;
.source "CronetOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mClosed:Z

.field private blacklist mException:Ljava/io/IOException;

.field private blacklist mRequestCompleted:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkNoException()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mException:Ljava/io/IOException;

    if-nez v0, :cond_5

    .line 80
    return-void

    .line 78
    :cond_5
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mException:Ljava/io/IOException;

    throw v0
.end method

.method protected blacklist checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mRequestCompleted:Z

    if-nez v0, :cond_11

    .line 67
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mClosed:Z

    if-nez v0, :cond_9

    .line 70
    return-void

    .line 68
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->checkNoException()V

    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Writing after request completed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist checkReceivedEnoughContent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mClosed:Z

    .line 24
    return-void
.end method

.method abstract blacklist connectRequested()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist getUploadDataProvider()Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.end method

.method protected blacklist isClosed()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mClosed:Z

    return v0
.end method

.method blacklist setRequestCompleted(Ljava/io/IOException;)V
    .registers 3
    .param p1, "exception"    # Ljava/io/IOException;

    .line 53
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mException:Ljava/io/IOException;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->mRequestCompleted:Z

    .line 55
    return-void
.end method
