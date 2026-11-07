.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final blacklist FPLMN_BYTE_SIZE:I = 0x3

.field private static final blacklist HEX_CHARS:[C

.field static final blacklist LOG_TAG:Ljava/lang/String; = "IccUtils"

.field public static final blacklist TEST_ICCID:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    return-void

    :array_a
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adnStringFieldToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 342
    if-nez p2, :cond_5

    .line 343
    const-string v0, ""

    return-object v0

    .line 345
    :cond_5
    const/4 v0, 0x1

    if-lt p2, v0, :cond_45

    .line 346
    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_45

    .line 347
    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 348
    .local v0, "ucslen":I
    const/4 v1, 0x0

    .line 351
    .local v1, "ret":Ljava/lang/String;
    :try_start_13
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v4, v0, 0x2

    const-string/jumbo v5, "utf-16be"

    invoke-direct {v2, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1f} :catch_21

    move-object v1, v2

    .line 355
    goto :goto_29

    .line 352
    :catch_21
    move-exception v2

    .line 353
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "IccUtils"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_29
    if-eqz v1, :cond_45

    .line 360
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 361
    :goto_2f
    if-lez v0, :cond_3f

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_3f

    .line 362
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 364
    :cond_3f
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 369
    .end local v0    # "ucslen":I
    .end local v1    # "ret":Ljava/lang/String;
    :cond_45
    const/4 v0, 0x0

    .line 370
    .local v0, "isucs2":Z
    const/4 v1, 0x0

    .line 371
    .local v1, "base":C
    const/4 v2, 0x0

    .line 373
    .local v2, "len":I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_6a

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_6a

    .line 374
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 375
    add-int/lit8 v3, p2, -0x3

    if-le v2, v3, :cond_5d

    .line 376
    add-int/lit8 v2, p2, -0x3

    .line 378
    :cond_5d
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    int-to-char v1, v3

    .line 379
    add-int/lit8 p1, p1, 0x3

    .line 380
    const/4 v0, 0x1

    goto :goto_92

    .line 381
    :cond_6a
    const/4 v3, 0x4

    if-lt p2, v3, :cond_92

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_92

    .line 382
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 383
    add-int/lit8 v3, p2, -0x4

    if-le v2, v3, :cond_7f

    .line 384
    add-int/lit8 v2, p2, -0x4

    .line 386
    :cond_7f
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v1, v3

    .line 388
    add-int/lit8 p1, p1, 0x4

    .line 389
    const/4 v0, 0x1

    .line 392
    :cond_92
    :goto_92
    if-eqz v0, :cond_c7

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v3, "ret":Ljava/lang/StringBuilder;
    :goto_99
    if-lez v2, :cond_c2

    .line 398
    aget-byte v4, p0, p1

    if-gez v4, :cond_ac

    .line 399
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x7f

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 p1, p1, 0x1

    .line 401
    add-int/lit8 v2, v2, -0x1

    .line 406
    :cond_ac
    const/4 v4, 0x0

    .line 407
    .local v4, "count":I
    :goto_ad
    if-ge v4, v2, :cond_b8

    add-int v5, p1, v4

    aget-byte v5, p0, v5

    if-ltz v5, :cond_b8

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_ad

    .line 410
    :cond_b8
    invoke-static {p0, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/2addr p1, v4

    .line 414
    sub-int/2addr v2, v4

    .line 415
    .end local v4    # "count":I
    goto :goto_99

    .line 417
    :cond_c2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 420
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    :cond_c7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 421
    .local v3, "resource":Landroid/content/res/Resources;
    const-string v4, ""

    .line 423
    .local v4, "defaultCharset":Ljava/lang/String;
    nop

    .line 424
    const v5, 0x1040496

    :try_start_d1
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d1 .. :try_end_d5} :catch_d7

    move-object v4, v5

    .line 427
    goto :goto_d8

    .line 425
    :catch_d7
    move-exception v5

    .line 428
    :goto_d8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist bcdPlmnToString([BI)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 140
    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_7

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_7
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 144
    .local v0, "trans":[B
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 145
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 146
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 147
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 151
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_53
    return-object v1
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[B)V
    .registers 3
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[BI)V

    .line 114
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[BI)V
    .registers 8
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_1b
    array-length v0, p1

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_29
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_4a

    .line 130
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 129
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 132
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4a
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "bcd"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 101
    .local v0, "output":[B
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 102
    return-object v0
.end method

.method public static blacklist bcdToString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 91
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist bcdToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_8
    add-int v2, p1, p2

    if-ge v1, v2, :cond_31

    .line 73
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 74
    .local v2, "v":I
    const/16 v4, 0x9

    if-le v2, v4, :cond_16

    goto :goto_31

    .line 75
    :cond_16
    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 79
    if-ne v2, v3, :cond_25

    goto :goto_2e

    .line 80
    :cond_25
    if-le v2, v4, :cond_28

    goto :goto_31

    .line 81
    :cond_28
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .end local v2    # "v":I
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 84
    .end local v1    # "i":I
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bchToString([BII)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_8
    add-int v2, p1, p2

    if-ge v1, v2, :cond_27

    .line 180
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 181
    .local v2, "v":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 184
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 187
    .end local v1    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist bitToRGB(I)I
    .registers 2
    .param p0, "bit"    # I

    .line 585
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 586
    const/4 v0, -0x1

    return v0

    .line 588
    :cond_5
    const/high16 v0, -0x1000000

    return v0
.end method

.method private static blacklist byteNumForInt(IZ)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "signed"    # Z

    .line 871
    if-ltz p0, :cond_2a

    .line 874
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_17

    .line 875
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_c

    .line 876
    return v2

    .line 878
    :cond_c
    const/16 v2, 0x7fff

    if-gt p0, v2, :cond_11

    .line 879
    return v1

    .line 881
    :cond_11
    const v1, 0x7fffff

    if-gt p0, v1, :cond_28

    .line 882
    return v0

    .line 885
    :cond_17
    const/16 v3, 0xff

    if-gt p0, v3, :cond_1c

    .line 886
    return v2

    .line 888
    :cond_1c
    const v2, 0xffff

    if-gt p0, v2, :cond_22

    .line 889
    return v1

    .line 891
    :cond_22
    const v1, 0xffffff

    if-gt p0, v1, :cond_28

    .line 892
    return v0

    .line 895
    :cond_28
    const/4 v0, 0x4

    return v0

    .line 872
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist byteNumForSignedInt(I)I
    .registers 2
    .param p0, "value"    # I

    .line 855
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteNumForUnsignedInt(I)I
    .registers 2
    .param p0, "value"    # I

    .line 843
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .registers 6
    .param p0, "b"    # B

    .line 924
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v2, p0, 0xff

    ushr-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    aput-char v1, v3, v4

    const/4 v1, 0x1

    aput-char v2, v3, v1

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static greylist bytesToHexString([B)Ljava/lang/String;
    .registers 5
    .param p0, "bytes"    # [B

    .line 481
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_2b

    .line 488
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 490
    .local v2, "b":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    aget-byte v3, p0, v1

    and-int/lit8 v2, v3, 0xf

    .line 494
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 497
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bytesToInt([BII)I
    .registers 7
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 721
    const/4 v0, 0x4

    if-gt p2, v0, :cond_68

    .line 725
    if-ltz p1, :cond_3a

    if-ltz p2, :cond_3a

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_3a

    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p2, :cond_1d

    .line 736
    shl-int/lit8 v2, v0, 0x8

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 738
    .end local v1    # "i":I
    :cond_1d
    if-ltz v0, :cond_20

    .line 742
    return v0

    .line 739
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "src cannot be parsed as a positive integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    .end local v0    # "result":I
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist bytesToRawLong([BII)J
    .registers 11
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 758
    const/16 v0, 0x8

    if-gt p2, v0, :cond_4f

    .line 762
    if-ltz p1, :cond_21

    if-ltz p2, :cond_21

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_21

    .line 771
    const-wide/16 v1, 0x0

    .line 772
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, p2, :cond_20

    .line 773
    shl-long v4, v1, v0

    add-int v6, p1, v3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 775
    .end local v3    # "i":I
    :cond_20
    return-wide v1

    .line 763
    .end local v1    # "result":J
    :cond_21
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist cdmaBcdByteToInt(B)I
    .registers 4
    .param p0, "b"    # B

    .line 255
    const/4 v0, 0x0

    .line 258
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_d

    .line 259
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 262
    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 263
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 266
    :cond_16
    return v0
.end method

.method public static greylist cdmaBcdToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 199
    .local v1, "count":I
    move v2, p1

    .local v2, "i":I
    :goto_7
    if-ge v1, p2, :cond_32

    .line 201
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 202
    .local v3, "v":I
    const/16 v4, 0x9

    if-le v3, v4, :cond_12

    const/4 v3, 0x0

    .line 203
    :cond_12
    add-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_1d

    goto :goto_32

    .line 207
    :cond_1d
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v5, 0xf

    .line 208
    if-le v3, v4, :cond_26

    const/4 v3, 0x0

    .line 209
    :cond_26
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    nop

    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 212
    .end local v2    # "i":I
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist charToByte(C)B
    .registers 2
    .param p0, "c"    # C

    .line 949
    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 950
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    .line 951
    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 952
    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    return v0

    .line 953
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_24

    const/16 v0, 0x66

    if-gt p0, v0, :cond_24

    .line 954
    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    return v0

    .line 956
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 941
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static blacklist countTrailingZeros(B)B
    .registers 4
    .param p0, "b"    # B

    .line 903
    if-nez p0, :cond_5

    .line 904
    const/16 v0, 0x8

    return v0

    .line 906
    :cond_5
    and-int/lit16 v0, p0, 0xff

    .line 907
    .local v0, "v":I
    const/4 v1, 0x7

    .line 908
    .local v1, "c":B
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_f

    .line 909
    add-int/lit8 v2, v1, -0x4

    int-to-byte v1, v2

    .line 911
    :cond_f
    and-int/lit8 v2, v0, 0x33

    if-eqz v2, :cond_16

    .line 912
    add-int/lit8 v2, v1, -0x2

    int-to-byte v1, v2

    .line 914
    :cond_16
    and-int/lit8 v2, v0, 0x55

    if-eqz v2, :cond_1d

    .line 915
    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    .line 917
    :cond_1d
    return v1
.end method

.method public static blacklist encodeFplmns(Ljava/util/List;I)[B
    .registers 7
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .line 967
    .local p0, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v0, p1, [B

    .line 968
    .local v0, "serializedFplmns":[B
    const/4 v1, 0x0

    .line 969
    .local v1, "offset":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 970
    .local v3, "fplmn":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x3

    if-le v4, p1, :cond_18

    goto :goto_1f

    .line 971
    :cond_18
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    .line 972
    nop

    .end local v3    # "fplmn":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x3

    .line 973
    goto :goto_7

    .line 975
    :cond_1f
    :goto_1f
    if-ge v1, p1, :cond_28

    .line 977
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    move v1, v2

    goto :goto_1f

    .line 979
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :cond_28
    return-object v0
.end method

.method private static blacklist getCLUT([BII)[I
    .registers 11
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .line 681
    if-nez p0, :cond_4

    .line 682
    const/4 v0, 0x0

    return-object v0

    .line 685
    :cond_4
    new-array v0, p2, [I

    .line 686
    .local v0, "result":[I
    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 687
    .local v1, "endIndex":I
    move v2, p1

    .line 688
    .local v2, "valueIndex":I
    const/4 v3, 0x0

    .line 689
    .local v3, "colorIndex":I
    const/high16 v4, -0x1000000

    .line 691
    .local v4, "alpha":I
    :goto_d
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "colorIndex":I
    .local v5, "colorIndex":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v6, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v3

    .line 695
    if-lt v6, v1, :cond_2d

    .line 696
    return-object v0

    .line 695
    :cond_2d
    move v3, v5

    move v2, v6

    goto :goto_d
.end method

.method public static blacklist getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "iccId"    # Ljava/lang/String;

    .line 701
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 702
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_15

    .line 701
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :cond_15
    :goto_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist gsmBcdByteToInt(B)I
    .registers 4
    .param p0, "b"    # B

    .line 232
    const/4 v0, 0x0

    .line 235
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_b

    .line 236
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 239
    :cond_b
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 240
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 243
    :cond_16
    return v0
.end method

.method public static greylist-max-r hexCharToInt(C)I
    .registers 4
    .param p0, "c"    # C

    .line 434
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 435
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 436
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 438
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

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

.method public static greylist hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 456
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 460
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 462
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2c

    .line 463
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 464
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 462
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    .line 467
    .end local v2    # "i":I
    :cond_2c
    return-object v1
.end method

.method private static blacklist intToBytes(I[BIZ)I
    .registers 9
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "signed"    # Z

    .line 859
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    .line 860
    .local v0, "l":I
    if-ltz p2, :cond_1d

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1d

    .line 863
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    move v2, p0

    .local v2, "v":I
    :goto_e
    if-ltz v1, :cond_1c

    .line 864
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    .line 865
    .local v3, "b":B
    add-int v4, p2, v1

    aput-byte v3, p1, v4

    .line 863
    .end local v3    # "b":B
    add-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_e

    .line 867
    .end local v1    # "i":I
    .end local v2    # "v":I
    :cond_1c
    return v0

    .line 861
    :cond_1d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space to write. Required bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist mapTo2OrderBitColor([BII[II)[I
    .registers 14
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 631
    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_12

    .line 632
    const-string v0, "IccUtils"

    const-string v1, "not event number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 637
    :cond_12
    const/4 v1, 0x1

    .line 638
    .local v1, "mask":I
    sparse-switch p4, :sswitch_data_44

    goto :goto_21

    .line 649
    :sswitch_17
    const/16 v1, 0xff

    goto :goto_21

    .line 646
    :sswitch_1a
    const/16 v1, 0xf

    .line 647
    goto :goto_21

    .line 643
    :sswitch_1d
    const/4 v1, 0x3

    .line 644
    goto :goto_21

    .line 640
    :sswitch_1f
    const/4 v1, 0x1

    .line 641
    nop

    .line 653
    :goto_21
    new-array v2, p2, [I

    .line 654
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 655
    .local v3, "resultIndex":I
    div-int/2addr v0, p4

    .line 656
    .local v0, "run":I
    :goto_25
    if-ge v3, p2, :cond_43

    .line 657
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte p1, p0, p1

    .line 658
    .local p1, "tempByte":B
    const/4 v5, 0x0

    .local v5, "runIndex":I
    :goto_2c
    if-ge v5, v0, :cond_41

    .line 659
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 660
    .local v6, "offset":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "resultIndex":I
    .local v7, "resultIndex":I
    mul-int v8, v6, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v1

    aget v8, p3, v8

    aput v8, v2, v3

    .line 658
    .end local v6    # "offset":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2c

    .line 663
    .end local v5    # "runIndex":I
    .end local v7    # "resultIndex":I
    .end local p1    # "tempByte":B
    .restart local v3    # "resultIndex":I
    :cond_41
    move p1, v4

    goto :goto_25

    .line 664
    .end local v4    # "valueIndex":I
    .local p1, "valueIndex":I
    :cond_43
    return-object v2

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1d
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_17
    .end sparse-switch
.end method

.method private static blacklist mapToNon2OrderBitColor([BII[II)[I
    .registers 7
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 669
    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_11

    .line 670
    const-string v0, "IccUtils"

    const-string v1, "not odd number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 675
    :cond_11
    new-array v0, p2, [I

    .line 677
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static greylist networkNameToString([BII)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 511
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_45

    const/4 v0, 0x1

    if-ge p2, v0, :cond_b

    goto :goto_45

    .line 515
    :cond_b
    aget-byte v0, p0, p1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_48

    .line 536
    const-string v0, ""

    .local v0, "ret":Ljava/lang/String;
    goto :goto_42

    .line 526
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_17
    :try_start_17
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const-string/jumbo v3, "utf-16"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_23} :catch_24

    .line 531
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_42

    .line 528
    .end local v0    # "ret":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 529
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 530
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    goto :goto_42

    .line 519
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_30
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    .line 520
    .local v0, "unusedBits":I
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    .line 521
    .local v1, "countSeptets":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "ret":Ljava/lang/String;
    move-object v0, v2

    .line 544
    .end local v1    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_42
    aget-byte v1, p0, p1

    .line 548
    return-object v0

    .line 512
    .end local v0    # "ret":Ljava/lang/String;
    :cond_45
    :goto_45
    const-string v0, ""

    return-object v0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_30
        :pswitch_17
    .end packed-switch
.end method

.method public static greylist parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 561
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 562
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 564
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 566
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 567
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 568
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 569
    .local v7, "currentByte":B
    :goto_14
    if-ge v5, v3, :cond_32

    .line 571
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_21

    .line 572
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 573
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    move v7, v2

    move v2, v8

    .line 575
    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_21
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pixelIndex":I
    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "bitIndex":I
    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v6

    aput v6, v4, v5

    move v5, v8

    move v6, v9

    goto :goto_14

    .line 578
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_32
    if-eq v5, v3, :cond_3b

    .line 579
    const-string v8, "IccUtils"

    const-string v9, "parse end and size error"

    invoke-static {v8, v9}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_3b
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static greylist parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 605
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 606
    .local v1, "height":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 607
    .local v2, "bits":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 608
    .local v3, "colorNumber":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 611
    .local v4, "clutOffset":I
    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    .line 612
    .local v5, "colorIndexArray":[I
    const/4 v8, 0x1

    if-ne v8, p2, :cond_35

    .line 613
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    .line 616
    :cond_35
    const/4 v8, 0x0

    .line 617
    .local v8, "resultArray":[I
    rem-int/2addr v6, v2

    if-nez v6, :cond_40

    .line 618
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v6

    .end local v8    # "resultArray":[I
    .local v6, "resultArray":[I
    goto :goto_46

    .line 621
    .end local v6    # "resultArray":[I
    .restart local v8    # "resultArray":[I
    :cond_40
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v6

    .line 625
    .end local v8    # "resultArray":[I
    .restart local v6    # "resultArray":[I
    :goto_46
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static blacklist signedIntToBytes(I[BI)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 833
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist signedIntToBytes(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 801
    if-ltz p0, :cond_d

    .line 804
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 805
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    .line 806
    return-object v0

    .line 802
    .end local v0    # "bytes":[B
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist stringToAdnStringField(Ljava/lang/String;)[B
    .registers 7
    .param p0, "alphaTag"    # Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 284
    .local v1, "septets":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    .line 285
    new-array v2, v1, [B

    .line 286
    .local v2, "ret":[B
    array-length v3, v2

    invoke-static {p0, v2, v0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 287
    return-object v2

    .line 295
    .end local v2    # "ret":[B
    :cond_f
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 296
    .local v2, "alphaTagBytes":[B
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 298
    .local v3, "ret":[B
    const/16 v5, -0x80

    aput-byte v5, v3, v0

    .line 299
    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-object v3
.end method

.method public static blacklist stringToBcdPlmn(Ljava/lang/String;[BI)V
    .registers 8
    .param p0, "plmn"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_e

    :cond_c
    const/16 v0, 0x46

    .line 165
    .local v0, "digit6":C
    :goto_e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v1

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 166
    add-int/lit8 v1, p2, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 167
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v2, v3, 0x4

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 168
    return-void
.end method

.method public static blacklist stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 931
    const-string v0, "FFFFFFFFFFFFFFFFFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 932
    return-object p0

    .line 934
    :cond_9
    if-nez p0, :cond_d

    const/4 v0, 0x0

    goto :goto_15

    :cond_d
    const-string v0, "(?i)f*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public static blacklist unsignedIntToBytes(I[BI)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 820
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist unsignedIntToBytes(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 784
    if-ltz p0, :cond_d

    .line 787
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 788
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    .line 789
    return-object v0

    .line 785
    .end local v0    # "bytes":[B
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
