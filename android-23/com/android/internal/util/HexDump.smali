.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 21
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@9
    .line 19
    return-void

    #@a
    .line 21
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 25
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static dumpHexString([BII)Ljava/lang/String;
    .locals 10
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 32
    .local v7, "result":Ljava/lang/StringBuilder;
    const/16 v8, 0x10

    #@7
    new-array v4, v8, [B

    #@9
    .line 33
    .local v4, "line":[B
    const/4 v5, 0x0

    #@a
    .line 35
    .local v5, "lineIndex":I
    const-string/jumbo v8, "\n0x"

    #@d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 36
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 38
    move v2, p1

    #@18
    .local v2, "i":I
    :goto_0
    add-int v8, p1, p2

    #@1a
    if-ge v2, v8, :cond_3

    #@1c
    .line 40
    const/16 v8, 0x10

    #@1e
    if-ne v5, v8, :cond_2

    #@20
    .line 42
    const-string/jumbo v8, " "

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 44
    const/4 v3, 0x0

    #@27
    .local v3, "j":I
    :goto_1
    const/16 v8, 0x10

    #@29
    if-ge v3, v8, :cond_1

    #@2b
    .line 46
    aget-byte v8, v4, v3

    #@2d
    const/16 v9, 0x20

    #@2f
    if-le v8, v9, :cond_0

    #@31
    aget-byte v8, v4, v3

    #@33
    const/16 v9, 0x7e

    #@35
    if-ge v8, v9, :cond_0

    #@37
    .line 48
    new-instance v8, Ljava/lang/String;

    #@39
    const/4 v9, 0x1

    #@3a
    invoke-direct {v8, v4, v3, v9}, Ljava/lang/String;-><init>([BII)V

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 44
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_1

    #@43
    .line 52
    :cond_0
    const-string/jumbo v8, "."

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    goto :goto_2

    #@4a
    .line 56
    :cond_1
    const-string/jumbo v8, "\n0x"

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 57
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 58
    const/4 v5, 0x0

    #@58
    .line 61
    .end local v3    # "j":I
    :cond_2
    aget-byte v0, p0, v2

    #@5a
    .line 62
    .local v0, "b":B
    const-string/jumbo v8, " "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 63
    sget-object v8, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@62
    ushr-int/lit8 v9, v0, 0x4

    #@64
    and-int/lit8 v9, v9, 0xf

    #@66
    aget-char v8, v8, v9

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6b
    .line 64
    sget-object v8, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@6d
    and-int/lit8 v9, v0, 0xf

    #@6f
    aget-char v8, v8, v9

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    .line 66
    add-int/lit8 v6, v5, 0x1

    #@76
    .end local v5    # "lineIndex":I
    .local v6, "lineIndex":I
    aput-byte v0, v4, v5

    #@78
    .line 38
    add-int/lit8 v2, v2, 0x1

    #@7a
    move v5, v6

    #@7b
    .end local v6    # "lineIndex":I
    .restart local v5    # "lineIndex":I
    goto :goto_0

    #@7c
    .line 69
    .end local v0    # "b":B
    :cond_3
    const/16 v8, 0x10

    #@7e
    if-eq v5, v8, :cond_6

    #@80
    .line 71
    rsub-int/lit8 v8, v5, 0x10

    #@82
    mul-int/lit8 v1, v8, 0x3

    #@84
    .line 72
    .local v1, "count":I
    add-int/lit8 v1, v1, 0x1

    #@86
    .line 73
    const/4 v2, 0x0

    #@87
    :goto_3
    if-ge v2, v1, :cond_4

    #@89
    .line 75
    const-string/jumbo v8, " "

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 73
    add-int/lit8 v2, v2, 0x1

    #@91
    goto :goto_3

    #@92
    .line 78
    :cond_4
    const/4 v2, 0x0

    #@93
    :goto_4
    if-ge v2, v5, :cond_6

    #@95
    .line 80
    aget-byte v8, v4, v2

    #@97
    const/16 v9, 0x20

    #@99
    if-le v8, v9, :cond_5

    #@9b
    aget-byte v8, v4, v2

    #@9d
    const/16 v9, 0x7e

    #@9f
    if-ge v8, v9, :cond_5

    #@a1
    .line 82
    new-instance v8, Ljava/lang/String;

    #@a3
    const/4 v9, 0x1

    #@a4
    invoke-direct {v8, v4, v2, v9}, Ljava/lang/String;-><init>([BII)V

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 78
    :goto_5
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto :goto_4

    #@ad
    .line 86
    :cond_5
    const-string/jumbo v8, "."

    #@b0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    goto :goto_5

    #@b4
    .line 91
    .end local v1    # "count":I
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v8

    #@b8
    return-object v8
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 155
    .local v2, "length":I
    div-int/lit8 v3, v2, 0x2

    #@6
    new-array v0, v3, [B

    #@8
    .line 157
    .local v0, "buffer":[B
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    .line 159
    div-int/lit8 v3, v1, 0x2

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toByte(C)I

    #@14
    move-result v4

    #@15
    shl-int/lit8 v4, v4, 0x4

    #@17
    add-int/lit8 v5, v1, 0x1

    #@19
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v5

    #@1d
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toByte(C)I

    #@20
    move-result v5

    #@21
    or-int/2addr v4, v5

    #@22
    int-to-byte v4, v4

    #@23
    aput-byte v4, v0, v3

    #@25
    .line 157
    add-int/lit8 v1, v1, 0x2

    #@27
    goto :goto_0

    #@28
    .line 162
    :cond_0
    return-object v0
.end method

.method private static toByte(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    .line 145
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 146
    :cond_0
    const/16 v0, 0x41

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x46

    #@11
    if-gt p0, v0, :cond_1

    #@13
    add-int/lit8 v0, p0, -0x41

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 147
    :cond_1
    const/16 v0, 0x61

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x66

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    add-int/lit8 v0, p0, -0x61

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 149
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Invalid hex char \'"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, "\'"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method public static toByteArray(B)[B
    .locals 2
    .param p0, "b"    # B

    #@0
    .prologue
    .line 126
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 127
    .local v0, "array":[B
    const/4 v1, 0x0

    #@4
    aput-byte p0, v0, v1

    #@6
    .line 128
    return-object v0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 133
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 135
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x3

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 136
    shr-int/lit8 v1, p0, 0x8

    #@b
    and-int/lit16 v1, v1, 0xff

    #@d
    int-to-byte v1, v1

    #@e
    const/4 v2, 0x2

    #@f
    aput-byte v1, v0, v2

    #@11
    .line 137
    shr-int/lit8 v1, p0, 0x10

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    int-to-byte v1, v1

    #@16
    const/4 v2, 0x1

    #@17
    aput-byte v1, v0, v2

    #@19
    .line 138
    shr-int/lit8 v1, p0, 0x18

    #@1b
    and-int/lit16 v1, v1, 0xff

    #@1d
    int-to-byte v1, v1

    #@1e
    const/4 v2, 0x0

    #@1f
    aput-byte v1, v0, v2

    #@21
    .line 140
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(B)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 101
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 106
    mul-int/lit8 v5, p2, 0x2

    #@2
    new-array v1, v5, [C

    #@4
    .line 108
    .local v1, "buf":[C
    const/4 v2, 0x0

    #@5
    .line 109
    .local v2, "bufIndex":I
    move v4, p1

    #@6
    .local v4, "i":I
    move v3, v2

    #@7
    .end local v2    # "bufIndex":I
    .local v3, "bufIndex":I
    :goto_0
    add-int v5, p1, p2

    #@9
    if-ge v4, v5, :cond_0

    #@b
    .line 111
    aget-byte v0, p0, v4

    #@d
    .line 112
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    #@f
    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    sget-object v5, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@11
    ushr-int/lit8 v6, v0, 0x4

    #@13
    and-int/lit8 v6, v6, 0xf

    #@15
    aget-char v5, v5, v6

    #@17
    aput-char v5, v1, v3

    #@19
    .line 113
    add-int/lit8 v3, v2, 0x1

    #@1b
    .end local v2    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    sget-object v5, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@1d
    and-int/lit8 v6, v0, 0xf

    #@1f
    aget-char v5, v5, v6

    #@21
    aput-char v5, v1, v2

    #@23
    .line 109
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 116
    .end local v0    # "b":B
    :cond_0
    new-instance v5, Ljava/lang/String;

    #@28
    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    #@2b
    return-object v5
.end method
