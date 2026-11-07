.class public Landroid/net/http/UploadDataProviderWrapper;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "UploadDataProviderWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/http/UploadDataProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/net/http/UploadDataProvider;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/http/UploadDataProvider;

    .line 27
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/net/http/UploadDataProviderWrapper;->backend:Landroid/net/http/UploadDataProvider;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroid/net/http/UploadDataProviderWrapper;->backend:Landroid/net/http/UploadDataProvider;

    invoke-virtual {v0}, Landroid/net/http/UploadDataProvider;->close()V

    .line 51
    return-void
.end method

.method public blacklist getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Landroid/net/http/UploadDataProviderWrapper;->backend:Landroid/net/http/UploadDataProvider;

    invoke-virtual {v0}, Landroid/net/http/UploadDataProvider;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "sink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/net/http/UploadDataSinkWrapper;

    invoke-direct {v0, p1}, Landroid/net/http/UploadDataSinkWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V

    .line 39
    .local v0, "wrappedSink":Landroid/net/http/UploadDataSinkWrapper;
    iget-object v1, p0, Landroid/net/http/UploadDataProviderWrapper;->backend:Landroid/net/http/UploadDataProvider;

    invoke-virtual {v1, v0, p2}, Landroid/net/http/UploadDataProvider;->read(Landroid/net/http/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 40
    return-void
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 4
    .param p1, "sink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/net/http/UploadDataSinkWrapper;

    invoke-direct {v0, p1}, Landroid/net/http/UploadDataSinkWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V

    .line 45
    .local v0, "wrappedSink":Landroid/net/http/UploadDataSinkWrapper;
    iget-object v1, p0, Landroid/net/http/UploadDataProviderWrapper;->backend:Landroid/net/http/UploadDataProvider;

    invoke-virtual {v1, v0}, Landroid/net/http/UploadDataProvider;->rewind(Landroid/net/http/UploadDataSink;)V

    .line 46
    return-void
.end method
