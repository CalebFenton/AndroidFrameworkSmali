.class final Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;
.super Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;
.source "CronetFixedModeOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;
    }
.end annotation


# static fields
.field private static blacklist sDefaultBufferLength:I


# instance fields
.field private final blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mBytesWritten:J

.field private final blacklist mContentLength:J

.field private final blacklist mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

.field private final blacklist mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentLength(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const/16 v0, 0x4000

    sput v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->sDefaultBufferLength:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;JLandroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;)V
    .registers 11
    .param p1, "connection"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;
    .param p2, "contentLength"    # J
    .param p4, "messageLoop"    # Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 58
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 48
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2b

    .line 65
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    .line 66
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    sget v4, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->sDefaultBufferLength:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 67
    .local v2, "bufferSize":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 68
    iput-object p4, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    .line 69
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    .line 70
    return-void

    .line 62
    .end local v2    # "bufferSize":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length must be larger than 0 for non-chunked upload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotExceedContentLength(I)V
    .registers 8
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 149
    return-void

    .line 143
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist ensureBufferHasRemaining()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 106
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->uploadBufferInternal()V

    .line 108
    :cond_b
    return-void
.end method

.method static blacklist setDefaultBufferLengthForTesting(I)V
    .registers 1
    .param p0, "length"    # I

    .line 207
    sput p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->sDefaultBufferLength:I

    .line 208
    return-void
.end method

.method private blacklist uploadBufferInternal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    nop

    .line 129
    const-string v0, "CronetFixedModeOutputStream#uploadBufferInternal"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 130
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->checkNotClosed()V

    .line 131
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 132
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mMessageLoop:Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->loop()V

    .line 133
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->checkNoException()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 134
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 135
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1c
    return-void

    .line 128
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

.method private blacklist uploadIfComplete()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 119
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->uploadBufferInternal()V

    .line 121
    :cond_b
    return-void
.end method


# virtual methods
.method blacklist checkReceivedEnoughContent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mContentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 163
    return-void

    .line 161
    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Content received is less than Content-Length."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist connectRequested()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getUploadDataProvider()Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->checkNotClosed()V

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->checkNotExceedContentLength(I)V

    .line 76
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->ensureBufferHasRemaining()V

    .line 77
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    .line 79
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->uploadIfComplete()V

    .line 80
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->checkNotClosed()V

    .line 85
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_32

    if-ltz p2, :cond_32

    if-ltz p3, :cond_32

    .line 88
    invoke-direct {p0, p3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->checkNotExceedContentLength(I)V

    .line 89
    move v0, p3

    .line 90
    .local v0, "toSend":I
    :goto_f
    if-lez v0, :cond_28

    .line 91
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->ensureBufferHasRemaining()V

    .line 92
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 93
    .local v1, "sent":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 94
    sub-int/2addr v0, v1

    .line 95
    .end local v1    # "sent":I
    goto :goto_f

    .line 96
    :cond_28
    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->mBytesWritten:J

    .line 97
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetFixedModeOutputStream;->uploadIfComplete()V

    .line 98
    return-void

    .line 86
    .end local v0    # "toSend":I
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
