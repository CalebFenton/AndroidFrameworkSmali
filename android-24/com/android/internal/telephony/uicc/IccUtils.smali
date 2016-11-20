.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 18
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 196
    if-nez p2, :cond_0

    #@2
    .line 197
    const-string/jumbo v15, ""

    #@5
    return-object v15

    #@6
    .line 199
    :cond_0
    const/4 v15, 0x1

    #@7
    move/from16 v0, p2

    #@9
    if-lt v0, v15, :cond_2

    #@b
    .line 200
    aget-byte v15, p0, p1

    #@d
    const/16 v16, -0x80

    #@f
    move/from16 v0, v16

    #@11
    if-ne v15, v0, :cond_2

    #@13
    .line 201
    add-int/lit8 v15, p2, -0x1

    #@15
    div-int/lit8 v14, v15, 0x2

    #@17
    .line 202
    .local v14, "ucslen":I
    const/4 v11, 0x0

    #@18
    .line 205
    .local v11, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/String;

    #@1a
    add-int/lit8 v15, p1, 0x1

    #@1c
    mul-int/lit8 v16, v14, 0x2

    #@1e
    const-string/jumbo v17, "utf-16be"

    #@21
    move-object/from16 v0, p0

    #@23
    move/from16 v1, v16

    #@25
    move-object/from16 v2, v17

    #@27
    invoke-direct {v12, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .end local v11    # "ret":Ljava/lang/String;
    .local v12, "ret":Ljava/lang/String;
    move-object v11, v12

    #@2b
    .line 211
    .end local v12    # "ret":Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_2

    #@2d
    .line 214
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@30
    move-result v14

    #@31
    .line 215
    :goto_1
    if-lez v14, :cond_1

    #@33
    add-int/lit8 v15, v14, -0x1

    #@35
    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v15

    #@39
    const v16, 0xffff

    #@3c
    move/from16 v0, v16

    #@3e
    if-ne v15, v0, :cond_1

    #@40
    .line 216
    add-int/lit8 v14, v14, -0x1

    #@42
    goto :goto_1

    #@43
    .line 206
    .restart local v11    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@44
    .line 207
    .local v7, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v15, "IccUtils"

    #@47
    const-string/jumbo v16, "implausible UnsupportedEncodingException"

    #@4a
    move-object/from16 v0, v16

    #@4c
    invoke-static {v15, v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_0

    #@50
    .line 218
    .end local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "ret":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    #@51
    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v15

    #@55
    return-object v15

    #@56
    .line 223
    .end local v14    # "ucslen":I
    :cond_2
    const/4 v8, 0x0

    #@57
    .line 224
    .local v8, "isucs2":Z
    const/4 v3, 0x0

    #@58
    .line 225
    .local v3, "base":C
    const/4 v9, 0x0

    #@59
    .line 227
    .local v9, "len":I
    const/4 v15, 0x3

    #@5a
    move/from16 v0, p2

    #@5c
    if-lt v0, v15, :cond_6

    #@5e
    aget-byte v15, p0, p1

    #@60
    const/16 v16, -0x7f

    #@62
    move/from16 v0, v16

    #@64
    if-ne v15, v0, :cond_6

    #@66
    .line 228
    add-int/lit8 v15, p1, 0x1

    #@68
    aget-byte v15, p0, v15

    #@6a
    and-int/lit16 v9, v15, 0xff

    #@6c
    .line 229
    add-int/lit8 v15, p2, -0x3

    #@6e
    if-le v9, v15, :cond_3

    #@70
    .line 230
    add-int/lit8 v9, p2, -0x3

    #@72
    .line 232
    :cond_3
    add-int/lit8 v15, p1, 0x2

    #@74
    aget-byte v15, p0, v15

    #@76
    and-int/lit16 v15, v15, 0xff

    #@78
    shl-int/lit8 v15, v15, 0x7

    #@7a
    int-to-char v3, v15

    #@7b
    .line 233
    .local v3, "base":C
    add-int/lit8 p1, p1, 0x3

    #@7d
    .line 234
    const/4 v8, 0x1

    #@7e
    .line 246
    .end local v3    # "base":C
    :cond_4
    :goto_2
    if-eqz v8, :cond_a

    #@80
    .line 247
    new-instance v13, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    .line 249
    .local v13, "ret":Ljava/lang/StringBuilder;
    :goto_3
    if-lez v9, :cond_9

    #@87
    .line 252
    aget-byte v15, p0, p1

    #@89
    if-gez v15, :cond_5

    #@8b
    .line 253
    aget-byte v15, p0, p1

    #@8d
    and-int/lit8 v15, v15, 0x7f

    #@8f
    add-int/2addr v15, v3

    #@90
    int-to-char v15, v15

    #@91
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@94
    .line 254
    add-int/lit8 p1, p1, 0x1

    #@96
    .line 255
    add-int/lit8 v9, v9, -0x1

    #@98
    .line 260
    :cond_5
    const/4 v4, 0x0

    #@99
    .line 261
    .local v4, "count":I
    :goto_4
    if-ge v4, v9, :cond_8

    #@9b
    add-int v15, p1, v4

    #@9d
    aget-byte v15, p0, v15

    #@9f
    if-ltz v15, :cond_8

    #@a1
    .line 262
    add-int/lit8 v4, v4, 0x1

    #@a3
    goto :goto_4

    #@a4
    .line 235
    .end local v4    # "count":I
    .end local v13    # "ret":Ljava/lang/StringBuilder;
    .local v3, "base":C
    :cond_6
    const/4 v15, 0x4

    #@a5
    move/from16 v0, p2

    #@a7
    if-lt v0, v15, :cond_4

    #@a9
    aget-byte v15, p0, p1

    #@ab
    const/16 v16, -0x7e

    #@ad
    move/from16 v0, v16

    #@af
    if-ne v15, v0, :cond_4

    #@b1
    .line 236
    add-int/lit8 v15, p1, 0x1

    #@b3
    aget-byte v15, p0, v15

    #@b5
    and-int/lit16 v9, v15, 0xff

    #@b7
    .line 237
    add-int/lit8 v15, p2, -0x4

    #@b9
    if-le v9, v15, :cond_7

    #@bb
    .line 238
    add-int/lit8 v9, p2, -0x4

    #@bd
    .line 240
    :cond_7
    add-int/lit8 v15, p1, 0x2

    #@bf
    aget-byte v15, p0, v15

    #@c1
    and-int/lit16 v15, v15, 0xff

    #@c3
    shl-int/lit8 v15, v15, 0x8

    #@c5
    .line 241
    add-int/lit8 v16, p1, 0x3

    #@c7
    aget-byte v16, p0, v16

    #@c9
    move/from16 v0, v16

    #@cb
    and-int/lit16 v0, v0, 0xff

    #@cd
    move/from16 v16, v0

    #@cf
    .line 240
    or-int v15, v15, v16

    #@d1
    int-to-char v3, v15

    #@d2
    .line 242
    .local v3, "base":C
    add-int/lit8 p1, p1, 0x4

    #@d4
    .line 243
    const/4 v8, 0x1

    #@d5
    goto :goto_2

    #@d6
    .line 264
    .end local v3    # "base":C
    .restart local v4    # "count":I
    .restart local v13    # "ret":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    #@d8
    move/from16 v1, p1

    #@da
    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    #@dd
    move-result-object v15

    #@de
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    .line 267
    add-int p1, p1, v4

    #@e3
    .line 268
    sub-int/2addr v9, v4

    #@e4
    goto :goto_3

    #@e5
    .line 271
    .end local v4    # "count":I
    :cond_9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v15

    #@e9
    return-object v15

    #@ea
    .line 274
    .end local v13    # "ret":Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@ed
    move-result-object v10

    #@ee
    .line 275
    .local v10, "resource":Landroid/content/res/Resources;
    const-string/jumbo v5, ""

    #@f1
    .line 278
    .local v5, "defaultCharset":Ljava/lang/String;
    const v15, 0x104004b

    #@f4
    :try_start_1
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@f7
    move-result-object v5

    #@f8
    .line 282
    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@fb
    move-result-object v15

    #@fc
    move-object/from16 v0, p0

    #@fe
    move/from16 v1, p1

    #@100
    move/from16 v2, p2

    #@102
    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    #@105
    move-result-object v15

    #@106
    return-object v15

    #@107
    .line 279
    :catch_1
    move-exception v6

    #@108
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_5
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/16 v4, 0x9

    #@2
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    mul-int/lit8 v3, p2, 0x2

    #@6
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 46
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    #@a
    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    #@c
    if-ge v0, v3, :cond_0

    #@e
    .line 49
    aget-byte v3, p0, v0

    #@10
    and-int/lit8 v2, v3, 0xf

    #@12
    .line 50
    .local v2, "v":I
    if-le v2, v4, :cond_1

    #@14
    .line 60
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 51
    .restart local v2    # "v":I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    #@1b
    int-to-char v3, v3

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 53
    aget-byte v3, p0, v0

    #@21
    shr-int/lit8 v3, v3, 0x4

    #@23
    and-int/lit8 v2, v3, 0xf

    #@25
    .line 55
    const/16 v3, 0xf

    #@27
    if-ne v2, v3, :cond_2

    #@29
    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 56
    :cond_2
    if-gt v2, v4, :cond_0

    #@2e
    .line 57
    add-int/lit8 v3, v2, 0x30

    #@30
    int-to-char v3, v3

    #@31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    goto :goto_1
.end method

.method public static bchToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    mul-int/lit8 v3, p2, 0x2

    #@4
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 70
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    #@8
    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    #@a
    if-ge v0, v3, :cond_0

    #@c
    .line 73
    aget-byte v3, p0, v0

    #@e
    and-int/lit8 v2, v3, 0xf

    #@10
    .line 74
    .local v2, "v":I
    const-string/jumbo v3, "0123456789abcdef"

    #@13
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 76
    aget-byte v3, p0, v0

    #@1c
    shr-int/lit8 v3, v3, 0x4

    #@1e
    and-int/lit8 v2, v3, 0xf

    #@20
    .line 77
    const-string/jumbo v3, "0123456789abcdef"

    #@23
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v3

    #@27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 80
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3
.end method

.method private static bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    #@0
    .prologue
    .line 435
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 436
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 438
    :cond_0
    const/high16 v0, -0x1000000

    #@7
    return v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 332
    if-nez p0, :cond_0

    #@3
    return-object v3

    #@4
    .line 334
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    array-length v3, p0

    #@7
    mul-int/lit8 v3, v3, 0x2

    #@9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@c
    .line 336
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@e
    if-ge v1, v3, :cond_1

    #@10
    .line 339
    aget-byte v3, p0, v1

    #@12
    shr-int/lit8 v3, v3, 0x4

    #@14
    and-int/lit8 v0, v3, 0xf

    #@16
    .line 341
    .local v0, "b":I
    const-string/jumbo v3, "0123456789abcdef"

    #@19
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 343
    aget-byte v3, p0, v1

    #@22
    and-int/lit8 v0, v3, 0xf

    #@24
    .line 345
    const-string/jumbo v3, "0123456789abcdef"

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 336
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 348
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    return-object v3
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    .line 148
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    #@3
    const/16 v2, 0x90

    #@5
    if-gt v1, v2, :cond_0

    #@7
    .line 149
    shr-int/lit8 v1, p0, 0x4

    #@9
    and-int/lit8 v1, v1, 0xf

    #@b
    mul-int/lit8 v0, v1, 0xa

    #@d
    .line 152
    :cond_0
    and-int/lit8 v1, p0, 0xf

    #@f
    const/16 v2, 0x9

    #@11
    if-gt v1, v2, :cond_1

    #@13
    .line 153
    and-int/lit8 v1, p0, 0xf

    #@15
    add-int/2addr v0, v1

    #@16
    .line 156
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/16 v5, 0x9

    #@2
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 90
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@8
    .line 91
    .local v0, "count":I
    move v1, p1

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@b
    .line 93
    aget-byte v4, p0, v1

    #@d
    and-int/lit8 v3, v4, 0xf

    #@f
    .line 94
    .local v3, "v":I
    if-le v3, v5, :cond_0

    #@11
    const/4 v3, 0x0

    #@12
    .line 95
    :cond_0
    add-int/lit8 v4, v3, 0x30

    #@14
    int-to-char v4, v4

    #@15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 97
    add-int/lit8 v0, v0, 0x1

    #@1a
    if-ne v0, p2, :cond_2

    #@1c
    .line 104
    .end local v3    # "v":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 99
    .restart local v3    # "v":I
    :cond_2
    aget-byte v4, p0, v1

    #@23
    shr-int/lit8 v4, v4, 0x4

    #@25
    and-int/lit8 v3, v4, 0xf

    #@27
    .line 100
    if-le v3, v5, :cond_3

    #@29
    const/4 v3, 0x0

    #@2a
    .line 101
    :cond_3
    add-int/lit8 v4, v3, 0x30

    #@2c
    int-to-char v4, v4

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 102
    add-int/lit8 v0, v0, 0x1

    #@32
    .line 91
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 8
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 530
    if-nez p0, :cond_0

    #@3
    .line 531
    return-object v6

    #@4
    .line 534
    :cond_0
    new-array v3, p2, [I

    #@6
    .line 535
    .local v3, "result":[I
    mul-int/lit8 v6, p2, 0x3

    #@8
    add-int v2, p1, v6

    #@a
    .line 536
    .local v2, "endIndex":I
    move v4, p1

    #@b
    .line 537
    .local v4, "valueIndex":I
    const/4 v0, 0x0

    #@c
    .line 540
    .local v0, "colorIndex":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    #@e
    .line 541
    .end local v0    # "colorIndex":I
    .local v1, "colorIndex":I
    add-int/lit8 v5, v4, 0x1

    #@10
    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    aget-byte v6, p0, v4

    #@12
    and-int/lit16 v6, v6, 0xff

    #@14
    shl-int/lit8 v6, v6, 0x10

    #@16
    .line 538
    const/high16 v7, -0x1000000

    #@18
    .line 540
    or-int/2addr v6, v7

    #@19
    .line 542
    add-int/lit8 v4, v5, 0x1

    #@1b
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    aget-byte v7, p0, v5

    #@1d
    and-int/lit16 v7, v7, 0xff

    #@1f
    shl-int/lit8 v7, v7, 0x8

    #@21
    .line 540
    or-int/2addr v6, v7

    #@22
    .line 543
    add-int/lit8 v5, v4, 0x1

    #@24
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    aget-byte v7, p0, v4

    #@26
    and-int/lit16 v7, v7, 0xff

    #@28
    .line 540
    or-int/2addr v6, v7

    #@29
    aput v6, v3, v0

    #@2b
    .line 544
    if-ge v5, v2, :cond_1

    #@2d
    move v0, v1

    #@2e
    .end local v1    # "colorIndex":I
    .restart local v0    # "colorIndex":I
    move v4, v5

    #@2f
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto :goto_0

    #@30
    .line 545
    .end local v0    # "colorIndex":I
    .end local v4    # "valueIndex":I
    .restart local v1    # "colorIndex":I
    .restart local v5    # "valueIndex":I
    :cond_1
    return-object v3
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    .line 126
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    #@3
    const/16 v2, 0x90

    #@5
    if-gt v1, v2, :cond_0

    #@7
    .line 127
    shr-int/lit8 v1, p0, 0x4

    #@9
    and-int/lit8 v0, v1, 0xf

    #@b
    .line 130
    :cond_0
    and-int/lit8 v1, p0, 0xf

    #@d
    const/16 v2, 0x9

    #@f
    if-gt v1, v2, :cond_1

    #@11
    .line 131
    and-int/lit8 v1, p0, 0xf

    #@13
    mul-int/lit8 v1, v1, 0xa

    #@15
    add-int/2addr v0, v1

    #@16
    .line 134
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    .line 287
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
    .line 288
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
    .line 289
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
    .line 291
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "invalid hex char \'"

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

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 308
    if-nez p0, :cond_0

    #@3
    return-object v3

    #@4
    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 312
    .local v2, "sz":I
    div-int/lit8 v3, v2, 0x2

    #@a
    new-array v1, v3, [B

    #@c
    .line 314
    .local v1, "ret":[B
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@f
    .line 315
    div-int/lit8 v3, v0, 0x2

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v4

    #@15
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    #@18
    move-result v4

    #@19
    shl-int/lit8 v4, v4, 0x4

    #@1b
    .line 316
    add-int/lit8 v5, v0, 0x1

    #@1d
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v5

    #@21
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    #@24
    move-result v5

    #@25
    .line 315
    or-int/2addr v4, v5

    #@26
    int-to-byte v4, v4

    #@27
    aput-byte v4, v1, v3

    #@29
    .line 314
    add-int/lit8 v0, v0, 0x2

    #@2b
    goto :goto_0

    #@2c
    .line 319
    :cond_1
    return-object v1
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    .line 480
    rem-int v9, v10, p4

    #@4
    if-eqz v9, :cond_0

    #@6
    .line 481
    const-string/jumbo v9, "IccUtils"

    #@9
    const-string/jumbo v10, "not event number of color"

    #@c
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 482
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    #@12
    move-result-object v9

    #@13
    return-object v9

    #@14
    .line 486
    :cond_0
    const/4 v0, 0x1

    #@15
    .line 487
    .local v0, "mask":I
    packed-switch p4, :pswitch_data_0

    #@18
    .line 502
    :goto_0
    :pswitch_0
    new-array v2, p2, [I

    #@1a
    .line 503
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    #@1b
    .line 504
    .local v3, "resultIndex":I
    div-int v5, v10, p4

    #@1d
    .local v5, "run":I
    move v8, p1

    #@1e
    .line 505
    .end local p1    # "valueIndex":I
    .local v8, "valueIndex":I
    :goto_1
    if-ge v3, p2, :cond_2

    #@20
    .line 506
    add-int/lit8 p1, v8, 0x1

    #@22
    .end local v8    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    aget-byte v7, p0, v8

    #@24
    .line 507
    .local v7, "tempByte":B
    const/4 v6, 0x0

    #@25
    .local v6, "runIndex":I
    move v4, v3

    #@26
    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    :goto_2
    if-ge v6, v5, :cond_1

    #@28
    .line 508
    sub-int v9, v5, v6

    #@2a
    add-int/lit8 v1, v9, -0x1

    #@2c
    .line 509
    .local v1, "offset":I
    add-int/lit8 v3, v4, 0x1

    #@2e
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    mul-int v9, v1, p4

    #@30
    shr-int v9, v7, v9

    #@32
    and-int/2addr v9, v0

    #@33
    aget v9, p3, v9

    #@35
    aput v9, v2, v4

    #@37
    .line 507
    add-int/lit8 v6, v6, 0x1

    #@39
    move v4, v3

    #@3a
    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    goto :goto_2

    #@3b
    .line 489
    .end local v1    # "offset":I
    .end local v2    # "resultArray":[I
    .end local v4    # "resultIndex":I
    .end local v5    # "run":I
    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :pswitch_1
    const/4 v0, 0x1

    #@3c
    .line 490
    goto :goto_0

    #@3d
    .line 492
    :pswitch_2
    const/4 v0, 0x3

    #@3e
    .line 493
    goto :goto_0

    #@3f
    .line 495
    :pswitch_3
    const/16 v0, 0xf

    #@41
    .line 496
    goto :goto_0

    #@42
    .line 498
    :pswitch_4
    const/16 v0, 0xff

    #@44
    .line 499
    goto :goto_0

    #@45
    .restart local v2    # "resultArray":[I
    .restart local v4    # "resultIndex":I
    .restart local v5    # "run":I
    .restart local v6    # "runIndex":I
    .restart local v7    # "tempByte":B
    :cond_1
    move v3, v4

    #@46
    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    move v8, p1

    #@47
    .end local p1    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1

    #@48
    .line 513
    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :cond_2
    return-object v2

    #@49
    .line 487
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    #@0
    .prologue
    .line 518
    const/16 v1, 0x8

    #@2
    rem-int/2addr v1, p4

    #@3
    if-nez v1, :cond_0

    #@5
    .line 519
    const-string/jumbo v1, "IccUtils"

    #@8
    const-string/jumbo v2, "not odd number of color"

    #@b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 520
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 524
    :cond_0
    new-array v0, p2, [I

    #@15
    .line 526
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 361
    aget-byte v4, p0, p1

    #@2
    and-int/lit16 v4, v4, 0x80

    #@4
    const/16 v5, 0x80

    #@6
    if-ne v4, v5, :cond_0

    #@8
    const/4 v4, 0x1

    #@9
    if-ge p2, v4, :cond_1

    #@b
    .line 362
    :cond_0
    const-string/jumbo v4, ""

    #@e
    return-object v4

    #@f
    .line 365
    :cond_1
    aget-byte v4, p0, p1

    #@11
    ushr-int/lit8 v4, v4, 0x4

    #@13
    and-int/lit8 v4, v4, 0x7

    #@15
    packed-switch v4, :pswitch_data_0

    #@18
    .line 386
    const-string/jumbo v2, ""

    #@1b
    .line 394
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    aget-byte v4, p0, p1

    #@1d
    and-int/lit8 v4, v4, 0x40

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 399
    :cond_2
    return-object v2

    #@22
    .line 369
    .end local v2    # "ret":Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    #@24
    and-int/lit8 v3, v4, 0x7

    #@26
    .line 370
    .local v3, "unusedBits":I
    add-int/lit8 v4, p2, -0x1

    #@28
    mul-int/lit8 v4, v4, 0x8

    #@2a
    sub-int/2addr v4, v3

    #@2b
    div-int/lit8 v0, v4, 0x7

    #@2d
    .line 371
    .local v0, "countSeptets":I
    add-int/lit8 v4, p1, 0x1

    #@2f
    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 376
    .end local v0    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "unusedBits":I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    #@36
    .line 377
    add-int/lit8 v4, p1, 0x1

    #@38
    add-int/lit8 v5, p2, -0x1

    #@3a
    const-string/jumbo v6, "utf-16"

    #@3d
    .line 376
    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 378
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@42
    .line 379
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, ""

    #@45
    .line 380
    .restart local v2    # "ret":Ljava/lang/String;
    const-string/jumbo v4, "IccUtils"

    #@48
    const-string/jumbo v5, "implausible UnsupportedEncodingException"

    #@4b
    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    goto :goto_0

    #@4f
    .line 365
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 410
    const/4 v8, 0x1

    #@2
    .local v8, "valueIndex":I
    aget-byte v11, p0, v11

    #@4
    and-int/lit16 v10, v11, 0xff

    #@6
    .line 411
    .local v10, "width":I
    add-int/lit8 v9, v8, 0x1

    #@8
    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    #@a
    and-int/lit16 v3, v11, 0xff

    #@c
    .line 412
    .local v3, "height":I
    mul-int v4, v10, v3

    #@e
    .line 414
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    #@10
    .line 416
    .local v7, "pixels":[I
    const/4 v5, 0x0

    #@11
    .line 417
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    #@12
    .line 418
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    #@13
    .local v2, "currentByte":B
    move v6, v5

    #@14
    .line 419
    .end local v2    # "currentByte":B
    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    #@16
    .line 421
    rem-int/lit8 v11, v6, 0x8

    #@18
    if-nez v11, :cond_2

    #@1a
    .line 422
    add-int/lit8 v8, v9, 0x1

    #@1c
    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    #@1e
    .line 423
    .local v2, "currentByte":B
    const/4 v0, 0x7

    #@1f
    .line 425
    .end local v2    # "currentByte":B
    :goto_1
    add-int/lit8 v5, v6, 0x1

    #@21
    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    #@23
    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    #@25
    and-int/lit8 v11, v11, 0x1

    #@27
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    #@2a
    move-result v11

    #@2b
    aput v11, v7, v6

    #@2d
    move v0, v1

    #@2e
    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    #@2f
    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    #@30
    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    #@31
    .line 428
    :cond_0
    if-eq v6, v4, :cond_1

    #@33
    .line 429
    const-string/jumbo v11, "IccUtils"

    #@36
    const-string/jumbo v12, "parse end and size error"

    #@39
    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 431
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@3e
    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@41
    move-result-object v11

    #@42
    return-object v11

    #@43
    :cond_2
    move v8, v9

    #@44
    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 453
    const/4 v6, 0x1

    #@2
    .local v6, "valueIndex":I
    aget-byte v9, p0, v11

    #@4
    and-int/lit16 v8, v9, 0xff

    #@6
    .line 454
    .local v8, "width":I
    add-int/lit8 v7, v6, 0x1

    #@8
    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v9, p0, v6

    #@a
    and-int/lit16 v4, v9, 0xff

    #@c
    .line 455
    .local v4, "height":I
    add-int/lit8 v6, v7, 0x1

    #@e
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v9, p0, v7

    #@10
    and-int/lit16 v0, v9, 0xff

    #@12
    .line 456
    .local v0, "bits":I
    add-int/lit8 v7, v6, 0x1

    #@14
    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    aget-byte v9, p0, v6

    #@16
    and-int/lit16 v3, v9, 0xff

    #@18
    .line 457
    .local v3, "colorNumber":I
    add-int/lit8 v6, v7, 0x1

    #@1a
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v9, p0, v7

    #@1c
    and-int/lit16 v9, v9, 0xff

    #@1e
    shl-int/lit8 v9, v9, 0x8

    #@20
    .line 458
    add-int/lit8 v7, v6, 0x1

    #@22
    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    aget-byte v10, p0, v6

    #@24
    and-int/lit16 v10, v10, 0xff

    #@26
    .line 457
    or-int v1, v9, v10

    #@28
    .line 460
    .local v1, "clutOffset":I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    #@2b
    move-result-object v2

    #@2c
    .line 461
    .local v2, "colorIndexArray":[I
    if-eqz p2, :cond_0

    #@2e
    .line 462
    add-int/lit8 v9, v3, -0x1

    #@30
    aput v11, v2, v9

    #@32
    .line 465
    :cond_0
    const/4 v5, 0x0

    #@33
    .line 466
    .local v5, "resultArray":[I
    const/16 v9, 0x8

    #@35
    rem-int/2addr v9, v0

    #@36
    if-nez v9, :cond_1

    #@38
    .line 468
    mul-int v9, v8, v4

    #@3a
    .line 467
    invoke-static {p0, v7, v9, v2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    #@3d
    move-result-object v5

    #@3e
    .line 475
    .local v5, "resultArray":[I
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@40
    .line 474
    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@43
    move-result-object v9

    #@44
    return-object v9

    #@45
    .line 471
    .local v5, "resultArray":[I
    :cond_1
    mul-int v9, v8, v4

    #@47
    .line 470
    invoke-static {p0, v7, v9, v2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    #@4a
    move-result-object v5

    #@4b
    .local v5, "resultArray":[I
    goto :goto_0
.end method
