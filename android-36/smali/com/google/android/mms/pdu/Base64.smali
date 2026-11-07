.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final blacklist BASELENGTH:I = 0xff

.field static final blacklist FOURBYTE:I = 0x4

.field static final blacklist PAD:B = 0x3dt

.field private static blacklist base64Alphabet:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 39
    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 44
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 46
    .end local v1    # "i":I
    :cond_11
    const/16 v0, 0x5a

    .local v0, "i":I
    :goto_13
    const/16 v1, 0x41

    if-lt v0, v1, :cond_21

    .line 47
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 49
    .end local v0    # "i":I
    :cond_21
    const/16 v0, 0x7a

    .restart local v0    # "i":I
    :goto_23
    const/16 v1, 0x61

    if-lt v0, v1, :cond_33

    .line 50
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 52
    .end local v0    # "i":I
    :cond_33
    const/16 v0, 0x39

    .restart local v0    # "i":I
    :goto_35
    const/16 v1, 0x30

    if-lt v0, v1, :cond_45

    .line 53
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 56
    .end local v0    # "i":I
    :cond_45
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 57
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 58
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist decodeBase64([B)[B
    .registers 16
    .param p0, "base64Data"    # [B

    .line 69
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 73
    new-array v0, v1, [B

    return-object v0

    .line 76
    :cond_b
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 77
    .local v0, "numberQuadruple":I
    const/4 v2, 0x0

    .line 78
    .local v2, "decodedData":[B
    const/4 v3, 0x0

    .local v3, "b1":B
    const/4 v4, 0x0

    .local v4, "b2":B
    const/4 v5, 0x0

    .local v5, "b3":B
    const/4 v6, 0x0

    .local v6, "b4":B
    const/4 v7, 0x0

    .local v7, "marker0":B
    const/4 v8, 0x0

    .line 82
    .local v8, "marker1":B
    const/4 v9, 0x0

    .line 83
    .local v9, "encodedIndex":I
    const/4 v10, 0x0

    .line 86
    .local v10, "dataIndex":I
    array-length v11, p0

    .line 88
    .local v11, "lastData":I
    :cond_18
    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_27

    .line 89
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_18

    .line 90
    new-array v1, v1, [B

    return-object v1

    .line 93
    :cond_27
    sub-int v1, v11, v0

    new-array v1, v1, [B

    .line 96
    .end local v2    # "decodedData":[B
    .end local v11    # "lastData":I
    .local v1, "decodedData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v0, :cond_9d

    .line 97
    mul-int/lit8 v10, v2, 0x4

    .line 98
    add-int/lit8 v11, v10, 0x2

    aget-byte v7, p0, v11

    .line 99
    add-int/lit8 v11, v10, 0x3

    aget-byte v8, p0, v11

    .line 101
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v12, p0, v10

    aget-byte v3, v11, v12

    .line 102
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v12, p0, v12

    aget-byte v4, v11, v12

    .line 104
    if-eq v7, v13, :cond_71

    if-eq v8, v13, :cond_71

    .line 106
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 107
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v6, v11, v8

    .line 109
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    .line 110
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 112
    add-int/lit8 v11, v9, 0x2

    shl-int/lit8 v12, v5, 0x6

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    goto :goto_98

    .line 113
    :cond_71
    if-ne v7, v13, :cond_7c

    .line 115
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    goto :goto_98

    .line 116
    :cond_7c
    if-ne v8, v13, :cond_98

    .line 118
    sget-object v11, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v5, v11, v7

    .line 120
    shl-int/lit8 v11, v3, 0x2

    shr-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v9

    .line 121
    add-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v4, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v14, v5, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v11

    .line 124
    :cond_98
    :goto_98
    add-int/lit8 v9, v9, 0x3

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 126
    .end local v2    # "i":I
    :cond_9d
    return-object v1
.end method

.method static blacklist discardNonBase64([B)[B
    .registers 6
    .param p0, "data"    # [B

    .line 155
    array-length v0, p0

    new-array v0, v0, [B

    .line 156
    .local v0, "groomedData":[B
    const/4 v1, 0x0

    .line 158
    .local v1, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_1a

    .line 159
    aget-byte v3, p0, v2

    invoke-static {v3}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 160
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "bytesCopied":I
    .local v3, "bytesCopied":I
    aget-byte v4, p0, v2

    aput-byte v4, v0, v1

    move v1, v3

    .line 158
    .end local v3    # "bytesCopied":I
    .restart local v1    # "bytesCopied":I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 164
    .end local v2    # "i":I
    :cond_1a
    new-array v2, v1, [B

    .line 166
    .local v2, "packedData":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    return-object v2
.end method

.method private static blacklist isBase64(B)Z
    .registers 4
    .param p0, "octect"    # B

    .line 136
    const/16 v0, 0x3d

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 137
    return v1

    .line 138
    :cond_6
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_f
    return v1
.end method
