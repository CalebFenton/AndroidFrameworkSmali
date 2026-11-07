.class final Lcom/android/okhttp/okio/SegmentedByteString;
.super Lcom/android/okhttp/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient blacklist directory:[I

.field final transient blacklist segments:[[B


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Buffer;I)V
    .registers 10

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    .line 57
    iget-wide v1, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 62
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_11
    if-ge v2, p2, :cond_28

    .line 63
    iget v4, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v5, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    if-eq v4, v5, :cond_20

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 62
    iget-object v0, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_11

    .line 64
    :cond_20
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 71
    :cond_28
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v3, v3, 0x2

    .line 72
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    .line 75
    iget-object p1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    move v0, v1

    :goto_35
    if-ge v1, p2, :cond_52

    .line 76
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    iget-object v3, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    aput-object v3, v2, v0

    .line 77
    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 78
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aput v1, v3, v0

    .line 79
    array-length v2, v2

    add-int/2addr v2, v0

    aput v4, v3, v2

    const/4 v2, 0x1

    .line 80
    iput-boolean v2, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    add-int/2addr v0, v2

    .line 75
    iget-object p1, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    goto :goto_35

    :cond_52
    return-void
.end method

.method private blacklist segment(I)I
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p0

    if-ltz p0, :cond_f

    return p0

    :cond_f
    not-int p0, p0

    return p0
.end method

.method private blacklist toByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 222
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 257
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist base64()Ljava/lang/String;
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist base64Url()Ljava/lang/String;
    .registers 1

    .line 114
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 227
    :cond_4
    instance-of v1, p1, Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    .line 228
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_20

    .line 229
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/android/okhttp/okio/SegmentedByteString;->rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z

    move-result p0

    if-eqz p0, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public blacklist getByte(I)B
    .registers 9

    .line 126
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    .line 128
    :cond_18
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 129
    :goto_1e
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v3, p0

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 130
    aget-object p0, p0, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 233
    iget v0, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_c
    if-ge v1, v0, :cond_2b

    .line 240
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    .line 241
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 242
    aget v5, v5, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v6

    :goto_1d
    if-ge v6, v2, :cond_27

    mul-int/lit8 v3, v3, 0x1f

    .line 245
    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_27
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_c

    .line 249
    :cond_2b
    iput v3, p0, Lcom/android/okhttp/okio/ByteString;->hashCode:I

    return v3
.end method

.method public blacklist hex()Ljava/lang/String;
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist md5()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .registers 12

    .line 187
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-le p1, v0, :cond_9

    return v1

    .line 189
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v0

    :goto_d
    if-lez p4, :cond_3e

    if-nez v0, :cond_13

    move v2, v1

    goto :goto_19

    .line 190
    :cond_13
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 191
    :goto_19
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 192
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 193
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v0

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 195
    aget-object v4, v5, v0

    invoke-virtual {p2, p3, v4, v2, v3}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_38

    return v1

    :cond_38
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist rangeEquals(I[BII)Z
    .registers 12

    .line 204
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-gt p1, v0, :cond_44

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_d

    goto :goto_44

    .line 206
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    move-result v0

    :goto_11
    if-lez p4, :cond_42

    if-nez v0, :cond_17

    move v2, v1

    goto :goto_1d

    .line 207
    :cond_17
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 208
    :goto_1d
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v0

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 209
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 210
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v6, v5

    add-int/2addr v6, v0

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 212
    aget-object v4, v5, v0

    invoke-static {v4, v2, p2, p3, v3}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_3c

    return v1

    :cond_3c
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_42
    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    return v1
.end method

.method public blacklist sha256()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 110
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->sha256()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist size()I
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public blacklist substring(I)Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/ByteString;->substring(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist substring(II)Lcom/android/okhttp/okio/ByteString;
    .registers 3

    .line 122
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toByteArray()[B
    .registers 9

    .line 145
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 147
    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v2, v1, :cond_25

    .line 148
    iget-object v4, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 149
    aget v4, v4, v2

    .line 150
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 253
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist utf8()Ljava/lang/String;
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist write(Lcom/android/okhttp/okio/Buffer;)V
    .registers 10

    .line 170
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_2f

    .line 171
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 172
    aget v3, v3, v1

    .line 173
    new-instance v5, Lcom/android/okhttp/okio/Segment;

    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v4, v7}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    .line 175
    iget-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    if-nez v2, :cond_26

    .line 176
    iput-object v5, v5, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v5, v5, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v5, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    goto :goto_2b

    .line 178
    :cond_26
    iget-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v2, v5}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    .line 182
    :cond_2f
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    return-void
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1f

    .line 160
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 161
    iget-object v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 162
    aget v3, v3, v1

    .line 163
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v2, v3, v2

    invoke-virtual {p1, v5, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_7

    :cond_1e
    return-void

    .line 158
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
