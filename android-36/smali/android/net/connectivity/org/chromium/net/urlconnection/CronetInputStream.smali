.class Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;
.super Ljava/io/InputStream;
.source "CronetInputStream.java"


# static fields
.field private static final blacklist READ_BUFFER_SIZE:I = 0x8000


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mException:Ljava/io/IOException;

.field private final blacklist mHttpURLConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

.field private blacklist mResponseDataCompleted:Z


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)V
    .registers 2
    .param p1, "httpURLConnection"    # Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mHttpURLConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    .line 31
    return-void
.end method

.method private blacklist getMoreDataIfNeeded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mResponseDataCompleted:Z

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    if-nez v0, :cond_9

    .line 92
    return-void

    .line 90
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    throw v0

    .line 94
    :cond_c
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 96
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1f

    .line 97
    const v0, 0x8000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 99
    :cond_1f
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mHttpURLConnection:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->getMoreData(Ljava/nio/ByteBuffer;)V

    .line 103
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    if-nez v0, :cond_39

    .line 106
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3c

    .line 107
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_3c

    .line 104
    :cond_39
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    throw v0

    .line 110
    :cond_3c
    :goto_3c
    return-void
.end method

.method private blacklist hasUnreadData()Z
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mResponseDataCompleted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 62
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    if-nez v0, :cond_a

    .line 65
    return v1

    .line 63
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    throw v0

    .line 67
    :cond_d
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 68
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 70
    :cond_1a
    return v1
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->getMoreDataIfNeeded()V

    .line 36
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 39
    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    if-ltz p2, :cond_2f

    if-ltz p3, :cond_2f

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2f

    .line 47
    if-nez p3, :cond_d

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_d
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->getMoreDataIfNeeded()V

    .line 51
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->hasUnreadData()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 52
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    .local v0, "bytesRead":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 54
    return v0

    .line 56
    .end local v0    # "bytesRead":I
    :cond_2d
    const/4 v0, -0x1

    return v0

    .line 45
    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method blacklist setResponseDataCompleted(Ljava/io/IOException;)V
    .registers 3
    .param p1, "exception"    # Ljava/io/IOException;

    .line 81
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mException:Ljava/io/IOException;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mResponseDataCompleted:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 85
    return-void
.end method
