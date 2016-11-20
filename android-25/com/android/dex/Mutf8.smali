.class public final Lcom/android/dex/Mutf8;
.super Ljava/lang/Object;
.source "Mutf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
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
    .line 67
    const-wide/16 v4, 0x0

    #@2
    .line 68
    .local v4, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 69
    .local v2, "length":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@9
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 71
    .local v0, "ch":C
    if-eqz v0, :cond_0

    #@f
    const/16 v3, 0x7f

    #@11
    if-gt v0, v3, :cond_0

    #@13
    .line 72
    const-wide/16 v6, 0x1

    #@15
    add-long/2addr v4, v6

    #@16
    .line 78
    :goto_1
    if-eqz p1, :cond_2

    #@18
    const-wide/32 v6, 0xffff

    #@1b
    cmp-long v3, v4, v6

    #@1d
    if-lez v3, :cond_2

    #@1f
    .line 79
    new-instance v3, Ljava/io/UTFDataFormatException;

    #@21
    const-string/jumbo v6, "String more than 65535 UTF bytes long"

    #@24
    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 73
    :cond_0
    const/16 v3, 0x7ff

    #@2a
    if-gt v0, v3, :cond_1

    #@2c
    .line 74
    const-wide/16 v6, 0x2

    #@2e
    add-long/2addr v4, v6

    #@2f
    goto :goto_1

    #@30
    .line 76
    :cond_1
    const-wide/16 v6, 0x3

    #@32
    add-long/2addr v4, v6

    #@33
    goto :goto_1

    #@34
    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_0

    #@37
    .line 82
    .end local v0    # "ch":C
    :cond_3
    return-wide v4
.end method

.method public static decode(Lcom/android/dex/util/ByteInput;[C)Ljava/lang/String;
    .locals 9
    .param p0, "in"    # Lcom/android/dex/util/ByteInput;
    .param p1, "out"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v7, 0x80

    #@3
    .line 35
    const/4 v3, 0x0

    #@4
    .line 37
    .local v3, "s":I
    :goto_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@7
    move-result v5

    #@8
    and-int/lit16 v5, v5, 0xff

    #@a
    int-to-char v0, v5

    #@b
    .line 38
    .local v0, "a":C
    if-nez v0, :cond_0

    #@d
    .line 39
    new-instance v5, Ljava/lang/String;

    #@f
    invoke-direct {v5, p1, v8, v3}, Ljava/lang/String;-><init>([CII)V

    #@12
    return-object v5

    #@13
    .line 41
    :cond_0
    aput-char v0, p1, v3

    #@15
    .line 42
    if-ge v0, v7, :cond_1

    #@17
    .line 43
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 44
    :cond_1
    and-int/lit16 v5, v0, 0xe0

    #@1c
    const/16 v6, 0xc0

    #@1e
    if-ne v5, v6, :cond_3

    #@20
    .line 45
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@23
    move-result v5

    #@24
    and-int/lit16 v1, v5, 0xff

    #@26
    .line 46
    .local v1, "b":I
    and-int/lit16 v5, v1, 0xc0

    #@28
    if-eq v5, v7, :cond_2

    #@2a
    .line 47
    new-instance v5, Ljava/io/UTFDataFormatException;

    #@2c
    const-string/jumbo v6, "bad second byte"

    #@2f
    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 49
    :cond_2
    add-int/lit8 v4, v3, 0x1

    #@35
    .end local v3    # "s":I
    .local v4, "s":I
    and-int/lit8 v5, v0, 0x1f

    #@37
    shl-int/lit8 v5, v5, 0x6

    #@39
    and-int/lit8 v6, v1, 0x3f

    #@3b
    or-int/2addr v5, v6

    #@3c
    int-to-char v5, v5

    #@3d
    aput-char v5, p1, v3

    #@3f
    move v3, v4

    #@40
    .end local v4    # "s":I
    .restart local v3    # "s":I
    goto :goto_0

    #@41
    .line 50
    .end local v1    # "b":I
    :cond_3
    and-int/lit16 v5, v0, 0xf0

    #@43
    const/16 v6, 0xe0

    #@45
    if-ne v5, v6, :cond_6

    #@47
    .line 51
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@4a
    move-result v5

    #@4b
    and-int/lit16 v1, v5, 0xff

    #@4d
    .line 52
    .restart local v1    # "b":I
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    #@50
    move-result v5

    #@51
    and-int/lit16 v2, v5, 0xff

    #@53
    .line 53
    .local v2, "c":I
    and-int/lit16 v5, v1, 0xc0

    #@55
    if-ne v5, v7, :cond_4

    #@57
    and-int/lit16 v5, v2, 0xc0

    #@59
    if-eq v5, v7, :cond_5

    #@5b
    .line 54
    :cond_4
    new-instance v5, Ljava/io/UTFDataFormatException;

    #@5d
    const-string/jumbo v6, "bad second or third byte"

    #@60
    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@63
    throw v5

    #@64
    .line 56
    :cond_5
    add-int/lit8 v4, v3, 0x1

    #@66
    .end local v3    # "s":I
    .restart local v4    # "s":I
    and-int/lit8 v5, v0, 0xf

    #@68
    shl-int/lit8 v5, v5, 0xc

    #@6a
    and-int/lit8 v6, v1, 0x3f

    #@6c
    shl-int/lit8 v6, v6, 0x6

    #@6e
    or-int/2addr v5, v6

    #@6f
    and-int/lit8 v6, v2, 0x3f

    #@71
    or-int/2addr v5, v6

    #@72
    int-to-char v5, v5

    #@73
    aput-char v5, p1, v3

    #@75
    move v3, v4

    #@76
    .end local v4    # "s":I
    .restart local v3    # "s":I
    goto :goto_0

    #@77
    .line 58
    .end local v1    # "b":I
    .end local v2    # "c":I
    :cond_6
    new-instance v5, Ljava/io/UTFDataFormatException;

    #@79
    const-string/jumbo v6, "bad byte"

    #@7c
    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v5
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 91
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
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 93
    .local v0, "ch":C
    if-eqz v0, :cond_0

    #@e
    const/16 v4, 0x7f

    #@10
    if-gt v0, v4, :cond_0

    #@12
    .line 94
    add-int/lit8 p1, v3, 0x1

    #@14
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    int-to-byte v4, v0

    #@15
    aput-byte v4, p0, v3

    #@17
    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    move v3, p1

    #@1a
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@1b
    .line 95
    :cond_0
    const/16 v4, 0x7ff

    #@1d
    if-gt v0, v4, :cond_1

    #@1f
    .line 96
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
    .line 97
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
    .line 99
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
    .line 100
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
    .line 101
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
    .line 89
    .end local v0    # "ch":C
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    const/4 v2, 0x1

    #@1
    invoke-static {p0, v2}, Lcom/android/dex/Mutf8;->countBytes(Ljava/lang/String;Z)J

    #@4
    move-result-wide v2

    #@5
    long-to-int v1, v2

    #@6
    .line 111
    .local v1, "utfCount":I
    new-array v0, v1, [B

    #@8
    .line 112
    .local v0, "result":[B
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v2, p0}, Lcom/android/dex/Mutf8;->encode([BILjava/lang/String;)V

    #@c
    .line 113
    return-object v0
.end method
