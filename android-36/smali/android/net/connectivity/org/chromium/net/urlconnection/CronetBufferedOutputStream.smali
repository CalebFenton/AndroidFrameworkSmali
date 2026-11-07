.class final Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;
.super Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;
.source "CronetBufferedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INITIAL_BUFFER_SIZE:I = 0x4000


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mConnectRequested:Z

.field private blacklist mConnected:Z

.field private final blacklist mConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

.field private final blacklist mInitialContentLength:I

.field private final blacklist mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBuffer(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Ljava/nio/ByteBuffer;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnected(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialContentLength(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;)I
    .registers 1

    iget p0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 21
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)V
    .registers 4
    .param p1, "connection"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 63
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 29
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    .line 67
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 68
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;J)V
    .registers 6
    .param p1, "connection"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;
    .param p2, "contentLength"    # J

    .line 42
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;-><init>()V

    .line 29
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream$UploadDataProviderImpl;-><init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 43
    const-string v0, "Argument connection cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_33

    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2b

    .line 53
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 54
    long-to-int v0, p2

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    .line 55
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 56
    return-void

    .line 51
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content length < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2GB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist ensureCanWrite(I)V
    .registers 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-gt v0, v2, :cond_11

    goto :goto_32

    .line 88
    :cond_11
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_32
    :goto_32
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-eq v0, v1, :cond_37

    .line 93
    return-void

    .line 95
    :cond_37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, p1, :cond_47

    .line 97
    return-void

    .line 99
    :cond_47
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 100
    .local v0, "afterSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 101
    .local v1, "newByteBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 102
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 103
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 104
    return-void
.end method


# virtual methods
.method blacklist checkReceivedEnoughContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->close()V

    .line 134
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnectRequested:Z

    if-eqz v0, :cond_f

    .line 135
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->connect()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnectRequested:Z

    .line 138
    :cond_f
    return-void
.end method

.method blacklist connectRequested()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    nop

    .line 112
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 116
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnectRequested:Z

    .line 117
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_c
    iput-boolean v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mConnected:Z

    .line 121
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v2, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mInitialContentLength:I

    if-lt v0, v2, :cond_1e

    .line 125
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 126
    return v1

    .line 122
    :cond_1e
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Content received is less than Content-Length"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getUploadDataProvider()Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mUploadDataProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

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

    .line 72
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->checkNotClosed()V

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->ensureCanWrite(I)V

    .line 74
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->checkNotClosed()V

    .line 80
    invoke-direct {p0, p3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->ensureCanWrite(I)V

    .line 81
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetBufferedOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 82
    return-void
.end method
