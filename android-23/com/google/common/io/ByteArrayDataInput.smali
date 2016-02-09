.class public Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;
.super Ljava/lang/Object;
.source "ByteArrayDataInput.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private mBytes:[B

.field private mLength:I

.field private mPos:I

.field private mUtfCharBuf:[C


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@5
    .line 58
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@7
    array-length v0, v0

    #@8
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@a
    const/4 v0, 0x0

    #@b
    .line 59
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@d
    const/16 v0, 0x80

    #@f
    .line 60
    new-array v0, v0, [C

    #@11
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    #@13
    .line 61
    return-void
.end method

.method public static convertUTF8WithBuf([B[CII)Ljava/lang/String;
    .locals 10
    .param p0, "buf"    # [B
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "utfSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x80

    #@2
    const/4 v3, 0x0

    #@3
    .local v3, "count":I
    const/4 v5, 0x0

    #@4
    .local v5, "s":I
    move v6, v5

    #@5
    .end local v5    # "s":I
    .local v6, "s":I
    move v4, v3

    #@6
    .line 235
    .end local v3    # "count":I
    .local v4, "count":I
    :goto_0
    if-lt v4, p3, :cond_0

    #@8
    .line 272
    new-instance v7, Ljava/lang/String;

    #@a
    const/4 v8, 0x0

    #@b
    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    #@e
    return-object v7

    #@f
    .line 236
    :cond_0
    add-int/lit8 v3, v4, 0x1

    #@11
    .end local v4    # "count":I
    .restart local v3    # "count":I
    add-int v7, p2, v4

    #@13
    aget-byte v7, p0, v7

    #@15
    int-to-char v7, v7

    #@16
    int-to-char v8, v7

    #@17
    aput-char v8, p1, v6

    #@19
    if-lt v7, v9, :cond_1

    #@1b
    .line 238
    aget-char v0, p1, v6

    #@1d
    .local v0, "a":I
    and-int/lit16 v7, v0, 0xe0

    #@1f
    const/16 v8, 0xc0

    #@21
    if-eq v7, v8, :cond_2

    #@23
    .line 251
    and-int/lit16 v7, v0, 0xf0

    #@25
    const/16 v8, 0xe0

    #@27
    if-eq v7, v8, :cond_5

    #@29
    .line 267
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@2b
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v9, "Input at "

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    add-int/lit8 v9, v3, -0x1

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    const-string/jumbo v9, " does not match UTF8 "

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    const-string/jumbo v9, "Specification"

    #@47
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@52
    throw v7

    #@53
    .line 237
    .end local v0    # "a":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    #@55
    .end local v6    # "s":I
    .restart local v5    # "s":I
    move v6, v5

    #@56
    .end local v5    # "s":I
    .restart local v6    # "s":I
    move v4, v3

    #@57
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto :goto_0

    #@58
    .line 239
    .end local v4    # "count":I
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    :cond_2
    if-ge v3, p3, :cond_3

    #@5a
    .line 244
    add-int/lit8 v4, v3, 0x1

    #@5c
    .end local v3    # "count":I
    .restart local v4    # "count":I
    add-int v7, p2, v3

    #@5e
    aget-byte v1, p0, v7

    #@60
    .line 246
    .local v1, "b":I
    and-int/lit16 v7, v1, 0xc0

    #@62
    if-ne v7, v9, :cond_4

    #@64
    .line 250
    add-int/lit8 v5, v6, 0x1

    #@66
    .end local v6    # "s":I
    .restart local v5    # "s":I
    and-int/lit8 v7, v0, 0x1f

    #@68
    shl-int/lit8 v7, v7, 0x6

    #@6a
    and-int/lit8 v8, v1, 0x3f

    #@6c
    or-int/2addr v7, v8

    #@6d
    int-to-char v7, v7

    #@6e
    int-to-char v7, v7

    #@6f
    aput-char v7, p1, v6

    #@71
    move v6, v5

    #@72
    .line 251
    .end local v5    # "s":I
    .restart local v6    # "s":I
    goto :goto_0

    #@73
    .line 240
    .end local v1    # "b":I
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_3
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@75
    new-instance v8, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v9, "Second byte at "

    #@7d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v8

    #@85
    const-string/jumbo v9, " does not match "

    #@88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v8

    #@8c
    const-string/jumbo v9, "UTF8 Specification"

    #@8f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v8

    #@97
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v7

    #@9b
    .line 247
    .end local v3    # "count":I
    .restart local v1    # "b":I
    .restart local v4    # "count":I
    :cond_4
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@9d
    new-instance v8, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v9, "Second byte at "

    #@a5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    add-int/lit8 v9, v4, -0x1

    #@ab
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    const-string/jumbo v9, " does not match UTF8 Specification"

    #@b2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v8

    #@b6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v7

    #@be
    .line 252
    .end local v1    # "b":I
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_5
    add-int/lit8 v7, v3, 0x1

    #@c0
    if-ge v7, p3, :cond_7

    #@c2
    .line 257
    add-int/lit8 v4, v3, 0x1

    #@c4
    .end local v3    # "count":I
    .restart local v4    # "count":I
    add-int v7, p2, v3

    #@c6
    aget-byte v1, p0, v7

    #@c8
    .line 258
    .restart local v1    # "b":I
    add-int/lit8 v3, v4, 0x1

    #@ca
    .end local v4    # "count":I
    .restart local v3    # "count":I
    add-int v7, p2, v4

    #@cc
    aget-byte v2, p0, v7

    #@ce
    .line 260
    .local v2, "c":I
    and-int/lit16 v7, v1, 0xc0

    #@d0
    if-eq v7, v9, :cond_8

    #@d2
    .line 261
    :cond_6
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@d4
    new-instance v8, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v9, "Second or third byte at "

    #@dc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v8

    #@e0
    add-int/lit8 v9, v3, -0x2

    #@e2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v8

    #@e6
    const-string/jumbo v9, " does not match UTF8 Specification"

    #@e9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v8

    #@ed
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v8

    #@f1
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@f4
    throw v7

    #@f5
    .line 253
    .end local v1    # "b":I
    .end local v2    # "c":I
    :cond_7
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@f7
    new-instance v8, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v9, "Third byte at "

    #@ff
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v8

    #@103
    add-int/lit8 v9, v3, 0x1

    #@105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v8

    #@109
    const-string/jumbo v9, " does not match UTF8 Specification"

    #@10c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v8

    #@110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v8

    #@114
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@117
    throw v7

    #@118
    .line 260
    .restart local v1    # "b":I
    .restart local v2    # "c":I
    :cond_8
    and-int/lit16 v7, v2, 0xc0

    #@11a
    if-ne v7, v9, :cond_6

    #@11c
    .line 264
    add-int/lit8 v5, v6, 0x1

    #@11e
    .end local v6    # "s":I
    .restart local v5    # "s":I
    and-int/lit8 v7, v0, 0xf

    #@120
    shl-int/lit8 v7, v7, 0xc

    #@122
    and-int/lit8 v8, v1, 0x3f

    #@124
    shl-int/lit8 v8, v8, 0x6

    #@126
    or-int/2addr v7, v8

    #@127
    and-int/lit8 v8, v2, 0x3f

    #@129
    or-int/2addr v7, v8

    #@12a
    int-to-char v7, v7

    #@12b
    int-to-char v7, v7

    #@12c
    aput-char v7, p1, v6

    #@12e
    move v6, v5

    #@12f
    .end local v5    # "s":I
    .restart local v6    # "s":I
    move v4, v3

    #@130
    .line 266
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_0
.end method


# virtual methods
.method public readBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    :try_start_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@3
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@5
    add-int/lit8 v4, v3, 0x1

    #@7
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@9
    aget-byte v2, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    if-nez v2, :cond_0

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x1

    #@f
    goto :goto_0

    #@10
    :catch_0
    move-exception v0

    #@11
    .line 71
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    #@13
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@16
    throw v1
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@2
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    add-int/lit8 v3, v2, 0x1

    #@6
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return v1

    #@b
    :catch_0
    move-exception v0

    #@c
    .line 79
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    #@e
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@11
    throw v1
.end method

.method public readChar()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@2
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    add-int/lit8 v5, v4, 0x1

    #@6
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    aget-byte v0, v3, v4

    #@a
    .line 86
    .local v0, "a":I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@c
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@e
    add-int/lit8 v5, v4, 0x1

    #@10
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@12
    aget-byte v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    and-int/lit16 v1, v3, 0xff

    #@16
    .line 87
    .local v1, "b":I
    shl-int/lit8 v3, v0, 0x8

    #@18
    or-int/2addr v3, v1

    #@19
    int-to-char v3, v3

    #@1a
    return v3

    #@1b
    .end local v0    # "a":I
    .end local v1    # "b":I
    :catch_0
    move-exception v2

    #@1c
    .line 89
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/EOFException;

    #@1e
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@21
    throw v3
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    array-length v1, p1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readFully([BII)V

    #@5
    .line 103
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    if-eqz p3, :cond_0

    #@2
    .line 110
    add-int v0, p2, p3

    #@4
    array-length v1, p1

    #@5
    if-gt v0, v1, :cond_1

    #@7
    .line 113
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@9
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@b
    sub-int/2addr v0, v1

    #@c
    if-gt p3, v0, :cond_2

    #@e
    .line 117
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@10
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@12
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 118
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@17
    add-int/2addr v0, p3

    #@18
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@1a
    .line 119
    return-void

    #@1b
    .line 108
    :cond_0
    return-void

    #@1c
    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1e
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@21
    throw v0

    #@22
    .line 114
    :cond_2
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@24
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@26
    .line 115
    new-instance v0, Ljava/io/EOFException;

    #@28
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    #@2b
    throw v0
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    :try_start_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@2
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    add-int/lit8 v7, v6, 0x1

    #@6
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    aget-byte v5, v5, v6

    #@a
    and-int/lit16 v0, v5, 0xff

    #@c
    .line 124
    .local v0, "a":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@e
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@10
    add-int/lit8 v7, v6, 0x1

    #@12
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@14
    aget-byte v5, v5, v6

    #@16
    and-int/lit16 v1, v5, 0xff

    #@18
    .line 125
    .local v1, "b":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@1a
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@1c
    add-int/lit8 v7, v6, 0x1

    #@1e
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@20
    aget-byte v5, v5, v6

    #@22
    and-int/lit16 v2, v5, 0xff

    #@24
    .line 126
    .local v2, "c":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@26
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@28
    add-int/lit8 v7, v6, 0x1

    #@2a
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@2c
    aget-byte v5, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    and-int/lit16 v3, v5, 0xff

    #@30
    .line 127
    .local v3, "d":I
    shl-int/lit8 v5, v0, 0x18

    #@32
    shl-int/lit8 v6, v1, 0x10

    #@34
    or-int/2addr v5, v6

    #@35
    shl-int/lit8 v6, v2, 0x8

    #@37
    or-int/2addr v5, v6

    #@38
    or-int/2addr v5, v3

    #@39
    return v5

    #@3a
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v3    # "d":I
    :catch_0
    move-exception v4

    #@3b
    .line 129
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/io/EOFException;

    #@3d
    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    #@40
    throw v5
.end method

.method public readLine()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 137
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@6
    if-ge v2, v3, :cond_1

    #@8
    .line 141
    new-instance v1, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 143
    .local v1, "result":Ljava/lang/StringBuffer;
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@f
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@11
    add-int/lit8 v4, v3, 0x1

    #@13
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@15
    aget-byte v2, v2, v3

    #@17
    int-to-char v2, v2

    #@18
    int-to-char v0, v2

    #@19
    .line 144
    .local v0, "c":C
    if-eq v0, v5, :cond_2

    #@1b
    const/16 v2, 0xd

    #@1d
    .line 146
    if-eq v0, v2, :cond_3

    #@1f
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@22
    .line 153
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@24
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@26
    if-ne v2, v3, :cond_0

    #@28
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2

    #@2d
    .end local v0    # "c":C
    .end local v1    # "result":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v2, 0x0

    #@2e
    .line 138
    return-object v2

    #@2f
    .line 145
    .restart local v0    # "c":C
    .restart local v1    # "result":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    return-object v2

    #@34
    .line 147
    :cond_3
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@36
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@38
    if-lt v2, v3, :cond_5

    #@3a
    .line 150
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    return-object v2

    #@3f
    .line 147
    :cond_5
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@41
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@43
    aget-byte v2, v2, v3

    #@45
    if-ne v2, v5, :cond_4

    #@47
    .line 148
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@49
    add-int/lit8 v2, v2, 0x1

    #@4b
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4d
    goto :goto_0
.end method

.method public readLong()J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@4
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    move/from16 v20, v0

    #@a
    add-int/lit8 v21, v20, 0x1

    #@c
    move/from16 v0, v21

    #@e
    move-object/from16 v1, p0

    #@10
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@12
    aget-byte v13, v13, v20

    #@14
    and-int/lit16 v13, v13, 0xff

    #@16
    int-to-long v2, v13

    #@17
    .line 163
    .local v2, "a":J
    move-object/from16 v0, p0

    #@19
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@1f
    move/from16 v20, v0

    #@21
    add-int/lit8 v21, v20, 0x1

    #@23
    move/from16 v0, v21

    #@25
    move-object/from16 v1, p0

    #@27
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@29
    aget-byte v13, v13, v20

    #@2b
    and-int/lit16 v13, v13, 0xff

    #@2d
    int-to-long v4, v13

    #@2e
    .line 164
    .local v4, "b":J
    move-object/from16 v0, p0

    #@30
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@32
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@36
    move/from16 v20, v0

    #@38
    add-int/lit8 v21, v20, 0x1

    #@3a
    move/from16 v0, v21

    #@3c
    move-object/from16 v1, p0

    #@3e
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@40
    aget-byte v13, v13, v20

    #@42
    and-int/lit16 v13, v13, 0xff

    #@44
    int-to-long v6, v13

    #@45
    .line 165
    .local v6, "c":J
    move-object/from16 v0, p0

    #@47
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@49
    move-object/from16 v0, p0

    #@4b
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4d
    move/from16 v20, v0

    #@4f
    add-int/lit8 v21, v20, 0x1

    #@51
    move/from16 v0, v21

    #@53
    move-object/from16 v1, p0

    #@55
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@57
    aget-byte v13, v13, v20

    #@59
    and-int/lit16 v13, v13, 0xff

    #@5b
    int-to-long v8, v13

    #@5c
    .line 166
    .local v8, "d":J
    move-object/from16 v0, p0

    #@5e
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@60
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@64
    move/from16 v20, v0

    #@66
    add-int/lit8 v21, v20, 0x1

    #@68
    move/from16 v0, v21

    #@6a
    move-object/from16 v1, p0

    #@6c
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@6e
    aget-byte v13, v13, v20

    #@70
    and-int/lit16 v13, v13, 0xff

    #@72
    int-to-long v10, v13

    #@73
    .line 167
    .local v10, "e":J
    move-object/from16 v0, p0

    #@75
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@77
    move-object/from16 v0, p0

    #@79
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@7b
    move/from16 v20, v0

    #@7d
    add-int/lit8 v21, v20, 0x1

    #@7f
    move/from16 v0, v21

    #@81
    move-object/from16 v1, p0

    #@83
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@85
    aget-byte v13, v13, v20

    #@87
    and-int/lit16 v13, v13, 0xff

    #@89
    int-to-long v14, v13

    #@8a
    .line 168
    .local v14, "f":J
    move-object/from16 v0, p0

    #@8c
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@8e
    move-object/from16 v0, p0

    #@90
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@92
    move/from16 v20, v0

    #@94
    add-int/lit8 v21, v20, 0x1

    #@96
    move/from16 v0, v21

    #@98
    move-object/from16 v1, p0

    #@9a
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@9c
    aget-byte v13, v13, v20

    #@9e
    and-int/lit16 v13, v13, 0xff

    #@a0
    int-to-long v0, v13

    #@a1
    move-wide/from16 v16, v0

    #@a3
    .line 169
    .local v16, "g":J
    move-object/from16 v0, p0

    #@a5
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@ab
    move/from16 v20, v0

    #@ad
    add-int/lit8 v21, v20, 0x1

    #@af
    move/from16 v0, v21

    #@b1
    move-object/from16 v1, p0

    #@b3
    iput v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@b5
    aget-byte v13, v13, v20
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@b7
    and-int/lit16 v13, v13, 0xff

    #@b9
    int-to-long v0, v13

    #@ba
    move-wide/from16 v18, v0

    #@bc
    .local v18, "h":J
    const/16 v13, 0x38

    #@be
    .line 170
    shl-long v20, v2, v13

    #@c0
    const/16 v13, 0x30

    #@c2
    shl-long v22, v4, v13

    #@c4
    or-long v20, v20, v22

    #@c6
    const/16 v13, 0x28

    #@c8
    shl-long v22, v6, v13

    #@ca
    or-long v20, v20, v22

    #@cc
    const/16 v13, 0x20

    #@ce
    shl-long v22, v8, v13

    #@d0
    or-long v20, v20, v22

    #@d2
    const/16 v13, 0x18

    #@d4
    shl-long v22, v10, v13

    #@d6
    or-long v20, v20, v22

    #@d8
    const/16 v13, 0x10

    #@da
    shl-long v22, v14, v13

    #@dc
    or-long v20, v20, v22

    #@de
    const/16 v13, 0x8

    #@e0
    shl-long v22, v16, v13

    #@e2
    or-long v20, v20, v22

    #@e4
    or-long v20, v20, v18

    #@e6
    return-wide v20

    #@e7
    .end local v2    # "a":J
    .end local v4    # "b":J
    .end local v6    # "c":J
    .end local v8    # "d":J
    .end local v10    # "e":J
    .end local v14    # "f":J
    .end local v16    # "g":J
    .end local v18    # "h":J
    :catch_0
    move-exception v12

    #@e8
    .line 173
    .local v12, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v13, Ljava/io/EOFException;

    #@ea
    invoke-direct {v13}, Ljava/io/EOFException;-><init>()V

    #@ed
    throw v13
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@2
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    add-int/lit8 v5, v4, 0x1

    #@6
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    aget-byte v0, v3, v4

    #@a
    .line 180
    .local v0, "a":I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@c
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@e
    add-int/lit8 v5, v4, 0x1

    #@10
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@12
    aget-byte v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    and-int/lit16 v1, v3, 0xff

    #@16
    .line 181
    .local v1, "b":I
    shl-int/lit8 v3, v0, 0x8

    #@18
    or-int/2addr v3, v1

    #@19
    int-to-short v3, v3

    #@1a
    return v3

    #@1b
    .end local v0    # "a":I
    .end local v1    # "b":I
    :catch_0
    move-exception v2

    #@1c
    .line 183
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/EOFException;

    #@1e
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@21
    throw v3
.end method

.method public readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->readUnsignedShort()I

    #@3
    move-result v0

    #@4
    .line 189
    .local v0, "length":I
    if-eqz v0, :cond_0

    #@6
    .line 192
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@8
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@a
    sub-int/2addr v2, v3

    #@b
    if-gt v0, v2, :cond_1

    #@d
    .line 196
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    #@f
    array-length v2, v2

    #@10
    if-gt v0, v2, :cond_2

    #@12
    .line 199
    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@14
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    #@16
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@18
    invoke-static {v2, v3, v4, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->convertUTF8WithBuf([B[CII)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 200
    .local v1, "result":Ljava/lang/String;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@1e
    add-int/2addr v2, v0

    #@1f
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@21
    .line 201
    return-object v1

    #@22
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    #@25
    .line 190
    return-object v2

    #@26
    .line 193
    :cond_1
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@28
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@2a
    .line 194
    new-instance v2, Ljava/io/EOFException;

    #@2c
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@2f
    throw v2

    #@30
    .line 197
    :cond_2
    new-array v2, v0, [C

    #@32
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mUtfCharBuf:[C

    #@34
    goto :goto_0
.end method

.method public readUnsignedByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@2
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    add-int/lit8 v3, v2, 0x1

    #@6
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    return v1

    #@d
    :catch_0
    move-exception v0

    #@e
    .line 208
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/io/EOFException;

    #@10
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@13
    throw v1
.end method

.method public readUnsignedShort()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@2
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    add-int/lit8 v5, v4, 0x1

    #@6
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@8
    aget-byte v3, v3, v4

    #@a
    and-int/lit16 v0, v3, 0xff

    #@c
    .line 215
    .local v0, "a":I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mBytes:[B

    #@e
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@10
    add-int/lit8 v5, v4, 0x1

    #@12
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@14
    aget-byte v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    and-int/lit16 v1, v3, 0xff

    #@18
    .line 216
    .local v1, "b":I
    shl-int/lit8 v3, v0, 0x8

    #@1a
    or-int/2addr v3, v1

    #@1b
    return v3

    #@1c
    .end local v0    # "a":I
    .end local v1    # "b":I
    :catch_0
    move-exception v2

    #@1d
    .line 218
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/EOFException;

    #@1f
    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    #@22
    throw v3
.end method

.method public skipBytes(I)I
    .locals 2
    .param p1, "length"    # I

    #@0
    .prologue
    .line 223
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@4
    sub-int/2addr v0, v1

    #@5
    if-gt p1, v0, :cond_0

    #@7
    .line 226
    :goto_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@9
    add-int/2addr v0, p1

    #@a
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@c
    .line 227
    return p1

    #@d
    .line 224
    :cond_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mLength:I

    #@f
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/ByteArrayDataInput;->mPos:I

    #@11
    sub-int p1, v0, v1

    #@13
    goto :goto_0
.end method
