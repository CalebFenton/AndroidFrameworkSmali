.class Landroid/util/Base64$Decoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final greylist-max-o DECODE:[I

.field private static final greylist-max-o DECODE_WEBSAFE:[I

.field private static final greylist-max-o EQUALS:I = -0x2

.field private static final greylist-max-o SKIP:I = -0x1


# instance fields
.field private final greylist-max-o alphabet:[I

.field private greylist-max-o state:I

.field private greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    .line 207
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_218

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_218
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor greylist-max-o <init>(I[B)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 244
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 245
    iput-object p2, p0, Landroid/util/Base64$Decoder;->output:[B

    .line 247
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_c

    sget-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    goto :goto_e

    :cond_c
    sget-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    :goto_e
    iput-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/Base64$Decoder;->state:I

    .line 249
    iput v0, p0, Landroid/util/Base64$Decoder;->value:I

    .line 250
    return-void
.end method


# virtual methods
.method public greylist-max-o maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 257
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public greylist-max-o process([BIIZ)Z
    .registers 16
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .line 267
    iget v0, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    return v1

    .line 269
    :cond_7
    move v0, p2

    .line 270
    .local v0, "p":I
    add-int/2addr p3, p2

    .line 277
    iget v3, p0, Landroid/util/Base64$Decoder;->state:I

    .line 278
    .local v3, "state":I
    iget v4, p0, Landroid/util/Base64$Decoder;->value:I

    .line 279
    .local v4, "value":I
    const/4 v5, 0x0

    .line 280
    .local v5, "op":I
    iget-object v6, p0, Landroid/util/Base64$Decoder;->output:[B

    .line 281
    .local v6, "output":[B
    iget-object v7, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    .line 283
    .local v7, "alphabet":[I
    :goto_12
    if-ge v0, p3, :cond_e4

    .line 298
    if-nez v3, :cond_5d

    .line 299
    :goto_16
    add-int/lit8 v8, v0, 0x4

    if-gt v8, p3, :cond_59

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    or-int/2addr v8, v9

    move v4, v8

    if-ltz v8, :cond_59

    .line 304
    add-int/lit8 v8, v5, 0x2

    int-to-byte v9, v4

    aput-byte v9, v6, v8

    .line 305
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 306
    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v5

    .line 307
    add-int/lit8 v5, v5, 0x3

    .line 308
    add-int/lit8 v0, v0, 0x4

    goto :goto_16

    .line 310
    :cond_59
    if-lt v0, p3, :cond_5d

    goto/16 :goto_e4

    .line 318
    :cond_5d
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "p":I
    .local v8, "p":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget v0, v7, v0

    .line 320
    .local v0, "d":I
    const/4 v9, -0x2

    const/4 v10, -0x1

    packed-switch v3, :pswitch_data_116

    goto/16 :goto_e1

    .line 388
    :pswitch_6c
    if-eq v0, v10, :cond_e1

    .line 389
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 390
    return v1

    .line 379
    :pswitch_71
    if-ne v0, v9, :cond_77

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e1

    .line 381
    :cond_77
    if-eq v0, v10, :cond_e1

    .line 382
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 383
    return v1

    .line 357
    :pswitch_7c
    if-ltz v0, :cond_97

    .line 359
    shl-int/lit8 v9, v4, 0x6

    or-int v4, v9, v0

    .line 360
    add-int/lit8 v9, v5, 0x2

    int-to-byte v10, v4

    aput-byte v10, v6, v9

    .line 361
    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v4, 0x8

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 362
    shr-int/lit8 v9, v4, 0x10

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    .line 363
    add-int/lit8 v5, v5, 0x3

    .line 364
    const/4 v3, 0x0

    goto :goto_e1

    .line 365
    :cond_97
    if-ne v0, v9, :cond_a9

    .line 368
    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v4, 0x2

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 369
    shr-int/lit8 v9, v4, 0xa

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    .line 370
    add-int/lit8 v5, v5, 0x2

    .line 371
    const/4 v3, 0x5

    goto :goto_e1

    .line 372
    :cond_a9
    if-eq v0, v10, :cond_e1

    .line 373
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 374
    return v1

    .line 342
    :pswitch_ae
    if-ltz v0, :cond_b7

    .line 343
    shl-int/lit8 v9, v4, 0x6

    or-int v4, v9, v0

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 345
    :cond_b7
    if-ne v0, v9, :cond_c3

    .line 348
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "op":I
    .local v9, "op":I
    shr-int/lit8 v10, v4, 0x4

    int-to-byte v10, v10

    aput-byte v10, v6, v5

    .line 349
    const/4 v3, 0x4

    move v5, v9

    goto :goto_e1

    .line 350
    .end local v9    # "op":I
    .restart local v5    # "op":I
    :cond_c3
    if-eq v0, v10, :cond_e1

    .line 351
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 352
    return v1

    .line 332
    :pswitch_c8
    if-ltz v0, :cond_d1

    .line 333
    shl-int/lit8 v9, v4, 0x6

    or-int v4, v9, v0

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 335
    :cond_d1
    if-eq v0, v10, :cond_e1

    .line 336
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 337
    return v1

    .line 322
    :pswitch_d6
    if-ltz v0, :cond_dc

    .line 323
    move v4, v0

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_e1

    .line 325
    :cond_dc
    if-eq v0, v10, :cond_e1

    .line 326
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 327
    return v1

    .line 394
    .end local v0    # "d":I
    :cond_e1
    :goto_e1
    move v0, v8

    goto/16 :goto_12

    .line 396
    .end local v8    # "p":I
    .local v0, "p":I
    :cond_e4
    :goto_e4
    const/4 v8, 0x1

    if-nez p4, :cond_ee

    .line 399
    iput v3, p0, Landroid/util/Base64$Decoder;->state:I

    .line 400
    iput v4, p0, Landroid/util/Base64$Decoder;->value:I

    .line 401
    iput v5, p0, Landroid/util/Base64$Decoder;->op:I

    .line 402
    return v8

    .line 408
    :cond_ee
    packed-switch v3, :pswitch_data_126

    goto :goto_111

    .line 430
    :pswitch_f2
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 431
    return v1

    .line 425
    :pswitch_f5
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "op":I
    .local v1, "op":I
    shr-int/lit8 v2, v4, 0xa

    int-to-byte v2, v2

    aput-byte v2, v6, v5

    .line 426
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "op":I
    .restart local v5    # "op":I
    shr-int/lit8 v2, v4, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    .line 427
    goto :goto_111

    .line 420
    :pswitch_104
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "op":I
    .restart local v1    # "op":I
    shr-int/lit8 v2, v4, 0x4

    int-to-byte v2, v2

    aput-byte v2, v6, v5

    .line 421
    move v5, v1

    goto :goto_111

    .line 415
    .end local v1    # "op":I
    .restart local v5    # "op":I
    :pswitch_10d
    iput v2, p0, Landroid/util/Base64$Decoder;->state:I

    .line 416
    return v1

    .line 411
    :pswitch_110
    nop

    .line 438
    :goto_111
    iput v3, p0, Landroid/util/Base64$Decoder;->state:I

    .line 439
    iput v5, p0, Landroid/util/Base64$Decoder;->op:I

    .line 440
    return v8

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_c8
        :pswitch_ae
        :pswitch_7c
        :pswitch_71
        :pswitch_6c
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_110
        :pswitch_10d
        :pswitch_104
        :pswitch_f5
        :pswitch_f2
    .end packed-switch
.end method
