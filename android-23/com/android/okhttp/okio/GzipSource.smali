.class public final Lcom/android/okhttp/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .locals 3
    .param p1, "source"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@6
    .line 58
    new-instance v0, Ljava/util/zip/CRC32;

    #@8
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    #@d
    .line 61
    if-nez p1, :cond_0

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "source == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 62
    :cond_0
    new-instance v0, Ljava/util/zip/Inflater;

    #@1a
    const/4 v1, 0x1

    #@1b
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@1e
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    #@20
    .line 63
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@26
    .line 64
    new-instance v0, Lcom/android/okhttp/okio/InflaterSource;

    #@28
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2a
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    #@2c
    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/okio/InflaterSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    #@2f
    iput-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    #@31
    .line 60
    return-void
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    if-eq p3, p2, :cond_0

    #@2
    .line 205
    new-instance v0, Ljava/io/IOException;

    #@4
    .line 206
    const-string/jumbo v1, "%s: actual 0x%08x != expected 0x%08x"

    #@7
    .line 205
    const/4 v2, 0x3

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    .line 206
    const/4 v3, 0x0

    #@b
    aput-object p1, v2, v3

    #@d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x1

    #@12
    aput-object v3, v2, v4

    #@14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    const/4 v4, 0x2

    #@19
    aput-object v3, v2, v4

    #@1b
    .line 205
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 203
    :cond_0
    return-void
.end method

.method private consumeHeader()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    const-wide/16 v2, 0xa

    #@4
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    #@7
    .line 115
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@9
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@c
    move-result-object v0

    #@d
    const-wide/16 v2, 0x3

    #@f
    invoke-virtual {v0, v2, v3}, Lcom/android/okhttp/okio/Buffer;->getByte(J)B

    #@12
    move-result v7

    #@13
    .line 116
    .local v7, "flags":B
    shr-int/lit8 v0, v7, 0x1

    #@15
    and-int/lit8 v0, v0, 0x1

    #@17
    const/4 v1, 0x1

    #@18
    if-ne v0, v1, :cond_4

    #@1a
    const/4 v6, 0x1

    #@1b
    .line 117
    .local v6, "fhcrc":Z
    :goto_0
    if-eqz v6, :cond_0

    #@1d
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@1f
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@22
    move-result-object v1

    #@23
    const-wide/16 v2, 0x0

    #@25
    const-wide/16 v4, 0xa

    #@27
    move-object v0, p0

    #@28
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    #@2b
    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2d
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    #@30
    move-result v8

    #@31
    .line 120
    .local v8, "id1id2":S
    const-string/jumbo v0, "ID1ID2"

    #@34
    const/16 v1, 0x1f8b

    #@36
    invoke-direct {p0, v0, v1, v8}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    #@39
    .line 121
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@3b
    const-wide/16 v2, 0x8

    #@3d
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@40
    .line 127
    shr-int/lit8 v0, v7, 0x2

    #@42
    and-int/lit8 v0, v0, 0x1

    #@44
    const/4 v1, 0x1

    #@45
    if-ne v0, v1, :cond_3

    #@47
    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@49
    const-wide/16 v2, 0x2

    #@4b
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    #@4e
    .line 129
    if-eqz v6, :cond_1

    #@50
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@52
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@55
    move-result-object v1

    #@56
    const-wide/16 v2, 0x0

    #@58
    const-wide/16 v4, 0x2

    #@5a
    move-object v0, p0

    #@5b
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    #@5e
    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@60
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readShortLe()S

    #@67
    move-result v9

    #@68
    .line 131
    .local v9, "xlen":I
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@6a
    int-to-long v2, v9

    #@6b
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    #@6e
    .line 132
    if-eqz v6, :cond_2

    #@70
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@72
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@75
    move-result-object v1

    #@76
    const-wide/16 v2, 0x0

    #@78
    int-to-long v4, v9

    #@79
    move-object v0, p0

    #@7a
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    #@7d
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@7f
    int-to-long v2, v9

    #@80
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@83
    .line 140
    .end local v9    # "xlen":I
    :cond_3
    shr-int/lit8 v0, v7, 0x3

    #@85
    and-int/lit8 v0, v0, 0x1

    #@87
    const/4 v1, 0x1

    #@88
    if-ne v0, v1, :cond_7

    #@8a
    .line 141
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@8c
    const/4 v1, 0x0

    #@8d
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    #@90
    move-result-wide v10

    #@91
    .line 142
    .local v10, "index":J
    const-wide/16 v0, -0x1

    #@93
    cmp-long v0, v10, v0

    #@95
    if-nez v0, :cond_5

    #@97
    new-instance v0, Ljava/io/EOFException;

    #@99
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@9c
    throw v0

    #@9d
    .line 116
    .end local v6    # "fhcrc":Z
    .end local v8    # "id1id2":S
    .end local v10    # "index":J
    :cond_4
    const/4 v6, 0x0

    #@9e
    .restart local v6    # "fhcrc":Z
    goto/16 :goto_0

    #@a0
    .line 143
    .restart local v8    # "id1id2":S
    .restart local v10    # "index":J
    :cond_5
    if-eqz v6, :cond_6

    #@a2
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@a4
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@a7
    move-result-object v1

    #@a8
    const-wide/16 v2, 0x0

    #@aa
    const-wide/16 v4, 0x1

    #@ac
    add-long/2addr v4, v10

    #@ad
    move-object v0, p0

    #@ae
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    #@b1
    .line 144
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@b3
    const-wide/16 v2, 0x1

    #@b5
    add-long/2addr v2, v10

    #@b6
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@b9
    .line 151
    .end local v10    # "index":J
    :cond_7
    shr-int/lit8 v0, v7, 0x4

    #@bb
    and-int/lit8 v0, v0, 0x1

    #@bd
    const/4 v1, 0x1

    #@be
    if-ne v0, v1, :cond_a

    #@c0
    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@c2
    const/4 v1, 0x0

    #@c3
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->indexOf(B)J

    #@c6
    move-result-wide v10

    #@c7
    .line 153
    .restart local v10    # "index":J
    const-wide/16 v0, -0x1

    #@c9
    cmp-long v0, v10, v0

    #@cb
    if-nez v0, :cond_8

    #@cd
    new-instance v0, Ljava/io/EOFException;

    #@cf
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@d2
    throw v0

    #@d3
    .line 154
    :cond_8
    if-eqz v6, :cond_9

    #@d5
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@d7
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@da
    move-result-object v1

    #@db
    const-wide/16 v2, 0x0

    #@dd
    const-wide/16 v4, 0x1

    #@df
    add-long/2addr v4, v10

    #@e0
    move-object v0, p0

    #@e1
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    #@e4
    .line 155
    :cond_9
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@e6
    const-wide/16 v2, 0x1

    #@e8
    add-long/2addr v2, v10

    #@e9
    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@ec
    .line 162
    .end local v10    # "index":J
    :cond_a
    if-eqz v6, :cond_b

    #@ee
    .line 163
    const-string/jumbo v0, "FHCRC"

    #@f1
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@f3
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readShortLe()S

    #@f6
    move-result v1

    #@f7
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    #@f9
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    #@fc
    move-result-wide v2

    #@fd
    long-to-int v2, v2

    #@fe
    int-to-short v2, v2

    #@ff
    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    #@102
    .line 164
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    #@104
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    #@107
    .line 107
    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    const-string/jumbo v0, "CRC"

    #@3
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@5
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    #@8
    move-result v1

    #@9
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    #@b
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    #@e
    move-result-wide v2

    #@f
    long-to-int v2, v2

    #@10
    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    #@13
    .line 174
    const-string/jumbo v0, "ISIZE"

    #@16
    iget-object v1, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@18
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readIntLe()I

    #@1b
    move-result v1

    #@1c
    iget-object v2, p0, Lcom/android/okhttp/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    #@1e
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    #@21
    move-result v2

    #@22
    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    #@25
    .line 168
    return-void
.end method

.method private updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    #@0
    .prologue
    .line 188
    iget-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2
    .line 189
    .local v1, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4
    iget v4, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@6
    sub-int/2addr v3, v4

    #@7
    int-to-long v4, v3

    #@8
    cmp-long v3, p2, v4

    #@a
    if-ltz v3, :cond_0

    #@c
    .line 190
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@e
    iget v4, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@10
    sub-int/2addr v3, v4

    #@11
    int-to-long v4, v3

    #@12
    sub-long/2addr p2, v4

    #@13
    .line 189
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@15
    goto :goto_0

    #@16
    .line 194
    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    #@18
    cmp-long v3, p4, v4

    #@1a
    if-lez v3, :cond_1

    #@1c
    .line 195
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1e
    int-to-long v4, v3

    #@1f
    add-long/2addr v4, p2

    #@20
    long-to-int v0, v4

    #@21
    .line 196
    .local v0, "pos":I
    iget v3, v1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@23
    sub-int/2addr v3, v0

    #@24
    int-to-long v4, v3

    #@25
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    #@28
    move-result-wide v4

    #@29
    long-to-int v2, v4

    #@2a
    .line 197
    .local v2, "toUpdate":I
    iget-object v3, p0, Lcom/android/okhttp/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    #@2c
    iget-object v4, v1, Lcom/android/okhttp/okio/Segment;->data:[B

    #@2e
    invoke-virtual {v3, v4, v0, v2}, Ljava/util/zip/CRC32;->update([BII)V

    #@31
    .line 198
    int-to-long v4, v2

    #@32
    sub-long/2addr p4, v4

    #@33
    .line 199
    const-wide/16 p2, 0x0

    #@35
    .line 194
    iget-object v1, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@37
    goto :goto_1

    #@38
    .line 186
    .end local v0    # "pos":I
    .end local v2    # "toUpdate":I
    :cond_1
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
    .line 182
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/InflaterSource;->close()V

    #@5
    .line 181
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 12
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v1, 0x1

    #@4
    const-wide/16 v6, 0x0

    #@6
    .line 68
    cmp-long v0, p2, v6

    #@8
    if-gez v0, :cond_0

    #@a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v6, "byteCount < 0: "

    #@14
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 69
    :cond_0
    cmp-long v0, p2, v6

    #@26
    if-nez v0, :cond_1

    #@28
    return-wide v6

    #@29
    .line 72
    :cond_1
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@2b
    if-nez v0, :cond_2

    #@2d
    .line 73
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeHeader()V

    #@30
    .line 74
    iput v1, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@32
    .line 78
    :cond_2
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@34
    if-ne v0, v1, :cond_4

    #@36
    .line 79
    iget-wide v2, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@38
    .line 80
    .local v2, "offset":J
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->inflaterSource:Lcom/android/okhttp/okio/InflaterSource;

    #@3a
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/InflaterSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@3d
    move-result-wide v4

    #@3e
    .line 81
    .local v4, "result":J
    cmp-long v0, v4, v10

    #@40
    if-eqz v0, :cond_3

    #@42
    move-object v0, p0

    #@43
    move-object v1, p1

    #@44
    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/okio/GzipSource;->updateCrc(Lcom/android/okhttp/okio/Buffer;JJ)V

    #@47
    .line 83
    return-wide v4

    #@48
    .line 85
    :cond_3
    iput v8, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@4a
    .line 91
    .end local v2    # "offset":J
    .end local v4    # "result":J
    :cond_4
    iget v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@4c
    if-ne v0, v8, :cond_5

    #@4e
    .line 92
    invoke-direct {p0}, Lcom/android/okhttp/okio/GzipSource;->consumeTrailer()V

    #@51
    .line 93
    const/4 v0, 0x3

    #@52
    iput v0, p0, Lcom/android/okhttp/okio/GzipSource;->section:I

    #@54
    .line 99
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@56
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    #@59
    move-result v0

    #@5a
    if-nez v0, :cond_5

    #@5c
    .line 100
    new-instance v0, Ljava/io/IOException;

    #@5e
    const-string/jumbo v1, "gzip finished without exhausting source"

    #@61
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@64
    throw v0

    #@65
    .line 104
    :cond_5
    return-wide v10
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/okhttp/okio/GzipSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
