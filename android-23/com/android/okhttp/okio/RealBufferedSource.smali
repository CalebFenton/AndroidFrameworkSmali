.class final Lcom/android/okhttp/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;


# instance fields
.field public final buffer:Lcom/android/okhttp/okio/Buffer;

.field private closed:Z

.field public final source:Lcom/android/okhttp/okio/Source;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .locals 1
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    .line 37
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;-><init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V

    #@8
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/okio/Buffer;)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "source == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 32
    :cond_0
    iput-object p2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@10
    .line 33
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@12
    .line 30
    return-void
.end method


# virtual methods
.method public buffer()Lcom/android/okhttp/okio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2
    return-object v0
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
    .line 372
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 373
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@8
    .line 374
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@a
    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    #@d
    .line 375
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->clear()V

    #@12
    .line 371
    return-void
.end method

.method public exhausted()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 59
    iget-boolean v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "closed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@10
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@18
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1a
    const-wide/16 v4, 0x800

    #@1c
    invoke-interface {v1, v2, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@1f
    move-result-wide v2

    #@20
    const-wide/16 v4, -0x1

    #@22
    cmp-long v1, v2, v4

    #@24
    if-nez v1, :cond_1

    #@26
    const/4 v0, 0x1

    #@27
    :cond_1
    return v0
.end method

.method public indexOf(B)J
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(BJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 8
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x800

    #@2
    const-wide/16 v4, -0x1

    #@4
    .line 304
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v3, "closed"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@13
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@15
    cmp-long v2, p2, v2

    #@17
    if-ltz v2, :cond_1

    #@19
    .line 306
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@1b
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1d
    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@20
    move-result-wide v2

    #@21
    cmp-long v2, v2, v4

    #@23
    if-nez v2, :cond_0

    #@25
    return-wide v4

    #@26
    .line 309
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@28
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    #@2b
    move-result-wide v0

    #@2c
    .local v0, "index":J
    cmp-long v2, v0, v4

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 310
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@32
    iget-wide p2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@34
    .line 311
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@36
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@38
    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@3b
    move-result-wide v2

    #@3c
    cmp-long v2, v2, v4

    #@3e
    if-nez v2, :cond_1

    #@40
    return-wide v4

    #@41
    .line 313
    :cond_2
    return-wide v0
.end method

.method public indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .locals 8
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x800

    #@2
    const-wide/16 v4, -0x1

    #@4
    .line 321
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v3, "closed"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 322
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@13
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@15
    cmp-long v2, p2, v2

    #@17
    if-ltz v2, :cond_1

    #@19
    .line 323
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@1b
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1d
    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@20
    move-result-wide v2

    #@21
    cmp-long v2, v2, v4

    #@23
    if-nez v2, :cond_0

    #@25
    return-wide v4

    #@26
    .line 326
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@28
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    #@2b
    move-result-wide v0

    #@2c
    .local v0, "index":J
    cmp-long v2, v0, v4

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 327
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@32
    iget-wide p2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@34
    .line 328
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@36
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@38
    invoke-interface {v2, v3, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@3b
    move-result-wide v2

    #@3c
    cmp-long v2, v2, v4

    #@3e
    if-nez v2, :cond_1

    #@40
    return-wide v4

    #@41
    .line 330
    :cond_2
    return-wide v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 334
    new-instance v0, Lcom/android/okhttp/okio/RealBufferedSource$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/RealBufferedSource$1;-><init>(Lcom/android/okhttp/okio/RealBufferedSource;)V

    #@5
    return-object v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    array-length v0, p1

    #@1
    int-to-long v0, v0

    #@2
    int-to-long v2, p2

    #@3
    int-to-long v4, p3

    #@4
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@7
    .line 124
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@9
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-nez v0, :cond_0

    #@11
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@13
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@15
    const-wide/16 v2, 0x800

    #@17
    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@1a
    move-result-wide v6

    #@1b
    .line 126
    .local v6, "read":J
    const-wide/16 v0, -0x1

    #@1d
    cmp-long v0, v6, v0

    #@1f
    if-nez v0, :cond_0

    #@21
    const/4 v0, -0x1

    #@22
    return v0

    #@23
    .line 129
    .end local v6    # "read":J
    :cond_0
    int-to-long v0, p3

    #@24
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@26
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@28
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@2b
    move-result-wide v0

    #@2c
    long-to-int v8, v0

    #@2d
    .line 130
    .local v8, "toRead":I
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2f
    invoke-virtual {v0, p1, p2, v8}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const-wide/16 v8, -0x1

    #@4
    .line 45
    if-nez p1, :cond_0

    #@6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "sink == null"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 46
    :cond_0
    cmp-long v4, p2, v6

    #@11
    if-gez v4, :cond_1

    #@13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "byteCount < 0: "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 47
    :cond_1
    iget-boolean v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@2f
    if-eqz v4, :cond_2

    #@31
    new-instance v4, Ljava/lang/IllegalStateException;

    #@33
    const-string/jumbo v5, "closed"

    #@36
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v4

    #@3a
    .line 49
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@3c
    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3e
    cmp-long v4, v4, v6

    #@40
    if-nez v4, :cond_3

    #@42
    .line 50
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@44
    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@46
    const-wide/16 v6, 0x800

    #@48
    invoke-interface {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@4b
    move-result-wide v0

    #@4c
    .line 51
    .local v0, "read":J
    cmp-long v4, v0, v8

    #@4e
    if-nez v4, :cond_3

    #@50
    return-wide v8

    #@51
    .line 54
    .end local v0    # "read":J
    :cond_3
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@53
    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    #@55
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@58
    move-result-wide v2

    #@59
    .line 55
    .local v2, "toRead":J
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@5b
    invoke-virtual {v4, p1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@5e
    move-result-wide v4

    #@5f
    return-wide v4
.end method

.method public readAll(Lcom/android/okhttp/okio/Sink;)J
    .locals 10
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 145
    if-nez p1, :cond_0

    #@4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "sink == null"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 147
    :cond_0
    const-wide/16 v2, 0x0

    #@f
    .line 148
    .local v2, "totalBytesWritten":J
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@11
    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@13
    const-wide/16 v6, 0x800

    #@15
    invoke-interface {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@18
    move-result-wide v4

    #@19
    const-wide/16 v6, -0x1

    #@1b
    cmp-long v4, v4, v6

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 149
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@21
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->completeSegmentByteCount()J

    #@24
    move-result-wide v0

    #@25
    .line 150
    .local v0, "emitByteCount":J
    cmp-long v4, v0, v8

    #@27
    if-lez v4, :cond_1

    #@29
    .line 151
    add-long/2addr v2, v0

    #@2a
    .line 152
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2c
    invoke-interface {p1, v4, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@2f
    goto :goto_0

    #@30
    .line 155
    .end local v0    # "emitByteCount":J
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@32
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@35
    move-result-wide v4

    #@36
    cmp-long v4, v4, v8

    #@38
    if-lez v4, :cond_3

    #@3a
    .line 156
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@3c
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@3f
    move-result-wide v4

    #@40
    add-long/2addr v2, v4

    #@41
    .line 157
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@43
    iget-object v5, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@45
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@48
    move-result-wide v6

    #@49
    invoke-interface {p1, v4, v6, v7}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@4c
    .line 159
    :cond_3
    return-wide v2
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@7
    .line 93
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@3
    .line 98
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public readByteString()Lcom/android/okhttp/okio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@7
    .line 83
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@3
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public readDecimalLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 252
    const-wide/16 v2, 0x1

    #@3
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@6
    .line 254
    const/4 v1, 0x0

    #@7
    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@9
    int-to-long v2, v2

    #@a
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_3

    #@10
    .line 255
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@12
    int-to-long v4, v1

    #@13
    invoke-virtual {v2, v4, v5}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@16
    move-result v0

    #@17
    .line 256
    .local v0, "b":B
    const/16 v2, 0x30

    #@19
    if-lt v0, v2, :cond_0

    #@1b
    const/16 v2, 0x39

    #@1d
    if-le v0, v2, :cond_2

    #@1f
    :cond_0
    if-nez v1, :cond_1

    #@21
    const/16 v2, 0x2d

    #@23
    if-eq v0, v2, :cond_2

    #@25
    .line 258
    :cond_1
    if-nez v1, :cond_3

    #@27
    .line 259
    new-instance v2, Ljava/lang/NumberFormatException;

    #@29
    .line 260
    const-string/jumbo v3, "Expected leading [0-9] or \'-\' character but was %#x"

    #@2c
    .line 259
    const/4 v4, 0x1

    #@2d
    new-array v4, v4, [Ljava/lang/Object;

    #@2f
    .line 260
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@32
    move-result-object v5

    #@33
    aput-object v5, v4, v6

    #@35
    .line 259
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 254
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 266
    .end local v0    # "b":B
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@42
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readDecimalLong()J

    #@45
    move-result-wide v2

    #@46
    return-wide v2
.end method

.method public readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 141
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readFully(Lcom/android/okhttp/okio/Buffer;J)V

    #@8
    .line 133
    return-void

    #@9
    .line 136
    :catch_0
    move-exception v0

    #@a
    .line 138
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@c
    invoke-virtual {p1, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@f
    .line 139
    throw v0
.end method

.method public readFully([B)V
    .locals 8
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    :try_start_0
    array-length v3, p1

    #@1
    int-to-long v4, v3

    #@2
    invoke-virtual {p0, v4, v5}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 118
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    #@a
    .line 105
    return-void

    #@b
    .line 108
    :catch_0
    move-exception v0

    #@c
    .line 110
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    #@d
    .line 111
    .local v1, "offset":I
    :goto_0
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@f
    iget-wide v4, v3, Lcom/android/okhttp/okio/Buffer;->size:J

    #@11
    const-wide/16 v6, 0x0

    #@13
    cmp-long v3, v4, v6

    #@15
    if-lez v3, :cond_1

    #@17
    .line 112
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@19
    iget-object v4, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1b
    iget-wide v4, v4, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1d
    long-to-int v4, v4

    #@1e
    invoke-virtual {v3, p1, v1, v4}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    #@21
    move-result v2

    #@22
    .line 113
    .local v2, "read":I
    const/4 v3, -0x1

    #@23
    if-ne v2, v3, :cond_0

    #@25
    new-instance v3, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2a
    throw v3

    #@2b
    .line 114
    :cond_0
    add-int/2addr v1, v2

    #@2c
    goto :goto_0

    #@2d
    .line 116
    .end local v2    # "read":I
    :cond_1
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 270
    const-wide/16 v2, 0x1

    #@3
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@6
    .line 272
    const/4 v1, 0x0

    #@7
    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    #@9
    int-to-long v2, v2

    #@a
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_4

    #@10
    .line 273
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@12
    int-to-long v4, v1

    #@13
    invoke-virtual {v2, v4, v5}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@16
    move-result v0

    #@17
    .line 274
    .local v0, "b":B
    const/16 v2, 0x30

    #@19
    if-lt v0, v2, :cond_0

    #@1b
    const/16 v2, 0x39

    #@1d
    if-le v0, v2, :cond_3

    #@1f
    :cond_0
    const/16 v2, 0x61

    #@21
    if-lt v0, v2, :cond_1

    #@23
    const/16 v2, 0x66

    #@25
    if-le v0, v2, :cond_3

    #@27
    :cond_1
    const/16 v2, 0x41

    #@29
    if-lt v0, v2, :cond_2

    #@2b
    const/16 v2, 0x46

    #@2d
    if-le v0, v2, :cond_3

    #@2f
    .line 276
    :cond_2
    if-nez v1, :cond_4

    #@31
    .line 277
    new-instance v2, Ljava/lang/NumberFormatException;

    #@33
    .line 278
    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    #@36
    .line 277
    const/4 v4, 0x1

    #@37
    new-array v4, v4, [Ljava/lang/Object;

    #@39
    .line 278
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3c
    move-result-object v5

    #@3d
    aput-object v5, v4, v6

    #@3f
    .line 277
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2

    #@47
    .line 272
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 284
    .end local v0    # "b":B
    :cond_4
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@4c
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readHexadecimalUnsignedLong()J

    #@4f
    move-result-wide v2

    #@50
    return-wide v2
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    const-wide/16 v0, 0x4

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 233
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    const-wide/16 v0, 0x4

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 238
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readIntLe()I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    const-wide/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 243
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    const-wide/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 248
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readLongLe()J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    const-wide/16 v0, 0x2

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 223
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    const-wide/16 v0, 0x2

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 228
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@3
    .line 181
    if-nez p3, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "charset == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@10
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "charset == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@d
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@f
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@12
    .line 176
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@7
    .line 164
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@9
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@3
    .line 169
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    const-wide/16 v2, 0x1

    #@2
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@5
    .line 209
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@7
    const-wide/16 v2, 0x0

    #@9
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@c
    move-result v0

    #@d
    .line 210
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    #@f
    const/16 v2, 0xc0

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 211
    const-wide/16 v2, 0x2

    #@15
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@18
    .line 218
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1a
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8CodePoint()I

    #@1d
    move-result v1

    #@1e
    return v1

    #@1f
    .line 212
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    #@21
    const/16 v2, 0xe0

    #@23
    if-ne v1, v2, :cond_2

    #@25
    .line 213
    const-wide/16 v2, 0x3

    #@27
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@2a
    goto :goto_0

    #@2b
    .line 214
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    #@2d
    const/16 v2, 0xf0

    #@2f
    if-ne v1, v2, :cond_0

    #@31
    .line 215
    const-wide/16 v2, 0x4

    #@33
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->require(J)V

    #@36
    goto :goto_0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    const/16 v2, 0xa

    #@2
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    #@5
    move-result-wide v0

    #@6
    .line 188
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    #@8
    cmp-long v2, v0, v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 189
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@e
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v2, v2, v4

    #@14
    if-eqz v2, :cond_0

    #@16
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@18
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1a
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    :goto_0
    return-object v2

    #@1f
    :cond_0
    const/4 v2, 0x0

    #@20
    goto :goto_0

    #@21
    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@23
    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    const/16 v0, 0xa

    #@2
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/RealBufferedSource;->indexOf(B)J

    #@5
    move-result-wide v6

    #@6
    .line 197
    .local v6, "newline":J
    const-wide/16 v2, -0x1

    #@8
    cmp-long v0, v6, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 198
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@e
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@11
    .line 199
    .local v1, "data":Lcom/android/okhttp/okio/Buffer;
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@13
    const-wide/16 v2, 0x0

    #@15
    const-wide/16 v4, 0x20

    #@17
    iget-object v8, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@19
    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@1c
    move-result-wide v8

    #@1d
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@20
    move-result-wide v4

    #@21
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    #@24
    .line 200
    new-instance v0, Ljava/io/EOFException;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "\\n not found: size="

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@34
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@37
    move-result-wide v4

    #@38
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 201
    const-string/jumbo v3, " content="

    #@3f
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 201
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 201
    const-string/jumbo v3, "..."

    #@52
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 203
    .end local v1    # "data":Lcom/android/okhttp/okio/Buffer;
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@60
    invoke-virtual {v0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    return-object v0
.end method

.method public request(J)Z
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "byteCount < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    const-string/jumbo v1, "closed"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2f
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@31
    cmp-long v0, v0, p1

    #@33
    if-gez v0, :cond_2

    #@35
    .line 71
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@37
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@39
    const-wide/16 v2, 0x800

    #@3b
    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@3e
    move-result-wide v0

    #@3f
    const-wide/16 v2, -0x1

    #@41
    cmp-long v0, v0, v2

    #@43
    if-nez v0, :cond_1

    #@45
    const/4 v0, 0x0

    #@46
    return v0

    #@47
    .line 73
    :cond_2
    const/4 v0, 0x1

    #@48
    return v0
.end method

.method public require(J)V
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/RealBufferedSource;->request(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    new-instance v0, Ljava/io/EOFException;

    #@8
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v0

    #@c
    .line 63
    :cond_0
    return-void
.end method

.method public skip(J)V
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 288
    iget-boolean v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "closed"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 293
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@11
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@14
    move-result-wide v2

    #@15
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@18
    move-result-wide v0

    #@19
    .line 294
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1b
    invoke-virtual {v2, v0, v1}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@1e
    .line 295
    sub-long/2addr p1, v0

    #@1f
    .line 289
    .end local v0    # "toSkip":J
    :cond_1
    cmp-long v2, p1, v6

    #@21
    if-lez v2, :cond_2

    #@23
    .line 290
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@25
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@27
    cmp-long v2, v2, v6

    #@29
    if-nez v2, :cond_0

    #@2b
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@2d
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2f
    const-wide/16 v4, 0x800

    #@31
    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@34
    move-result-wide v2

    #@35
    const-wide/16 v4, -0x1

    #@37
    cmp-long v2, v2, v4

    #@39
    if-nez v2, :cond_0

    #@3b
    .line 291
    new-instance v2, Ljava/io/EOFException;

    #@3d
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@40
    throw v2

    #@41
    .line 287
    :cond_2
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "buffer("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ")"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
