.class Lsun/security/ssl/AppOutputStream;
.super Ljava/io/OutputStream;
.source "AppOutputStream.java"


# instance fields
.field private c:Lsun/security/ssl/SSLSocketImpl;

.field private final oneByte:[B

.field r:Lsun/security/ssl/OutputRecord;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;)V
    .locals 2
    .param p1, "conn"    # Lsun/security/ssl/SSLSocketImpl;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lsun/security/ssl/AppOutputStream;->oneByte:[B

    #@8
    .line 52
    new-instance v0, Lsun/security/ssl/OutputRecord;

    #@a
    const/16 v1, 0x17

    #@c
    invoke-direct {v0, v1}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    #@f
    iput-object v0, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@11
    .line 53
    iput-object p1, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@13
    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->close()V

    #@5
    .line 142
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/AppOutputStream;->oneByte:[B

    #@3
    int-to-byte v1, p1

    #@4
    const/4 v2, 0x0

    #@5
    aput-byte v1, v0, v2

    #@7
    .line 136
    iget-object v0, p0, Lsun/security/ssl/AppOutputStream;->oneByte:[B

    #@9
    const/4 v1, 0x0

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {p0, v0, v1, v2}, Lsun/security/ssl/AppOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 134
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 61
    if-nez p1, :cond_0

    #@4
    .line 62
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v4

    #@b
    monitor-exit p0

    #@c
    throw v4

    #@d
    .line 63
    :cond_0
    if-ltz p2, :cond_1

    #@f
    if-gez p3, :cond_2

    #@11
    .line 64
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@16
    throw v4

    #@17
    .line 63
    :cond_2
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    sub-int/2addr v4, p2

    #@19
    if-gt p3, v4, :cond_1

    #@1b
    .line 65
    if-nez p3, :cond_3

    #@1d
    monitor-exit p0

    #@1e
    .line 66
    return-void

    #@1f
    .line 70
    :cond_3
    :try_start_2
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@21
    invoke-virtual {v4}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    .line 87
    const/4 v3, 0x1

    #@25
    .line 94
    .local v3, "isFirstRecordOfThePayload":Z
    :cond_4
    const/4 v1, 0x0

    #@26
    .line 96
    .local v1, "holdRecord":Z
    if-eqz v3, :cond_8

    #@28
    :try_start_3
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@2a
    invoke-virtual {v4}, Lsun/security/ssl/SSLSocketImpl;->needToSplitPayload()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_8

    #@30
    .line 97
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@32
    invoke-virtual {v4}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@35
    move-result v4

    #@36
    const/4 v5, 0x1

    #@37
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    #@3a
    move-result v2

    #@3b
    .line 105
    .local v2, "howmuch":I
    if-eq p3, v6, :cond_5

    #@3d
    if-ne v2, v6, :cond_5

    #@3f
    .line 106
    const/4 v1, 0x1

    #@40
    .line 112
    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    #@42
    if-eqz v2, :cond_6

    #@44
    .line 113
    const/4 v3, 0x0

    #@45
    .line 117
    :cond_6
    if-lez v2, :cond_7

    #@47
    .line 118
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@49
    invoke-virtual {v4, p1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@4c
    .line 119
    add-int/2addr p2, v2

    #@4d
    .line 120
    sub-int/2addr p3, v2

    #@4e
    .line 122
    :cond_7
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@50
    iget-object v5, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@52
    invoke-virtual {v4, v5, v1}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;Z)V

    #@55
    .line 123
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@57
    invoke-virtual {v4}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    .line 124
    if-gtz p3, :cond_4

    #@5c
    .end local v2    # "howmuch":I
    :goto_1
    monitor-exit p0

    #@5d
    .line 60
    return-void

    #@5e
    .line 109
    :cond_8
    :try_start_4
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    #@60
    invoke-virtual {v4}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    #@63
    move-result v4

    #@64
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@67
    move-result v2

    #@68
    .restart local v2    # "howmuch":I
    goto :goto_0

    #@69
    .line 125
    .end local v2    # "howmuch":I
    :catch_0
    move-exception v0

    #@6a
    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@6c
    invoke-virtual {v4, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6f
    goto :goto_1
.end method
