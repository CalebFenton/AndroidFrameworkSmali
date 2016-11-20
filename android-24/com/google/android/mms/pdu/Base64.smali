.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final FOURBYTE:I = 0x4

.field static final PAD:B = 0x3dt

.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xff

    #@2
    .line 37
    new-array v1, v3, [B

    #@4
    sput-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@6
    .line 41
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@9
    .line 42
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@b
    const/4 v2, -0x1

    #@c
    aput-byte v2, v1, v0

    #@e
    .line 41
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 44
    :cond_0
    const/16 v0, 0x5a

    #@13
    :goto_1
    const/16 v1, 0x41

    #@15
    if-lt v0, v1, :cond_1

    #@17
    .line 45
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@19
    add-int/lit8 v2, v0, -0x41

    #@1b
    int-to-byte v2, v2

    #@1c
    aput-byte v2, v1, v0

    #@1e
    .line 44
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_1

    #@21
    .line 47
    :cond_1
    const/16 v0, 0x7a

    #@23
    :goto_2
    const/16 v1, 0x61

    #@25
    if-lt v0, v1, :cond_2

    #@27
    .line 48
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@29
    add-int/lit8 v2, v0, -0x61

    #@2b
    add-int/lit8 v2, v2, 0x1a

    #@2d
    int-to-byte v2, v2

    #@2e
    aput-byte v2, v1, v0

    #@30
    .line 47
    add-int/lit8 v0, v0, -0x1

    #@32
    goto :goto_2

    #@33
    .line 50
    :cond_2
    const/16 v0, 0x39

    #@35
    :goto_3
    const/16 v1, 0x30

    #@37
    if-lt v0, v1, :cond_3

    #@39
    .line 51
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@3b
    add-int/lit8 v2, v0, -0x30

    #@3d
    add-int/lit8 v2, v2, 0x34

    #@3f
    int-to-byte v2, v2

    #@40
    aput-byte v2, v1, v0

    #@42
    .line 50
    add-int/lit8 v0, v0, -0x1

    #@44
    goto :goto_3

    #@45
    .line 54
    :cond_3
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@47
    const/16 v2, 0x2b

    #@49
    const/16 v3, 0x3e

    #@4b
    aput-byte v3, v1, v2

    #@4d
    .line 55
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@4f
    const/16 v2, 0x2f

    #@51
    const/16 v3, 0x3f

    #@53
    aput-byte v3, v1, v2

    #@55
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    #@0
    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    #@3
    move-result-object p0

    #@4
    .line 69
    array-length v12, p0

    #@5
    if-nez v12, :cond_0

    #@7
    .line 70
    const/4 v12, 0x0

    #@8
    new-array v12, v12, [B

    #@a
    return-object v12

    #@b
    .line 73
    :cond_0
    array-length v12, p0

    #@c
    div-int/lit8 v11, v12, 0x4

    #@e
    .line 74
    .local v11, "numberQuadruple":I
    const/4 v5, 0x0

    #@f
    .line 75
    .local v5, "decodedData":[B
    const/4 v0, 0x0

    #@10
    .local v0, "b1":B
    const/4 v1, 0x0

    #@11
    .local v1, "b2":B
    const/4 v2, 0x0

    #@12
    .local v2, "b3":B
    const/4 v3, 0x0

    #@13
    .local v3, "b4":B
    const/4 v9, 0x0

    #@14
    .local v9, "marker0":B
    const/4 v10, 0x0

    #@15
    .line 79
    .local v10, "marker1":B
    const/4 v6, 0x0

    #@16
    .line 80
    .local v6, "encodedIndex":I
    const/4 v4, 0x0

    #@17
    .line 83
    .local v4, "dataIndex":I
    array-length v8, p0

    #@18
    .line 85
    .local v8, "lastData":I
    :cond_1
    add-int/lit8 v12, v8, -0x1

    #@1a
    aget-byte v12, p0, v12

    #@1c
    const/16 v13, 0x3d

    #@1e
    if-ne v12, v13, :cond_2

    #@20
    .line 86
    add-int/lit8 v8, v8, -0x1

    #@22
    if-nez v8, :cond_1

    #@24
    .line 87
    const/4 v12, 0x0

    #@25
    new-array v12, v12, [B

    #@27
    return-object v12

    #@28
    .line 90
    :cond_2
    sub-int v12, v8, v11

    #@2a
    new-array v5, v12, [B

    #@2c
    .line 93
    .local v5, "decodedData":[B
    const/4 v7, 0x0

    #@2d
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v9    # "marker0":B
    .end local v10    # "marker1":B
    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_6

    #@2f
    .line 94
    mul-int/lit8 v4, v7, 0x4

    #@31
    .line 95
    add-int/lit8 v12, v4, 0x2

    #@33
    aget-byte v9, p0, v12

    #@35
    .line 96
    .local v9, "marker0":B
    add-int/lit8 v12, v4, 0x3

    #@37
    aget-byte v10, p0, v12

    #@39
    .line 98
    .local v10, "marker1":B
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@3b
    aget-byte v13, p0, v4

    #@3d
    aget-byte v0, v12, v13

    #@3f
    .line 99
    .local v0, "b1":B
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@41
    add-int/lit8 v13, v4, 0x1

    #@43
    aget-byte v13, p0, v13

    #@45
    aget-byte v1, v12, v13

    #@47
    .line 101
    .local v1, "b2":B
    const/16 v12, 0x3d

    #@49
    if-eq v9, v12, :cond_4

    #@4b
    const/16 v12, 0x3d

    #@4d
    if-eq v10, v12, :cond_4

    #@4f
    .line 103
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@51
    aget-byte v2, v12, v9

    #@53
    .line 104
    .local v2, "b3":B
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@55
    aget-byte v3, v12, v10

    #@57
    .line 106
    .local v3, "b4":B
    shl-int/lit8 v12, v0, 0x2

    #@59
    shr-int/lit8 v13, v1, 0x4

    #@5b
    or-int/2addr v12, v13

    #@5c
    int-to-byte v12, v12

    #@5d
    aput-byte v12, v5, v6

    #@5f
    .line 107
    add-int/lit8 v12, v6, 0x1

    #@61
    .line 108
    and-int/lit8 v13, v1, 0xf

    #@63
    shl-int/lit8 v13, v13, 0x4

    #@65
    shr-int/lit8 v14, v2, 0x2

    #@67
    and-int/lit8 v14, v14, 0xf

    #@69
    or-int/2addr v13, v14

    #@6a
    int-to-byte v13, v13

    #@6b
    .line 107
    aput-byte v13, v5, v12

    #@6d
    .line 109
    add-int/lit8 v12, v6, 0x2

    #@6f
    shl-int/lit8 v13, v2, 0x6

    #@71
    or-int/2addr v13, v3

    #@72
    int-to-byte v13, v13

    #@73
    aput-byte v13, v5, v12

    #@75
    .line 121
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x3

    #@77
    .line 93
    add-int/lit8 v7, v7, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 110
    :cond_4
    const/16 v12, 0x3d

    #@7c
    if-ne v9, v12, :cond_5

    #@7e
    .line 112
    shl-int/lit8 v12, v0, 0x2

    #@80
    shr-int/lit8 v13, v1, 0x4

    #@82
    or-int/2addr v12, v13

    #@83
    int-to-byte v12, v12

    #@84
    aput-byte v12, v5, v6

    #@86
    goto :goto_1

    #@87
    .line 113
    :cond_5
    const/16 v12, 0x3d

    #@89
    if-ne v10, v12, :cond_3

    #@8b
    .line 115
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@8d
    aget-byte v2, v12, v9

    #@8f
    .line 117
    .restart local v2    # "b3":B
    shl-int/lit8 v12, v0, 0x2

    #@91
    shr-int/lit8 v13, v1, 0x4

    #@93
    or-int/2addr v12, v13

    #@94
    int-to-byte v12, v12

    #@95
    aput-byte v12, v5, v6

    #@97
    .line 118
    add-int/lit8 v12, v6, 0x1

    #@99
    .line 119
    and-int/lit8 v13, v1, 0xf

    #@9b
    shl-int/lit8 v13, v13, 0x4

    #@9d
    shr-int/lit8 v14, v2, 0x2

    #@9f
    and-int/lit8 v14, v14, 0xf

    #@a1
    or-int/2addr v13, v14

    #@a2
    int-to-byte v13, v13

    #@a3
    .line 118
    aput-byte v13, v5, v12

    #@a5
    goto :goto_1

    #@a6
    .line 123
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v9    # "marker0":B
    .end local v10    # "marker1":B
    :cond_6
    return-object v5
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 152
    array-length v5, p0

    #@2
    new-array v2, v5, [B

    #@4
    .line 153
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    #@5
    .line 155
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v5, p0

    #@7
    if-ge v3, v5, :cond_1

    #@9
    .line 156
    aget-byte v5, p0, v3

    #@b
    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 157
    add-int/lit8 v1, v0, 0x1

    #@13
    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    #@15
    aput-byte v5, v2, v0

    #@17
    move v0, v1

    #@18
    .line 155
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 161
    :cond_1
    new-array v4, v0, [B

    #@1d
    .line 163
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 165
    return-object v4
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 133
    const/16 v0, 0x3d

    #@3
    if-ne p0, v0, :cond_0

    #@5
    .line 134
    return v2

    #@6
    .line 135
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    #@8
    aget-byte v0, v0, p0

    #@a
    const/4 v1, -0x1

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 136
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 138
    :cond_1
    return v2
.end method
