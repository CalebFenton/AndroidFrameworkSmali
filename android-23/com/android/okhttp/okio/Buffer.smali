.class public final Lcom/android/okhttp/okio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/android/okhttp/okio/BufferedSource;
.implements Lcom/android/okhttp/okio/BufferedSink;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lcom/android/okhttp/okio/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 48
    sput-object v0, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    #@9
    .line 47
    return-void

    #@a
    .line 49
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    if-nez p1, :cond_1

    #@2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "in == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 248
    .local v0, "bytesRead":I
    .local v1, "maxToCopy":I
    .local v2, "tail":Lcom/android/okhttp/okio/Segment;
    :cond_0
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@d
    add-int/2addr v3, v0

    #@e
    iput v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@10
    .line 249
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@12
    int-to-long v6, v0

    #@13
    add-long/2addr v4, v6

    #@14
    iput-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@16
    .line 250
    int-to-long v4, v0

    #@17
    sub-long/2addr p2, v4

    #@18
    .line 240
    .end local v0    # "bytesRead":I
    .end local v1    # "maxToCopy":I
    .end local v2    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_1
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v3, p2, v4

    #@1c
    if-gtz v3, :cond_2

    #@1e
    if-eqz p4, :cond_4

    #@20
    .line 241
    :cond_2
    const/4 v3, 0x1

    #@21
    invoke-virtual {p0, v3}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@24
    move-result-object v2

    #@25
    .line 242
    .restart local v2    # "tail":Lcom/android/okhttp/okio/Segment;
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@27
    rsub-int v3, v3, 0x800

    #@29
    int-to-long v4, v3

    #@2a
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@2d
    move-result-wide v4

    #@2e
    long-to-int v1, v4

    #@2f
    .line 243
    .restart local v1    # "maxToCopy":I
    iget-object v3, v2, Lcom/android/okhttp/okio/Segment;->data:[B

    #@31
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@33
    invoke-virtual {p1, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    #@36
    move-result v0

    #@37
    .line 244
    .restart local v0    # "bytesRead":I
    const/4 v3, -0x1

    #@38
    if-ne v0, v3, :cond_0

    #@3a
    .line 245
    if-eqz p4, :cond_3

    #@3c
    return-void

    #@3d
    .line 246
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    #@3f
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@42
    throw v3

    #@43
    .line 238
    .end local v0    # "bytesRead":I
    .end local v1    # "maxToCopy":I
    .end local v2    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_4
    return-void
.end method


# virtual methods
.method public buffer()Lcom/android/okhttp/okio/Buffer;
    .locals 0

    #@0
    .prologue
    .line 64
    return-object p0
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .line 762
    :try_start_0
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 760
    return-void

    #@6
    .line 763
    :catch_0
    move-exception v0

    #@7
    .line 764
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v1
.end method

.method public clone()Lcom/android/okhttp/okio/Buffer;
    .locals 6

    #@0
    .prologue
    .line 1379
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    .line 1380
    .local v0, "result":Lcom/android/okhttp/okio/Buffer;
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v2, v2, v4

    #@b
    if-nez v2, :cond_0

    #@d
    return-object v0

    #@e
    .line 1382
    :cond_0
    new-instance v2, Lcom/android/okhttp/okio/Segment;

    #@10
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@12
    invoke-direct {v2, v3}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    #@15
    iput-object v2, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@17
    .line 1383
    iget-object v2, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@19
    iget-object v3, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1b
    iget-object v4, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1d
    iput-object v3, v4, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@1f
    iput-object v3, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@21
    .line 1384
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@23
    iget-object v1, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@25
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@27
    if-eq v1, v2, :cond_1

    #@29
    .line 1385
    iget-object v2, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2b
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@2d
    new-instance v3, Lcom/android/okhttp/okio/Segment;

    #@2f
    invoke-direct {v3, v1}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    #@32
    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    #@35
    .line 1384
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@37
    goto :goto_0

    #@38
    .line 1387
    :cond_1
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3a
    iput-wide v2, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3c
    .line 1388
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clone()Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 1290
    return-void
.end method

.method public completeSegmentByteCount()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 260
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    .line 261
    .local v0, "result":J
    cmp-long v3, v0, v4

    #@6
    if-nez v3, :cond_0

    #@8
    return-wide v4

    #@9
    .line 264
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@b
    iget-object v2, v3, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@d
    .line 265
    .local v2, "tail":Lcom/android/okhttp/okio/Segment;
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@f
    const/16 v4, 0x800

    #@11
    if-ge v3, v4, :cond_1

    #@13
    iget-boolean v3, v2, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 266
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@19
    iget v4, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1b
    sub-int/2addr v3, v4

    #@1c
    int-to-long v4, v3

    #@1d
    sub-long/2addr v0, v4

    #@1e
    .line 269
    :cond_1
    return-wide v0
.end method

.method public copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;
    .locals 10
    .param p1, "out"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 167
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "out == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 168
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@f
    move-wide v2, p2

    #@10
    move-wide v4, p4

    #@11
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@14
    .line 169
    cmp-long v0, p4, v8

    #@16
    if-nez v0, :cond_1

    #@18
    return-object p0

    #@19
    .line 171
    :cond_1
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1b
    add-long/2addr v0, p4

    #@1c
    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1e
    .line 174
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@20
    .line 175
    .local v7, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@22
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@24
    sub-int/2addr v0, v1

    #@25
    int-to-long v0, v0

    #@26
    cmp-long v0, p2, v0

    #@28
    if-ltz v0, :cond_2

    #@2a
    .line 176
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2c
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2e
    sub-int/2addr v0, v1

    #@2f
    int-to-long v0, v0

    #@30
    sub-long/2addr p2, v0

    #@31
    .line 175
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@33
    goto :goto_0

    #@34
    .line 180
    :cond_2
    :goto_1
    cmp-long v0, p4, v8

    #@36
    if-lez v0, :cond_4

    #@38
    .line 181
    new-instance v6, Lcom/android/okhttp/okio/Segment;

    #@3a
    invoke-direct {v6, v7}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    #@3d
    .line 182
    .local v6, "copy":Lcom/android/okhttp/okio/Segment;
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@3f
    int-to-long v0, v0

    #@40
    add-long/2addr v0, p2

    #@41
    long-to-int v0, v0

    #@42
    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@44
    .line 183
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@46
    long-to-int v1, p4

    #@47
    add-int/2addr v0, v1

    #@48
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@4d
    move-result v0

    #@4e
    iput v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@50
    .line 184
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@52
    if-nez v0, :cond_3

    #@54
    .line 185
    iput-object v6, v6, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@56
    iput-object v6, v6, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@58
    iput-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@5a
    .line 189
    :goto_2
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@5c
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@5e
    sub-int/2addr v0, v1

    #@5f
    int-to-long v0, v0

    #@60
    sub-long/2addr p4, v0

    #@61
    .line 190
    const-wide/16 p2, 0x0

    #@63
    .line 180
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@65
    goto :goto_1

    #@66
    .line 187
    :cond_3
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@68
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@6a
    invoke-virtual {v0, v6}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    #@6d
    goto :goto_2

    #@6e
    .line 193
    .end local v6    # "copy":Lcom/android/okhttp/okio/Segment;
    :cond_4
    return-object p0
.end method

.method public copyTo(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Buffer;
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const-wide/16 v2, 0x0

    #@2
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/android/okhttp/okio/Buffer;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lcom/android/okhttp/okio/Buffer;
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "out == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 144
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@d
    move-wide v2, p2

    #@e
    move-wide v4, p4

    #@f
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@12
    .line 145
    const-wide/16 v0, 0x0

    #@14
    cmp-long v0, p4, v0

    #@16
    if-nez v0, :cond_1

    #@18
    return-object p0

    #@19
    .line 148
    :cond_1
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1b
    .line 149
    .local v7, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1d
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    int-to-long v0, v0

    #@21
    cmp-long v0, p2, v0

    #@23
    if-ltz v0, :cond_2

    #@25
    .line 150
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@27
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@29
    sub-int/2addr v0, v1

    #@2a
    int-to-long v0, v0

    #@2b
    sub-long/2addr p2, v0

    #@2c
    .line 149
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@2e
    goto :goto_0

    #@2f
    .line 154
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    #@31
    cmp-long v0, p4, v0

    #@33
    if-lez v0, :cond_3

    #@35
    .line 155
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@37
    int-to-long v0, v0

    #@38
    add-long/2addr v0, p2

    #@39
    long-to-int v6, v0

    #@3a
    .line 156
    .local v6, "pos":I
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3c
    sub-int/2addr v0, v6

    #@3d
    int-to-long v0, v0

    #@3e
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    #@41
    move-result-wide v0

    #@42
    long-to-int v8, v0

    #@43
    .line 157
    .local v8, "toCopy":I
    iget-object v0, v7, Lcom/android/okhttp/okio/Segment;->data:[B

    #@45
    invoke-virtual {p1, v0, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    #@48
    .line 158
    int-to-long v0, v8

    #@49
    sub-long/2addr p4, v0

    #@4a
    .line 159
    const-wide/16 p2, 0x0

    #@4c
    .line 154
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@4e
    goto :goto_1

    #@4f
    .line 162
    .end local v6    # "pos":I
    .end local v8    # "toCopy":I
    :cond_3
    return-object p0
.end method

.method public emit()Lcom/android/okhttp/okio/BufferedSink;
    .locals 0

    #@0
    .prologue
    .line 94
    return-object p0
.end method

.method public emitCompleteSegments()Lcom/android/okhttp/okio/Buffer;
    .locals 0

    #@0
    .prologue
    .line 90
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->emitCompleteSegments()Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1309
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v14, 0x1

    #@7
    return v14

    #@8
    .line 1310
    :cond_0
    move-object/from16 v0, p1

    #@a
    instance-of v14, v0, Lcom/android/okhttp/okio/Buffer;

    #@c
    if-nez v14, :cond_1

    #@e
    const/4 v14, 0x0

    #@f
    return v14

    #@10
    :cond_1
    move-object/from16 v13, p1

    #@12
    .line 1311
    check-cast v13, Lcom/android/okhttp/okio/Buffer;

    #@14
    .line 1312
    .local v13, "that":Lcom/android/okhttp/okio/Buffer;
    move-object/from16 v0, p0

    #@16
    iget-wide v14, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@18
    iget-wide v0, v13, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1a
    move-wide/from16 v16, v0

    #@1c
    cmp-long v14, v14, v16

    #@1e
    if-eqz v14, :cond_2

    #@20
    const/4 v14, 0x0

    #@21
    return v14

    #@22
    .line 1313
    :cond_2
    move-object/from16 v0, p0

    #@24
    iget-wide v14, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@26
    const-wide/16 v16, 0x0

    #@28
    cmp-long v14, v14, v16

    #@2a
    if-nez v14, :cond_3

    #@2c
    const/4 v14, 0x1

    #@2d
    return v14

    #@2e
    .line 1315
    :cond_3
    move-object/from16 v0, p0

    #@30
    iget-object v11, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@32
    .line 1316
    .local v11, "sa":Lcom/android/okhttp/okio/Segment;
    iget-object v12, v13, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@34
    .line 1317
    .local v12, "sb":Lcom/android/okhttp/okio/Segment;
    iget v5, v11, Lcom/android/okhttp/okio/Segment;->pos:I

    #@36
    .line 1318
    .local v5, "posA":I
    iget v9, v12, Lcom/android/okhttp/okio/Segment;->pos:I

    #@38
    .line 1320
    .local v9, "posB":I
    const-wide/16 v6, 0x0

    #@3a
    .local v6, "pos":J
    :goto_0
    move-object/from16 v0, p0

    #@3c
    iget-wide v14, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3e
    cmp-long v14, v6, v14

    #@40
    if-gez v14, :cond_6

    #@42
    .line 1321
    iget v14, v11, Lcom/android/okhttp/okio/Segment;->limit:I

    #@44
    sub-int/2addr v14, v5

    #@45
    iget v15, v12, Lcom/android/okhttp/okio/Segment;->limit:I

    #@47
    sub-int/2addr v15, v9

    #@48
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    #@4b
    move-result v14

    #@4c
    int-to-long v2, v14

    #@4d
    .line 1323
    .local v2, "count":J
    const/4 v4, 0x0

    #@4e
    .local v4, "i":I
    move v10, v9

    #@4f
    .end local v9    # "posB":I
    .local v10, "posB":I
    move v8, v5

    #@50
    .end local v5    # "posA":I
    .local v8, "posA":I
    :goto_1
    int-to-long v14, v4

    #@51
    cmp-long v14, v14, v2

    #@53
    if-gez v14, :cond_5

    #@55
    .line 1324
    iget-object v14, v11, Lcom/android/okhttp/okio/Segment;->data:[B

    #@57
    add-int/lit8 v5, v8, 0x1

    #@59
    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    aget-byte v14, v14, v8

    #@5b
    iget-object v15, v12, Lcom/android/okhttp/okio/Segment;->data:[B

    #@5d
    add-int/lit8 v9, v10, 0x1

    #@5f
    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    aget-byte v15, v15, v10

    #@61
    if-eq v14, v15, :cond_4

    #@63
    const/4 v14, 0x0

    #@64
    return v14

    #@65
    .line 1323
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@67
    move v10, v9

    #@68
    .end local v9    # "posB":I
    .restart local v10    # "posB":I
    move v8, v5

    #@69
    .end local v5    # "posA":I
    .restart local v8    # "posA":I
    goto :goto_1

    #@6a
    .line 1327
    :cond_5
    iget v14, v11, Lcom/android/okhttp/okio/Segment;->limit:I

    #@6c
    if-ne v8, v14, :cond_8

    #@6e
    .line 1328
    iget-object v11, v11, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@70
    .line 1329
    iget v5, v11, Lcom/android/okhttp/okio/Segment;->pos:I

    #@72
    .line 1332
    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    :goto_2
    iget v14, v12, Lcom/android/okhttp/okio/Segment;->limit:I

    #@74
    if-ne v10, v14, :cond_7

    #@76
    .line 1333
    iget-object v12, v12, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@78
    .line 1334
    iget v9, v12, Lcom/android/okhttp/okio/Segment;->pos:I

    #@7a
    .line 1320
    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    :goto_3
    add-long/2addr v6, v2

    #@7b
    goto :goto_0

    #@7c
    .line 1338
    .end local v2    # "count":J
    .end local v4    # "i":I
    :cond_6
    const/4 v14, 0x1

    #@7d
    return v14

    #@7e
    .end local v9    # "posB":I
    .restart local v2    # "count":J
    .restart local v4    # "i":I
    .restart local v10    # "posB":I
    :cond_7
    move v9, v10

    #@7f
    .end local v10    # "posB":I
    .restart local v9    # "posB":I
    goto :goto_3

    #@80
    .end local v5    # "posA":I
    .end local v9    # "posB":I
    .restart local v8    # "posA":I
    .restart local v10    # "posB":I
    :cond_8
    move v5, v8

    #@81
    .end local v8    # "posA":I
    .restart local v5    # "posA":I
    goto :goto_2
.end method

.method public exhausted()Z
    .locals 4

    #@0
    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 1287
    return-void
.end method

.method public getByte(J)B
    .locals 9
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 295
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    const-wide/16 v4, 0x1

    #@4
    move-wide v2, p1

    #@5
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@8
    .line 296
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@a
    .line 297
    .local v6, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@c
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@e
    sub-int v7, v0, v1

    #@10
    .line 298
    .local v7, "segmentByteCount":I
    int-to-long v0, v7

    #@11
    cmp-long v0, p1, v0

    #@13
    if-gez v0, :cond_0

    #@15
    iget-object v0, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    #@17
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@19
    long-to-int v2, p1

    #@1a
    add-int/2addr v1, v2

    #@1b
    aget-byte v0, v0, v1

    #@1d
    return v0

    #@1e
    .line 299
    :cond_0
    int-to-long v0, v7

    #@1f
    sub-long/2addr p1, v0

    #@20
    .line 296
    iget-object v6, v6, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@22
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 1342
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2
    .line 1343
    .local v3, "s":Lcom/android/okhttp/okio/Segment;
    if-nez v3, :cond_0

    #@4
    const/4 v4, 0x0

    #@5
    return v4

    #@6
    .line 1344
    :cond_0
    const/4 v2, 0x1

    #@7
    .line 1346
    .local v2, "result":I
    :cond_1
    iget v1, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    #@9
    .local v1, "pos":I
    iget v0, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@b
    .local v0, "limit":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@d
    .line 1347
    mul-int/lit8 v4, v2, 0x1f

    #@f
    iget-object v5, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@11
    aget-byte v5, v5, v1

    #@13
    add-int v2, v4, v5

    #@15
    .line 1346
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1349
    :cond_2
    iget-object v3, v3, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@1a
    .line 1350
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1c
    if-ne v3, v4, :cond_1

    #@1e
    .line 1351
    return v2
.end method

.method public indexOf(B)J
    .locals 2
    .param p1, "b"    # B

    #@0
    .prologue
    .line 1226
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOf(BJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 14
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    #@0
    .prologue
    .line 1234
    const-wide/16 v10, 0x0

    #@2
    cmp-long v9, p2, v10

    #@4
    if-gez v9, :cond_0

    #@6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v10, "fromIndex < 0"

    #@b
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v9

    #@f
    .line 1236
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@11
    .line 1237
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    if-nez v1, :cond_1

    #@13
    const-wide/16 v10, -0x1

    #@15
    return-wide v10

    #@16
    .line 1238
    :cond_1
    const-wide/16 v4, 0x0

    #@18
    .line 1240
    .local v4, "offset":J
    :cond_2
    iget v9, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1a
    iget v10, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1c
    sub-int v8, v9, v10

    #@1e
    .line 1241
    .local v8, "segmentByteCount":I
    int-to-long v10, v8

    #@1f
    cmp-long v9, p2, v10

    #@21
    if-ltz v9, :cond_3

    #@23
    .line 1242
    int-to-long v10, v8

    #@24
    sub-long p2, p2, v10

    #@26
    .line 1250
    :goto_0
    int-to-long v10, v8

    #@27
    add-long/2addr v4, v10

    #@28
    .line 1251
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@2a
    .line 1252
    iget-object v9, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2c
    if-ne v1, v9, :cond_2

    #@2e
    .line 1253
    const-wide/16 v10, -0x1

    #@30
    return-wide v10

    #@31
    .line 1244
    :cond_3
    iget-object v0, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    #@33
    .line 1245
    .local v0, "data":[B
    iget v9, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@35
    int-to-long v10, v9

    #@36
    add-long v6, v10, p2

    #@38
    .local v6, "pos":J
    iget v9, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3a
    int-to-long v2, v9

    #@3b
    .local v2, "limit":J
    :goto_1
    cmp-long v9, v6, v2

    #@3d
    if-gez v9, :cond_5

    #@3f
    .line 1246
    long-to-int v9, v6

    #@40
    aget-byte v9, v0, v9

    #@42
    if-ne v9, p1, :cond_4

    #@44
    add-long v10, v4, v6

    #@46
    iget v9, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@48
    int-to-long v12, v9

    #@49
    sub-long/2addr v10, v12

    #@4a
    return-wide v10

    #@4b
    .line 1245
    :cond_4
    const-wide/16 v10, 0x1

    #@4d
    add-long/2addr v6, v10

    #@4e
    goto :goto_1

    #@4f
    .line 1248
    :cond_5
    const-wide/16 p2, 0x0

    #@51
    goto :goto_0
.end method

.method public indexOfElement(Lcom/android/okhttp/okio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 1257
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public indexOfElement(Lcom/android/okhttp/okio/ByteString;J)J
    .locals 18
    .param p1, "targetBytes"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "fromIndex"    # J

    #@0
    .prologue
    .line 1261
    const-wide/16 v14, 0x0

    #@2
    cmp-long v14, p2, v14

    #@4
    if-gez v14, :cond_0

    #@6
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v15, "fromIndex < 0"

    #@b
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v14

    #@f
    .line 1263
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v10, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@13
    .line 1264
    .local v10, "s":Lcom/android/okhttp/okio/Segment;
    if-nez v10, :cond_1

    #@15
    const-wide/16 v14, -0x1

    #@17
    return-wide v14

    #@18
    .line 1265
    :cond_1
    const-wide/16 v6, 0x0

    #@1a
    .line 1266
    .local v6, "offset":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    #@1d
    move-result-object v13

    #@1e
    .line 1268
    .local v13, "toFind":[B
    :cond_2
    iget v14, v10, Lcom/android/okhttp/okio/Segment;->limit:I

    #@20
    iget v15, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    #@22
    sub-int v11, v14, v15

    #@24
    .line 1269
    .local v11, "segmentByteCount":I
    int-to-long v14, v11

    #@25
    cmp-long v14, p2, v14

    #@27
    if-ltz v14, :cond_3

    #@29
    .line 1270
    int-to-long v14, v11

    #@2a
    sub-long p2, p2, v14

    #@2c
    .line 1281
    :goto_0
    int-to-long v14, v11

    #@2d
    add-long/2addr v6, v14

    #@2e
    .line 1282
    iget-object v10, v10, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@30
    .line 1283
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@34
    if-ne v10, v14, :cond_2

    #@36
    .line 1284
    const-wide/16 v14, -0x1

    #@38
    return-wide v14

    #@39
    .line 1272
    :cond_3
    iget-object v3, v10, Lcom/android/okhttp/okio/Segment;->data:[B

    #@3b
    .line 1273
    .local v3, "data":[B
    iget v14, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    #@3d
    int-to-long v14, v14

    #@3e
    add-long v8, v14, p2

    #@40
    .local v8, "pos":J
    iget v14, v10, Lcom/android/okhttp/okio/Segment;->limit:I

    #@42
    int-to-long v4, v14

    #@43
    .local v4, "limit":J
    :goto_1
    cmp-long v14, v8, v4

    #@45
    if-gez v14, :cond_6

    #@47
    .line 1274
    long-to-int v14, v8

    #@48
    aget-byte v2, v3, v14

    #@4a
    .line 1275
    .local v2, "b":B
    const/4 v14, 0x0

    #@4b
    array-length v15, v13

    #@4c
    :goto_2
    if-ge v14, v15, :cond_5

    #@4e
    aget-byte v12, v13, v14

    #@50
    .line 1276
    .local v12, "targetByte":B
    if-ne v2, v12, :cond_4

    #@52
    add-long v14, v6, v8

    #@54
    iget v0, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    #@56
    move/from16 v16, v0

    #@58
    move/from16 v0, v16

    #@5a
    int-to-long v0, v0

    #@5b
    move-wide/from16 v16, v0

    #@5d
    sub-long v14, v14, v16

    #@5f
    return-wide v14

    #@60
    .line 1275
    :cond_4
    add-int/lit8 v14, v14, 0x1

    #@62
    goto :goto_2

    #@63
    .line 1273
    .end local v12    # "targetByte":B
    :cond_5
    const-wide/16 v14, 0x1

    #@65
    add-long/2addr v8, v14

    #@66
    goto :goto_1

    #@67
    .line 1279
    .end local v2    # "b":B
    :cond_6
    const-wide/16 p2, 0x0

    #@69
    goto :goto_0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 110
    new-instance v0, Lcom/android/okhttp/okio/Buffer$2;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Buffer$2;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    #@5
    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/okhttp/okio/Buffer$1;

    #@2
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Buffer$1;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    #@5
    return-object v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B

    #@0
    .prologue
    .line 725
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 738
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
    .line 740
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@9
    .line 741
    .local v6, "s":Lcom/android/okhttp/okio/Segment;
    if-nez v6, :cond_0

    #@b
    const/4 v0, -0x1

    #@c
    return v0

    #@d
    .line 742
    :cond_0
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@f
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@11
    sub-int/2addr v0, v1

    #@12
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v7

    #@16
    .line 743
    .local v7, "toCopy":I
    iget-object v0, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    #@18
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1a
    invoke-static {v0, v1, p1, p2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 745
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1f
    add-int/2addr v0, v7

    #@20
    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@22
    .line 746
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@24
    int-to-long v2, v7

    #@25
    sub-long/2addr v0, v2

    #@26
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@28
    .line 748
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2a
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2c
    if-ne v0, v1, :cond_1

    #@2e
    .line 749
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@34
    .line 750
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@37
    .line 753
    :cond_1
    return v7
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1217
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "sink == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1218
    :cond_0
    cmp-long v0, p2, v2

    #@f
    if-gez v0, :cond_1

    #@11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "byteCount < 0: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1219
    :cond_1
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2d
    cmp-long v0, v0, v2

    #@2f
    if-nez v0, :cond_2

    #@31
    const-wide/16 v0, -0x1

    #@33
    return-wide v0

    #@34
    .line 1220
    :cond_2
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@36
    cmp-long v0, p2, v0

    #@38
    if-lez v0, :cond_3

    #@3a
    iget-wide p2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3c
    .line 1221
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@3f
    .line 1222
    return-wide p2
.end method

.method public readAll(Lcom/android/okhttp/okio/Sink;)J
    .locals 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    .line 542
    .local v0, "byteCount":J
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, v0, v2

    #@6
    if-lez v2, :cond_0

    #@8
    .line 543
    invoke-interface {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@b
    .line 545
    :cond_0
    return-wide v0
.end method

.method public readByte()B
    .locals 10

    #@0
    .prologue
    .line 273
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    const-wide/16 v8, 0x0

    #@4
    cmp-long v6, v6, v8

    #@6
    if-nez v6, :cond_0

    #@8
    new-instance v6, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v7, "size == 0"

    #@d
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v6

    #@11
    .line 275
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@13
    .line 276
    .local v5, "segment":Lcom/android/okhttp/okio/Segment;
    iget v3, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@15
    .line 277
    .local v3, "pos":I
    iget v2, v5, Lcom/android/okhttp/okio/Segment;->limit:I

    #@17
    .line 279
    .local v2, "limit":I
    iget-object v1, v5, Lcom/android/okhttp/okio/Segment;->data:[B

    #@19
    .line 280
    .local v1, "data":[B
    add-int/lit8 v4, v3, 0x1

    #@1b
    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v0, v1, v3

    #@1d
    .line 281
    .local v0, "b":B
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1f
    const-wide/16 v8, 0x1

    #@21
    sub-long/2addr v6, v8

    #@22
    iput-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@24
    .line 283
    if-ne v4, v2, :cond_1

    #@26
    .line 284
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@29
    move-result-object v6

    #@2a
    iput-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2c
    .line 285
    invoke-static {v5}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@2f
    .line 290
    :goto_0
    return v0

    #@30
    .line 287
    :cond_1
    iput v4, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@32
    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 4

    #@0
    .prologue
    .line 707
    :try_start_0
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 708
    :catch_0
    move-exception v0

    #@8
    .line 709
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method public readByteArray(J)[B
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    move-wide v4, p1

    #@5
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@8
    .line 715
    const-wide/32 v0, 0x7fffffff

    #@b
    cmp-long v0, p1, v0

    #@d
    if-lez v0, :cond_0

    #@f
    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 719
    :cond_0
    long-to-int v0, p1

    #@2a
    new-array v6, v0, [B

    #@2c
    .line 720
    .local v6, "result":[B
    invoke-virtual {p0, v6}, Lcom/android/okhttp/okio/Buffer;->readFully([B)V

    #@2f
    .line 721
    return-object v6
.end method

.method public readByteString()Lcom/android/okhttp/okio/ByteString;
    .locals 2

    #@0
    .prologue
    .line 525
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    #@2
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByteArray()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@9
    return-object v0
.end method

.method public readByteString(J)Lcom/android/okhttp/okio/ByteString;
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@9
    return-object v0
.end method

.method public readDecimalLong()J
    .locals 22

    #@0
    .prologue
    .line 411
    move-object/from16 v0, p0

    #@2
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    move-wide/from16 v18, v0

    #@6
    const-wide/16 v20, 0x0

    #@8
    cmp-long v18, v18, v20

    #@a
    if-nez v18, :cond_0

    #@c
    new-instance v18, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v19, "size == 0"

    #@11
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v18

    #@15
    .line 414
    :cond_0
    const-wide/16 v16, 0x0

    #@17
    .line 415
    .local v16, "value":J
    const/4 v14, 0x0

    #@18
    .line 416
    .local v14, "seen":I
    const/4 v10, 0x0

    #@19
    .line 417
    .local v10, "negative":Z
    const/4 v8, 0x0

    #@1a
    .line 420
    .local v8, "done":Z
    const-wide/16 v12, -0x7

    #@1c
    .line 423
    .local v12, "overflowDigit":J
    :cond_1
    move-object/from16 v0, p0

    #@1e
    iget-object v15, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@20
    .line 425
    .local v15, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v6, v15, Lcom/android/okhttp/okio/Segment;->data:[B

    #@22
    .line 426
    .local v6, "data":[B
    iget v11, v15, Lcom/android/okhttp/okio/Segment;->pos:I

    #@24
    .line 427
    .local v11, "pos":I
    iget v9, v15, Lcom/android/okhttp/okio/Segment;->limit:I

    #@26
    .line 429
    .local v9, "limit":I
    :goto_0
    if-ge v11, v9, :cond_8

    #@28
    .line 430
    aget-byte v4, v6, v11

    #@2a
    .line 431
    .local v4, "b":B
    const/16 v18, 0x30

    #@2c
    move/from16 v0, v18

    #@2e
    if-lt v4, v0, :cond_5

    #@30
    const/16 v18, 0x39

    #@32
    move/from16 v0, v18

    #@34
    if-gt v4, v0, :cond_5

    #@36
    .line 432
    rsub-int/lit8 v7, v4, 0x30

    #@38
    .line 419
    .local v7, "digit":I
    const-wide v18, -0xcccccccccccccccL

    #@3d
    .line 435
    cmp-long v18, v16, v18

    #@3f
    if-ltz v18, :cond_2

    #@41
    .line 419
    const-wide v18, -0xcccccccccccccccL

    #@46
    .line 435
    cmp-long v18, v16, v18

    #@48
    if-nez v18, :cond_4

    #@4a
    int-to-long v0, v7

    #@4b
    move-wide/from16 v18, v0

    #@4d
    cmp-long v18, v18, v12

    #@4f
    if-gez v18, :cond_4

    #@51
    .line 436
    :cond_2
    new-instance v18, Lcom/android/okhttp/okio/Buffer;

    #@53
    invoke-direct/range {v18 .. v18}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@56
    move-object/from16 v0, v18

    #@58
    move-wide/from16 v1, v16

    #@5a
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    #@5d
    move-result-object v18

    #@5e
    move-object/from16 v0, v18

    #@60
    invoke-virtual {v0, v4}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@63
    move-result-object v5

    #@64
    .line 437
    .local v5, "buffer":Lcom/android/okhttp/okio/Buffer;
    if-nez v10, :cond_3

    #@66
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@69
    .line 438
    :cond_3
    new-instance v18, Ljava/lang/NumberFormatException;

    #@6b
    new-instance v19, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v20, "Number too large: "

    #@73
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v19

    #@77
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@7a
    move-result-object v20

    #@7b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v19

    #@7f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v19

    #@83
    invoke-direct/range {v18 .. v19}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@86
    throw v18

    #@87
    .line 440
    .end local v5    # "buffer":Lcom/android/okhttp/okio/Buffer;
    :cond_4
    const-wide/16 v18, 0xa

    #@89
    mul-long v16, v16, v18

    #@8b
    .line 441
    int-to-long v0, v7

    #@8c
    move-wide/from16 v18, v0

    #@8e
    add-long v16, v16, v18

    #@90
    .line 429
    .end local v7    # "digit":I
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@92
    add-int/lit8 v14, v14, 0x1

    #@94
    goto :goto_0

    #@95
    .line 442
    :cond_5
    const/16 v18, 0x2d

    #@97
    move/from16 v0, v18

    #@99
    if-ne v4, v0, :cond_6

    #@9b
    if-nez v14, :cond_6

    #@9d
    .line 443
    const/4 v10, 0x1

    #@9e
    .line 444
    const-wide/16 v18, 0x1

    #@a0
    sub-long v12, v12, v18

    #@a2
    .line 442
    goto :goto_1

    #@a3
    .line 446
    :cond_6
    if-nez v14, :cond_7

    #@a5
    .line 447
    new-instance v18, Ljava/lang/NumberFormatException;

    #@a7
    .line 448
    new-instance v19, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v20, "Expected leading [0-9] or \'-\' character but was 0x"

    #@af
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v19

    #@b3
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b6
    move-result-object v20

    #@b7
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v19

    #@bb
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v19

    #@bf
    .line 447
    invoke-direct/range {v18 .. v19}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v18

    #@c3
    .line 451
    :cond_7
    const/4 v8, 0x1

    #@c4
    .line 456
    .end local v4    # "b":B
    :cond_8
    if-ne v11, v9, :cond_a

    #@c6
    .line 457
    invoke-virtual {v15}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@c9
    move-result-object v18

    #@ca
    move-object/from16 v0, v18

    #@cc
    move-object/from16 v1, p0

    #@ce
    iput-object v0, v1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@d0
    .line 458
    invoke-static {v15}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@d3
    .line 462
    :goto_2
    if-nez v8, :cond_9

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@d9
    move-object/from16 v18, v0

    #@db
    if-nez v18, :cond_1

    #@dd
    .line 464
    :cond_9
    move-object/from16 v0, p0

    #@df
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@e1
    move-wide/from16 v18, v0

    #@e3
    int-to-long v0, v14

    #@e4
    move-wide/from16 v20, v0

    #@e6
    sub-long v18, v18, v20

    #@e8
    move-wide/from16 v0, v18

    #@ea
    move-object/from16 v2, p0

    #@ec
    iput-wide v0, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@ee
    .line 465
    if-eqz v10, :cond_b

    #@f0
    .end local v16    # "value":J
    :goto_3
    return-wide v16

    #@f1
    .line 460
    .restart local v16    # "value":J
    :cond_a
    iput v11, v15, Lcom/android/okhttp/okio/Segment;->pos:I

    #@f3
    goto :goto_2

    #@f4
    .line 465
    :cond_b
    move-wide/from16 v0, v16

    #@f6
    neg-long v0, v0

    #@f7
    move-wide/from16 v16, v0

    #@f9
    goto :goto_3
.end method

.method public readFrom(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Buffer;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    const-wide v0, 0x7fffffffffffffffL

    #@5
    const/4 v2, 0x1

    #@6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    #@9
    .line 228
    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lcom/android/okhttp/okio/Buffer;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

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
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 234
    :cond_0
    const/4 v0, 0x0

    #@21
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    #@24
    .line 235
    return-object p0
.end method

.method public readFully(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    cmp-long v0, v0, p2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 534
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@8
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@b
    .line 535
    new-instance v0, Ljava/io/EOFException;

    #@d
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@10
    throw v0

    #@11
    .line 537
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@14
    .line 532
    return-void
.end method

.method public readFully([B)V
    .locals 3
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 729
    const/4 v0, 0x0

    #@1
    .line 730
    .local v0, "offset":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v0, v2, :cond_1

    #@4
    .line 731
    array-length v2, p1

    #@5
    sub-int/2addr v2, v0

    #@6
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    #@9
    move-result v1

    #@a
    .line 732
    .local v1, "read":I
    const/4 v2, -0x1

    #@b
    if-ne v1, v2, :cond_0

    #@d
    new-instance v2, Ljava/io/EOFException;

    #@f
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@12
    throw v2

    #@13
    .line 733
    :cond_0
    add-int/2addr v0, v1

    #@14
    goto :goto_0

    #@15
    .line 728
    .end local v1    # "read":I
    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 18

    #@0
    .prologue
    .line 469
    move-object/from16 v0, p0

    #@2
    iget-wide v14, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    const-wide/16 v16, 0x0

    #@6
    cmp-long v11, v14, v16

    #@8
    if-nez v11, :cond_0

    #@a
    new-instance v11, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v14, "size == 0"

    #@f
    invoke-direct {v11, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v11

    #@13
    .line 471
    :cond_0
    const-wide/16 v12, 0x0

    #@15
    .line 472
    .local v12, "value":J
    const/4 v9, 0x0

    #@16
    .line 473
    .local v9, "seen":I
    const/4 v6, 0x0

    #@17
    .line 476
    .local v6, "done":Z
    :cond_1
    move-object/from16 v0, p0

    #@19
    iget-object v10, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1b
    .line 478
    .local v10, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v4, v10, Lcom/android/okhttp/okio/Segment;->data:[B

    #@1d
    .line 479
    .local v4, "data":[B
    iget v8, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1f
    .line 480
    .local v8, "pos":I
    iget v7, v10, Lcom/android/okhttp/okio/Segment;->limit:I

    #@21
    .line 482
    .local v7, "limit":I
    :goto_0
    if-ge v8, v7, :cond_6

    #@23
    .line 485
    aget-byte v2, v4, v8

    #@25
    .line 486
    .local v2, "b":B
    const/16 v11, 0x30

    #@27
    if-lt v2, v11, :cond_2

    #@29
    const/16 v11, 0x39

    #@2b
    if-gt v2, v11, :cond_2

    #@2d
    .line 487
    add-int/lit8 v5, v2, -0x30

    #@2f
    .line 503
    .local v5, "digit":I
    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    #@31
    and-long/2addr v14, v12

    #@32
    const-wide/16 v16, 0x0

    #@34
    cmp-long v11, v14, v16

    #@36
    if-eqz v11, :cond_8

    #@38
    .line 504
    new-instance v11, Lcom/android/okhttp/okio/Buffer;

    #@3a
    invoke-direct {v11}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@3d
    invoke-virtual {v11, v12, v13}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    #@40
    move-result-object v11

    #@41
    invoke-virtual {v11, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@44
    move-result-object v3

    #@45
    .line 505
    .local v3, "buffer":Lcom/android/okhttp/okio/Buffer;
    new-instance v11, Ljava/lang/NumberFormatException;

    #@47
    new-instance v14, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v15, "Number too large: "

    #@4f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v14

    #@53
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    #@56
    move-result-object v15

    #@57
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v14

    #@5b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v14

    #@5f
    invoke-direct {v11, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@62
    throw v11

    #@63
    .line 488
    .end local v3    # "buffer":Lcom/android/okhttp/okio/Buffer;
    .end local v5    # "digit":I
    :cond_2
    const/16 v11, 0x61

    #@65
    if-lt v2, v11, :cond_3

    #@67
    const/16 v11, 0x66

    #@69
    if-gt v2, v11, :cond_3

    #@6b
    .line 489
    add-int/lit8 v11, v2, -0x61

    #@6d
    add-int/lit8 v5, v11, 0xa

    #@6f
    .line 488
    .restart local v5    # "digit":I
    goto :goto_1

    #@70
    .line 490
    .end local v5    # "digit":I
    :cond_3
    const/16 v11, 0x41

    #@72
    if-lt v2, v11, :cond_4

    #@74
    const/16 v11, 0x46

    #@76
    if-gt v2, v11, :cond_4

    #@78
    .line 491
    add-int/lit8 v11, v2, -0x41

    #@7a
    add-int/lit8 v5, v11, 0xa

    #@7c
    .line 490
    .restart local v5    # "digit":I
    goto :goto_1

    #@7d
    .line 493
    .end local v5    # "digit":I
    :cond_4
    if-nez v9, :cond_5

    #@7f
    .line 494
    new-instance v11, Ljava/lang/NumberFormatException;

    #@81
    .line 495
    new-instance v14, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v15, "Expected leading [0-9a-fA-F] character but was 0x"

    #@89
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v14

    #@8d
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@90
    move-result-object v15

    #@91
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v14

    #@95
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v14

    #@99
    .line 494
    invoke-direct {v11, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v11

    #@9d
    .line 498
    :cond_5
    const/4 v6, 0x1

    #@9e
    .line 512
    .end local v2    # "b":B
    :cond_6
    if-ne v8, v7, :cond_9

    #@a0
    .line 513
    invoke-virtual {v10}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@a3
    move-result-object v11

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-object v11, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@a8
    .line 514
    invoke-static {v10}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@ab
    .line 518
    :goto_2
    if-nez v6, :cond_7

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v11, v0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@b1
    if-nez v11, :cond_1

    #@b3
    .line 520
    :cond_7
    move-object/from16 v0, p0

    #@b5
    iget-wide v14, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@b7
    int-to-long v0, v9

    #@b8
    move-wide/from16 v16, v0

    #@ba
    sub-long v14, v14, v16

    #@bc
    move-object/from16 v0, p0

    #@be
    iput-wide v14, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@c0
    .line 521
    return-wide v12

    #@c1
    .line 508
    .restart local v2    # "b":B
    .restart local v5    # "digit":I
    :cond_8
    const/4 v11, 0x4

    #@c2
    shl-long/2addr v12, v11

    #@c3
    .line 509
    int-to-long v14, v5

    #@c4
    or-long/2addr v12, v14

    #@c5
    .line 482
    add-int/lit8 v8, v8, 0x1

    #@c7
    add-int/lit8 v9, v9, 0x1

    #@c9
    goto/16 :goto_0

    #@cb
    .line 516
    .end local v2    # "b":B
    .end local v5    # "digit":I
    :cond_9
    iput v8, v10, Lcom/android/okhttp/okio/Segment;->pos:I

    #@cd
    goto :goto_2
.end method

.method public readInt()I
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x4

    #@2
    .line 333
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    cmp-long v6, v6, v8

    #@6
    if-gez v6, :cond_0

    #@8
    new-instance v6, Ljava/lang/IllegalStateException;

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "size < 4: "

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@18
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v6

    #@24
    .line 335
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@26
    .line 336
    .local v5, "segment":Lcom/android/okhttp/okio/Segment;
    iget v3, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@28
    .line 337
    .local v3, "pos":I
    iget v2, v5, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2a
    .line 340
    .local v2, "limit":I
    sub-int v6, v2, v3

    #@2c
    const/4 v7, 0x4

    #@2d
    if-ge v6, v7, :cond_1

    #@2f
    .line 341
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@32
    move-result v6

    #@33
    and-int/lit16 v6, v6, 0xff

    #@35
    shl-int/lit8 v6, v6, 0x18

    #@37
    .line 342
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@3a
    move-result v7

    #@3b
    and-int/lit16 v7, v7, 0xff

    #@3d
    shl-int/lit8 v7, v7, 0x10

    #@3f
    .line 341
    or-int/2addr v6, v7

    #@40
    .line 343
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@43
    move-result v7

    #@44
    and-int/lit16 v7, v7, 0xff

    #@46
    shl-int/lit8 v7, v7, 0x8

    #@48
    .line 341
    or-int/2addr v6, v7

    #@49
    .line 344
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@4c
    move-result v7

    #@4d
    and-int/lit16 v7, v7, 0xff

    #@4f
    .line 341
    or-int/2addr v6, v7

    #@50
    return v6

    #@51
    .line 347
    :cond_1
    iget-object v0, v5, Lcom/android/okhttp/okio/Segment;->data:[B

    #@53
    .line 348
    .local v0, "data":[B
    add-int/lit8 v4, v3, 0x1

    #@55
    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v6, v0, v3

    #@57
    and-int/lit16 v6, v6, 0xff

    #@59
    shl-int/lit8 v6, v6, 0x18

    #@5b
    .line 349
    add-int/lit8 v3, v4, 0x1

    #@5d
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v0, v4

    #@5f
    and-int/lit16 v7, v7, 0xff

    #@61
    shl-int/lit8 v7, v7, 0x10

    #@63
    .line 348
    or-int/2addr v6, v7

    #@64
    .line 350
    add-int/lit8 v4, v3, 0x1

    #@66
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget-byte v7, v0, v3

    #@68
    and-int/lit16 v7, v7, 0xff

    #@6a
    shl-int/lit8 v7, v7, 0x8

    #@6c
    .line 348
    or-int/2addr v6, v7

    #@6d
    .line 351
    add-int/lit8 v3, v4, 0x1

    #@6f
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v0, v4

    #@71
    and-int/lit16 v7, v7, 0xff

    #@73
    .line 348
    or-int v1, v6, v7

    #@75
    .line 352
    .local v1, "i":I
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@77
    sub-long/2addr v6, v8

    #@78
    iput-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@7a
    .line 354
    if-ne v3, v2, :cond_2

    #@7c
    .line 355
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@7f
    move-result-object v6

    #@80
    iput-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@82
    .line 356
    invoke-static {v5}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@85
    .line 361
    :goto_0
    return v1

    #@86
    .line 358
    :cond_2
    iput v3, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@88
    goto :goto_0
.end method

.method public readIntLe()I
    .locals 1

    #@0
    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->reverseBytesInt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readLong()J
    .locals 14

    #@0
    .prologue
    .line 365
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    const-wide/16 v10, 0x8

    #@4
    cmp-long v5, v8, v10

    #@6
    if-gez v5, :cond_0

    #@8
    new-instance v5, Ljava/lang/IllegalStateException;

    #@a
    new-instance v8, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v9, "size < 8: "

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    iget-wide v10, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@18
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v5

    #@24
    .line 367
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@26
    .line 368
    .local v4, "segment":Lcom/android/okhttp/okio/Segment;
    iget v2, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    #@28
    .line 369
    .local v2, "pos":I
    iget v1, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2a
    .line 372
    .local v1, "limit":I
    sub-int v5, v1, v2

    #@2c
    const/16 v8, 0x8

    #@2e
    if-ge v5, v8, :cond_1

    #@30
    .line 373
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    #@33
    move-result v5

    #@34
    int-to-long v8, v5

    #@35
    const-wide v10, 0xffffffffL

    #@3a
    and-long/2addr v8, v10

    #@3b
    const/16 v5, 0x20

    #@3d
    shl-long/2addr v8, v5

    #@3e
    .line 374
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readInt()I

    #@41
    move-result v5

    #@42
    int-to-long v10, v5

    #@43
    const-wide v12, 0xffffffffL

    #@48
    and-long/2addr v10, v12

    #@49
    .line 373
    or-long/2addr v8, v10

    #@4a
    return-wide v8

    #@4b
    .line 377
    :cond_1
    iget-object v0, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    #@4d
    .line 378
    .local v0, "data":[B
    add-int/lit8 v3, v2, 0x1

    #@4f
    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v5, v0, v2

    #@51
    int-to-long v8, v5

    #@52
    const-wide/16 v10, 0xff

    #@54
    and-long/2addr v8, v10

    #@55
    const/16 v5, 0x38

    #@57
    shl-long/2addr v8, v5

    #@58
    .line 379
    add-int/lit8 v2, v3, 0x1

    #@5a
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    #@5c
    int-to-long v10, v5

    #@5d
    const-wide/16 v12, 0xff

    #@5f
    and-long/2addr v10, v12

    #@60
    const/16 v5, 0x30

    #@62
    shl-long/2addr v10, v5

    #@63
    .line 378
    or-long/2addr v8, v10

    #@64
    .line 380
    add-int/lit8 v3, v2, 0x1

    #@66
    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    #@68
    int-to-long v10, v5

    #@69
    const-wide/16 v12, 0xff

    #@6b
    and-long/2addr v10, v12

    #@6c
    const/16 v5, 0x28

    #@6e
    shl-long/2addr v10, v5

    #@6f
    .line 378
    or-long/2addr v8, v10

    #@70
    .line 381
    add-int/lit8 v2, v3, 0x1

    #@72
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    #@74
    int-to-long v10, v5

    #@75
    const-wide/16 v12, 0xff

    #@77
    and-long/2addr v10, v12

    #@78
    const/16 v5, 0x20

    #@7a
    shl-long/2addr v10, v5

    #@7b
    .line 378
    or-long/2addr v8, v10

    #@7c
    .line 382
    add-int/lit8 v3, v2, 0x1

    #@7e
    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    #@80
    int-to-long v10, v5

    #@81
    const-wide/16 v12, 0xff

    #@83
    and-long/2addr v10, v12

    #@84
    const/16 v5, 0x18

    #@86
    shl-long/2addr v10, v5

    #@87
    .line 378
    or-long/2addr v8, v10

    #@88
    .line 383
    add-int/lit8 v2, v3, 0x1

    #@8a
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    #@8c
    int-to-long v10, v5

    #@8d
    const-wide/16 v12, 0xff

    #@8f
    and-long/2addr v10, v12

    #@90
    const/16 v5, 0x10

    #@92
    shl-long/2addr v10, v5

    #@93
    .line 378
    or-long/2addr v8, v10

    #@94
    .line 384
    add-int/lit8 v3, v2, 0x1

    #@96
    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v5, v0, v2

    #@98
    int-to-long v10, v5

    #@99
    const-wide/16 v12, 0xff

    #@9b
    and-long/2addr v10, v12

    #@9c
    const/16 v5, 0x8

    #@9e
    shl-long/2addr v10, v5

    #@9f
    .line 378
    or-long/2addr v8, v10

    #@a0
    .line 385
    add-int/lit8 v2, v3, 0x1

    #@a2
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v5, v0, v3

    #@a4
    int-to-long v10, v5

    #@a5
    const-wide/16 v12, 0xff

    #@a7
    and-long/2addr v10, v12

    #@a8
    .line 378
    or-long v6, v8, v10

    #@aa
    .line 386
    .local v6, "v":J
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@ac
    const-wide/16 v10, 0x8

    #@ae
    sub-long/2addr v8, v10

    #@af
    iput-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@b1
    .line 388
    if-ne v2, v1, :cond_2

    #@b3
    .line 389
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@b6
    move-result-object v5

    #@b7
    iput-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@b9
    .line 390
    invoke-static {v4}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@bc
    .line 395
    :goto_0
    return-wide v6

    #@bd
    .line 392
    :cond_2
    iput v2, v4, Lcom/android/okhttp/okio/Segment;->pos:I

    #@bf
    goto :goto_0
.end method

.method public readLongLe()J
    .locals 2

    #@0
    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/android/okhttp/okio/Util;->reverseBytesLong(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public readShort()S
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x2

    #@2
    .line 304
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    cmp-long v6, v6, v8

    #@6
    if-gez v6, :cond_0

    #@8
    new-instance v6, Ljava/lang/IllegalStateException;

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "size < 2: "

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@18
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v6

    #@24
    .line 306
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@26
    .line 307
    .local v5, "segment":Lcom/android/okhttp/okio/Segment;
    iget v2, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@28
    .line 308
    .local v2, "pos":I
    iget v1, v5, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2a
    .line 311
    .local v1, "limit":I
    sub-int v6, v1, v2

    #@2c
    const/4 v7, 0x2

    #@2d
    if-ge v6, v7, :cond_1

    #@2f
    .line 312
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@32
    move-result v6

    #@33
    and-int/lit16 v6, v6, 0xff

    #@35
    shl-int/lit8 v6, v6, 0x8

    #@37
    .line 313
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@3a
    move-result v7

    #@3b
    and-int/lit16 v7, v7, 0xff

    #@3d
    .line 312
    or-int v4, v6, v7

    #@3f
    .line 314
    .local v4, "s":I
    int-to-short v6, v4

    #@40
    return v6

    #@41
    .line 317
    .end local v4    # "s":I
    :cond_1
    iget-object v0, v5, Lcom/android/okhttp/okio/Segment;->data:[B

    #@43
    .line 318
    .local v0, "data":[B
    add-int/lit8 v3, v2, 0x1

    #@45
    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-byte v6, v0, v2

    #@47
    and-int/lit16 v6, v6, 0xff

    #@49
    shl-int/lit8 v6, v6, 0x8

    #@4b
    .line 319
    add-int/lit8 v2, v3, 0x1

    #@4d
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v7, v0, v3

    #@4f
    and-int/lit16 v7, v7, 0xff

    #@51
    .line 318
    or-int v4, v6, v7

    #@53
    .line 320
    .restart local v4    # "s":I
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@55
    sub-long/2addr v6, v8

    #@56
    iput-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@58
    .line 322
    if-ne v2, v1, :cond_2

    #@5a
    .line 323
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@5d
    move-result-object v6

    #@5e
    iput-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@60
    .line 324
    invoke-static {v5}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@63
    .line 329
    :goto_0
    int-to-short v6, v4

    #@64
    return v6

    #@65
    .line 326
    :cond_2
    iput v2, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@67
    goto :goto_0
.end method

.method public readShortLe()S
    .locals 1

    #@0
    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readShort()S

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->reverseBytesShort(S)S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 569
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    move-wide v4, p1

    #@5
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@8
    .line 570
    if-nez p3, :cond_0

    #@a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "charset == null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 571
    :cond_0
    const-wide/32 v0, 0x7fffffff

    #@16
    cmp-long v0, p1, v0

    #@18
    if-lez v0, :cond_1

    #@1a
    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 574
    :cond_1
    cmp-long v0, p1, v2

    #@36
    if-nez v0, :cond_2

    #@38
    const-string/jumbo v0, ""

    #@3b
    return-object v0

    #@3c
    .line 576
    :cond_2
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@3e
    .line 577
    .local v7, "s":Lcom/android/okhttp/okio/Segment;
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@40
    int-to-long v0, v0

    #@41
    add-long/2addr v0, p1

    #@42
    iget v2, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@44
    int-to-long v2, v2

    #@45
    cmp-long v0, v0, v2

    #@47
    if-lez v0, :cond_3

    #@49
    .line 579
    new-instance v0, Ljava/lang/String;

    #@4b
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readByteArray(J)[B

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@52
    return-object v0

    #@53
    .line 582
    :cond_3
    new-instance v6, Ljava/lang/String;

    #@55
    iget-object v0, v7, Lcom/android/okhttp/okio/Segment;->data:[B

    #@57
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@59
    long-to-int v2, p1

    #@5a
    invoke-direct {v6, v0, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@5d
    .line 583
    .local v6, "result":Ljava/lang/String;
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@5f
    int-to-long v0, v0

    #@60
    add-long/2addr v0, p1

    #@61
    long-to-int v0, v0

    #@62
    iput v0, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@64
    .line 584
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@66
    sub-long/2addr v0, p1

    #@67
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@69
    .line 586
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@6b
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@6d
    if-ne v0, v1, :cond_4

    #@6f
    .line 587
    invoke-virtual {v7}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@72
    move-result-object v0

    #@73
    iput-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@75
    .line 588
    invoke-static {v7}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@78
    .line 591
    :cond_4
    return-object v6
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 562
    :try_start_0
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 563
    :catch_0
    move-exception v0

    #@8
    .line 564
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 550
    :try_start_0
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    sget-object v1, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@4
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 551
    :catch_0
    move-exception v0

    #@a
    .line 552
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@f
    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 557
    sget-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/okhttp/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const v10, 0xfffd

    #@5
    .line 631
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@7
    cmp-long v6, v6, v8

    #@9
    if-nez v6, :cond_0

    #@b
    new-instance v6, Ljava/io/EOFException;

    #@d
    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    #@10
    throw v6

    #@11
    .line 633
    :cond_0
    invoke-virtual {p0, v8, v9}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@14
    move-result v1

    #@15
    .line 638
    .local v1, "b0":B
    and-int/lit16 v6, v1, 0x80

    #@17
    if-nez v6, :cond_1

    #@19
    .line 640
    and-int/lit8 v3, v1, 0x7f

    #@1b
    .line 641
    .local v3, "codePoint":I
    const/4 v2, 0x1

    #@1c
    .line 642
    .local v2, "byteCount":I
    const/4 v5, 0x0

    #@1d
    .line 668
    .local v5, "min":I
    :goto_0
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1f
    int-to-long v8, v2

    #@20
    cmp-long v6, v6, v8

    #@22
    if-gez v6, :cond_5

    #@24
    .line 669
    new-instance v6, Ljava/io/EOFException;

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "size < "

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    const-string/jumbo v8, ": "

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3f
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    .line 670
    const-string/jumbo v8, " (to read code point prefixed 0x"

    #@46
    .line 669
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    .line 670
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    .line 669
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 670
    const-string/jumbo v8, ")"

    #@55
    .line 669
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@60
    throw v6

    #@61
    .line 644
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_1
    and-int/lit16 v6, v1, 0xe0

    #@63
    const/16 v7, 0xc0

    #@65
    if-ne v6, v7, :cond_2

    #@67
    .line 646
    and-int/lit8 v3, v1, 0x1f

    #@69
    .line 647
    .restart local v3    # "codePoint":I
    const/4 v2, 0x2

    #@6a
    .line 648
    .restart local v2    # "byteCount":I
    const/16 v5, 0x80

    #@6c
    .restart local v5    # "min":I
    goto :goto_0

    #@6d
    .line 650
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_2
    and-int/lit16 v6, v1, 0xf0

    #@6f
    const/16 v7, 0xe0

    #@71
    if-ne v6, v7, :cond_3

    #@73
    .line 652
    and-int/lit8 v3, v1, 0xf

    #@75
    .line 653
    .restart local v3    # "codePoint":I
    const/4 v2, 0x3

    #@76
    .line 654
    .restart local v2    # "byteCount":I
    const/16 v5, 0x800

    #@78
    .restart local v5    # "min":I
    goto :goto_0

    #@79
    .line 656
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_3
    and-int/lit16 v6, v1, 0xf8

    #@7b
    const/16 v7, 0xf0

    #@7d
    if-ne v6, v7, :cond_4

    #@7f
    .line 658
    and-int/lit8 v3, v1, 0x7

    #@81
    .line 659
    .restart local v3    # "codePoint":I
    const/4 v2, 0x4

    #@82
    .line 660
    .restart local v2    # "byteCount":I
    const/high16 v5, 0x10000

    #@84
    .restart local v5    # "min":I
    goto :goto_0

    #@85
    .line 664
    .end local v2    # "byteCount":I
    .end local v3    # "codePoint":I
    .end local v5    # "min":I
    :cond_4
    const-wide/16 v6, 0x1

    #@87
    invoke-virtual {p0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@8a
    .line 665
    return v10

    #@8b
    .line 676
    .restart local v2    # "byteCount":I
    .restart local v3    # "codePoint":I
    .restart local v5    # "min":I
    :cond_5
    const/4 v4, 0x1

    #@8c
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_7

    #@8e
    .line 677
    int-to-long v6, v4

    #@8f
    invoke-virtual {p0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@92
    move-result v0

    #@93
    .line 678
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xc0

    #@95
    const/16 v7, 0x80

    #@97
    if-ne v6, v7, :cond_6

    #@99
    .line 680
    shl-int/lit8 v3, v3, 0x6

    #@9b
    .line 681
    and-int/lit8 v6, v0, 0x3f

    #@9d
    or-int/2addr v3, v6

    #@9e
    .line 676
    add-int/lit8 v4, v4, 0x1

    #@a0
    goto :goto_1

    #@a1
    .line 683
    :cond_6
    int-to-long v6, v4

    #@a2
    invoke-virtual {p0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@a5
    .line 684
    return v10

    #@a6
    .line 688
    .end local v0    # "b":B
    :cond_7
    int-to-long v6, v2

    #@a7
    invoke-virtual {p0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@aa
    .line 690
    const v6, 0x10ffff

    #@ad
    if-le v3, v6, :cond_8

    #@af
    .line 691
    return v10

    #@b0
    .line 694
    :cond_8
    const v6, 0xd800

    #@b3
    if-lt v3, v6, :cond_9

    #@b5
    const v6, 0xdfff

    #@b8
    if-gt v3, v6, :cond_9

    #@ba
    .line 695
    return v10

    #@bb
    .line 698
    :cond_9
    if-ge v3, v5, :cond_a

    #@bd
    .line 699
    return v10

    #@be
    .line 702
    :cond_a
    return v3
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    const/16 v2, 0xa

    #@2
    invoke-virtual {p0, v2}, Lcom/android/okhttp/okio/Buffer;->indexOf(B)J

    #@5
    move-result-wide v0

    #@6
    .line 597
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    #@8
    cmp-long v2, v0, v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 598
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v2, v2, v4

    #@12
    if-eqz v2, :cond_0

    #@14
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@16
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    :goto_0
    return-object v2

    #@1b
    :cond_0
    const/4 v2, 0x0

    #@1c
    goto :goto_0

    #@1d
    .line 601
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .locals 7
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    .line 616
    const-wide/16 v2, 0x0

    #@4
    cmp-long v1, p1, v2

    #@6
    if-lez v1, :cond_0

    #@8
    sub-long v2, p1, v4

    #@a
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@d
    move-result v1

    #@e
    const/16 v2, 0xd

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 618
    sub-long v2, p1, v4

    #@14
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 619
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v2, 0x2

    #@1a
    invoke-virtual {p0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@1d
    .line 620
    return-object v0

    #@1e
    .line 624
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 625
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    #@25
    .line 626
    return-object v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 605
    const/16 v0, 0xa

    #@2
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->indexOf(B)J

    #@5
    move-result-wide v6

    #@6
    .line 606
    .local v6, "newline":J
    const-wide/16 v2, -0x1

    #@8
    cmp-long v0, v6, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 607
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@e
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@11
    .line 608
    .local v1, "data":Lcom/android/okhttp/okio/Buffer;
    const-wide/16 v2, 0x0

    #@13
    const-wide/16 v4, 0x20

    #@15
    iget-wide v8, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@17
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@1a
    move-result-wide v4

    #@1b
    move-object v0, p0

    #@1c
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    #@1f
    .line 609
    new-instance v0, Ljava/io/EOFException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "\\n not found: size="

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@30
    move-result-wide v4

    #@31
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 610
    const-string/jumbo v3, " content="

    #@38
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 610
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 610
    const-string/jumbo v3, "..."

    #@4b
    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 612
    .end local v1    # "data":Lcom/android/okhttp/okio/Buffer;
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/android/okhttp/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    return-object v0
.end method

.method public request(J)Z
    .locals 3
    .param p1, "byteCount"    # J

    #@0
    .prologue
    .line 106
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    cmp-long v0, v0, p1

    #@4
    if-ltz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public require(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    cmp-long v0, v0, p1

    #@4
    if-gez v0, :cond_0

    #@6
    new-instance v0, Ljava/io/EOFException;

    #@8
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v0

    #@c
    .line 101
    :cond_0
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1299
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2
    if-nez v2, :cond_0

    #@4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 1300
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 1301
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@10
    iget v2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@12
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@14
    iget v3, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    #@16
    sub-int/2addr v2, v3

    #@17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 1302
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@20
    iget-object v1, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@22
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@24
    if-eq v1, v2, :cond_1

    #@26
    .line 1303
    iget v2, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@28
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2a
    sub-int/2addr v2, v3

    #@2b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@32
    .line 1302
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@34
    goto :goto_0

    #@35
    .line 1305
    :cond_1
    return-object v0
.end method

.method public size()J
    .locals 2

    #@0
    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    return-wide v0
.end method

.method public skip(J)V
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    #@0
    .prologue
    .line 770
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p1, v2

    #@4
    if-lez v2, :cond_2

    #@6
    .line 771
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@8
    if-nez v2, :cond_1

    #@a
    new-instance v2, Ljava/io/EOFException;

    #@c
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@f
    throw v2

    #@10
    .line 773
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@12
    iget v2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@14
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@16
    iget v3, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    #@18
    sub-int/2addr v2, v3

    #@19
    int-to-long v2, v2

    #@1a
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@1d
    move-result-wide v2

    #@1e
    long-to-int v1, v2

    #@1f
    .line 774
    .local v1, "toSkip":I
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@21
    int-to-long v4, v1

    #@22
    sub-long/2addr v2, v4

    #@23
    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@25
    .line 775
    int-to-long v2, v1

    #@26
    sub-long/2addr p1, v2

    #@27
    .line 776
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@29
    iget v3, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2b
    add-int/2addr v3, v1

    #@2c
    iput v3, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2e
    .line 778
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@30
    iget v2, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    #@32
    iget-object v3, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@34
    iget v3, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@36
    if-ne v2, v3, :cond_0

    #@38
    .line 779
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@3a
    .line 780
    .local v0, "toRecycle":Lcom/android/okhttp/okio/Segment;
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@3d
    move-result-object v2

    #@3e
    iput-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@40
    .line 781
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@43
    goto :goto_0

    #@44
    .line 769
    .end local v0    # "toRecycle":Lcom/android/okhttp/okio/Segment;
    .end local v1    # "toSkip":I
    :cond_2
    return-void
.end method

.method public snapshot()Lcom/android/okhttp/okio/ByteString;
    .locals 4

    #@0
    .prologue
    .line 1393
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    const-wide/32 v2, 0x7fffffff

    #@5
    cmp-long v0, v0, v2

    #@7
    if-lez v0, :cond_0

    #@9
    .line 1394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "size > Integer.MAX_VALUE: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@19
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1396
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@27
    long-to-int v0, v0

    #@28
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->snapshot(I)Lcom/android/okhttp/okio/ByteString;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public snapshot(I)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 1403
    if-nez p1, :cond_0

    #@2
    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    #@4
    return-object v0

    #@5
    .line 1404
    :cond_0
    new-instance v0, Lcom/android/okhttp/okio/SegmentedByteString;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;-><init>(Lcom/android/okhttp/okio/Buffer;I)V

    #@a
    return-object v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 1294
    sget-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 1355
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@5
    const-wide/16 v6, 0x0

    #@7
    cmp-long v4, v4, v6

    #@9
    if-nez v4, :cond_0

    #@b
    .line 1356
    const-string/jumbo v4, "Buffer[size=0]"

    #@e
    return-object v4

    #@f
    .line 1359
    :cond_0
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@11
    const-wide/16 v6, 0x10

    #@13
    cmp-long v4, v4, v6

    #@15
    if-gtz v4, :cond_1

    #@17
    .line 1360
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->clone()Lcom/android/okhttp/okio/Buffer;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@1e
    move-result-object v0

    #@1f
    .line 1361
    .local v0, "data":Lcom/android/okhttp/okio/ByteString;
    const-string/jumbo v4, "Buffer[size=%s data=%s]"

    #@22
    new-array v5, v10, [Ljava/lang/Object;

    #@24
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v5, v8

    #@2c
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    aput-object v6, v5, v9

    #@32
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    return-object v4

    #@37
    .line 1365
    .end local v0    # "data":Lcom/android/okhttp/okio/ByteString;
    :cond_1
    :try_start_0
    const-string/jumbo v4, "MD5"

    #@3a
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3d
    move-result-object v2

    #@3e
    .line 1366
    .local v2, "md5":Ljava/security/MessageDigest;
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@40
    iget-object v4, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    #@42
    iget-object v5, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@44
    iget v5, v5, Lcom/android/okhttp/okio/Segment;->pos:I

    #@46
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@48
    iget v6, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4a
    iget-object v7, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@4c
    iget v7, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@4e
    sub-int/2addr v6, v7

    #@4f
    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    #@52
    .line 1367
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@54
    iget-object v3, v4, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@56
    .local v3, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@58
    if-eq v3, v4, :cond_2

    #@5a
    .line 1368
    iget-object v4, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@5c
    iget v5, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    #@5e
    iget v6, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@60
    iget v7, v3, Lcom/android/okhttp/okio/Segment;->pos:I

    #@62
    sub-int/2addr v6, v7

    #@63
    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    #@66
    .line 1367
    iget-object v3, v3, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@68
    goto :goto_0

    #@69
    .line 1370
    :cond_2
    const-string/jumbo v4, "Buffer[size=%s md5=%s]"

    #@6c
    const/4 v5, 0x2

    #@6d
    new-array v5, v5, [Ljava/lang/Object;

    #@6f
    .line 1371
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@74
    move-result-object v6

    #@75
    const/4 v7, 0x0

    #@76
    aput-object v6, v5, v7

    #@78
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    #@7b
    move-result-object v6

    #@7c
    invoke-static {v6}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    const/4 v7, 0x1

    #@85
    aput-object v6, v5, v7

    #@87
    .line 1370
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    move-result-object v4

    #@8b
    return-object v4

    #@8c
    .line 1372
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "s":Lcom/android/okhttp/okio/Segment;
    :catch_0
    move-exception v1

    #@8d
    .line 1373
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    #@8f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@92
    throw v4
.end method

.method writableSegment(I)Lcom/android/okhttp/okio/Segment;
    .locals 3
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    const/16 v2, 0x800

    #@2
    .line 1111
    const/4 v1, 0x1

    #@3
    if-lt p1, v1, :cond_0

    #@5
    if-le p1, v2, :cond_1

    #@7
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v1

    #@d
    .line 1113
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@f
    if-nez v1, :cond_2

    #@11
    .line 1114
    invoke-static {}, Lcom/android/okhttp/okio/SegmentPool;->take()Lcom/android/okhttp/okio/Segment;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@17
    .line 1115
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@19
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1b
    iput-object v1, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@1d
    iget-object v2, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1f
    iput-object v1, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@21
    return-object v1

    #@22
    .line 1118
    :cond_2
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@24
    iget-object v0, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@26
    .line 1119
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@28
    add-int/2addr v1, p1

    #@29
    if-gt v1, v2, :cond_3

    #@2b
    iget-boolean v1, v0, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 1122
    :goto_0
    return-object v0

    #@30
    .line 1120
    :cond_3
    invoke-static {}, Lcom/android/okhttp/okio/SegmentPool;->take()Lcom/android/okhttp/okio/Segment;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    #@37
    move-result-object v0

    #@38
    goto :goto_0
.end method

.method public write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;
    .locals 2
    .param p1, "byteString"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 787
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "byteString == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 788
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/okhttp/okio/ByteString;->write(Lcom/android/okhttp/okio/Buffer;)V

    #@e
    .line 789
    return-object p0
.end method

.method public write([B)Lcom/android/okhttp/okio/Buffer;
    .locals 2
    .param p1, "source"    # [B

    #@0
    .prologue
    .line 930
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 931
    :cond_0
    array-length v0, p1

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public write([BII)Lcom/android/okhttp/okio/Buffer;
    .locals 9
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 935
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 936
    :cond_0
    array-length v0, p1

    #@c
    int-to-long v0, v0

    #@d
    int-to-long v2, p2

    #@e
    int-to-long v4, p3

    #@f
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@12
    .line 938
    add-int v6, p2, p3

    #@14
    .line 939
    .local v6, "limit":I
    :goto_0
    if-ge p2, v6, :cond_1

    #@16
    .line 940
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@1a
    move-result-object v7

    #@1b
    .line 942
    .local v7, "tail":Lcom/android/okhttp/okio/Segment;
    sub-int v0, v6, p2

    #@1d
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1f
    rsub-int v1, v1, 0x800

    #@21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v8

    #@25
    .line 943
    .local v8, "toCopy":I
    iget-object v0, v7, Lcom/android/okhttp/okio/Segment;->data:[B

    #@27
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@29
    invoke-static {p1, p2, v0, v1, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2c
    .line 945
    add-int/2addr p2, v8

    #@2d
    .line 946
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2f
    add-int/2addr v0, v8

    #@30
    iput v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@32
    goto :goto_0

    #@33
    .line 949
    .end local v7    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v8    # "toCopy":I
    :cond_1
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@35
    int-to-long v2, p3

    #@36
    add-long/2addr v0, v2

    #@37
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@39
    .line 950
    return-object p0
.end method

.method public bridge synthetic write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "byteString"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Source;J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 4
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 963
    :goto_0
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p2, v2

    #@4
    if-lez v2, :cond_1

    #@6
    .line 964
    invoke-interface {p1, p0, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@9
    move-result-wide v0

    #@a
    .line 965
    .local v0, "read":J
    const-wide/16 v2, -0x1

    #@c
    cmp-long v2, v0, v2

    #@e
    if-nez v2, :cond_0

    #@10
    new-instance v2, Ljava/io/EOFException;

    #@12
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@15
    throw v2

    #@16
    .line 966
    :cond_0
    sub-long/2addr p2, v0

    #@17
    goto :goto_0

    #@18
    .line 968
    .end local v0    # "read":J
    :cond_1
    return-object p0
.end method

.method public bridge synthetic write([B)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic write([BII)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 934
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 10
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1176
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "source == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1177
    :cond_0
    if-ne p1, p0, :cond_1

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "source == this"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1178
    :cond_1
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1a
    move-wide v4, p2

    #@1b
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@1e
    .line 1180
    :goto_0
    cmp-long v0, p2, v2

    #@20
    if-lez v0, :cond_7

    #@22
    .line 1182
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@24
    iget v0, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@26
    iget-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@28
    iget v1, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2a
    sub-int/2addr v0, v1

    #@2b
    int-to-long v0, v0

    #@2c
    cmp-long v0, p2, v0

    #@2e
    if-gez v0, :cond_5

    #@30
    .line 1183
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@32
    if-eqz v0, :cond_2

    #@34
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@36
    iget-object v9, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@38
    .line 1184
    :goto_1
    if-eqz v9, :cond_4

    #@3a
    iget-boolean v0, v9, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@3c
    if-eqz v0, :cond_4

    #@3e
    .line 1185
    iget v0, v9, Lcom/android/okhttp/okio/Segment;->limit:I

    #@40
    int-to-long v0, v0

    #@41
    add-long v4, p2, v0

    #@43
    iget-boolean v0, v9, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@45
    if-eqz v0, :cond_3

    #@47
    const/4 v0, 0x0

    #@48
    :goto_2
    int-to-long v0, v0

    #@49
    sub-long v0, v4, v0

    #@4b
    const-wide/16 v4, 0x800

    #@4d
    cmp-long v0, v0, v4

    #@4f
    if-gtz v0, :cond_4

    #@51
    .line 1187
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@53
    long-to-int v1, p2

    #@54
    invoke-virtual {v0, v9, v1}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    #@57
    .line 1188
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@59
    sub-long/2addr v0, p2

    #@5a
    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@5c
    .line 1189
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@5e
    add-long/2addr v0, p2

    #@5f
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@61
    .line 1190
    return-void

    #@62
    .line 1183
    :cond_2
    const/4 v9, 0x0

    #@63
    .local v9, "tail":Lcom/android/okhttp/okio/Segment;
    goto :goto_1

    #@64
    .line 1185
    .end local v9    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_3
    iget v0, v9, Lcom/android/okhttp/okio/Segment;->pos:I

    #@66
    goto :goto_2

    #@67
    .line 1194
    :cond_4
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@69
    long-to-int v1, p2

    #@6a
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Segment;->split(I)Lcom/android/okhttp/okio/Segment;

    #@6d
    move-result-object v0

    #@6e
    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@70
    .line 1199
    :cond_5
    iget-object v8, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@72
    .line 1200
    .local v8, "segmentToMove":Lcom/android/okhttp/okio/Segment;
    iget v0, v8, Lcom/android/okhttp/okio/Segment;->limit:I

    #@74
    iget v1, v8, Lcom/android/okhttp/okio/Segment;->pos:I

    #@76
    sub-int/2addr v0, v1

    #@77
    int-to-long v6, v0

    #@78
    .line 1201
    .local v6, "movedByteCount":J
    invoke-virtual {v8}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@7b
    move-result-object v0

    #@7c
    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@7e
    .line 1202
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@80
    if-nez v0, :cond_6

    #@82
    .line 1203
    iput-object v8, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@84
    .line 1204
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@86
    iget-object v1, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@88
    iget-object v4, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@8a
    iput-object v1, v4, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@8c
    iput-object v1, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@8e
    .line 1210
    :goto_3
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@90
    sub-long/2addr v0, v6

    #@91
    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@93
    .line 1211
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@95
    add-long/2addr v0, v6

    #@96
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@98
    .line 1212
    sub-long/2addr p2, v6

    #@99
    goto :goto_0

    #@9a
    .line 1206
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@9c
    iget-object v9, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@9e
    .line 1207
    .local v9, "tail":Lcom/android/okhttp/okio/Segment;
    invoke-virtual {v9, v8}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    #@a1
    move-result-object v9

    #@a2
    .line 1208
    invoke-virtual {v9}, Lcom/android/okhttp/okio/Segment;->compact()V

    #@a5
    goto :goto_3

    #@a6
    .line 1125
    .end local v6    # "movedByteCount":J
    .end local v8    # "segmentToMove":Lcom/android/okhttp/okio/Segment;
    .end local v9    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_7
    return-void
.end method

.method public writeAll(Lcom/android/okhttp/okio/Source;)J
    .locals 6
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 954
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v5, "source == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 955
    :cond_0
    const-wide/16 v2, 0x0

    #@d
    .line 956
    .local v2, "totalBytesRead":J
    :goto_0
    const-wide/16 v4, 0x800

    #@f
    invoke-interface {p1, p0, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@12
    move-result-wide v0

    #@13
    .local v0, "readCount":J
    const-wide/16 v4, -0x1

    #@15
    cmp-long v4, v0, v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 957
    add-long/2addr v2, v0

    #@1a
    goto :goto_0

    #@1b
    .line 959
    :cond_1
    return-wide v2
.end method

.method public writeByte(I)Lcom/android/okhttp/okio/Buffer;
    .locals 6
    .param p1, "b"    # I

    #@0
    .prologue
    .line 972
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, v1}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@4
    move-result-object v0

    #@5
    .line 973
    .local v0, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    #@7
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@9
    add-int/lit8 v3, v2, 0x1

    #@b
    iput v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@d
    int-to-byte v3, p1

    #@e
    aput-byte v3, v1, v2

    #@10
    .line 974
    iget-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@12
    const-wide/16 v4, 0x1

    #@14
    add-long/2addr v2, v4

    #@15
    iput-wide v2, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@17
    .line 975
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;
    .locals 13
    .param p1, "v"    # J

    #@0
    .prologue
    const-wide/16 v10, 0xa

    #@2
    const-wide/16 v8, 0x0

    #@4
    .line 1032
    cmp-long v6, p1, v8

    #@6
    if-nez v6, :cond_0

    #@8
    .line 1034
    const/16 v6, 0x30

    #@a
    invoke-virtual {p0, v6}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@d
    move-result-object v6

    #@e
    return-object v6

    #@f
    .line 1037
    :cond_0
    const/4 v2, 0x0

    #@10
    .line 1038
    .local v2, "negative":Z
    cmp-long v6, p1, v8

    #@12
    if-gez v6, :cond_2

    #@14
    .line 1039
    neg-long p1, p1

    #@15
    .line 1040
    cmp-long v6, p1, v8

    #@17
    if-gez v6, :cond_1

    #@19
    .line 1041
    const-string/jumbo v6, "-9223372036854775808"

    #@1c
    invoke-virtual {p0, v6}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@1f
    move-result-object v6

    #@20
    return-object v6

    #@21
    .line 1043
    :cond_1
    const/4 v2, 0x1

    #@22
    .line 1048
    :cond_2
    const-wide/32 v6, 0x5f5e100

    #@25
    cmp-long v6, p1, v6

    #@27
    if-gez v6, :cond_b

    #@29
    .line 1049
    const-wide/16 v6, 0x2710

    #@2b
    cmp-long v6, p1, v6

    #@2d
    if-gez v6, :cond_7

    #@2f
    .line 1050
    const-wide/16 v6, 0x64

    #@31
    cmp-long v6, p1, v6

    #@33
    if-gez v6, :cond_5

    #@35
    .line 1051
    cmp-long v6, p1, v10

    #@37
    if-gez v6, :cond_4

    #@39
    const/4 v5, 0x1

    #@3a
    .line 1066
    .local v5, "width":I
    :goto_0
    if-eqz v2, :cond_3

    #@3c
    .line 1067
    add-int/lit8 v5, v5, 0x1

    #@3e
    .line 1070
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@41
    move-result-object v4

    #@42
    .line 1071
    .local v4, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v0, v4, Lcom/android/okhttp/okio/Segment;->data:[B

    #@44
    .line 1072
    .local v0, "data":[B
    iget v6, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    #@46
    add-int v3, v6, v5

    #@48
    .line 1073
    .local v3, "pos":I
    :goto_1
    cmp-long v6, p1, v8

    #@4a
    if-eqz v6, :cond_16

    #@4c
    .line 1074
    rem-long v6, p1, v10

    #@4e
    long-to-int v1, v6

    #@4f
    .line 1075
    .local v1, "digit":I
    add-int/lit8 v3, v3, -0x1

    #@51
    sget-object v6, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    #@53
    aget-byte v6, v6, v1

    #@55
    aput-byte v6, v0, v3

    #@57
    .line 1076
    div-long/2addr p1, v10

    #@58
    goto :goto_1

    #@59
    .line 1051
    .end local v0    # "data":[B
    .end local v1    # "digit":I
    .end local v3    # "pos":I
    .end local v4    # "tail":Lcom/android/okhttp/okio/Segment;
    .end local v5    # "width":I
    :cond_4
    const/4 v5, 0x2

    #@5a
    .restart local v5    # "width":I
    goto :goto_0

    #@5b
    .line 1052
    .end local v5    # "width":I
    :cond_5
    const-wide/16 v6, 0x3e8

    #@5d
    cmp-long v6, p1, v6

    #@5f
    if-gez v6, :cond_6

    #@61
    const/4 v5, 0x3

    #@62
    .restart local v5    # "width":I
    goto :goto_0

    #@63
    .end local v5    # "width":I
    :cond_6
    const/4 v5, 0x4

    #@64
    .restart local v5    # "width":I
    goto :goto_0

    #@65
    .line 1053
    .end local v5    # "width":I
    :cond_7
    const-wide/32 v6, 0xf4240

    #@68
    cmp-long v6, p1, v6

    #@6a
    if-gez v6, :cond_9

    #@6c
    .line 1054
    const-wide/32 v6, 0x186a0

    #@6f
    cmp-long v6, p1, v6

    #@71
    if-gez v6, :cond_8

    #@73
    const/4 v5, 0x5

    #@74
    .restart local v5    # "width":I
    goto :goto_0

    #@75
    .end local v5    # "width":I
    :cond_8
    const/4 v5, 0x6

    #@76
    .restart local v5    # "width":I
    goto :goto_0

    #@77
    .line 1055
    .end local v5    # "width":I
    :cond_9
    const-wide/32 v6, 0x989680

    #@7a
    cmp-long v6, p1, v6

    #@7c
    if-gez v6, :cond_a

    #@7e
    const/4 v5, 0x7

    #@7f
    .restart local v5    # "width":I
    goto :goto_0

    #@80
    .end local v5    # "width":I
    :cond_a
    const/16 v5, 0x8

    #@82
    .restart local v5    # "width":I
    goto :goto_0

    #@83
    .line 1056
    .end local v5    # "width":I
    :cond_b
    const-wide v6, 0xe8d4a51000L

    #@88
    cmp-long v6, p1, v6

    #@8a
    if-gez v6, :cond_f

    #@8c
    .line 1057
    const-wide v6, 0x2540be400L

    #@91
    cmp-long v6, p1, v6

    #@93
    if-gez v6, :cond_d

    #@95
    .line 1058
    const-wide/32 v6, 0x3b9aca00

    #@98
    cmp-long v6, p1, v6

    #@9a
    if-gez v6, :cond_c

    #@9c
    const/16 v5, 0x9

    #@9e
    .restart local v5    # "width":I
    goto :goto_0

    #@9f
    .end local v5    # "width":I
    :cond_c
    const/16 v5, 0xa

    #@a1
    .restart local v5    # "width":I
    goto :goto_0

    #@a2
    .line 1059
    .end local v5    # "width":I
    :cond_d
    const-wide v6, 0x174876e800L

    #@a7
    cmp-long v6, p1, v6

    #@a9
    if-gez v6, :cond_e

    #@ab
    const/16 v5, 0xb

    #@ad
    .restart local v5    # "width":I
    goto :goto_0

    #@ae
    .end local v5    # "width":I
    :cond_e
    const/16 v5, 0xc

    #@b0
    .restart local v5    # "width":I
    goto :goto_0

    #@b1
    .line 1060
    .end local v5    # "width":I
    :cond_f
    const-wide v6, 0x38d7ea4c68000L

    #@b6
    cmp-long v6, p1, v6

    #@b8
    if-gez v6, :cond_12

    #@ba
    .line 1061
    const-wide v6, 0x9184e72a000L

    #@bf
    cmp-long v6, p1, v6

    #@c1
    if-gez v6, :cond_10

    #@c3
    const/16 v5, 0xd

    #@c5
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@c7
    .line 1062
    .end local v5    # "width":I
    :cond_10
    const-wide v6, 0x5af3107a4000L

    #@cc
    cmp-long v6, p1, v6

    #@ce
    if-gez v6, :cond_11

    #@d0
    const/16 v5, 0xe

    #@d2
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@d4
    .end local v5    # "width":I
    :cond_11
    const/16 v5, 0xf

    #@d6
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@d8
    .line 1063
    .end local v5    # "width":I
    :cond_12
    const-wide v6, 0x16345785d8a0000L

    #@dd
    cmp-long v6, p1, v6

    #@df
    if-gez v6, :cond_14

    #@e1
    .line 1064
    const-wide v6, 0x2386f26fc10000L

    #@e6
    cmp-long v6, p1, v6

    #@e8
    if-gez v6, :cond_13

    #@ea
    const/16 v5, 0x10

    #@ec
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@ee
    .end local v5    # "width":I
    :cond_13
    const/16 v5, 0x11

    #@f0
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@f2
    .line 1065
    .end local v5    # "width":I
    :cond_14
    const-wide v6, 0xde0b6b3a7640000L

    #@f7
    cmp-long v6, p1, v6

    #@f9
    if-gez v6, :cond_15

    #@fb
    const/16 v5, 0x12

    #@fd
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@ff
    .end local v5    # "width":I
    :cond_15
    const/16 v5, 0x13

    #@101
    .restart local v5    # "width":I
    goto/16 :goto_0

    #@103
    .line 1078
    .restart local v0    # "data":[B
    .restart local v3    # "pos":I
    .restart local v4    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_16
    if-eqz v2, :cond_17

    #@105
    .line 1079
    add-int/lit8 v3, v3, -0x1

    #@107
    const/16 v6, 0x2d

    #@109
    aput-byte v6, v0, v3

    #@10b
    .line 1082
    :cond_17
    iget v6, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    #@10d
    add-int/2addr v6, v5

    #@10e
    iput v6, v4, Lcom/android/okhttp/okio/Segment;->limit:I

    #@110
    .line 1083
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@112
    int-to-long v8, v5

    #@113
    add-long/2addr v6, v8

    #@114
    iput-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@116
    .line 1084
    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1031
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeDecimalLong(J)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;
    .locals 11
    .param p1, "v"    # J

    #@0
    .prologue
    .line 1088
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p1, v6

    #@4
    if-nez v5, :cond_0

    #@6
    .line 1090
    const/16 v5, 0x30

    #@8
    invoke-virtual {p0, v5}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@b
    move-result-object v5

    #@c
    return-object v5

    #@d
    .line 1093
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    #@10
    move-result-wide v6

    #@11
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@14
    move-result v5

    #@15
    div-int/lit8 v5, v5, 0x4

    #@17
    add-int/lit8 v4, v5, 0x1

    #@19
    .line 1095
    .local v4, "width":I
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@1c
    move-result-object v3

    #@1d
    .line 1096
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v0, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@1f
    .line 1097
    .local v0, "data":[B
    iget v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@21
    add-int/2addr v5, v4

    #@22
    add-int/lit8 v1, v5, -0x1

    #@24
    .local v1, "pos":I
    iget v2, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@26
    .local v2, "start":I
    :goto_0
    if-lt v1, v2, :cond_1

    #@28
    .line 1098
    sget-object v5, Lcom/android/okhttp/okio/Buffer;->DIGITS:[B

    #@2a
    const-wide/16 v6, 0xf

    #@2c
    and-long/2addr v6, p1

    #@2d
    long-to-int v6, v6

    #@2e
    aget-byte v5, v5, v6

    #@30
    aput-byte v5, v0, v1

    #@32
    .line 1099
    const/4 v5, 0x4

    #@33
    ushr-long/2addr p1, v5

    #@34
    .line 1097
    add-int/lit8 v1, v1, -0x1

    #@36
    goto :goto_0

    #@37
    .line 1101
    :cond_1
    iget v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@39
    add-int/2addr v5, v4

    #@3a
    iput v5, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3c
    .line 1102
    iget-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@3e
    int-to-long v8, v4

    #@3f
    add-long/2addr v6, v8

    #@40
    iput-wide v6, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@42
    .line 1103
    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1087
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeInt(I)Lcom/android/okhttp/okio/Buffer;
    .locals 8
    .param p1, "i"    # I

    #@0
    .prologue
    .line 994
    const/4 v4, 0x4

    #@1
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@4
    move-result-object v3

    #@5
    .line 995
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v0, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@7
    .line 996
    .local v0, "data":[B
    iget v1, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@9
    .line 997
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    #@b
    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x18

    #@d
    and-int/lit16 v4, v4, 0xff

    #@f
    int-to-byte v4, v4

    #@10
    aput-byte v4, v0, v1

    #@12
    .line 998
    add-int/lit8 v1, v2, 0x1

    #@14
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    ushr-int/lit8 v4, p1, 0x10

    #@16
    and-int/lit16 v4, v4, 0xff

    #@18
    int-to-byte v4, v4

    #@19
    aput-byte v4, v0, v2

    #@1b
    .line 999
    add-int/lit8 v2, v1, 0x1

    #@1d
    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-int/lit8 v4, p1, 0x8

    #@1f
    and-int/lit16 v4, v4, 0xff

    #@21
    int-to-byte v4, v4

    #@22
    aput-byte v4, v0, v1

    #@24
    .line 1000
    add-int/lit8 v1, v2, 0x1

    #@26
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    #@28
    int-to-byte v4, v4

    #@29
    aput-byte v4, v0, v2

    #@2b
    .line 1001
    iput v1, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@2d
    .line 1002
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2f
    const-wide/16 v6, 0x4

    #@31
    add-long/2addr v4, v6

    #@32
    iput-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@34
    .line 1003
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 993
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeIntLe(I)Lcom/android/okhttp/okio/Buffer;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1007
    invoke-static {p1}, Lcom/android/okhttp/okio/Util;->reverseBytesInt(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeInt(I)Lcom/android/okhttp/okio/Buffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeIntLe(I)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeLong(J)Lcom/android/okhttp/okio/Buffer;
    .locals 9
    .param p1, "v"    # J

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const-wide/16 v6, 0xff

    #@4
    .line 1011
    invoke-virtual {p0, v8}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@7
    move-result-object v3

    #@8
    .line 1012
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v0, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@a
    .line 1013
    .local v0, "data":[B
    iget v1, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@c
    .line 1014
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    #@e
    .end local v1    # "limit":I
    .local v2, "limit":I
    const/16 v4, 0x38

    #@10
    ushr-long v4, p1, v4

    #@12
    and-long/2addr v4, v6

    #@13
    long-to-int v4, v4

    #@14
    int-to-byte v4, v4

    #@15
    aput-byte v4, v0, v1

    #@17
    .line 1015
    add-int/lit8 v1, v2, 0x1

    #@19
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x30

    #@1b
    ushr-long v4, p1, v4

    #@1d
    and-long/2addr v4, v6

    #@1e
    long-to-int v4, v4

    #@1f
    int-to-byte v4, v4

    #@20
    aput-byte v4, v0, v2

    #@22
    .line 1016
    add-int/lit8 v2, v1, 0x1

    #@24
    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x28

    #@26
    ushr-long v4, p1, v4

    #@28
    and-long/2addr v4, v6

    #@29
    long-to-int v4, v4

    #@2a
    int-to-byte v4, v4

    #@2b
    aput-byte v4, v0, v1

    #@2d
    .line 1017
    add-int/lit8 v1, v2, 0x1

    #@2f
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x20

    #@31
    ushr-long v4, p1, v4

    #@33
    and-long/2addr v4, v6

    #@34
    long-to-int v4, v4

    #@35
    int-to-byte v4, v4

    #@36
    aput-byte v4, v0, v2

    #@38
    .line 1018
    add-int/lit8 v2, v1, 0x1

    #@3a
    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    const/16 v4, 0x18

    #@3c
    ushr-long v4, p1, v4

    #@3e
    and-long/2addr v4, v6

    #@3f
    long-to-int v4, v4

    #@40
    int-to-byte v4, v4

    #@41
    aput-byte v4, v0, v1

    #@43
    .line 1019
    add-int/lit8 v1, v2, 0x1

    #@45
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    const/16 v4, 0x10

    #@47
    ushr-long v4, p1, v4

    #@49
    and-long/2addr v4, v6

    #@4a
    long-to-int v4, v4

    #@4b
    int-to-byte v4, v4

    #@4c
    aput-byte v4, v0, v2

    #@4e
    .line 1020
    add-int/lit8 v2, v1, 0x1

    #@50
    .end local v1    # "limit":I
    .restart local v2    # "limit":I
    ushr-long v4, p1, v8

    #@52
    and-long/2addr v4, v6

    #@53
    long-to-int v4, v4

    #@54
    int-to-byte v4, v4

    #@55
    aput-byte v4, v0, v1

    #@57
    .line 1021
    add-int/lit8 v1, v2, 0x1

    #@59
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-long v4, p1, v6

    #@5b
    long-to-int v4, v4

    #@5c
    int-to-byte v4, v4

    #@5d
    aput-byte v4, v0, v2

    #@5f
    .line 1022
    iput v1, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@61
    .line 1023
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@63
    const-wide/16 v6, 0x8

    #@65
    add-long/2addr v4, v6

    #@66
    iput-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@68
    .line 1024
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeLongLe(J)Lcom/android/okhttp/okio/Buffer;
    .locals 3
    .param p1, "v"    # J

    #@0
    .prologue
    .line 1028
    invoke-static {p1, p2}, Lcom/android/okhttp/okio/Util;->reverseBytesLong(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeLong(J)Lcom/android/okhttp/okio/Buffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1027
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeLongLe(J)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeShort(I)Lcom/android/okhttp/okio/Buffer;
    .locals 8
    .param p1, "s"    # I

    #@0
    .prologue
    .line 979
    const/4 v4, 0x2

    #@1
    invoke-virtual {p0, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@4
    move-result-object v3

    #@5
    .line 980
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v0, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@7
    .line 981
    .local v0, "data":[B
    iget v1, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@9
    .line 982
    .local v1, "limit":I
    add-int/lit8 v2, v1, 0x1

    #@b
    .end local v1    # "limit":I
    .local v2, "limit":I
    ushr-int/lit8 v4, p1, 0x8

    #@d
    and-int/lit16 v4, v4, 0xff

    #@f
    int-to-byte v4, v4

    #@10
    aput-byte v4, v0, v1

    #@12
    .line 983
    add-int/lit8 v1, v2, 0x1

    #@14
    .end local v2    # "limit":I
    .restart local v1    # "limit":I
    and-int/lit16 v4, p1, 0xff

    #@16
    int-to-byte v4, v4

    #@17
    aput-byte v4, v0, v2

    #@19
    .line 984
    iput v1, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1b
    .line 985
    iget-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1d
    const-wide/16 v6, 0x2

    #@1f
    add-long/2addr v4, v6

    #@20
    iput-wide v4, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@22
    .line 986
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeShortLe(I)Lcom/android/okhttp/okio/Buffer;
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 990
    int-to-short v0, p1

    #@1
    invoke-static {v0}, Lcom/android/okhttp/okio/Util;->reverseBytesShort(S)S

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeShort(I)Lcom/android/okhttp/okio/Buffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 989
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeShortLe(I)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 914
    if-nez p1, :cond_0

    #@3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "string == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 915
    :cond_0
    if-gez p2, :cond_1

    #@e
    new-instance v1, Ljava/lang/IllegalAccessError;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "beginIndex < 0: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 916
    :cond_1
    if-ge p3, p2, :cond_2

    #@2a
    .line 917
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "endIndex < beginIndex: "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, " < "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 919
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@52
    move-result v1

    #@53
    if-le p3, v1, :cond_3

    #@55
    .line 920
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@57
    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v3, "endIndex > string.length: "

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    const-string/jumbo v3, " > "

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@71
    move-result v3

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    .line 920
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v1

    #@7e
    .line 923
    :cond_3
    if-nez p4, :cond_4

    #@80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@82
    const-string/jumbo v2, "charset == null"

    #@85
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v1

    #@89
    .line 924
    :cond_4
    sget-object v1, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@8b
    invoke-virtual {p4, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v1

    #@8f
    if-eqz v1, :cond_5

    #@91
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@94
    move-result-object v1

    #@95
    return-object v1

    #@96
    .line 925
    :cond_5
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9d
    move-result-object v0

    #@9e
    .line 926
    .local v0, "data":[B
    array-length v1, v0

    #@9f
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@a2
    move-result-object v1

    #@a3
    return-object v1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 909
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 908
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)Lcom/android/okhttp/okio/Buffer;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/android/okhttp/okio/Buffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lcom/android/okhttp/okio/Buffer;
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 203
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "out == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 204
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@f
    move-wide v4, p2

    #@10
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@13
    .line 206
    iget-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@15
    .line 207
    .local v6, "s":Lcom/android/okhttp/okio/Segment;
    :cond_1
    :goto_0
    cmp-long v0, p2, v2

    #@17
    if-lez v0, :cond_2

    #@19
    .line 208
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1b
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1d
    sub-int/2addr v0, v1

    #@1e
    int-to-long v0, v0

    #@1f
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@22
    move-result-wide v0

    #@23
    long-to-int v7, v0

    #@24
    .line 209
    .local v7, "toCopy":I
    iget-object v0, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    #@26
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@28
    invoke-virtual {p1, v0, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    #@2b
    .line 211
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2d
    add-int/2addr v0, v7

    #@2e
    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@30
    .line 212
    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@32
    int-to-long v4, v7

    #@33
    sub-long/2addr v0, v4

    #@34
    iput-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@36
    .line 213
    int-to-long v0, v7

    #@37
    sub-long/2addr p2, v0

    #@38
    .line 215
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@3a
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3c
    if-ne v0, v1, :cond_1

    #@3e
    .line 216
    move-object v8, v6

    #@3f
    .line 217
    .local v8, "toRecycle":Lcom/android/okhttp/okio/Segment;
    invoke-virtual {v8}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@42
    move-result-object v6

    #@43
    iput-object v6, p0, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@45
    .line 218
    invoke-static {v8}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@48
    goto :goto_0

    #@49
    .line 222
    .end local v7    # "toCopy":I
    .end local v8    # "toRecycle":Lcom/android/okhttp/okio/Segment;
    :cond_2
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;
    .locals 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    #@0
    .prologue
    .line 797
    if-nez p1, :cond_0

    #@2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v13, "string == null"

    #@7
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v12

    #@b
    .line 798
    :cond_0
    if-gez p2, :cond_1

    #@d
    new-instance v12, Ljava/lang/IllegalAccessError;

    #@f
    new-instance v13, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v14, "beginIndex < 0: "

    #@17
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v13

    #@1b
    move/from16 v0, p2

    #@1d
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v13

    #@21
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v13

    #@25
    invoke-direct {v12, v13}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    #@28
    throw v12

    #@29
    .line 799
    :cond_1
    move/from16 v0, p3

    #@2b
    move/from16 v1, p2

    #@2d
    if-ge v0, v1, :cond_2

    #@2f
    .line 800
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v13, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v14, "endIndex < beginIndex: "

    #@39
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v13

    #@3d
    move/from16 v0, p3

    #@3f
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v13

    #@43
    const-string/jumbo v14, " < "

    #@46
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v13

    #@4a
    move/from16 v0, p2

    #@4c
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v13

    #@50
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v13

    #@54
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v12

    #@58
    .line 802
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@5b
    move-result v12

    #@5c
    move/from16 v0, p3

    #@5e
    if-le v0, v12, :cond_3

    #@60
    .line 803
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@62
    .line 804
    new-instance v13, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v14, "endIndex > string.length: "

    #@6a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v13

    #@6e
    move/from16 v0, p3

    #@70
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v13

    #@74
    const-string/jumbo v14, " > "

    #@77
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v13

    #@7b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@7e
    move-result v14

    #@7f
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v13

    #@83
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v13

    #@87
    .line 803
    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v12

    #@8b
    .line 808
    :cond_3
    move/from16 v5, p2

    #@8d
    .local v5, "i":I
    move v6, v5

    #@8e
    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    move/from16 v0, p3

    #@90
    if-ge v6, v0, :cond_d

    #@92
    .line 809
    move-object/from16 v0, p1

    #@94
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@97
    move-result v2

    #@98
    .line 811
    .local v2, "c":I
    const/16 v12, 0x80

    #@9a
    if-ge v2, v12, :cond_6

    #@9c
    .line 812
    const/4 v12, 0x1

    #@9d
    move-object/from16 v0, p0

    #@9f
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@a2
    move-result-object v11

    #@a3
    .line 813
    .local v11, "tail":Lcom/android/okhttp/okio/Segment;
    iget-object v4, v11, Lcom/android/okhttp/okio/Segment;->data:[B

    #@a5
    .line 814
    .local v4, "data":[B
    iget v12, v11, Lcom/android/okhttp/okio/Segment;->limit:I

    #@a7
    sub-int v10, v12, v6

    #@a9
    .line 815
    .local v10, "segmentOffset":I
    rsub-int v12, v10, 0x800

    #@ab
    move/from16 v0, p3

    #@ad
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    #@b0
    move-result v8

    #@b1
    .line 818
    .local v8, "runLimit":I
    add-int/lit8 v5, v6, 0x1

    #@b3
    .end local v6    # "i":I
    .restart local v5    # "i":I
    add-int v12, v10, v6

    #@b5
    int-to-byte v13, v2

    #@b6
    aput-byte v13, v4, v12

    #@b8
    move v6, v5

    #@b9
    .line 822
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v8, :cond_4

    #@bb
    .line 823
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@c0
    move-result v2

    #@c1
    .line 824
    const/16 v12, 0x80

    #@c3
    if-lt v2, v12, :cond_5

    #@c5
    .line 828
    :cond_4
    add-int v12, v6, v10

    #@c7
    iget v13, v11, Lcom/android/okhttp/okio/Segment;->limit:I

    #@c9
    sub-int v9, v12, v13

    #@cb
    .line 829
    .local v9, "runSize":I
    iget v12, v11, Lcom/android/okhttp/okio/Segment;->limit:I

    #@cd
    add-int/2addr v12, v9

    #@ce
    iput v12, v11, Lcom/android/okhttp/okio/Segment;->limit:I

    #@d0
    .line 830
    move-object/from16 v0, p0

    #@d2
    iget-wide v12, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@d4
    int-to-long v14, v9

    #@d5
    add-long/2addr v12, v14

    #@d6
    move-object/from16 v0, p0

    #@d8
    iput-wide v12, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@da
    move v5, v6

    #@db
    .end local v4    # "data":[B
    .end local v6    # "i":I
    .end local v8    # "runLimit":I
    .end local v9    # "runSize":I
    .end local v10    # "segmentOffset":I
    .end local v11    # "tail":Lcom/android/okhttp/okio/Segment;
    .restart local v5    # "i":I
    :goto_2
    move v6, v5

    #@dc
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    #@dd
    .line 825
    .restart local v4    # "data":[B
    .restart local v8    # "runLimit":I
    .restart local v10    # "segmentOffset":I
    .restart local v11    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_5
    add-int/lit8 v5, v6, 0x1

    #@df
    .end local v6    # "i":I
    .restart local v5    # "i":I
    add-int v12, v10, v6

    #@e1
    int-to-byte v13, v2

    #@e2
    aput-byte v13, v4, v12

    #@e4
    move v6, v5

    #@e5
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@e6
    .line 832
    .end local v4    # "data":[B
    .end local v8    # "runLimit":I
    .end local v10    # "segmentOffset":I
    .end local v11    # "tail":Lcom/android/okhttp/okio/Segment;
    :cond_6
    const/16 v12, 0x800

    #@e8
    if-ge v2, v12, :cond_7

    #@ea
    .line 834
    shr-int/lit8 v12, v2, 0x6

    #@ec
    or-int/lit16 v12, v12, 0xc0

    #@ee
    move-object/from16 v0, p0

    #@f0
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@f3
    .line 835
    and-int/lit8 v12, v2, 0x3f

    #@f5
    or-int/lit16 v12, v12, 0x80

    #@f7
    move-object/from16 v0, p0

    #@f9
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@fc
    .line 836
    add-int/lit8 v5, v6, 0x1

    #@fe
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    #@ff
    .line 838
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_7
    const v12, 0xd800

    #@102
    if-lt v2, v12, :cond_8

    #@104
    const v12, 0xdfff

    #@107
    if-le v2, v12, :cond_9

    #@109
    .line 840
    :cond_8
    shr-int/lit8 v12, v2, 0xc

    #@10b
    or-int/lit16 v12, v12, 0xe0

    #@10d
    move-object/from16 v0, p0

    #@10f
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@112
    .line 841
    shr-int/lit8 v12, v2, 0x6

    #@114
    and-int/lit8 v12, v12, 0x3f

    #@116
    or-int/lit16 v12, v12, 0x80

    #@118
    move-object/from16 v0, p0

    #@11a
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@11d
    .line 842
    and-int/lit8 v12, v2, 0x3f

    #@11f
    or-int/lit16 v12, v12, 0x80

    #@121
    move-object/from16 v0, p0

    #@123
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@126
    .line 843
    add-int/lit8 v5, v6, 0x1

    #@128
    .line 838
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    #@129
    .line 848
    .end local v5    # "i":I
    .restart local v6    # "i":I
    :cond_9
    add-int/lit8 v12, v6, 0x1

    #@12b
    move/from16 v0, p3

    #@12d
    if-ge v12, v0, :cond_b

    #@12f
    add-int/lit8 v12, v6, 0x1

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    #@136
    move-result v7

    #@137
    .line 849
    .local v7, "low":I
    :goto_3
    const v12, 0xdbff

    #@13a
    if-gt v2, v12, :cond_a

    #@13c
    const v12, 0xdc00

    #@13f
    if-ge v7, v12, :cond_c

    #@141
    .line 850
    :cond_a
    const/16 v12, 0x3f

    #@143
    move-object/from16 v0, p0

    #@145
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@148
    .line 851
    add-int/lit8 v5, v6, 0x1

    #@14a
    .line 852
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    #@14b
    .line 848
    .end local v5    # "i":I
    .end local v7    # "low":I
    .restart local v6    # "i":I
    :cond_b
    const/4 v7, 0x0

    #@14c
    goto :goto_3

    #@14d
    .line 849
    .restart local v7    # "low":I
    :cond_c
    const v12, 0xdfff

    #@150
    if-gt v7, v12, :cond_a

    #@152
    .line 858
    const v12, -0xd801

    #@155
    and-int/2addr v12, v2

    #@156
    shl-int/lit8 v12, v12, 0xa

    #@158
    const v13, -0xdc01

    #@15b
    and-int/2addr v13, v7

    #@15c
    or-int/2addr v12, v13

    #@15d
    const/high16 v13, 0x10000

    #@15f
    add-int v3, v13, v12

    #@161
    .line 861
    .local v3, "codePoint":I
    shr-int/lit8 v12, v3, 0x12

    #@163
    or-int/lit16 v12, v12, 0xf0

    #@165
    move-object/from16 v0, p0

    #@167
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@16a
    .line 862
    shr-int/lit8 v12, v3, 0xc

    #@16c
    and-int/lit8 v12, v12, 0x3f

    #@16e
    or-int/lit16 v12, v12, 0x80

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@175
    .line 863
    shr-int/lit8 v12, v3, 0x6

    #@177
    and-int/lit8 v12, v12, 0x3f

    #@179
    or-int/lit16 v12, v12, 0x80

    #@17b
    move-object/from16 v0, p0

    #@17d
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@180
    .line 864
    and-int/lit8 v12, v3, 0x3f

    #@182
    or-int/lit16 v12, v12, 0x80

    #@184
    move-object/from16 v0, p0

    #@186
    invoke-virtual {v0, v12}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@189
    .line 865
    add-int/lit8 v5, v6, 0x2

    #@18b
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2

    #@18d
    .line 869
    .end local v2    # "c":I
    .end local v3    # "codePoint":I
    .end local v5    # "i":I
    .end local v7    # "low":I
    .restart local v6    # "i":I
    :cond_d
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 796
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;
    .locals 3
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 873
    const/16 v0, 0x80

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 875
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@7
    .line 905
    :goto_0
    return-object p0

    #@8
    .line 877
    :cond_0
    const/16 v0, 0x800

    #@a
    if-ge p1, v0, :cond_1

    #@c
    .line 879
    shr-int/lit8 v0, p1, 0x6

    #@e
    or-int/lit16 v0, v0, 0xc0

    #@10
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@13
    .line 880
    and-int/lit8 v0, p1, 0x3f

    #@15
    or-int/lit16 v0, v0, 0x80

    #@17
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@1a
    goto :goto_0

    #@1b
    .line 882
    :cond_1
    const/high16 v0, 0x10000

    #@1d
    if-ge p1, v0, :cond_3

    #@1f
    .line 883
    const v0, 0xd800

    #@22
    if-lt p1, v0, :cond_2

    #@24
    const v0, 0xdfff

    #@27
    if-gt p1, v0, :cond_2

    #@29
    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Unexpected code point: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 884
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 889
    :cond_2
    shr-int/lit8 v0, p1, 0xc

    #@49
    or-int/lit16 v0, v0, 0xe0

    #@4b
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@4e
    .line 890
    shr-int/lit8 v0, p1, 0x6

    #@50
    and-int/lit8 v0, v0, 0x3f

    #@52
    or-int/lit16 v0, v0, 0x80

    #@54
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@57
    .line 891
    and-int/lit8 v0, p1, 0x3f

    #@59
    or-int/lit16 v0, v0, 0x80

    #@5b
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@5e
    goto :goto_0

    #@5f
    .line 893
    :cond_3
    const v0, 0x10ffff

    #@62
    if-gt p1, v0, :cond_4

    #@64
    .line 895
    shr-int/lit8 v0, p1, 0x12

    #@66
    or-int/lit16 v0, v0, 0xf0

    #@68
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@6b
    .line 896
    shr-int/lit8 v0, p1, 0xc

    #@6d
    and-int/lit8 v0, v0, 0x3f

    #@6f
    or-int/lit16 v0, v0, 0x80

    #@71
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@74
    .line 897
    shr-int/lit8 v0, p1, 0x6

    #@76
    and-int/lit8 v0, v0, 0x3f

    #@78
    or-int/lit16 v0, v0, 0x80

    #@7a
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@7d
    .line 898
    and-int/lit8 v0, p1, 0x3f

    #@7f
    or-int/lit16 v0, v0, 0x80

    #@81
    invoke-virtual {p0, v0}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@84
    goto :goto_0

    #@85
    .line 901
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@87
    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v2, "Unexpected code point: "

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    .line 901
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lcom/android/okhttp/okio/BufferedSink;
    .locals 1
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
