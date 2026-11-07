.class public Lcom/android/internal/telephony/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist HEX_LOWER_CASE_DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 26
    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/internal/telephony/HexDump;->HEX_DIGITS:[C

    .line 27
    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/telephony/HexDump;->HEX_LOWER_CASE_DIGITS:[C

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
    .registers 4

    if-eqz p2, :cond_5

    .line 189
    sget-object p2, Lcom/android/internal/telephony/HexDump;->HEX_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object p2, Lcom/android/internal/telephony/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    :goto_7
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 190
    aget-char v0, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0xf

    .line 191
    aget-char p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static blacklist dumpHexString([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 30
    const-string p0, "(null)"

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 31
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist dumpHexString([BII)Ljava/lang/String;
    .registers 16

    if-nez p0, :cond_5

    .line 36
    const-string p0, "(null)"

    return-object p0

    .line 37
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    .line 39
    new-array v2, v1, [B

    .line 42
    const-string v3, "\n0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {p1}, Lcom/android/internal/telephony/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move v5, p1

    move v6, v4

    :goto_1d
    add-int v7, p1, p2

    .line 45
    const-string v8, "."

    const/16 v9, 0x7e

    const/16 v10, 0x20

    const-string v11, " "

    const/4 v12, 0x1

    if-ge v5, v7, :cond_71

    if-ne v6, v1, :cond_52

    .line 49
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v4

    :goto_30
    if-ge v6, v1, :cond_47

    .line 53
    aget-byte v7, v2, v6

    if-le v7, v10, :cond_41

    if-ge v7, v9, :cond_41

    .line 55
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v6, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 59
    :cond_41
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 63
    :cond_47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v5}, Lcom/android/internal/telephony/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v4

    .line 68
    :cond_52
    aget-byte v7, p0, v5

    .line 69
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v8, Lcom/android/internal/telephony/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v8, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v9, v7, 0xf

    .line 71
    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, 0x1

    .line 73
    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1d

    :cond_71
    if-eq v6, v1, :cond_98

    rsub-int/lit8 p0, v6, 0x10

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, v12

    move p1, v4

    :goto_79
    if-ge p1, p0, :cond_81

    .line 82
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    :cond_81
    :goto_81
    if-ge v4, v6, :cond_98

    .line 87
    aget-byte p0, v2, v4

    if-le p0, v10, :cond_92

    if-ge p0, v9, :cond_92

    .line 89
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_95

    .line 93
    :cond_92
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 98
    :cond_98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist hexStringToByteArray(Ljava/lang/String;)[B
    .registers 7

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_28

    .line 182
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_28
    return-object v1
.end method

.method private static blacklist toByte(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x46

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_15
    const/16 v0, 0x61

    if-lt p0, v0, :cond_20

    const/16 v0, 0x66

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x57

    return p0

    .line 171
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toByteArray(B)[B
    .registers 3

    const/4 v0, 0x1

    .line 149
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static blacklist toByteArray(I)[B
    .registers 4

    const/4 v0, 0x4

    .line 155
    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 157
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 158
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 159
    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    .line 160
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static blacklist toHexString(B)Ljava/lang/String;
    .registers 1

    .line 103
    invoke-static {p0}, Lcom/android/internal/telephony/HexDump;->toByteArray(B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toHexString(I)Ljava/lang/String;
    .registers 1

    .line 143
    invoke-static {p0}, Lcom/android/internal/telephony/HexDump;->toByteArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toHexString([B)Ljava/lang/String;
    .registers 4

    .line 109
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/telephony/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toHexString([BII)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 121
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toHexString([BIIZ)Ljava/lang/String;
    .registers 10

    if-eqz p3, :cond_5

    .line 126
    sget-object p3, Lcom/android/internal/telephony/HexDump;->HEX_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object p3, Lcom/android/internal/telephony/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    :goto_7
    mul-int/lit8 v0, p2, 0x2

    .line 127
    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, p1

    :goto_d
    add-int v3, p1, p2

    if-ge v2, v3, :cond_28

    .line 132
    aget-byte v3, p0, v2

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 133
    aget-char v5, p3, v5

    aput-char v5, v0, v1

    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v3, v3, 0xf

    .line 134
    aget-char v3, p3, v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 137
    :cond_28
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static blacklist toHexString([BZ)Ljava/lang/String;
    .registers 4

    .line 115
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/telephony/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
