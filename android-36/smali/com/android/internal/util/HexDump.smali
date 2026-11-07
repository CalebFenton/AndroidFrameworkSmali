.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist HEX_LOWER_CASE_DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    .line 27
    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    return-void

    nop

    :array_12
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

    :array_26
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "upperCase"    # Z

    .line 189
    if-eqz p2, :cond_5

    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 190
    .local v0, "digits":[C
    :goto_7
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    return-object p0
.end method

.method public static blacklist dumpHexString([B)Ljava/lang/String;
    .registers 3
    .param p0, "array"    # [B

    .line 30
    if-nez p0, :cond_5

    const-string v0, "(null)"

    return-object v0

    .line 31
    :cond_5
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dumpHexString([BII)Ljava/lang/String;
    .registers 16
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 36
    if-nez p0, :cond_5

    const-string v0, "(null)"

    return-object v0

    .line 37
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 40
    .local v2, "line":[B
    const/4 v3, 0x0

    .line 42
    .local v3, "lineIndex":I
    const-string v4, "\n0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move v5, p1

    .local v5, "i":I
    :goto_1c
    add-int v6, p1, p2

    const/16 v7, 0x7e

    const-string v8, "."

    const/16 v9, 0x20

    const-string v10, " "

    const/4 v11, 0x1

    if-ge v5, v6, :cond_74

    .line 47
    if-ne v3, v1, :cond_53

    .line 49
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2f
    if-ge v6, v1, :cond_48

    .line 53
    aget-byte v12, v2, v6

    if-le v12, v9, :cond_42

    aget-byte v12, v2, v6

    if-ge v12, v7, :cond_42

    .line 55
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2, v6, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 59
    :cond_42
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 63
    .end local v6    # "j":I
    :cond_48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v3, 0x0

    .line 68
    :cond_53
    aget-byte v6, p0, v5

    .line 69
    .local v6, "b":B
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v7, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    sget-object v7, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "lineIndex":I
    .local v7, "lineIndex":I
    aput-byte v6, v2, v3

    .line 45
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1c

    .line 76
    .end local v5    # "i":I
    .end local v7    # "lineIndex":I
    .restart local v3    # "lineIndex":I
    :cond_74
    if-eq v3, v1, :cond_9e

    .line 78
    rsub-int/lit8 v1, v3, 0x10

    mul-int/lit8 v1, v1, 0x3

    .line 79
    .local v1, "count":I
    add-int/2addr v1, v11

    .line 80
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7c
    if-ge v4, v1, :cond_84

    .line 82
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 85
    .end local v4    # "i":I
    :cond_84
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_85
    if-ge v4, v3, :cond_9e

    .line 87
    aget-byte v5, v2, v4

    if-le v5, v9, :cond_98

    aget-byte v5, v2, v4

    if-ge v5, v7, :cond_98

    .line 89
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 93
    :cond_98
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 98
    .end local v1    # "count":I
    .end local v4    # "i":I
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist hexStringToByteArray(Ljava/lang/String;)[B
    .registers 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 180
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_28

    .line 182
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 180
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 185
    .end local v2    # "i":I
    :cond_28
    return-object v1
.end method

.method private static blacklist toByte(C)I
    .registers 4
    .param p0, "c"    # C

    .line 167
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 168
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 169
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 171
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toByteArray(B)[B
    .registers 3
    .param p0, "b"    # B

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 149
    .local v0, "array":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 150
    return-object v0
.end method

.method public static blacklist toByteArray(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 157
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 158
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 159
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 160
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 162
    return-object v0
.end method

.method public static blacklist toHexString(B)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # B

    .line 103
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist toHexString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 143
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist toHexString([B)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [B

    .line 109
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist toHexString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toHexString([BIIZ)Ljava/lang/String;
    .registers 11
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "upperCase"    # Z

    .line 126
    if-eqz p3, :cond_5

    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 127
    .local v0, "digits":[C
    :goto_7
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 129
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 130
    .local v2, "bufIndex":I
    move v3, p1

    .local v3, "i":I
    :goto_d
    add-int v4, p1, p2

    if-ge v3, v4, :cond_28

    .line 132
    aget-byte v4, p0, v3

    .line 133
    .local v4, "b":B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "bufIndex":I
    .local v5, "bufIndex":I
    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v2

    .line 134
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    and-int/lit8 v6, v4, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 130
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 137
    .end local v3    # "i":I
    :cond_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static greylist-max-r toHexString([BZ)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "upperCase"    # Z

    .line 115
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
