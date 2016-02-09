.class final Lcom/android/okhttp/okio/SegmentedByteString;
.super Lcom/android/okhttp/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Buffer;I)V
    .locals 9
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # I

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@4
    .line 56
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@6
    const-wide/16 v2, 0x0

    #@8
    int-to-long v4, p2

    #@9
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@c
    .line 59
    const/4 v6, 0x0

    #@d
    .line 60
    .local v6, "offset":I
    const/4 v8, 0x0

    #@e
    .line 61
    .local v8, "segmentCount":I
    iget-object v7, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@10
    .local v7, "s":Lcom/android/okhttp/okio/Segment;
    :goto_0
    if-ge v6, p2, :cond_1

    #@12
    .line 62
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@14
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@16
    if-ne v0, v1, :cond_0

    #@18
    .line 63
    new-instance v0, Ljava/lang/AssertionError;

    #@1a
    const-string/jumbo v1, "s.limit == s.pos"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v0

    #@21
    .line 65
    :cond_0
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@23
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@25
    sub-int/2addr v0, v1

    #@26
    add-int/2addr v6, v0

    #@27
    .line 66
    add-int/lit8 v8, v8, 0x1

    #@29
    .line 61
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@2b
    goto :goto_0

    #@2c
    .line 70
    :cond_1
    new-array v0, v8, [[B

    #@2e
    iput-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@30
    .line 71
    mul-int/lit8 v0, v8, 0x2

    #@32
    new-array v0, v0, [I

    #@34
    iput-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@36
    .line 72
    const/4 v6, 0x0

    #@37
    .line 73
    const/4 v8, 0x0

    #@38
    .line 74
    iget-object v7, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@3a
    :goto_1
    if-ge v6, p2, :cond_2

    #@3c
    .line 75
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@3e
    iget-object v1, v7, Lcom/android/okhttp/okio/Segment;->data:[B

    #@40
    aput-object v1, v0, v8

    #@42
    .line 76
    iget v0, v7, Lcom/android/okhttp/okio/Segment;->limit:I

    #@44
    iget v1, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@46
    sub-int/2addr v0, v1

    #@47
    add-int/2addr v6, v0

    #@48
    .line 77
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@4a
    aput v6, v0, v8

    #@4c
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@4e
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@50
    array-length v1, v1

    #@51
    add-int/2addr v1, v8

    #@52
    iget v2, v7, Lcom/android/okhttp/okio/Segment;->pos:I

    #@54
    aput v2, v0, v1

    #@56
    .line 79
    const/4 v0, 0x1

    #@57
    iput-boolean v0, v7, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@59
    .line 80
    add-int/lit8 v8, v8, 0x1

    #@5b
    .line 74
    iget-object v7, v7, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@5d
    goto :goto_1

    #@5e
    .line 54
    :cond_2
    return-void
.end method

.method private segment(I)I
    .locals 5
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 135
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@3
    iget-object v2, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@5
    array-length v2, v2

    #@6
    add-int/lit8 v3, p1, 0x1

    #@8
    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    #@b
    move-result v0

    #@c
    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@e
    .end local v0    # "i":I
    :goto_0
    return v0

    #@f
    .restart local v0    # "i":I
    :cond_0
    not-int v0, v0

    #@10
    goto :goto_0
.end method

.method private toByteString()Lcom/android/okhttp/okio/ByteString;
    .locals 2

    #@0
    .prologue
    .line 221
    new-instance v0, Lcom/android/okhttp/okio/ByteString;

    #@2
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteArray()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ByteString;-><init>([B)V

    #@9
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->base64Url()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 225
    if-ne p1, p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    return v0

    #@5
    .line 226
    :cond_0
    instance-of v0, p1, Lcom/android/okhttp/okio/ByteString;

    #@7
    if-eqz v0, :cond_1

    #@9
    move-object v0, p1

    #@a
    .line 227
    check-cast v0, Lcom/android/okhttp/okio/ByteString;

    #@c
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    #@13
    move-result v2

    #@14
    if-ne v0, v2, :cond_1

    #@16
    .line 228
    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    #@18
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    #@1b
    move-result v0

    #@1c
    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/android/okhttp/okio/SegmentedByteString;->rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z

    #@1f
    move-result v0

    #@20
    .line 226
    :goto_0
    return v0

    #@21
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    move v0, v1

    #@22
    goto :goto_0
.end method

.method public getByte(I)B
    .locals 9
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    aget v0, v0, v1

    #@9
    int-to-long v0, v0

    #@a
    int-to-long v2, p1

    #@b
    const-wide/16 v4, 0x1

    #@d
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@10
    .line 126
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    #@13
    move-result v6

    #@14
    .line 127
    .local v6, "segment":I
    if-nez v6, :cond_0

    #@16
    const/4 v7, 0x0

    #@17
    .line 128
    .local v7, "segmentOffset":I
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@19
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@1b
    array-length v1, v1

    #@1c
    add-int/2addr v1, v6

    #@1d
    aget v8, v0, v1

    #@1f
    .line 129
    .local v8, "segmentPos":I
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@21
    aget-object v0, v0, v6

    #@23
    sub-int v1, p1, v7

    #@25
    add-int/2addr v1, v8

    #@26
    aget-byte v0, v0, v1

    #@28
    return v0

    #@29
    .line 127
    .end local v7    # "segmentOffset":I
    .end local v8    # "segmentPos":I
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@2b
    add-int/lit8 v1, v6, -0x1

    #@2d
    aget v7, v0, v1

    #@2f
    .restart local v7    # "segmentOffset":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 12

    #@0
    .prologue
    .line 232
    iget v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->hashCode:I

    #@2
    .line 233
    .local v3, "result":I
    if-eqz v3, :cond_0

    #@4
    return v3

    #@5
    .line 236
    :cond_0
    const/4 v3, 0x1

    #@6
    .line 237
    const/4 v7, 0x0

    #@7
    .line 238
    .local v7, "segmentOffset":I
    const/4 v4, 0x0

    #@8
    .local v4, "s":I
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@a
    array-length v6, v10

    #@b
    .local v6, "segmentCount":I
    :goto_0
    if-ge v4, v6, :cond_2

    #@d
    .line 239
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@f
    aget-object v5, v10, v4

    #@11
    .line 240
    .local v5, "segment":[B
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@13
    add-int v11, v6, v4

    #@15
    aget v8, v10, v11

    #@17
    .line 241
    .local v8, "segmentPos":I
    iget-object v10, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@19
    aget v2, v10, v4

    #@1b
    .line 242
    .local v2, "nextSegmentOffset":I
    sub-int v9, v2, v7

    #@1d
    .line 243
    .local v9, "segmentSize":I
    move v0, v8

    #@1e
    .local v0, "i":I
    add-int v1, v8, v9

    #@20
    .local v1, "limit":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@22
    .line 244
    mul-int/lit8 v10, v3, 0x1f

    #@24
    aget-byte v11, v5, v0

    #@26
    add-int v3, v10, v11

    #@28
    .line 243
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 246
    :cond_1
    move v7, v2

    #@2c
    .line 238
    add-int/lit8 v4, v4, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 248
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "nextSegmentOffset":I
    .end local v5    # "segment":[B
    .end local v8    # "segmentPos":I
    .end local v9    # "segmentSize":I
    :cond_2
    iput v3, p0, Lcom/android/okhttp/okio/SegmentedByteString;->hashCode:I

    #@31
    return v3
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public md5()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->md5()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public rangeEquals(ILcom/android/okhttp/okio/ByteString;II)Z
    .locals 9
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/android/okhttp/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 186
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    #@4
    move-result v6

    #@5
    sub-int/2addr v6, p4

    #@6
    if-le p1, v6, :cond_0

    #@8
    return v8

    #@9
    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    #@c
    move-result v1

    #@d
    .local v1, "s":I
    :goto_0
    if-lez p4, :cond_3

    #@f
    .line 189
    if-nez v1, :cond_1

    #@11
    const/4 v2, 0x0

    #@12
    .line 190
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@14
    aget v6, v6, v1

    #@16
    sub-int v4, v6, v2

    #@18
    .line 191
    .local v4, "segmentSize":I
    add-int v6, v2, v4

    #@1a
    sub-int/2addr v6, p1

    #@1b
    invoke-static {p4, v6}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result v5

    #@1f
    .line 192
    .local v5, "stepSize":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@21
    iget-object v7, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@23
    array-length v7, v7

    #@24
    add-int/2addr v7, v1

    #@25
    aget v3, v6, v7

    #@27
    .line 193
    .local v3, "segmentPos":I
    sub-int v6, p1, v2

    #@29
    add-int v0, v6, v3

    #@2b
    .line 194
    .local v0, "arrayOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@2d
    aget-object v6, v6, v1

    #@2f
    invoke-virtual {p2, p3, v6, v0, v5}, Lcom/android/okhttp/okio/ByteString;->rangeEquals(I[BII)Z

    #@32
    move-result v6

    #@33
    if-nez v6, :cond_2

    #@35
    return v8

    #@36
    .line 189
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_1
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@38
    add-int/lit8 v7, v1, -0x1

    #@3a
    aget v2, v6, v7

    #@3c
    .restart local v2    # "segmentOffset":I
    goto :goto_1

    #@3d
    .line 195
    .restart local v0    # "arrayOffset":I
    .restart local v3    # "segmentPos":I
    .restart local v4    # "segmentSize":I
    .restart local v5    # "stepSize":I
    :cond_2
    add-int/2addr p1, v5

    #@3e
    .line 196
    add-int/2addr p3, v5

    #@3f
    .line 197
    sub-int/2addr p4, v5

    #@40
    .line 188
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 199
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_3
    const/4 v6, 0x1

    #@44
    return v6
.end method

.method public rangeEquals(I[BII)Z
    .locals 9
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 203
    invoke-virtual {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->size()I

    #@4
    move-result v6

    #@5
    sub-int/2addr v6, p4

    #@6
    if-gt p1, v6, :cond_0

    #@8
    array-length v6, p2

    #@9
    sub-int/2addr v6, p4

    #@a
    if-le p3, v6, :cond_1

    #@c
    :cond_0
    return v8

    #@d
    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/okhttp/okio/SegmentedByteString;->segment(I)I

    #@10
    move-result v1

    #@11
    .local v1, "s":I
    :goto_0
    if-lez p4, :cond_4

    #@13
    .line 206
    if-nez v1, :cond_2

    #@15
    const/4 v2, 0x0

    #@16
    .line 207
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@18
    aget v6, v6, v1

    #@1a
    sub-int v4, v6, v2

    #@1c
    .line 208
    .local v4, "segmentSize":I
    add-int v6, v2, v4

    #@1e
    sub-int/2addr v6, p1

    #@1f
    invoke-static {p4, v6}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v5

    #@23
    .line 209
    .local v5, "stepSize":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@25
    iget-object v7, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@27
    array-length v7, v7

    #@28
    add-int/2addr v7, v1

    #@29
    aget v3, v6, v7

    #@2b
    .line 210
    .local v3, "segmentPos":I
    sub-int v6, p1, v2

    #@2d
    add-int v0, v6, v3

    #@2f
    .line 211
    .local v0, "arrayOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@31
    aget-object v6, v6, v1

    #@33
    invoke-static {v6, v0, p2, p3, v5}, Lcom/android/okhttp/okio/Util;->arrayRangeEquals([BI[BII)Z

    #@36
    move-result v6

    #@37
    if-nez v6, :cond_3

    #@39
    return v8

    #@3a
    .line 206
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_2
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@3c
    add-int/lit8 v7, v1, -0x1

    #@3e
    aget v2, v6, v7

    #@40
    .restart local v2    # "segmentOffset":I
    goto :goto_1

    #@41
    .line 212
    .restart local v0    # "arrayOffset":I
    .restart local v3    # "segmentPos":I
    .restart local v4    # "segmentSize":I
    .restart local v5    # "stepSize":I
    :cond_3
    add-int/2addr p1, v5

    #@42
    .line 213
    add-int/2addr p3, v5

    #@43
    .line 214
    sub-int/2addr p4, v5

    #@44
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 216
    .end local v0    # "arrayOffset":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentPos":I
    .end local v4    # "segmentSize":I
    .end local v5    # "stepSize":I
    :cond_4
    const/4 v6, 0x1

    #@48
    return v6
.end method

.method public sha256()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->sha256()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@2
    iget-object v1, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    aget v0, v0, v1

    #@9
    return v0
.end method

.method public substring(I)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/ByteString;->substring(I)Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public substring(II)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/ByteString;->substring(II)Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toAsciiLowercase()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toAsciiUppercase()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    #@0
    .prologue
    .line 144
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@2
    iget-object v7, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@4
    array-length v7, v7

    #@5
    add-int/lit8 v7, v7, -0x1

    #@7
    aget v6, v6, v7

    #@9
    new-array v1, v6, [B

    #@b
    .line 145
    .local v1, "result":[B
    const/4 v4, 0x0

    #@c
    .line 146
    .local v4, "segmentOffset":I
    const/4 v2, 0x0

    #@d
    .local v2, "s":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@f
    array-length v3, v6

    #@10
    .local v3, "segmentCount":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@12
    .line 147
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@14
    add-int v7, v3, v2

    #@16
    aget v5, v6, v7

    #@18
    .line 148
    .local v5, "segmentPos":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@1a
    aget v0, v6, v2

    #@1c
    .line 149
    .local v0, "nextSegmentOffset":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@1e
    aget-object v6, v6, v2

    #@20
    .line 150
    sub-int v7, v0, v4

    #@22
    .line 149
    invoke-static {v6, v5, v1, v4, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@25
    .line 151
    move v4, v0

    #@26
    .line 146
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 153
    .end local v0    # "nextSegmentOffset":I
    .end local v5    # "segmentPos":I
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/okhttp/okio/SegmentedByteString;->toByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method write(Lcom/android/okhttp/okio/Buffer;)V
    .locals 10
    .param p1, "buffer"    # Lcom/android/okhttp/okio/Buffer;

    #@0
    .prologue
    .line 168
    const/4 v4, 0x0

    #@1
    .line 169
    .local v4, "segmentOffset":I
    const/4 v1, 0x0

    #@2
    .local v1, "s":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@4
    array-length v3, v6

    #@5
    .local v3, "segmentCount":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    .line 170
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@9
    add-int v7, v3, v1

    #@b
    aget v5, v6, v7

    #@d
    .line 171
    .local v5, "segmentPos":I
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@f
    aget v0, v6, v1

    #@11
    .line 172
    .local v0, "nextSegmentOffset":I
    new-instance v2, Lcom/android/okhttp/okio/Segment;

    #@13
    iget-object v6, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@15
    aget-object v6, v6, v1

    #@17
    .line 173
    add-int v7, v5, v0

    #@19
    sub-int/2addr v7, v4

    #@1a
    .line 172
    invoke-direct {v2, v6, v5, v7}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    #@1d
    .line 174
    .local v2, "segment":Lcom/android/okhttp/okio/Segment;
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@1f
    if-nez v6, :cond_0

    #@21
    .line 175
    iput-object v2, v2, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@23
    iput-object v2, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@25
    iput-object v2, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@27
    .line 179
    :goto_1
    move v4, v0

    #@28
    .line 169
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 177
    :cond_0
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@2d
    iget-object v6, v6, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@2f
    invoke-virtual {v6, v2}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    #@32
    goto :goto_1

    #@33
    .line 181
    .end local v0    # "nextSegmentOffset":I
    .end local v2    # "segment":Lcom/android/okhttp/okio/Segment;
    .end local v5    # "segmentPos":I
    :cond_1
    iget-wide v6, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@35
    int-to-long v8, v4

    #@36
    add-long/2addr v6, v8

    #@37
    iput-wide v6, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@39
    .line 167
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    if-nez p1, :cond_0

    #@2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "out == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 158
    :cond_0
    const/4 v3, 0x0

    #@c
    .line 159
    .local v3, "segmentOffset":I
    const/4 v1, 0x0

    #@d
    .local v1, "s":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@f
    array-length v2, v5

    #@10
    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@12
    .line 160
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@14
    add-int v6, v2, v1

    #@16
    aget v4, v5, v6

    #@18
    .line 161
    .local v4, "segmentPos":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->directory:[I

    #@1a
    aget v0, v5, v1

    #@1c
    .line 162
    .local v0, "nextSegmentOffset":I
    iget-object v5, p0, Lcom/android/okhttp/okio/SegmentedByteString;->segments:[[B

    #@1e
    aget-object v5, v5, v1

    #@20
    sub-int v6, v0, v3

    #@22
    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    #@25
    .line 163
    move v3, v0

    #@26
    .line 159
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 156
    .end local v0    # "nextSegmentOffset":I
    .end local v4    # "segmentPos":I
    :cond_1
    return-void
.end method
