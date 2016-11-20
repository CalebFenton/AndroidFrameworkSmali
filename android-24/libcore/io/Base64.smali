.class public final Llibcore/io/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/Base64$InvalidBase64ByteException;
    }
.end annotation


# static fields
.field private static final BASE_64_ALPHABET:[B

.field private static final END_OF_INPUT:B = -0x3t

.field private static final FIRST_OUTPUT_BYTE_MASK:I = 0xfc0000

.field private static final FOURTH_OUTPUT_BYTE_MASK:I = 0x3f

.field private static final PAD_AS_BYTE:B = -0x1t

.field private static final SECOND_OUTPUT_BYTE_MASK:I = 0x3f000

.field private static final THIRD_OUTPUT_BYTE_MASK:I = 0xfc0

.field private static final WHITESPACE_AS_BYTE:B = -0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    invoke-static {}, Llibcore/io/Base64;->initializeBase64Alphabet()[B

    #@3
    move-result-object v0

    #@4
    sput-object v0, Llibcore/io/Base64;->BASE_64_ALPHABET:[B

    #@6
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static base64AlphabetToNumericalValue(B)B
    .locals 2
    .param p0, "c"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/Base64$InvalidBase64ByteException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    const/16 v0, 0x41

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 241
    add-int/lit8 v0, p0, -0x41

    #@a
    int-to-byte v0, v0

    #@b
    return v0

    #@c
    .line 243
    :cond_0
    const/16 v0, 0x61

    #@e
    if-gt v0, p0, :cond_1

    #@10
    const/16 v0, 0x7a

    #@12
    if-gt p0, v0, :cond_1

    #@14
    .line 244
    add-int/lit8 v0, p0, -0x61

    #@16
    add-int/lit8 v0, v0, 0x1a

    #@18
    int-to-byte v0, v0

    #@19
    return v0

    #@1a
    .line 246
    :cond_1
    const/16 v0, 0x30

    #@1c
    if-gt v0, p0, :cond_2

    #@1e
    const/16 v0, 0x39

    #@20
    if-gt p0, v0, :cond_2

    #@22
    .line 247
    add-int/lit8 v0, p0, -0x30

    #@24
    add-int/lit8 v0, v0, 0x34

    #@26
    int-to-byte v0, v0

    #@27
    return v0

    #@28
    .line 249
    :cond_2
    const/16 v0, 0x2b

    #@2a
    if-ne p0, v0, :cond_3

    #@2c
    .line 250
    const/16 v0, 0x3e

    #@2e
    return v0

    #@2f
    .line 252
    :cond_3
    const/16 v0, 0x2f

    #@31
    if-ne p0, v0, :cond_4

    #@33
    .line 253
    const/16 v0, 0x3f

    #@35
    return v0

    #@36
    .line 255
    :cond_4
    const/16 v0, 0x3d

    #@38
    if-ne p0, v0, :cond_5

    #@3a
    .line 256
    const/4 v0, -0x1

    #@3b
    return v0

    #@3c
    .line 258
    :cond_5
    const/16 v0, 0x20

    #@3e
    if-eq p0, v0, :cond_6

    #@40
    const/16 v0, 0x9

    #@42
    if-ne p0, v0, :cond_7

    #@44
    .line 259
    :cond_6
    const/4 v0, -0x2

    #@45
    return v0

    #@46
    .line 258
    :cond_7
    const/16 v0, 0xd

    #@48
    if-eq p0, v0, :cond_6

    #@4a
    const/16 v0, 0xa

    #@4c
    if-eq p0, v0, :cond_6

    #@4e
    .line 261
    new-instance v0, Llibcore/io/Base64$InvalidBase64ByteException;

    #@50
    const/4 v1, 0x0

    #@51
    invoke-direct {v0, v1}, Llibcore/io/Base64$InvalidBase64ByteException;-><init>(Llibcore/io/Base64$InvalidBase64ByteException;)V

    #@54
    throw v0
.end method

.method private static checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B
    .locals 2
    .param p0, "output"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "in"    # [B
    .param p2, "i"    # I
    .param p3, "inLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/Base64$InvalidBase64ByteException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    :goto_0
    if-ge p2, p3, :cond_1

    #@2
    .line 227
    aget-byte v1, p1, p2

    #@4
    invoke-static {v1}, Llibcore/io/Base64;->base64AlphabetToNumericalValue(B)B

    #@7
    move-result v0

    #@8
    .line 228
    .local v0, "c":B
    const/4 v1, -0x2

    #@9
    if-eq v0, v1, :cond_0

    #@b
    const/4 v1, -0x1

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 229
    const/4 v1, 0x0

    #@f
    return-object v1

    #@10
    .line 231
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 233
    .end local v0    # "c":B
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method private static computeEncodingOutputLen(I)I
    .locals 3
    .param p0, "inLength"    # I

    #@0
    .prologue
    .line 98
    rem-int/lit8 v0, p0, 0x3

    #@2
    .line 99
    .local v0, "inLengthMod3":I
    div-int/lit8 v2, p0, 0x3

    #@4
    mul-int/lit8 v1, v2, 0x4

    #@6
    .line 100
    .local v1, "outputLen":I
    const/4 v2, 0x2

    #@7
    if-ne v0, v2, :cond_1

    #@9
    .line 102
    add-int/lit8 v1, v1, 0x4

    #@b
    .line 107
    :cond_0
    :goto_0
    return v1

    #@c
    .line 103
    :cond_1
    const/4 v2, 0x1

    #@d
    if-ne v0, v2, :cond_0

    #@f
    .line 105
    add-int/lit8 v1, v1, 0x4

    #@11
    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "in"    # [B

    #@0
    .prologue
    .line 111
    array-length v0, p0

    #@1
    invoke-static {p0, v0}, Llibcore/io/Base64;->decode([BI)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decode([BI)[B
    .locals 12
    .param p0, "in"    # [B
    .param p1, "len"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v11, -0x1

    #@2
    const/4 v10, -0x3

    #@3
    .line 116
    array-length v8, p0

    #@4
    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v3

    #@8
    .line 118
    .local v3, "inLength":I
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    #@a
    div-int/lit8 v8, v3, 0x4

    #@c
    mul-int/lit8 v8, v8, 0x3

    #@e
    add-int/lit8 v8, v8, 0x3

    #@10
    invoke-direct {v5, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@13
    .line 120
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x1

    #@14
    new-array v6, v8, [I

    #@16
    .line 123
    .local v6, "pos":[I
    :goto_0
    const/4 v8, 0x0

    #@17
    :try_start_0
    aget v8, v6, v8

    #@19
    if-ge v8, v3, :cond_8

    #@1b
    .line 124
    const/4 v0, 0x0

    #@1c
    .line 128
    .local v0, "byteTripletAsInt":I
    const/4 v4, 0x0

    #@1d
    .local v4, "j":I
    :goto_1
    const/4 v8, 0x4

    #@1e
    if-ge v4, v8, :cond_7

    #@20
    .line 129
    invoke-static {p0, v6, v3}, Llibcore/io/Base64;->getNextByte([B[II)B

    #@23
    move-result v1

    #@24
    .line 130
    .local v1, "c":B
    if-eq v1, v10, :cond_0

    #@26
    if-ne v1, v11, :cond_6

    #@28
    .line 132
    :cond_0
    packed-switch v4, :pswitch_data_0

    #@2b
    .line 128
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 135
    :pswitch_0
    if-ne v1, v10, :cond_1

    #@30
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@33
    move-result-object v7

    #@34
    :cond_1
    return-object v7

    #@35
    .line 140
    :pswitch_1
    if-ne v1, v10, :cond_2

    #@37
    .line 142
    const/4 v8, 0x0

    #@38
    aget v8, v6, v8

    #@3a
    invoke-static {v5, p0, v8, v3}, Llibcore/io/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    #@3d
    move-result-object v7

    #@3e
    return-object v7

    #@3f
    .line 145
    :cond_2
    const/4 v8, 0x0

    #@40
    aget v9, v6, v8

    #@42
    add-int/lit8 v9, v9, 0x1

    #@44
    aput v9, v6, v8

    #@46
    .line 146
    invoke-static {p0, v6, v3}, Llibcore/io/Base64;->getNextByte([B[II)B

    #@49
    move-result v1

    #@4a
    .line 147
    if-ne v1, v10, :cond_3

    #@4c
    .line 149
    const/4 v8, 0x0

    #@4d
    aget v8, v6, v8

    #@4f
    invoke-static {v5, p0, v8, v3}, Llibcore/io/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    #@52
    move-result-object v7

    #@53
    return-object v7

    #@54
    .line 151
    :cond_3
    if-ne v1, v11, :cond_4

    #@56
    .line 152
    shr-int/lit8 v0, v0, 0x4

    #@58
    .line 153
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5b
    .line 154
    const/4 v8, 0x0

    #@5c
    aget v8, v6, v8

    #@5e
    invoke-static {v5, p0, v8, v3}, Llibcore/io/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    #@61
    move-result-object v7

    #@62
    return-object v7

    #@63
    .line 157
    :cond_4
    return-object v7

    #@64
    .line 163
    :pswitch_2
    if-ne v1, v11, :cond_5

    #@66
    .line 165
    shr-int/lit8 v0, v0, 0x2

    #@68
    .line 166
    shr-int/lit8 v8, v0, 0x8

    #@6a
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6d
    .line 167
    and-int/lit16 v8, v0, 0xff

    #@6f
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@72
    .line 169
    :cond_5
    const/4 v8, 0x0

    #@73
    aget v8, v6, v8

    #@75
    invoke-static {v5, p0, v8, v3}, Llibcore/io/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B

    #@78
    move-result-object v7

    #@79
    return-object v7

    #@7a
    .line 172
    :cond_6
    shl-int/lit8 v0, v0, 0x6

    #@7c
    .line 173
    and-int/lit16 v8, v1, 0xff

    #@7e
    add-int/2addr v0, v8

    #@7f
    .line 174
    const/4 v8, 0x0

    #@80
    aget v9, v6, v8

    #@82
    add-int/lit8 v9, v9, 0x1

    #@84
    aput v9, v6, v8

    #@86
    goto :goto_2

    #@87
    .line 183
    .end local v0    # "byteTripletAsInt":I
    .end local v1    # "c":B
    .end local v4    # "j":I
    :catch_0
    move-exception v2

    #@88
    .line 184
    .local v2, "e":Llibcore/io/Base64$InvalidBase64ByteException;
    return-object v7

    #@89
    .line 178
    .end local v2    # "e":Llibcore/io/Base64$InvalidBase64ByteException;
    .restart local v0    # "byteTripletAsInt":I
    .restart local v4    # "j":I
    :cond_7
    shr-int/lit8 v8, v0, 0x10

    #@8b
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8e
    .line 179
    shr-int/lit8 v8, v0, 0x8

    #@90
    and-int/lit16 v8, v8, 0xff

    #@92
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@95
    .line 180
    and-int/lit16 v8, v0, 0xff

    #@97
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@9a
    goto/16 :goto_0

    #@9c
    .line 182
    .end local v0    # "byteTripletAsInt":I
    .end local v4    # "j":I
    :cond_8
    const/4 v8, 0x0

    #@9d
    aget v8, v6, v8

    #@9f
    invoke-static {v5, p0, v8, v3}, Llibcore/io/Base64;->checkNoTrailingAndReturn(Ljava/io/ByteArrayOutputStream;[BII)[B
    :try_end_0
    .catch Llibcore/io/Base64$InvalidBase64ByteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a2
    move-result-object v7

    #@a3
    return-object v7

    #@a4
    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 11
    .param p0, "in"    # [B

    #@0
    .prologue
    const/16 v10, 0x3d

    #@2
    .line 43
    array-length v3, p0

    #@3
    .line 44
    .local v3, "len":I
    invoke-static {v3}, Llibcore/io/Base64;->computeEncodingOutputLen(I)I

    #@6
    move-result v7

    #@7
    .line 45
    .local v7, "outputLen":I
    new-array v4, v7, [B

    #@9
    .line 47
    .local v4, "output":[B
    const/4 v5, 0x0

    #@a
    .line 48
    .local v5, "outputIndex":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    move v6, v5

    #@c
    .end local v5    # "outputIndex":I
    .local v6, "outputIndex":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@e
    .line 52
    aget-byte v8, p0, v1

    #@10
    and-int/lit16 v0, v8, 0xff

    #@12
    .line 53
    .local v0, "byteTripletAsInt":I
    add-int/lit8 v8, v1, 0x1

    #@14
    if-ge v8, v3, :cond_2

    #@16
    .line 55
    shl-int/lit8 v0, v0, 0x8

    #@18
    .line 56
    add-int/lit8 v8, v1, 0x1

    #@1a
    aget-byte v8, p0, v8

    #@1c
    and-int/lit16 v8, v8, 0xff

    #@1e
    or-int/2addr v0, v8

    #@1f
    .line 57
    add-int/lit8 v8, v1, 0x2

    #@21
    if-ge v8, v3, :cond_1

    #@23
    .line 58
    shl-int/lit8 v0, v0, 0x8

    #@25
    .line 59
    add-int/lit8 v8, v1, 0x2

    #@27
    aget-byte v8, p0, v8

    #@29
    and-int/lit16 v8, v8, 0xff

    #@2b
    or-int/2addr v0, v8

    #@2c
    .line 69
    :goto_1
    add-int/lit8 v8, v1, 0x2

    #@2e
    if-ge v8, v3, :cond_0

    #@30
    .line 71
    add-int/lit8 v5, v6, 0x1

    #@32
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    sget-object v8, Llibcore/io/Base64;->BASE_64_ALPHABET:[B

    #@34
    .line 72
    const/high16 v9, 0xfc0000

    #@36
    and-int/2addr v9, v0

    #@37
    ushr-int/lit8 v9, v9, 0x12

    #@39
    .line 71
    aget-byte v8, v8, v9

    #@3b
    aput-byte v8, v4, v6

    #@3d
    move v6, v5

    #@3e
    .line 74
    .end local v5    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    :cond_0
    add-int/lit8 v8, v1, 0x1

    #@40
    if-ge v8, v3, :cond_6

    #@42
    .line 76
    add-int/lit8 v5, v6, 0x1

    #@44
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    sget-object v8, Llibcore/io/Base64;->BASE_64_ALPHABET:[B

    #@46
    .line 77
    const v9, 0x3f000

    #@49
    and-int/2addr v9, v0

    #@4a
    ushr-int/lit8 v9, v9, 0xc

    #@4c
    .line 76
    aget-byte v8, v8, v9

    #@4e
    aput-byte v8, v4, v6

    #@50
    .line 79
    :goto_2
    add-int/lit8 v6, v5, 0x1

    #@52
    .end local v5    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    sget-object v8, Llibcore/io/Base64;->BASE_64_ALPHABET:[B

    #@54
    .line 80
    and-int/lit16 v9, v0, 0xfc0

    #@56
    ushr-int/lit8 v9, v9, 0x6

    #@58
    .line 79
    aget-byte v8, v8, v9

    #@5a
    aput-byte v8, v4, v5

    #@5c
    .line 81
    add-int/lit8 v5, v6, 0x1

    #@5e
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    sget-object v8, Llibcore/io/Base64;->BASE_64_ALPHABET:[B

    #@60
    .line 82
    and-int/lit8 v9, v0, 0x3f

    #@62
    .line 81
    aget-byte v8, v8, v9

    #@64
    aput-byte v8, v4, v6

    #@66
    .line 48
    add-int/lit8 v1, v1, 0x3

    #@68
    move v6, v5

    #@69
    .end local v5    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    goto :goto_0

    #@6a
    .line 62
    :cond_1
    shl-int/lit8 v0, v0, 0x2

    #@6c
    goto :goto_1

    #@6d
    .line 66
    :cond_2
    shl-int/lit8 v0, v0, 0x4

    #@6f
    goto :goto_1

    #@70
    .line 85
    .end local v0    # "byteTripletAsInt":I
    :cond_3
    rem-int/lit8 v2, v3, 0x3

    #@72
    .line 87
    .local v2, "inLengthMod3":I
    if-lez v2, :cond_5

    #@74
    .line 88
    add-int/lit8 v5, v6, 0x1

    #@76
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    aput-byte v10, v4, v6

    #@78
    .line 89
    const/4 v8, 0x1

    #@79
    if-ne v2, v8, :cond_4

    #@7b
    .line 90
    add-int/lit8 v6, v5, 0x1

    #@7d
    .end local v5    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    aput-byte v10, v4, v5

    #@7f
    move v5, v6

    #@80
    .line 94
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    :cond_4
    :goto_3
    new-instance v8, Ljava/lang/String;

    #@82
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@84
    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@87
    return-object v8

    #@88
    .end local v5    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    :cond_5
    move v5, v6

    #@89
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    goto :goto_3

    #@8a
    .end local v2    # "inLengthMod3":I
    .end local v5    # "outputIndex":I
    .restart local v0    # "byteTripletAsInt":I
    .restart local v6    # "outputIndex":I
    :cond_6
    move v5, v6

    #@8b
    .end local v6    # "outputIndex":I
    .restart local v5    # "outputIndex":I
    goto :goto_2
.end method

.method private static getNextByte([B[II)B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "pos"    # [I
    .param p2, "inLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/Base64$InvalidBase64ByteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 207
    :goto_0
    aget v1, p1, v2

    #@3
    if-ge v1, p2, :cond_1

    #@5
    .line 208
    aget v1, p1, v2

    #@7
    aget-byte v1, p0, v1

    #@9
    invoke-static {v1}, Llibcore/io/Base64;->base64AlphabetToNumericalValue(B)B

    #@c
    move-result v0

    #@d
    .line 209
    .local v0, "c":B
    const/4 v1, -0x2

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 210
    return v0

    #@11
    .line 212
    :cond_0
    aget v1, p1, v2

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    aput v1, p1, v2

    #@17
    goto :goto_0

    #@18
    .line 214
    .end local v0    # "c":B
    :cond_1
    const/4 v1, -0x3

    #@19
    return v1
.end method

.method private static initializeBase64Alphabet()[B
    .locals 2

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    #@3
    .line 31
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@5
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
