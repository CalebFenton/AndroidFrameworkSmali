.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final HEX_LOWER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 21
    new-array v0, v1, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@9
    .line 22
    new-array v0, v1, [C

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    #@10
    .line 19
    return-void

    #@11
    .line 21
    nop

    #@12
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

    #@26
    .line 22
    :array_1
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
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

.method public static appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "upperCase"    # Z

    #@0
    .prologue
    .line 178
    if-eqz p2, :cond_0

    #@2
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@4
    .line 179
    .local v0, "digits":[C
    :goto_0
    shr-int/lit8 v1, p1, 0x4

    #@6
    and-int/lit8 v1, v1, 0xf

    #@8
    aget-char v1, v0, v1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 180
    and-int/lit8 v1, p1, 0xf

    #@f
    aget-char v1, v0, v1

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 181
    return-object p0

    #@15
    .line 178
    .end local v0    # "digits":[C
    :cond_0
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    #@17
    goto :goto_0
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 26
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
    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 33
    .local v7, "result":Ljava/lang/StringBuilder;
    const/16 v8, 0x10

    #@7
    new-array v4, v8, [B

    #@9
    .line 34
    .local v4, "line":[B
    const/4 v5, 0x0

    #@a
    .line 36
    .local v5, "lineIndex":I
    const-string/jumbo v8, "\n0x"

    #@d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 37
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 39
    move v2, p1

    #@18
    .local v2, "i":I
    :goto_0
    add-int v8, p1, p2

    #@1a
    if-ge v2, v8, :cond_3

    #@1c
    .line 41
    const/16 v8, 0x10

    #@1e
    if-ne v5, v8, :cond_2

    #@20
    .line 43
    const-string/jumbo v8, " "

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 45
    const/4 v3, 0x0

    #@27
    .local v3, "j":I
    :goto_1
    const/16 v8, 0x10

    #@29
    if-ge v3, v8, :cond_1

    #@2b
    .line 47
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
    .line 49
    new-instance v8, Ljava/lang/String;

    #@39
    const/4 v9, 0x1

    #@3a
    invoke-direct {v8, v4, v3, v9}, Ljava/lang/String;-><init>([BII)V

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 45
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_1

    #@43
    .line 53
    :cond_0
    const-string/jumbo v8, "."

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    goto :goto_2

    #@4a
    .line 57
    :cond_1
    const-string/jumbo v8, "\n0x"

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 58
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 59
    const/4 v5, 0x0

    #@58
    .line 62
    .end local v3    # "j":I
    :cond_2
    aget-byte v0, p0, v2

    #@5a
    .line 63
    .local v0, "b":B
    const-string/jumbo v8, " "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 64
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
    .line 65
    sget-object v8, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@6d
    and-int/lit8 v9, v0, 0xf

    #@6f
    aget-char v8, v8, v9

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    .line 67
    add-int/lit8 v6, v5, 0x1

    #@76
    .end local v5    # "lineIndex":I
    .local v6, "lineIndex":I
    aput-byte v0, v4, v5

    #@78
    .line 39
    add-int/lit8 v2, v2, 0x1

    #@7a
    move v5, v6

    #@7b
    .end local v6    # "lineIndex":I
    .restart local v5    # "lineIndex":I
    goto :goto_0

    #@7c
    .line 70
    .end local v0    # "b":B
    :cond_3
    const/16 v8, 0x10

    #@7e
    if-eq v5, v8, :cond_6

    #@80
    .line 72
    rsub-int/lit8 v8, v5, 0x10

    #@82
    mul-int/lit8 v1, v8, 0x3

    #@84
    .line 73
    .local v1, "count":I
    add-int/lit8 v1, v1, 0x1

    #@86
    .line 74
    const/4 v2, 0x0

    #@87
    :goto_3
    if-ge v2, v1, :cond_4

    #@89
    .line 76
    const-string/jumbo v8, " "

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 74
    add-int/lit8 v2, v2, 0x1

    #@91
    goto :goto_3

    #@92
    .line 79
    :cond_4
    const/4 v2, 0x0

    #@93
    :goto_4
    if-ge v2, v5, :cond_6

    #@95
    .line 81
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
    .line 83
    new-instance v8, Ljava/lang/String;

    #@a3
    const/4 v9, 0x1

    #@a4
    invoke-direct {v8, v4, v2, v9}, Ljava/lang/String;-><init>([BII)V

    #@a7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 79
    :goto_5
    add-int/lit8 v2, v2, 0x1

    #@ac
    goto :goto_4

    #@ad
    .line 87
    :cond_5
    const-string/jumbo v8, "."

    #@b0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    goto :goto_5

    #@b4
    .line 92
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
    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 167
    .local v2, "length":I
    div-int/lit8 v3, v2, 0x2

    #@6
    new-array v0, v3, [B

    #@8
    .line 169
    .local v0, "buffer":[B
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@b
    .line 171
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
    .line 169
    add-int/lit8 v1, v1, 0x2

    #@27
    goto :goto_0

    #@28
    .line 174
    :cond_0
    return-object v0
.end method

.method private static toByte(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    .line 157
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
    .line 158
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
    .line 159
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
    .line 161
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
    .line 138
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 139
    .local v0, "array":[B
    const/4 v1, 0x0

    #@4
    aput-byte p0, v0, v1

    #@6
    .line 140
    return-object v0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 145
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [B

    #@3
    .line 147
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x3

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 148
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
    .line 149
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
    .line 150
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
    .line 152
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 97
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
    .line 133
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
    .locals 3
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 102
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    invoke-static {p0, v1, v0, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 112
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toHexString([BIIZ)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "upperCase"    # Z

    #@0
    .prologue
    .line 117
    if-eqz p3, :cond_0

    #@2
    sget-object v4, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    #@4
    .line 118
    .local v4, "digits":[C
    :goto_0
    mul-int/lit8 v6, p2, 0x2

    #@6
    new-array v1, v6, [C

    #@8
    .line 120
    .local v1, "buf":[C
    const/4 v2, 0x0

    #@9
    .line 121
    .local v2, "bufIndex":I
    move v5, p1

    #@a
    .local v5, "i":I
    move v3, v2

    #@b
    .end local v2    # "bufIndex":I
    .local v3, "bufIndex":I
    :goto_1
    add-int v6, p1, p2

    #@d
    if-ge v5, v6, :cond_1

    #@f
    .line 123
    aget-byte v0, p0, v5

    #@11
    .line 124
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    ushr-int/lit8 v6, v0, 0x4

    #@15
    and-int/lit8 v6, v6, 0xf

    #@17
    aget-char v6, v4, v6

    #@19
    aput-char v6, v1, v3

    #@1b
    .line 125
    add-int/lit8 v3, v2, 0x1

    #@1d
    .end local v2    # "bufIndex":I
    .restart local v3    # "bufIndex":I
    and-int/lit8 v6, v0, 0xf

    #@1f
    aget-char v6, v4, v6

    #@21
    aput-char v6, v1, v2

    #@23
    .line 121
    add-int/lit8 v5, v5, 0x1

    #@25
    goto :goto_1

    #@26
    .line 117
    .end local v0    # "b":B
    .end local v1    # "buf":[C
    .end local v3    # "bufIndex":I
    .end local v4    # "digits":[C
    .end local v5    # "i":I
    :cond_0
    sget-object v4, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    #@28
    .restart local v4    # "digits":[C
    goto :goto_0

    #@29
    .line 128
    .restart local v1    # "buf":[C
    .restart local v3    # "bufIndex":I
    .restart local v5    # "i":I
    :cond_1
    new-instance v6, Ljava/lang/String;

    #@2b
    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    #@2e
    return-object v6
.end method

.method public static toHexString([BZ)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "upperCase"    # Z

    #@0
    .prologue
    .line 107
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
