.class Lsun/security/ssl/AppInputStream;
.super Ljava/io/InputStream;
.source "AppInputStream.java"


# static fields
.field private static final SKIP_ARRAY:[B


# instance fields
.field private c:Lsun/security/ssl/SSLSocketImpl;

.field private final oneByte:[B

.field r:Lsun/security/ssl/InputRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const/16 v0, 0x400

    #@2
    new-array v0, v0, [B

    #@4
    sput-object v0, Lsun/security/ssl/AppInputStream;->SKIP_ARRAY:[B

    #@6
    .line 38
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;)V
    .locals 1
    .param p1, "conn"    # Lsun/security/ssl/SSLSocketImpl;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lsun/security/ssl/AppInputStream;->oneByte:[B

    #@8
    .line 50
    new-instance v0, Lsun/security/ssl/InputRecord;

    #@a
    invoke-direct {v0}, Lsun/security/ssl/InputRecord;-><init>()V

    #@d
    iput-object v0, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@f
    .line 51
    iput-object p1, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@11
    .line 49
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@a
    invoke-virtual {v0}, Lsun/security/ssl/InputRecord;->isAppDataValid()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 60
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 62
    :cond_1
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@14
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@2
    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->close()V

    #@5
    .line 144
    return-void
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 69
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/AppInputStream;->oneByte:[B

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    invoke-virtual {p0, v1, v2, v3}, Lsun/security/ssl/AppInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 70
    .local v0, "n":I
    if-gtz v0, :cond_0

    #@b
    .line 71
    const/4 v1, -0x1

    #@c
    monitor-exit p0

    #@d
    return v1

    #@e
    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/AppInputStream;->oneByte:[B

    #@10
    const/4 v2, 0x0

    #@11
    aget-byte v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    monitor-exit p0

    #@16
    return v1

    #@17
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 5
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
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 84
    if-nez p1, :cond_0

    #@5
    .line 85
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v2

    #@c
    monitor-exit p0

    #@d
    throw v2

    #@e
    .line 86
    :cond_0
    if-ltz p2, :cond_1

    #@10
    if-gez p3, :cond_2

    #@12
    .line 87
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@14
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@17
    throw v2

    #@18
    .line 86
    :cond_2
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    sub-int/2addr v2, p2

    #@1a
    if-gt p3, v2, :cond_1

    #@1c
    .line 88
    if-nez p3, :cond_3

    #@1e
    monitor-exit p0

    #@1f
    .line 89
    return v3

    #@20
    .line 92
    :cond_3
    :try_start_2
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@22
    invoke-virtual {v2}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_4

    #@28
    monitor-exit p0

    #@29
    .line 93
    return v4

    #@2a
    .line 101
    :cond_4
    :try_start_3
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@2c
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_5

    #@32
    .line 102
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@34
    iget-object v3, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@36
    invoke-virtual {v2, v3}, Lsun/security/ssl/SSLSocketImpl;->readDataRecord(Lsun/security/ssl/InputRecord;)V

    #@39
    .line 103
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@3b
    invoke-virtual {v2}, Lsun/security/ssl/SSLSocketImpl;->checkEOF()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_4

    #@41
    monitor-exit p0

    #@42
    .line 104
    return v4

    #@43
    .line 108
    :cond_5
    :try_start_4
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@45
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    #@48
    move-result v2

    #@49
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v1

    #@4d
    .line 109
    .local v1, "howmany":I
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    #@4f
    invoke-virtual {v2, p1, p2, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@52
    move-result v1

    #@53
    monitor-exit p0

    #@54
    .line 110
    return v1

    #@55
    .line 111
    .end local v1    # "howmany":I
    :catch_0
    move-exception v0

    #@56
    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v2, p0, Lsun/security/ssl/AppInputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    #@58
    invoke-virtual {v2, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    monitor-exit p0

    #@5c
    .line 115
    return v4
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 128
    const-wide/16 v2, 0x0

    #@3
    .line 129
    .local v2, "skipped":J
    :goto_0
    const-wide/16 v4, 0x0

    #@5
    cmp-long v4, p1, v4

    #@7
    if-lez v4, :cond_0

    #@9
    .line 130
    :try_start_0
    sget-object v4, Lsun/security/ssl/AppInputStream;->SKIP_ARRAY:[B

    #@b
    array-length v4, v4

    #@c
    int-to-long v4, v4

    #@d
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@10
    move-result-wide v4

    #@11
    long-to-int v0, v4

    #@12
    .line 131
    .local v0, "len":I
    sget-object v4, Lsun/security/ssl/AppInputStream;->SKIP_ARRAY:[B

    #@14
    const/4 v5, 0x0

    #@15
    invoke-virtual {p0, v4, v5, v0}, Lsun/security/ssl/AppInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v1

    #@19
    .line 132
    .local v1, "r":I
    if-gtz v1, :cond_1

    #@1b
    .end local v0    # "len":I
    .end local v1    # "r":I
    :cond_0
    monitor-exit p0

    #@1c
    .line 138
    return-wide v2

    #@1d
    .line 135
    .restart local v0    # "len":I
    .restart local v1    # "r":I
    :cond_1
    int-to-long v4, v1

    #@1e
    sub-long/2addr p1, v4

    #@1f
    .line 136
    int-to-long v4, v1

    #@20
    add-long/2addr v2, v4

    #@21
    goto :goto_0

    #@22
    .end local v0    # "len":I
    .end local v1    # "r":I
    :catchall_0
    move-exception v4

    #@23
    monitor-exit p0

    #@24
    throw v4
.end method
