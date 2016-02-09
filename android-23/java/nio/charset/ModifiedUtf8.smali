.class public Ljava/nio/charset/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static countBytes(Ljava/lang/String;Z)J
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "shortLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    const-wide/16 v4, 0x0

    #@2
    .line 75
    .local v4, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 76
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@9
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 78
    .local v0, "ch":C
    if-eqz v0, :cond_0

    #@f
    const/16 v3, 0x7f

    #@11
    if-gt v0, v3, :cond_0

    #@13
    .line 79
    const-wide/16 v6, 0x1

    #@15
    add-long/2addr v4, v6

    #@16
    .line 85
    :goto_1
    if-eqz p1, :cond_2

    #@18
    const-wide/32 v6, 0xffff

    #@1b
    cmp-long v3, v4, v6

    #@1d
    if-lez v3, :cond_2

    #@1f
    .line 86
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@21
    const-string/jumbo v6, "String more than 65535 UTF bytes long"

    #@24
    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 80
    :cond_0
    const/16 v3, 0x7ff

    #@2a
    if-gt v0, v3, :cond_1

    #@2c
    .line 81
    const-wide/16 v6, 0x2

    #@2e
    add-long/2addr v4, v6

    #@2f
    goto :goto_1

    #@30
    .line 83
    :cond_1
    const-wide/16 v6, 0x3

    #@32
    add-long/2addr v4, v6

    #@33
    goto :goto_1

    #@34
    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 89
    .end local v0    # "ch":C
    :cond_3
    return-wide v4
.end method

.method public static decode([B[CII)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B
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
    .line 36
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
    .line 37
    .end local v3    # "count":I
    .local v4, "count":I
    :goto_0
    if-ge v4, p3, :cond_8

    #@8
    .line 38
    add-int/lit8 v3, v4, 0x1

    #@a
    .end local v4    # "count":I
    .restart local v3    # "count":I
    add-int v7, p2, v4

    #@c
    aget-byte v7, p0, v7

    #@e
    int-to-char v7, v7

    #@f
    aput-char v7, p1, v6

    #@11
    if-ge v7, v9, :cond_0

    #@13
    .line 39
    add-int/lit8 v5, v6, 0x1

    #@15
    .end local v6    # "s":I
    .restart local v5    # "s":I
    :goto_1
    move v6, v5

    #@16
    .end local v5    # "s":I
    .restart local v6    # "s":I
    move v4, v3

    #@17
    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto :goto_0

    #@18
    .line 40
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_0
    aget-char v0, p1, v6

    #@1a
    .local v0, "a":I
    and-int/lit16 v7, v0, 0xe0

    #@1c
    const/16 v8, 0xc0

    #@1e
    if-ne v7, v8, :cond_3

    #@20
    .line 41
    if-lt v3, p3, :cond_1

    #@22
    .line 42
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@24
    new-instance v8, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v9, "bad second byte at "

    #@2c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v7

    #@3c
    .line 44
    :cond_1
    add-int/lit8 v4, v3, 0x1

    #@3e
    .end local v3    # "count":I
    .restart local v4    # "count":I
    add-int v7, p2, v3

    #@40
    aget-byte v1, p0, v7

    #@42
    .line 45
    .local v1, "b":I
    and-int/lit16 v7, v1, 0xc0

    #@44
    if-eq v7, v9, :cond_2

    #@46
    .line 46
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@48
    new-instance v8, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v9, "bad second byte at "

    #@50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    add-int/lit8 v9, v4, -0x1

    #@56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@61
    throw v7

    #@62
    .line 48
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@64
    .end local v6    # "s":I
    .restart local v5    # "s":I
    and-int/lit8 v7, v0, 0x1f

    #@66
    shl-int/lit8 v7, v7, 0x6

    #@68
    and-int/lit8 v8, v1, 0x3f

    #@6a
    or-int/2addr v7, v8

    #@6b
    int-to-char v7, v7

    #@6c
    aput-char v7, p1, v6

    #@6e
    move v3, v4

    #@6f
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto :goto_1

    #@70
    .line 49
    .end local v1    # "b":I
    .end local v5    # "s":I
    .restart local v6    # "s":I
    :cond_3
    and-int/lit16 v7, v0, 0xf0

    #@72
    const/16 v8, 0xe0

    #@74
    if-ne v7, v8, :cond_7

    #@76
    .line 50
    add-int/lit8 v7, v3, 0x1

    #@78
    if-lt v7, p3, :cond_4

    #@7a
    .line 51
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@7c
    new-instance v8, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v9, "bad third byte at "

    #@84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    add-int/lit8 v9, v3, 0x1

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@95
    throw v7

    #@96
    .line 53
    :cond_4
    add-int/lit8 v4, v3, 0x1

    #@98
    .end local v3    # "count":I
    .restart local v4    # "count":I
    add-int v7, p2, v3

    #@9a
    aget-byte v1, p0, v7

    #@9c
    .line 54
    .restart local v1    # "b":I
    add-int/lit8 v3, v4, 0x1

    #@9e
    .end local v4    # "count":I
    .restart local v3    # "count":I
    add-int v7, p2, v4

    #@a0
    aget-byte v2, p0, v7

    #@a2
    .line 55
    .local v2, "c":I
    and-int/lit16 v7, v1, 0xc0

    #@a4
    if-ne v7, v9, :cond_5

    #@a6
    and-int/lit16 v7, v2, 0xc0

    #@a8
    if-eq v7, v9, :cond_6

    #@aa
    .line 56
    :cond_5
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@ac
    new-instance v8, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v9, "bad second or third byte at "

    #@b4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v8

    #@b8
    add-int/lit8 v9, v3, -0x2

    #@ba
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v8

    #@c2
    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v7

    #@c6
    .line 58
    :cond_6
    add-int/lit8 v5, v6, 0x1

    #@c8
    .end local v6    # "s":I
    .restart local v5    # "s":I
    and-int/lit8 v7, v0, 0xf

    #@ca
    shl-int/lit8 v7, v7, 0xc

    #@cc
    and-int/lit8 v8, v1, 0x3f

    #@ce
    shl-int/lit8 v8, v8, 0x6

    #@d0
    or-int/2addr v7, v8

    #@d1
    and-int/lit8 v8, v2, 0x3f

    #@d3
    or-int/2addr v7, v8

    #@d4
    int-to-char v7, v7

    #@d5
    aput-char v7, p1, v6

    #@d7
    goto/16 :goto_1

    #@d9
    .line 60
    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v5    # "s":I
    .restart local v6    # "s":I
    :cond_7
    new-instance v7, Ljava/io/UTFDataFormatException;

    #@db
    new-instance v8, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v9, "bad byte at "

    #@e3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    add-int/lit8 v9, v3, -0x1

    #@e9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 63
    .end local v0    # "a":I
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_8
    new-instance v7, Ljava/lang/String;

    #@f7
    const/4 v8, 0x0

    #@f8
    invoke-direct {v7, p1, v8, v6}, Ljava/lang/String;-><init>([CII)V

    #@fb
    return-object v7
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 98
    .local v2, "length":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    move v3, p1

    #@6
    .end local p1    # "offset":I
    .local v3, "offset":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@8
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 100
    .local v0, "ch":C
    if-eqz v0, :cond_0

    #@e
    const/16 v4, 0x7f

    #@10
    if-gt v0, v4, :cond_0

    #@12
    .line 101
    add-int/lit8 p1, v3, 0x1

    #@14
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    int-to-byte v4, v0

    #@15
    aput-byte v4, p0, v3

    #@17
    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    move v3, p1

    #@1a
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@1b
    .line 102
    :cond_0
    const/16 v4, 0x7ff

    #@1d
    if-gt v0, v4, :cond_1

    #@1f
    .line 103
    add-int/lit8 p1, v3, 0x1

    #@21
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    #@23
    and-int/lit8 v4, v4, 0x1f

    #@25
    or-int/lit16 v4, v4, 0xc0

    #@27
    int-to-byte v4, v4

    #@28
    aput-byte v4, p0, v3

    #@2a
    .line 104
    add-int/lit8 v3, p1, 0x1

    #@2c
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    #@2e
    or-int/lit16 v4, v4, 0x80

    #@30
    int-to-byte v4, v4

    #@31
    aput-byte v4, p0, p1

    #@33
    move p1, v3

    #@34
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_1

    #@35
    .line 106
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    add-int/lit8 p1, v3, 0x1

    #@37
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0xc

    #@39
    and-int/lit8 v4, v4, 0xf

    #@3b
    or-int/lit16 v4, v4, 0xe0

    #@3d
    int-to-byte v4, v4

    #@3e
    aput-byte v4, p0, v3

    #@40
    .line 107
    add-int/lit8 v3, p1, 0x1

    #@42
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    #@44
    and-int/lit8 v4, v4, 0x3f

    #@46
    or-int/lit16 v4, v4, 0x80

    #@48
    int-to-byte v4, v4

    #@49
    aput-byte v4, p0, p1

    #@4b
    .line 108
    add-int/lit8 p1, v3, 0x1

    #@4d
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    #@4f
    or-int/lit16 v4, v4, 0x80

    #@51
    int-to-byte v4, v4

    #@52
    aput-byte v4, p0, v3

    #@54
    goto :goto_1

    #@55
    .line 96
    .end local v0    # "ch":C
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 119
    const/4 v2, 0x1

    #@2
    invoke-static {p0, v2}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    #@5
    move-result-wide v2

    #@6
    long-to-int v1, v2

    #@7
    .line 120
    .local v1, "utfCount":I
    add-int/lit8 v2, v1, 0x2

    #@9
    new-array v0, v2, [B

    #@b
    .line 121
    .local v0, "result":[B
    int-to-short v2, v1

    #@c
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@e
    const/4 v4, 0x0

    #@f
    invoke-static {v0, v4, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@12
    .line 122
    invoke-static {v0, v5, p0}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    #@15
    .line 123
    return-object v0
.end method
