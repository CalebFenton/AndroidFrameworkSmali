.class public abstract Ljava/io/InputStream;
.super Ljava/lang/Object;
.source "InputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_SKIP_BUFFER_SIZE:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
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
    .line 259
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 299
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 363
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 6
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
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 162
    if-nez p1, :cond_0

    #@4
    .line 163
    new-instance v3, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v3

    #@a
    .line 164
    :cond_0
    if-ltz p2, :cond_1

    #@c
    if-gez p3, :cond_2

    #@e
    .line 165
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v3

    #@14
    .line 164
    :cond_2
    array-length v3, p1

    #@15
    sub-int/2addr v3, p2

    #@16
    if-gt p3, v3, :cond_1

    #@18
    .line 166
    if-nez p3, :cond_3

    #@1a
    .line 167
    return v4

    #@1b
    .line 170
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@1e
    move-result v0

    #@1f
    .line 171
    .local v0, "c":I
    if-ne v0, v5, :cond_4

    #@21
    .line 172
    return v5

    #@22
    .line 174
    :cond_4
    int-to-byte v3, v0

    #@23
    aput-byte v3, p1, p2

    #@25
    .line 176
    const/4 v2, 0x1

    #@26
    .line 178
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    #@28
    .line 179
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@2b
    move-result v0

    #@2c
    .line 180
    if-ne v0, v5, :cond_6

    #@2e
    .line 187
    :cond_5
    :goto_1
    return v2

    #@2f
    .line 183
    :cond_6
    add-int v3, p2, v2

    #@31
    int-to-byte v4, v0

    #@32
    aput-byte v4, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 178
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 185
    :catch_0
    move-exception v1

    #@38
    .local v1, "ee":Ljava/io/IOException;
    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 347
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    #@3
    const-string/jumbo v1, "mark/reset not supported"

    #@6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 212
    move-wide v2, p1

    #@4
    .line 215
    .local v2, "remaining":J
    cmp-long v5, p1, v8

    #@6
    if-gtz v5, :cond_0

    #@8
    .line 216
    return-wide v8

    #@9
    .line 219
    :cond_0
    const-wide/16 v6, 0x800

    #@b
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    #@e
    move-result-wide v6

    #@f
    long-to-int v1, v6

    #@10
    .line 220
    .local v1, "size":I
    new-array v4, v1, [B

    #@12
    .line 221
    .local v4, "skipBuffer":[B
    :goto_0
    cmp-long v5, v2, v8

    #@14
    if-lez v5, :cond_1

    #@16
    .line 222
    int-to-long v6, v1

    #@17
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@1a
    move-result-wide v6

    #@1b
    long-to-int v5, v6

    #@1c
    invoke-virtual {p0, v4, v10, v5}, Ljava/io/InputStream;->read([BII)I

    #@1f
    move-result v0

    #@20
    .line 223
    .local v0, "nr":I
    if-gez v0, :cond_2

    #@22
    .line 229
    .end local v0    # "nr":I
    :cond_1
    sub-long v6, p1, v2

    #@24
    return-wide v6

    #@25
    .line 226
    .restart local v0    # "nr":I
    :cond_2
    int-to-long v6, v0

    #@26
    sub-long/2addr v2, v6

    #@27
    goto :goto_0
.end method
