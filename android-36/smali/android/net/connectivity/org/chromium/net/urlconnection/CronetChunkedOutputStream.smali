.class final Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;
.super Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;
.source "CronetChunkedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;
    }
.end annotation


# instance fields
.field private final blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mLastChunk:Z

.field private final blacklist mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

.field private final blacklist mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastChunk(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;ILandroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;)V
    .registers 6
    .param p1, "connection"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;
    .param p2, "chunkLength"    # I
    .param p3, "messageLoop"    # Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 36
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 25
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    if-lez p2, :cond_19

    .line 42
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 43
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 44
    return-void

    .line 40
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkLength should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist ensureBufferHasRemaining()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 138
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->uploadBufferInternal()V

    .line 140
    :cond_b
    return-void
.end method

.method private blacklist uploadBufferInternal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    nop

    .line 148
    const-string v0, "CronetChunkedOutputStream#uploadBufferInternal"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 149
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->checkNotClosed()V

    .line 150
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->loop()V

    .line 152
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->checkNoException()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 153
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 154
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1c
    return-void

    .line 147
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_1d
    move-exception v1

    if-eqz v0, :cond_28

    :try_start_20
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    throw v1
.end method


# virtual methods
.method blacklist checkReceivedEnoughContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-super {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->close()V

    .line 71
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    if-nez v0, :cond_f

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mLastChunk:Z

    .line 75
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    :cond_f
    return-void
.end method

.method blacklist connectRequested()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getUploadDataProvider()Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->ensureBufferHasRemaining()V

    .line 49
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->checkNotClosed()V

    .line 55
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_26

    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    .line 58
    move v0, p3

    .line 59
    .local v0, "toSend":I
    :goto_c
    if-lez v0, :cond_25

    .line 60
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 61
    .local v1, "sent":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 62
    sub-int/2addr v0, v1

    .line 64
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetChunkedOutputStream;->ensureBufferHasRemaining()V

    .line 65
    .end local v1    # "sent":I
    goto :goto_c

    .line 66
    :cond_25
    return-void

    .line 56
    .end local v0    # "toSend":I
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
