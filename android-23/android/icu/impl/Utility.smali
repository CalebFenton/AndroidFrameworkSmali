.class public final Landroid/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final APOSTROPHE:C = '\''

.field private static final BACKSLASH:C = '\\'

.field static final DIGITS:[C

.field private static final ESCAPE:C = '\ua5a5'

.field static final ESCAPE_BYTE:B = -0x5bt

.field static final HEX_DIGIT:[C

.field public static LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final MAGIC_UNSIGNED:I = -0x80000000

.field private static final UNESCAPE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 632
    const-string/jumbo v0, "line.separator"

    #@5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    #@b
    .line 687
    new-array v0, v1, [C

    #@d
    fill-array-data v0, :array_0

    #@10
    sput-object v0, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@12
    .line 757
    new-array v0, v1, [C

    #@14
    fill-array-data v0, :array_1

    #@17
    sput-object v0, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    #@19
    .line 1340
    const/16 v0, 0x24

    #@1b
    new-array v0, v0, [C

    #@1d
    fill-array-data v0, :array_2

    #@20
    sput-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    #@22
    .line 19
    return-void

    #@23
    .line 687
    nop

    #@24
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

    #@38
    .line 757
    :array_1
    .array-data 2
        0x61s
        0x7s
        0x62s
        0x8s
        0x65s
        0x1bs
        0x66s
        0xcs
        0x6es
        0xas
        0x72s
        0xds
        0x74s
        0x9s
        0x76s
        0xbs
    .end array-data

    #@4c
    .line 1340
    :array_2
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
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
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

.method public static final RLEStringToByteArray(Ljava/lang/String;)[B
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/16 v14, -0x5b

    #@3
    .line 563
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v12

    #@7
    shl-int/lit8 v12, v12, 0x10

    #@9
    const/4 v13, 0x1

    #@a
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v13

    #@e
    or-int v8, v12, v13

    #@10
    .line 564
    .local v8, "length":I
    new-array v2, v8, [B

    #@12
    .line 565
    .local v2, "array":[B
    const/4 v9, 0x1

    #@13
    .line 566
    .local v9, "nextChar":Z
    const/4 v4, 0x0

    #@14
    .line 567
    .local v4, "c":C
    const/4 v10, 0x0

    #@15
    .line 568
    .local v10, "node":I
    const/4 v11, 0x0

    #@16
    .line 569
    .local v11, "runLength":I
    const/4 v5, 0x2

    #@17
    .line 570
    .local v5, "i":I
    const/4 v0, 0x0

    #@18
    .local v0, "ai":I
    move v1, v0

    #@19
    .end local v0    # "ai":I
    .local v1, "ai":I
    move v6, v5

    #@1a
    .end local v4    # "c":C
    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    if-ge v1, v8, :cond_5

    #@1c
    .line 576
    if-eqz v9, :cond_0

    #@1e
    .line 577
    add-int/lit8 v5, v6, 0x1

    #@20
    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v4

    #@24
    .line 578
    .local v4, "c":C
    shr-int/lit8 v12, v4, 0x8

    #@26
    int-to-byte v3, v12

    #@27
    .line 579
    .local v3, "b":B
    const/4 v9, 0x0

    #@28
    .line 590
    .end local v4    # "c":C
    :goto_1
    packed-switch v10, :pswitch_data_0

    #@2b
    move v0, v1

    #@2c
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    :goto_2
    move v1, v0

    #@2d
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    move v6, v5

    #@2e
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    #@2f
    .line 582
    .end local v3    # "b":B
    :cond_0
    and-int/lit16 v12, v4, 0xff

    #@31
    int-to-byte v3, v12

    #@32
    .line 583
    .restart local v3    # "b":B
    const/4 v9, 0x1

    #@33
    move v5, v6

    #@34
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    #@35
    .line 593
    :pswitch_0
    if-ne v3, v14, :cond_1

    #@37
    .line 594
    const/4 v10, 0x1

    #@38
    move v0, v1

    #@39
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_2

    #@3a
    .line 597
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    :cond_1
    add-int/lit8 v0, v1, 0x1

    #@3c
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput-byte v3, v2, v1

    #@3e
    goto :goto_2

    #@3f
    .line 603
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    :pswitch_1
    if-ne v3, v14, :cond_2

    #@41
    .line 604
    add-int/lit8 v0, v1, 0x1

    #@43
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput-byte v14, v2, v1

    #@45
    .line 605
    const/4 v10, 0x0

    #@46
    goto :goto_2

    #@47
    .line 608
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    :cond_2
    move v11, v3

    #@48
    .line 610
    if-gez v11, :cond_3

    #@4a
    add-int/lit16 v11, v11, 0x100

    #@4c
    .line 611
    :cond_3
    const/4 v10, 0x2

    #@4d
    move v0, v1

    #@4e
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_2

    #@4f
    .line 617
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    :pswitch_2
    const/4 v7, 0x0

    #@50
    .local v7, "j":I
    :goto_3
    if-ge v7, v11, :cond_4

    #@52
    add-int/lit8 v0, v1, 0x1

    #@54
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput-byte v3, v2, v1

    #@56
    add-int/lit8 v7, v7, 0x1

    #@58
    move v1, v0

    #@59
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    goto :goto_3

    #@5a
    .line 618
    :cond_4
    const/4 v10, 0x0

    #@5b
    move v0, v1

    #@5c
    .line 619
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_2

    #@5d
    .line 623
    .end local v0    # "ai":I
    .end local v3    # "b":B
    .end local v5    # "i":I
    .end local v7    # "j":I
    .restart local v1    # "ai":I
    .restart local v6    # "i":I
    :cond_5
    if-eqz v10, :cond_6

    #@5f
    .line 624
    new-instance v12, Ljava/lang/IllegalStateException;

    #@61
    const-string/jumbo v13, "Bad run-length encoded byte array"

    #@64
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@67
    throw v12

    #@68
    .line 626
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6b
    move-result v12

    #@6c
    if-eq v6, v12, :cond_7

    #@6e
    .line 627
    new-instance v12, Ljava/lang/IllegalStateException;

    #@70
    const-string/jumbo v13, "Excess data in RLE byte array string"

    #@73
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@76
    throw v12

    #@77
    .line 629
    :cond_7
    return-object v2

    #@78
    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final RLEStringToCharArray(Ljava/lang/String;)[C
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const v11, 0xa5a5

    #@3
    .line 533
    const/4 v9, 0x0

    #@4
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v9

    #@8
    shl-int/lit8 v9, v9, 0x10

    #@a
    const/4 v10, 0x1

    #@b
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v10

    #@f
    or-int v6, v9, v10

    #@11
    .line 534
    .local v6, "length":I
    new-array v2, v6, [C

    #@13
    .line 535
    .local v2, "array":[C
    const/4 v0, 0x0

    #@14
    .line 536
    .local v0, "ai":I
    const/4 v4, 0x2

    #@15
    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v9

    #@19
    if-ge v4, v9, :cond_2

    #@1b
    .line 537
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    .line 538
    .local v3, "c":C
    if-ne v3, v11, :cond_1

    #@21
    .line 539
    add-int/lit8 v4, v4, 0x1

    #@23
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v3

    #@27
    .line 540
    if-ne v3, v11, :cond_0

    #@29
    .line 541
    add-int/lit8 v1, v0, 0x1

    #@2b
    .end local v0    # "ai":I
    .local v1, "ai":I
    aput-char v3, v2, v0

    #@2d
    move v0, v1

    #@2e
    .line 536
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@30
    goto :goto_0

    #@31
    .line 543
    :cond_0
    move v7, v3

    #@32
    .line 544
    .local v7, "runLength":I
    add-int/lit8 v4, v4, 0x1

    #@34
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v8

    #@38
    .line 545
    .local v8, "runValue":C
    const/4 v5, 0x0

    #@39
    .local v5, "j":I
    move v1, v0

    #@3a
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    :goto_2
    if-ge v5, v7, :cond_4

    #@3c
    add-int/lit8 v0, v1, 0x1

    #@3e
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput-char v8, v2, v1

    #@40
    add-int/lit8 v5, v5, 0x1

    #@42
    move v1, v0

    #@43
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    goto :goto_2

    #@44
    .line 549
    .end local v1    # "ai":I
    .end local v5    # "j":I
    .end local v7    # "runLength":I
    .end local v8    # "runValue":C
    .restart local v0    # "ai":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@46
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    aput-char v3, v2, v0

    #@48
    move v0, v1

    #@49
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_1

    #@4a
    .line 553
    .end local v3    # "c":C
    :cond_2
    if-eq v0, v6, :cond_3

    #@4c
    .line 554
    new-instance v9, Ljava/lang/IllegalStateException;

    #@4e
    const-string/jumbo v10, "Bad run-length encoded short array"

    #@51
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    throw v9

    #@55
    .line 556
    :cond_3
    return-object v2

    #@56
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    .restart local v3    # "c":C
    .restart local v5    # "j":I
    .restart local v7    # "runLength":I
    .restart local v8    # "runValue":C
    :cond_4
    move v0, v1

    #@57
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_1
.end method

.method public static final RLEStringToIntArray(Ljava/lang/String;)[I
    .locals 13
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const v12, 0xa5a5

    #@3
    .line 464
    const/4 v11, 0x0

    #@4
    invoke-static {p0, v11}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v7

    #@8
    .line 465
    .local v7, "length":I
    new-array v2, v7, [I

    #@a
    .line 466
    .local v2, "array":[I
    const/4 v0, 0x0

    #@b
    .local v0, "ai":I
    const/4 v4, 0x1

    #@c
    .line 468
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v11

    #@10
    div-int/lit8 v8, v11, 0x2

    #@12
    .local v8, "maxI":I
    move v5, v4

    #@13
    .end local v4    # "i":I
    .local v5, "i":I
    move v1, v0

    #@14
    .line 469
    .end local v0    # "ai":I
    .local v1, "ai":I
    :goto_0
    if-ge v1, v7, :cond_2

    #@16
    if-ge v5, v8, :cond_2

    #@18
    .line 470
    add-int/lit8 v4, v5, 0x1

    #@1a
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    #@1d
    move-result v3

    #@1e
    .line 472
    .local v3, "c":I
    if-ne v3, v12, :cond_1

    #@20
    .line 473
    add-int/lit8 v5, v4, 0x1

    #@22
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-static {p0, v4}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    #@25
    move-result v3

    #@26
    .line 474
    if-ne v3, v12, :cond_0

    #@28
    .line 475
    add-int/lit8 v0, v1, 0x1

    #@2a
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput v3, v2, v1

    #@2c
    move v4, v5

    #@2d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_1
    move v5, v4

    #@2e
    .end local v4    # "i":I
    .restart local v5    # "i":I
    move v1, v0

    #@2f
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    goto :goto_0

    #@30
    .line 477
    :cond_0
    move v9, v3

    #@31
    .line 478
    .local v9, "runLength":I
    add-int/lit8 v4, v5, 0x1

    #@33
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    #@36
    move-result v10

    #@37
    .line 479
    .local v10, "runValue":I
    const/4 v6, 0x0

    #@38
    .local v6, "j":I
    :goto_2
    if-ge v6, v9, :cond_5

    #@3a
    .line 480
    add-int/lit8 v0, v1, 0x1

    #@3c
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput v10, v2, v1

    #@3e
    .line 479
    add-int/lit8 v6, v6, 0x1

    #@40
    move v1, v0

    #@41
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    goto :goto_2

    #@42
    .line 485
    .end local v6    # "j":I
    .end local v9    # "runLength":I
    .end local v10    # "runValue":I
    :cond_1
    add-int/lit8 v0, v1, 0x1

    #@44
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput v3, v2, v1

    #@46
    goto :goto_1

    #@47
    .line 489
    .end local v0    # "ai":I
    .end local v3    # "c":I
    .end local v4    # "i":I
    .restart local v1    # "ai":I
    .restart local v5    # "i":I
    :cond_2
    if-ne v1, v7, :cond_3

    #@49
    if-eq v5, v8, :cond_4

    #@4b
    .line 490
    :cond_3
    new-instance v11, Ljava/lang/IllegalStateException;

    #@4d
    const-string/jumbo v12, "Bad run-length encoded int array"

    #@50
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@53
    throw v11

    #@54
    .line 493
    :cond_4
    return-object v2

    #@55
    .end local v5    # "i":I
    .restart local v3    # "c":I
    .restart local v4    # "i":I
    .restart local v6    # "j":I
    .restart local v9    # "runLength":I
    .restart local v10    # "runValue":I
    :cond_5
    move v0, v1

    #@56
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_1
.end method

.method public static final RLEStringToShortArray(Ljava/lang/String;)[S
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const v11, 0xa5a5

    #@3
    .line 503
    const/4 v9, 0x0

    #@4
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v9

    #@8
    shl-int/lit8 v9, v9, 0x10

    #@a
    const/4 v10, 0x1

    #@b
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v10

    #@f
    or-int v6, v9, v10

    #@11
    .line 504
    .local v6, "length":I
    new-array v2, v6, [S

    #@13
    .line 505
    .local v2, "array":[S
    const/4 v0, 0x0

    #@14
    .line 506
    .local v0, "ai":I
    const/4 v4, 0x2

    #@15
    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v9

    #@19
    if-ge v4, v9, :cond_2

    #@1b
    .line 507
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v3

    #@1f
    .line 508
    .local v3, "c":C
    if-ne v3, v11, :cond_1

    #@21
    .line 509
    add-int/lit8 v4, v4, 0x1

    #@23
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v3

    #@27
    .line 510
    if-ne v3, v11, :cond_0

    #@29
    .line 511
    add-int/lit8 v1, v0, 0x1

    #@2b
    .end local v0    # "ai":I
    .local v1, "ai":I
    int-to-short v9, v3

    #@2c
    aput-short v9, v2, v0

    #@2e
    move v0, v1

    #@2f
    .line 506
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 513
    :cond_0
    move v7, v3

    #@33
    .line 514
    .local v7, "runLength":I
    add-int/lit8 v4, v4, 0x1

    #@35
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v9

    #@39
    int-to-short v8, v9

    #@3a
    .line 515
    .local v8, "runValue":S
    const/4 v5, 0x0

    #@3b
    .local v5, "j":I
    move v1, v0

    #@3c
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    :goto_2
    if-ge v5, v7, :cond_4

    #@3e
    add-int/lit8 v0, v1, 0x1

    #@40
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    aput-short v8, v2, v1

    #@42
    add-int/lit8 v5, v5, 0x1

    #@44
    move v1, v0

    #@45
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    goto :goto_2

    #@46
    .line 519
    .end local v1    # "ai":I
    .end local v5    # "j":I
    .end local v7    # "runLength":I
    .end local v8    # "runValue":S
    .restart local v0    # "ai":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@48
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    int-to-short v9, v3

    #@49
    aput-short v9, v2, v0

    #@4b
    move v0, v1

    #@4c
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_1

    #@4d
    .line 523
    .end local v3    # "c":C
    :cond_2
    if-eq v0, v6, :cond_3

    #@4f
    .line 524
    new-instance v9, Ljava/lang/IllegalStateException;

    #@51
    const-string/jumbo v10, "Bad run-length encoded short array"

    #@54
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw v9

    #@58
    .line 526
    :cond_3
    return-object v2

    #@59
    .end local v0    # "ai":I
    .restart local v1    # "ai":I
    .restart local v3    # "c":C
    .restart local v5    # "j":I
    .restart local v7    # "runLength":I
    .restart local v8    # "runValue":S
    :cond_4
    move v0, v1

    #@5a
    .end local v1    # "ai":I
    .restart local v0    # "ai":I
    goto :goto_1
.end method

.method private static final appendEncodedByte(Ljava/lang/Appendable;B[B)V
    .locals 4
    .param p1, "value"    # B
    .param p2, "state"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;B[B)V"
        }
    .end annotation

    #@0
    .prologue
    .line 446
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const/4 v2, 0x0

    #@1
    :try_start_0
    aget-byte v2, p2, v2

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 447
    const/4 v2, 0x1

    #@6
    aget-byte v2, p2, v2

    #@8
    shl-int/lit8 v2, v2, 0x8

    #@a
    and-int/lit16 v3, p1, 0xff

    #@c
    or-int/2addr v2, v3

    #@d
    int-to-char v0, v2

    #@e
    .line 448
    .local v0, "c":C
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@11
    .line 449
    const/4 v2, 0x0

    #@12
    const/4 v3, 0x0

    #@13
    aput-byte v2, p2, v3

    #@15
    .line 444
    .end local v0    # "c":C
    :goto_0
    return-void

    #@16
    .line 452
    :cond_0
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    aput-byte v2, p2, v3

    #@1a
    .line 453
    const/4 v2, 0x1

    #@1b
    aput-byte p1, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 455
    :catch_0
    move-exception v1

    #@1f
    .line 456
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    #@21
    invoke-direct {v2, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v2
.end method

.method private static final appendInt(Ljava/lang/Appendable;I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 376
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    ushr-int/lit8 v1, p1, 0x10

    #@2
    int-to-char v1, v1

    #@3
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@6
    .line 377
    const v1, 0xffff

    #@9
    and-int/2addr v1, p1

    #@a
    int-to-char v1, v1

    #@b
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 374
    return-void

    #@f
    .line 378
    :catch_0
    move-exception v0

    #@10
    .line 379
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    #@12
    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method

.method public static appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;
    .locals 5
    .param p1, "n"    # I
    .param p2, "radix"    # I
    .param p3, "minDigits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1390
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    const/4 v2, 0x2

    #@1
    if-lt p2, v2, :cond_0

    #@3
    const/16 v2, 0x24

    #@5
    if-le p2, v2, :cond_1

    #@7
    .line 1391
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Illegal radix "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1405
    :catch_0
    move-exception v1

    #@22
    .line 1406
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    #@24
    invoke-direct {v2, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v2

    #@28
    .line 1395
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    move v0, p1

    #@29
    .line 1397
    .local v0, "abs":I
    if-gez p1, :cond_2

    #@2b
    .line 1398
    neg-int v0, p1

    #@2c
    .line 1399
    :try_start_1
    const-string/jumbo v2, "-"

    #@2f
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@32
    .line 1402
    :cond_2
    invoke-static {p0, v0, p2, p3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    .line 1404
    return-object p0
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
    .locals 9
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # I
    .param p2, "isLiteral"    # Z
    .param p3, "escapeUnprintable"    # Z
    .param p4, "quoteBuf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const/4 v7, 0x2

    #@3
    const/16 v6, 0x5c

    #@5
    const/4 v5, 0x0

    #@6
    const/16 v4, 0x27

    #@8
    .line 1553
    if-nez p2, :cond_0

    #@a
    .line 1554
    if-eqz p3, :cond_8

    #@c
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    #@f
    move-result v3

    #@10
    .line 1553
    if-eqz v3, :cond_8

    #@12
    .line 1555
    :cond_0
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@15
    move-result v3

    #@16
    if-lez v3, :cond_4

    #@18
    .line 1563
    :goto_0
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@1b
    move-result v3

    #@1c
    if-lt v3, v7, :cond_1

    #@1e
    .line 1564
    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    #@21
    move-result v3

    #@22
    if-ne v3, v4, :cond_1

    #@24
    .line 1565
    const/4 v3, 0x1

    #@25
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@28
    move-result v3

    #@29
    if-ne v3, v4, :cond_1

    #@2b
    .line 1566
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@32
    .line 1567
    invoke-virtual {p4, v5, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@35
    goto :goto_0

    #@36
    .line 1571
    :cond_1
    const/4 v1, 0x0

    #@37
    .line 1572
    .local v1, "trailingCount":I
    :goto_1
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@3a
    move-result v3

    #@3b
    if-lt v3, v7, :cond_2

    #@3d
    .line 1573
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@40
    move-result v3

    #@41
    add-int/lit8 v3, v3, -0x2

    #@43
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@46
    move-result v3

    #@47
    if-ne v3, v4, :cond_2

    #@49
    .line 1574
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@4c
    move-result v3

    #@4d
    add-int/lit8 v3, v3, -0x1

    #@4f
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@52
    move-result v3

    #@53
    if-ne v3, v4, :cond_2

    #@55
    .line 1575
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@58
    move-result v3

    #@59
    add-int/lit8 v3, v3, -0x2

    #@5b
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    #@5e
    .line 1576
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_1

    #@61
    .line 1578
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@64
    move-result v3

    #@65
    if-lez v3, :cond_3

    #@67
    .line 1579
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6a
    .line 1580
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@6d
    .line 1581
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@70
    .line 1582
    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@73
    move v2, v1

    #@74
    .line 1584
    .end local v1    # "trailingCount":I
    .local v2, "trailingCount":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    #@76
    .end local v2    # "trailingCount":I
    .restart local v1    # "trailingCount":I
    if-lez v2, :cond_4

    #@78
    .line 1585
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7f
    :cond_3
    move v2, v1

    #@80
    .end local v1    # "trailingCount":I
    .restart local v2    # "trailingCount":I
    goto :goto_2

    #@81
    .line 1588
    .end local v2    # "trailingCount":I
    :cond_4
    const/4 v3, -0x1

    #@82
    if-eq p1, v3, :cond_5

    #@84
    .line 1594
    if-ne p1, v8, :cond_6

    #@86
    .line 1595
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@89
    move-result v0

    #@8a
    .line 1596
    .local v0, "len":I
    if-lez v0, :cond_5

    #@8c
    add-int/lit8 v3, v0, -0x1

    #@8e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@91
    move-result v3

    #@92
    if-eq v3, v8, :cond_5

    #@94
    .line 1597
    invoke-virtual {p0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@97
    .line 1549
    .end local v0    # "len":I
    :cond_5
    :goto_3
    return-void

    #@98
    .line 1599
    :cond_6
    if-eqz p3, :cond_7

    #@9a
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    #@9d
    move-result v3

    #@9e
    if-nez v3, :cond_5

    #@a0
    .line 1600
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    #@a3
    goto :goto_3

    #@a4
    .line 1606
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@a7
    move-result v3

    #@a8
    if-nez v3, :cond_a

    #@aa
    .line 1607
    if-eq p1, v4, :cond_9

    #@ac
    if-ne p1, v6, :cond_a

    #@ae
    .line 1608
    :cond_9
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b1
    move-result-object v3

    #@b2
    int-to-char v4, p1

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b6
    goto :goto_3

    #@b7
    .line 1614
    :cond_a
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    #@ba
    move-result v3

    #@bb
    if-gtz v3, :cond_d

    #@bd
    .line 1615
    const/16 v3, 0x21

    #@bf
    if-lt p1, v3, :cond_e

    #@c1
    const/16 v3, 0x7e

    #@c3
    if-gt p1, v3, :cond_e

    #@c5
    .line 1616
    const/16 v3, 0x30

    #@c7
    if-lt p1, v3, :cond_b

    #@c9
    const/16 v3, 0x39

    #@cb
    if-le p1, v3, :cond_e

    #@cd
    .line 1617
    :cond_b
    const/16 v3, 0x41

    #@cf
    if-lt p1, v3, :cond_c

    #@d1
    const/16 v3, 0x5a

    #@d3
    if-le p1, v3, :cond_e

    #@d5
    .line 1618
    :cond_c
    const/16 v3, 0x61

    #@d7
    if-lt p1, v3, :cond_d

    #@d9
    const/16 v3, 0x7a

    #@db
    if-le p1, v3, :cond_e

    #@dd
    .line 1620
    :cond_d
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    #@e0
    .line 1622
    if-ne p1, v4, :cond_5

    #@e2
    .line 1623
    int-to-char v3, p1

    #@e3
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@e6
    goto :goto_3

    #@e7
    .line 1619
    :cond_e
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@ea
    move-result v3

    #@eb
    .line 1614
    if-nez v3, :cond_d

    #@ed
    .line 1629
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    #@f0
    goto :goto_3
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "matcher"    # Landroid/icu/text/UnicodeMatcher;
    .param p2, "escapeUnprintable"    # Z
    .param p3, "quoteBuf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 1656
    if-eqz p1, :cond_0

    #@2
    .line 1657
    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1658
    const/4 v1, 0x1

    #@7
    .line 1657
    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    #@a
    .line 1655
    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isLiteral"    # Z
    .param p3, "escapeUnprintable"    # Z
    .param p4, "quoteBuf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 1642
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 1644
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@e
    .line 1642
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1641
    :cond_0
    return-void
.end method

.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    .line 76
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 77
    check-cast p0, [Ljava/lang/Object;

    #@e
    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 78
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 79
    check-cast p0, [I

    #@19
    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 80
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    #@20
    if-eqz v0, :cond_4

    #@22
    .line 81
    check-cast p0, [D

    #@24
    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    return v0

    #@29
    .line 82
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [B

    #@2b
    if-eqz v0, :cond_5

    #@2d
    .line 83
    check-cast p0, [B

    #@2f
    .end local p0    # "source":Ljava/lang/Object;
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    return v0

    #@34
    .line 84
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    return v0
.end method

.method public static final arrayEquals([BLjava/lang/Object;)Z
    .locals 4
    .param p0, "source"    # [B
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    if-nez p0, :cond_1

    #@3
    if-nez p1, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :cond_0
    return v1

    #@7
    .line 62
    :cond_1
    instance-of v2, p1, [B

    #@9
    if-nez v2, :cond_2

    #@b
    return v1

    #@c
    :cond_2
    move-object v0, p1

    #@d
    .line 63
    check-cast v0, [B

    #@f
    .line 64
    .local v0, "targ":[B
    array-length v2, p0

    #@10
    array-length v3, v0

    #@11
    if-ne v2, v3, :cond_3

    #@13
    .line 65
    array-length v2, p0

    #@14
    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    #@17
    move-result v1

    #@18
    .line 64
    :cond_3
    return v1
.end method

.method public static final arrayEquals([DLjava/lang/Object;)Z
    .locals 4
    .param p0, "source"    # [D
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    if-nez p0, :cond_1

    #@3
    if-nez p1, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :cond_0
    return v1

    #@7
    .line 55
    :cond_1
    instance-of v2, p1, [D

    #@9
    if-nez v2, :cond_2

    #@b
    return v1

    #@c
    :cond_2
    move-object v0, p1

    #@d
    .line 56
    check-cast v0, [D

    #@f
    .line 57
    .local v0, "targ":[D
    array-length v2, p0

    #@10
    array-length v3, v0

    #@11
    if-ne v2, v3, :cond_3

    #@13
    .line 58
    array-length v2, p0

    #@14
    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    #@17
    move-result v1

    #@18
    .line 57
    :cond_3
    return v1
.end method

.method public static final arrayEquals([ILjava/lang/Object;)Z
    .locals 4
    .param p0, "source"    # [I
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    if-nez p0, :cond_1

    #@3
    if-nez p1, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :cond_0
    return v1

    #@7
    .line 43
    :cond_1
    instance-of v2, p1, [I

    #@9
    if-nez v2, :cond_2

    #@b
    return v1

    #@c
    :cond_2
    move-object v0, p1

    #@d
    .line 44
    check-cast v0, [I

    #@f
    .line 45
    .local v0, "targ":[I
    array-length v2, p0

    #@10
    array-length v3, v0

    #@11
    if-ne v2, v3, :cond_3

    #@13
    .line 46
    array-length v2, p0

    #@14
    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    #@17
    move-result v1

    #@18
    .line 45
    :cond_3
    return v1
.end method

.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "source"    # [Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_1

    #@3
    if-nez p1, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :cond_0
    return v1

    #@7
    .line 31
    :cond_1
    instance-of v2, p1, [Ljava/lang/Object;

    #@9
    if-nez v2, :cond_2

    #@b
    return v1

    #@c
    :cond_2
    move-object v0, p1

    #@d
    .line 32
    check-cast v0, [Ljava/lang/Object;

    #@f
    .line 33
    .local v0, "targ":[Ljava/lang/Object;
    array-length v2, p0

    #@10
    array-length v3, v0

    #@11
    if-ne v2, v3, :cond_3

    #@13
    .line 34
    array-length v2, p0

    #@14
    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    #@17
    move-result v1

    #@18
    .line 33
    :cond_3
    return v1
.end method

.method public static final arrayRegionMatches([BI[BII)Z
    .locals 5
    .param p0, "source"    # [B
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [B
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 164
    add-int v2, p1, p4

    #@2
    .line 165
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 166
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 167
    aget-byte v3, p0, v1

    #@9
    add-int v4, v1, v0

    #@b
    aget-byte v4, p2, v4

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 168
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 170
    :cond_1
    const/4 v3, 0x1

    #@15
    return v3
.end method

.method public static final arrayRegionMatches([CI[CII)Z
    .locals 5
    .param p0, "source"    # [C
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 116
    add-int v2, p1, p4

    #@2
    .line 117
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 118
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 119
    aget-char v3, p0, v1

    #@9
    add-int v4, v1, v0

    #@b
    aget-char v4, p2, v4

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 120
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 122
    :cond_1
    const/4 v3, 0x1

    #@15
    return v3
.end method

.method public static final arrayRegionMatches([DI[DII)Z
    .locals 8
    .param p0, "source"    # [D
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [D
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 154
    add-int v2, p1, p4

    #@2
    .line 155
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 156
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 157
    aget-wide v4, p0, v1

    #@9
    add-int v3, v1, v0

    #@b
    aget-wide v6, p2, v3

    #@d
    cmpl-double v3, v4, v6

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 158
    const/4 v3, 0x0

    #@12
    return v3

    #@13
    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 160
    :cond_1
    const/4 v3, 0x1

    #@17
    return v3
.end method

.method public static final arrayRegionMatches([II[III)Z
    .locals 5
    .param p0, "source"    # [I
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [I
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 135
    add-int v2, p1, p4

    #@2
    .line 136
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 137
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 138
    aget v3, p0, v1

    #@9
    add-int v4, v1, v0

    #@b
    aget v4, p2, v4

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 139
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 141
    :cond_1
    const/4 v3, 0x1

    #@15
    return v3
.end method

.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .locals 5
    .param p0, "source"    # [Ljava/lang/Object;
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [Ljava/lang/Object;
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 97
    add-int v2, p1, p4

    #@2
    .line 98
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 99
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 100
    aget-object v3, p0, v1

    #@9
    add-int v4, v1, v0

    #@b
    aget-object v4, p2, v4

    #@d
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_0

    #@13
    .line 101
    const/4 v3, 0x0

    #@14
    return v3

    #@15
    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 103
    :cond_1
    const/4 v3, 0x1

    #@19
    return v3
.end method

.method public static final arrayToRLEString([B)Ljava/lang/String;
    .locals 8
    .param p0, "a"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 324
    .local v1, "buffer":Ljava/lang/StringBuilder;
    array-length v6, p0

    #@7
    shr-int/lit8 v6, v6, 0x10

    #@9
    int-to-char v6, v6

    #@a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 325
    array-length v6, p0

    #@e
    int-to-char v6, v6

    #@f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 326
    aget-byte v4, p0, v7

    #@14
    .line 327
    .local v4, "runValue":B
    const/4 v3, 0x1

    #@15
    .line 328
    .local v3, "runLength":I
    const/4 v6, 0x2

    #@16
    new-array v5, v6, [B

    #@18
    .line 329
    .local v5, "state":[B
    const/4 v2, 0x1

    #@19
    .local v2, "i":I
    :goto_0
    array-length v6, p0

    #@1a
    if-ge v2, v6, :cond_1

    #@1c
    .line 330
    aget-byte v0, p0, v2

    #@1e
    .line 331
    .local v0, "b":B
    if-ne v0, v4, :cond_0

    #@20
    const/16 v6, 0xff

    #@22
    if-ge v3, v6, :cond_0

    #@24
    add-int/lit8 v3, v3, 0x1

    #@26
    .line 329
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 333
    :cond_0
    invoke-static {v1, v4, v3, v5}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    #@2c
    .line 334
    move v4, v0

    #@2d
    .line 335
    const/4 v3, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 338
    .end local v0    # "b":B
    :cond_1
    invoke-static {v1, v4, v3, v5}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    #@32
    .line 342
    aget-byte v6, v5, v7

    #@34
    if-eqz v6, :cond_2

    #@36
    invoke-static {v1, v7, v5}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@39
    .line 344
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    return-object v6
.end method

.method public static final arrayToRLEString([C)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [C

    #@0
    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 291
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v5, p0

    #@6
    shr-int/lit8 v5, v5, 0x10

    #@8
    int-to-char v5, v5

    #@9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 292
    array-length v5, p0

    #@d
    int-to-char v5, v5

    #@e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 293
    const/4 v5, 0x0

    #@12
    aget-char v3, p0, v5

    #@14
    .line 294
    .local v3, "runValue":C
    const/4 v2, 0x1

    #@15
    .line 295
    .local v2, "runLength":I
    const/4 v1, 0x1

    #@16
    .local v1, "i":I
    :goto_0
    array-length v5, p0

    #@17
    if-ge v1, v5, :cond_1

    #@19
    .line 296
    aget-char v4, p0, v1

    #@1b
    .line 297
    .local v4, "s":C
    if-ne v4, v3, :cond_0

    #@1d
    const v5, 0xffff

    #@20
    if-ge v2, v5, :cond_0

    #@22
    add-int/lit8 v2, v2, 0x1

    #@24
    .line 295
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 299
    :cond_0
    int-to-short v5, v3

    #@28
    invoke-static {v0, v5, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    #@2b
    .line 300
    move v3, v4

    #@2c
    .line 301
    const/4 v2, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 304
    .end local v4    # "s":C
    :cond_1
    int-to-short v5, v3

    #@2f
    invoke-static {v0, v5, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    #@32
    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    return-object v5
.end method

.method public static final arrayToRLEString([I)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [I

    #@0
    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 226
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v5, p0

    #@6
    invoke-static {v0, v5}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@9
    .line 227
    const/4 v5, 0x0

    #@a
    aget v3, p0, v5

    #@c
    .line 228
    .local v3, "runValue":I
    const/4 v2, 0x1

    #@d
    .line 229
    .local v2, "runLength":I
    const/4 v1, 0x1

    #@e
    .local v1, "i":I
    :goto_0
    array-length v5, p0

    #@f
    if-ge v1, v5, :cond_1

    #@11
    .line 230
    aget v4, p0, v1

    #@13
    .line 231
    .local v4, "s":I
    if-ne v4, v3, :cond_0

    #@15
    const v5, 0xffff

    #@18
    if-ge v2, v5, :cond_0

    #@1a
    .line 232
    add-int/lit8 v2, v2, 0x1

    #@1c
    .line 229
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 234
    :cond_0
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    #@22
    .line 235
    move v3, v4

    #@23
    .line 236
    const/4 v2, 0x1

    #@24
    goto :goto_1

    #@25
    .line 239
    .end local v4    # "s":I
    :cond_1
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    #@28
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    return-object v5
.end method

.method public static final arrayToRLEString([S)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [S

    #@0
    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 259
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v5, p0

    #@6
    shr-int/lit8 v5, v5, 0x10

    #@8
    int-to-char v5, v5

    #@9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    .line 260
    array-length v5, p0

    #@d
    int-to-char v5, v5

    #@e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 261
    const/4 v5, 0x0

    #@12
    aget-short v3, p0, v5

    #@14
    .line 262
    .local v3, "runValue":S
    const/4 v2, 0x1

    #@15
    .line 263
    .local v2, "runLength":I
    const/4 v1, 0x1

    #@16
    .local v1, "i":I
    :goto_0
    array-length v5, p0

    #@17
    if-ge v1, v5, :cond_1

    #@19
    .line 264
    aget-short v4, p0, v1

    #@1b
    .line 265
    .local v4, "s":S
    if-ne v4, v3, :cond_0

    #@1d
    const v5, 0xffff

    #@20
    if-ge v2, v5, :cond_0

    #@22
    add-int/lit8 v2, v2, 0x1

    #@24
    .line 263
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 267
    :cond_0
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    #@2a
    .line 268
    move v3, v4

    #@2b
    .line 269
    const/4 v2, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 272
    .end local v4    # "s":S
    :cond_1
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    #@30
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    return-object v5
.end method

.method public static checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p0, "a":Ljava/lang/Comparable;, "TT;"
    .local p1, "b":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_1

    #@2
    .line 187
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 186
    :goto_0
    return v0

    #@6
    .line 187
    :cond_0
    const/4 v0, -0x1

    #@7
    goto :goto_0

    #@8
    .line 188
    :cond_1
    if-nez p1, :cond_2

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_0

    #@c
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method public static checkHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    if-nez p0, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    goto :goto_0
.end method

.method public static final compareUnsigned(II)I
    .locals 1
    .param p0, "source"    # I
    .param p1, "target"    # I

    #@0
    .prologue
    const/high16 v0, -0x80000000

    #@2
    .line 1671
    add-int/2addr p0, v0

    #@3
    .line 1672
    add-int/2addr p1, v0

    #@4
    .line 1673
    if-ge p0, p1, :cond_0

    #@6
    .line 1674
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 1676
    :cond_0
    if-le p0, p1, :cond_1

    #@a
    .line 1677
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 1679
    :cond_1
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method private static final encodeRun(Ljava/lang/Appendable;BI[B)V
    .locals 3
    .param p1, "value"    # B
    .param p2, "length"    # I
    .param p3, "state"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;BI[B)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const/16 v2, -0x5b

    #@2
    .line 417
    const/4 v1, 0x4

    #@3
    if-ge p2, v1, :cond_1

    #@5
    .line 418
    const/4 v0, 0x0

    #@6
    .local v0, "j":I
    :goto_0
    if-ge v0, p2, :cond_4

    #@8
    .line 419
    if-ne p1, v2, :cond_0

    #@a
    invoke-static {p0, v2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@d
    .line 420
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@10
    .line 418
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 424
    .end local v0    # "j":I
    :cond_1
    if-ne p2, v2, :cond_3

    #@15
    .line 425
    if-ne p1, v2, :cond_2

    #@17
    invoke-static {p0, v2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@1a
    .line 426
    :cond_2
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@1d
    .line 427
    add-int/lit8 p2, p2, -0x1

    #@1f
    .line 429
    :cond_3
    invoke-static {p0, v2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@22
    .line 430
    int-to-byte v1, p2

    #@23
    invoke-static {p0, v1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@26
    .line 431
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    #@29
    .line 416
    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;II)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const v2, 0xa5a5

    #@3
    .line 352
    const/4 v1, 0x4

    #@4
    if-ge p2, v1, :cond_1

    #@6
    .line 353
    const/4 v0, 0x0

    #@7
    .local v0, "j":I
    :goto_0
    if-ge v0, p2, :cond_4

    #@9
    .line 354
    if-ne p1, v2, :cond_0

    #@b
    .line 355
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@e
    .line 357
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@11
    .line 353
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 361
    .end local v0    # "j":I
    :cond_1
    if-ne p2, v2, :cond_3

    #@16
    .line 362
    if-ne p1, v2, :cond_2

    #@18
    .line 363
    invoke-static {p0, v2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@1b
    .line 365
    :cond_2
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@1e
    .line 366
    add-int/lit8 p2, p2, -0x1

    #@20
    .line 368
    :cond_3
    invoke-static {p0, v2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@23
    .line 369
    invoke-static {p0, p2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@26
    .line 370
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    #@29
    .line 351
    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;SI)V
    .locals 4
    .param p1, "value"    # S
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;SI)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const v3, 0xa5a5

    #@3
    .line 389
    const/4 v2, 0x4

    #@4
    if-ge p2, v2, :cond_1

    #@6
    .line 390
    const/4 v1, 0x0

    #@7
    .local v1, "j":I
    :goto_0
    if-ge v1, p2, :cond_4

    #@9
    .line 391
    if-ne p1, v3, :cond_0

    #@b
    .line 392
    const v2, 0xa5a5

    #@e
    :try_start_0
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@11
    .line 393
    :cond_0
    int-to-char v2, p1

    #@12
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@15
    .line 390
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 397
    .end local v1    # "j":I
    :cond_1
    if-ne p2, v3, :cond_3

    #@1a
    .line 398
    if-ne p1, v3, :cond_2

    #@1c
    const v2, 0xa5a5

    #@1f
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@22
    .line 399
    :cond_2
    int-to-char v2, p1

    #@23
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@26
    .line 400
    add-int/lit8 p2, p2, -0x1

    #@28
    .line 402
    :cond_3
    const v2, 0xa5a5

    #@2b
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@2e
    .line 403
    int-to-char v2, p2

    #@2f
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@32
    .line 404
    int-to-char v2, p1

    #@33
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 387
    :cond_4
    return-void

    #@37
    .line 406
    :catch_0
    move-exception v0

    #@38
    .line 407
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    #@3a
    invoke-direct {v2, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@3d
    throw v2
.end method

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 738
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    if-ge v3, v4, :cond_5

    #@c
    .line 739
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@f
    move-result v1

    #@10
    .line 740
    .local v1, "c":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@13
    move-result v4

    #@14
    add-int/2addr v3, v4

    #@15
    .line 741
    const/16 v4, 0x20

    #@17
    if-lt v1, v4, :cond_1

    #@19
    const/16 v4, 0x7f

    #@1b
    if-gt v1, v4, :cond_1

    #@1d
    .line 742
    const/16 v4, 0x5c

    #@1f
    if-ne v1, v4, :cond_0

    #@21
    .line 743
    const-string/jumbo v4, "\\\\"

    #@24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 745
    :cond_0
    int-to-char v4, v1

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 748
    :cond_1
    const v4, 0xffff

    #@30
    if-gt v1, v4, :cond_2

    #@32
    const/4 v2, 0x1

    #@33
    .line 749
    .local v2, "four":Z
    :goto_1
    if-eqz v2, :cond_3

    #@35
    const-string/jumbo v4, "\\u"

    #@38
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 750
    int-to-long v6, v1

    #@3c
    if-eqz v2, :cond_4

    #@3e
    const/4 v4, 0x4

    #@3f
    :goto_3
    invoke-static {v6, v7, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    goto :goto_0

    #@47
    .line 748
    .end local v2    # "four":Z
    :cond_2
    const/4 v2, 0x0

    #@48
    .restart local v2    # "four":Z
    goto :goto_1

    #@49
    .line 749
    :cond_3
    const-string/jumbo v4, "\\U"

    #@4c
    goto :goto_2

    #@4d
    .line 750
    :cond_4
    const/16 v4, 0x8

    #@4f
    goto :goto_3

    #@50
    .line 753
    .end local v1    # "c":I
    .end local v2    # "four":Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    return-object v4
.end method

.method public static escapeUnprintable(Ljava/lang/Appendable;I)Z
    .locals 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 1472
    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1473
    const/16 v1, 0x5c

    #@9
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@c
    .line 1474
    const/high16 v1, -0x10000

    #@e
    and-int/2addr v1, p1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1475
    const/16 v1, 0x55

    #@13
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@16
    .line 1476
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@18
    shr-int/lit8 v2, p1, 0x1c

    #@1a
    and-int/lit8 v2, v2, 0xf

    #@1c
    aget-char v1, v1, v2

    #@1e
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@21
    .line 1477
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@23
    shr-int/lit8 v2, p1, 0x18

    #@25
    and-int/lit8 v2, v2, 0xf

    #@27
    aget-char v1, v1, v2

    #@29
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@2c
    .line 1478
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@2e
    shr-int/lit8 v2, p1, 0x14

    #@30
    and-int/lit8 v2, v2, 0xf

    #@32
    aget-char v1, v1, v2

    #@34
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@37
    .line 1479
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@39
    shr-int/lit8 v2, p1, 0x10

    #@3b
    and-int/lit8 v2, v2, 0xf

    #@3d
    aget-char v1, v1, v2

    #@3f
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@42
    .line 1483
    :goto_0
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@44
    shr-int/lit8 v2, p1, 0xc

    #@46
    and-int/lit8 v2, v2, 0xf

    #@48
    aget-char v1, v1, v2

    #@4a
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@4d
    .line 1484
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@4f
    shr-int/lit8 v2, p1, 0x8

    #@51
    and-int/lit8 v2, v2, 0xf

    #@53
    aget-char v1, v1, v2

    #@55
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@58
    .line 1485
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@5a
    shr-int/lit8 v2, p1, 0x4

    #@5c
    and-int/lit8 v2, v2, 0xf

    #@5e
    aget-char v1, v1, v2

    #@60
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@63
    .line 1486
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    #@65
    and-int/lit8 v2, p1, 0xf

    #@67
    aget-char v1, v1, v2

    #@69
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@6c
    .line 1487
    const/4 v1, 0x1

    #@6d
    return v1

    #@6e
    .line 1481
    :cond_0
    const/16 v1, 0x75

    #@70
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    goto :goto_0

    #@74
    .line 1490
    :catch_0
    move-exception v0

    #@75
    .line 1491
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    #@77
    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@7a
    throw v1

    #@7b
    .line 1489
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return v2
.end method

.method public static final format1ForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x5c

    #@2
    const/16 v6, 0x22

    #@4
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 696
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\""

    #@c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 697
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v4

    #@14
    if-ge v2, v4, :cond_6

    #@16
    .line 698
    add-int/lit8 v3, v2, 0x1

    #@18
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    .line 699
    .local v1, "c":C
    const/16 v4, 0x20

    #@1e
    if-lt v1, v4, :cond_0

    #@20
    if-ne v1, v6, :cond_1

    #@22
    .line 700
    :cond_0
    const/16 v4, 0xa

    #@24
    if-ne v1, v4, :cond_2

    #@26
    .line 701
    const-string/jumbo v4, "\\n"

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    :goto_1
    move v2, v3

    #@2d
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@2e
    .line 699
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    if-eq v1, v7, :cond_0

    #@30
    .line 717
    const/16 v4, 0x7e

    #@32
    if-gt v1, v4, :cond_5

    #@34
    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    goto :goto_1

    #@38
    .line 702
    :cond_2
    const/16 v4, 0x9

    #@3a
    if-ne v1, v4, :cond_3

    #@3c
    .line 703
    const-string/jumbo v4, "\\t"

    #@3f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_1

    #@43
    .line 704
    :cond_3
    const/16 v4, 0xd

    #@45
    if-ne v1, v4, :cond_4

    #@47
    .line 705
    const-string/jumbo v4, "\\r"

    #@4a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_1

    #@4e
    .line 711
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 712
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@53
    and-int/lit16 v5, v1, 0x1c0

    #@55
    shr-int/lit8 v5, v5, 0x6

    #@57
    aget-char v4, v4, v5

    #@59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    .line 713
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@5e
    and-int/lit8 v5, v1, 0x38

    #@60
    shr-int/lit8 v5, v5, 0x3

    #@62
    aget-char v4, v4, v5

    #@64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@67
    .line 714
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@69
    and-int/lit8 v5, v1, 0x7

    #@6b
    aget-char v4, v4, v5

    #@6d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    goto :goto_1

    #@71
    .line 721
    :cond_5
    const-string/jumbo v4, "\\u"

    #@74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 722
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@79
    const v5, 0xf000

    #@7c
    and-int/2addr v5, v1

    #@7d
    shr-int/lit8 v5, v5, 0xc

    #@7f
    aget-char v4, v4, v5

    #@81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@84
    .line 723
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@86
    and-int/lit16 v5, v1, 0xf00

    #@88
    shr-int/lit8 v5, v5, 0x8

    #@8a
    aget-char v4, v4, v5

    #@8c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8f
    .line 724
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@91
    and-int/lit16 v5, v1, 0xf0

    #@93
    shr-int/lit8 v5, v5, 0x4

    #@95
    aget-char v4, v4, v5

    #@97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    .line 725
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@9c
    and-int/lit8 v5, v1, 0xf

    #@9e
    aget-char v4, v4, v5

    #@a0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    goto :goto_1

    #@a4
    .line 728
    .end local v1    # "c":C
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a7
    .line 729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    return-object v4
.end method

.method public static final formatForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x5c

    #@2
    const/16 v7, 0x22

    #@4
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 641
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    if-ge v3, v5, :cond_8

    #@10
    .line 642
    if-lez v3, :cond_0

    #@12
    const/16 v5, 0x2b

    #@14
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    sget-object v6, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 643
    :cond_0
    const-string/jumbo v5, "        \""

    #@20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 644
    const/16 v2, 0xb

    #@25
    .line 645
    .local v2, "count":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@28
    move-result v5

    #@29
    if-ge v3, v5, :cond_7

    #@2b
    const/16 v5, 0x50

    #@2d
    if-ge v2, v5, :cond_7

    #@2f
    .line 646
    add-int/lit8 v4, v3, 0x1

    #@31
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    .line 647
    .local v1, "c":C
    const/16 v5, 0x20

    #@37
    if-lt v1, v5, :cond_1

    #@39
    if-ne v1, v7, :cond_2

    #@3b
    .line 648
    :cond_1
    const/16 v5, 0xa

    #@3d
    if-ne v1, v5, :cond_3

    #@3f
    .line 649
    const-string/jumbo v5, "\\n"

    #@42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 650
    add-int/lit8 v2, v2, 0x2

    #@47
    :goto_2
    move v3, v4

    #@48
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    #@49
    .line 647
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_2
    if-eq v1, v8, :cond_1

    #@4b
    .line 669
    const/16 v5, 0x7e

    #@4d
    if-gt v1, v5, :cond_6

    #@4f
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    .line 671
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_2

    #@55
    .line 651
    :cond_3
    const/16 v5, 0x9

    #@57
    if-ne v1, v5, :cond_4

    #@59
    .line 652
    const-string/jumbo v5, "\\t"

    #@5c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 653
    add-int/lit8 v2, v2, 0x2

    #@61
    goto :goto_2

    #@62
    .line 654
    :cond_4
    const/16 v5, 0xd

    #@64
    if-ne v1, v5, :cond_5

    #@66
    .line 655
    const-string/jumbo v5, "\\r"

    #@69
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 656
    add-int/lit8 v2, v2, 0x2

    #@6e
    goto :goto_2

    #@6f
    .line 662
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    .line 663
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@74
    and-int/lit16 v6, v1, 0x1c0

    #@76
    shr-int/lit8 v6, v6, 0x6

    #@78
    aget-char v5, v5, v6

    #@7a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7d
    .line 664
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@7f
    and-int/lit8 v6, v1, 0x38

    #@81
    shr-int/lit8 v6, v6, 0x3

    #@83
    aget-char v5, v5, v6

    #@85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    .line 665
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@8a
    and-int/lit8 v6, v1, 0x7

    #@8c
    aget-char v5, v5, v6

    #@8e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    .line 666
    add-int/lit8 v2, v2, 0x4

    #@93
    goto :goto_2

    #@94
    .line 674
    :cond_6
    const-string/jumbo v5, "\\u"

    #@97
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    .line 675
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@9c
    const v6, 0xf000

    #@9f
    and-int/2addr v6, v1

    #@a0
    shr-int/lit8 v6, v6, 0xc

    #@a2
    aget-char v5, v5, v6

    #@a4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a7
    .line 676
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@a9
    and-int/lit16 v6, v1, 0xf00

    #@ab
    shr-int/lit8 v6, v6, 0x8

    #@ad
    aget-char v5, v5, v6

    #@af
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b2
    .line 677
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@b4
    and-int/lit16 v6, v1, 0xf0

    #@b6
    shr-int/lit8 v6, v6, 0x4

    #@b8
    aget-char v5, v5, v6

    #@ba
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bd
    .line 678
    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    #@bf
    and-int/lit8 v6, v1, 0xf

    #@c1
    aget-char v5, v5, v6

    #@c3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c6
    .line 679
    add-int/lit8 v2, v2, 0x6

    #@c8
    goto/16 :goto_2

    #@ca
    .line 682
    .end local v1    # "c":C
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 684
    .end local v2    # "count":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    return-object v5
.end method

.method public static fromHex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1774
    if-eqz p2, :cond_0

    #@2
    .end local p2    # "separator":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .restart local p2    # "separator":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "\\s+"

    #@e
    goto :goto_0
.end method

.method public static fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "separator"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1786
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1787
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    #@a
    array-length v5, v3

    #@b
    :goto_0
    if-ge v4, v5, :cond_1

    #@d
    aget-object v2, v3, v4

    #@f
    .line 1788
    .local v2, "part":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-ge v6, p1, :cond_0

    #@15
    .line 1789
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "code point too short: "

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v4

    #@2f
    .line 1791
    :cond_0
    const/16 v6, 0x10

    #@31
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@34
    move-result v1

    #@35
    .line 1792
    .local v1, "cp":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@38
    .line 1787
    add-int/lit8 v4, v4, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1794
    .end local v1    # "cp":I
    .end local v2    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    return-object v4
.end method

.method static final getInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    #@0
    .prologue
    .line 496
    mul-int/lit8 v0, p1, 0x2

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    shl-int/lit8 v0, v0, 0x10

    #@8
    mul-int/lit8 v1, p1, 0x2

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    return v0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 6
    .param p1, "width"    # I
    .param p3, "useCodePoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            "U::",
            "Ljava/lang/CharSequence;",
            "T::",
            "Ljava/lang/Appendable;",
            ">(TS;ITU;ZTT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 993
    .local p0, "s":Ljava/lang/CharSequence;, "TS;"
    .local p2, "separator":Ljava/lang/CharSequence;, "TU;"
    .local p4, "result":Ljava/lang/Appendable;, "TT;"
    if-eqz p3, :cond_1

    #@2
    .line 995
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_3

    #@9
    .line 996
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@c
    move-result v0

    #@d
    .line 997
    .local v0, "cp":I
    if-eqz v2, :cond_0

    #@f
    .line 998
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@12
    .line 1000
    :cond_0
    int-to-long v4, v0

    #@13
    invoke-static {v4, v5, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-interface {p4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@1a
    .line 995
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1d
    move-result v3

    #@1e
    add-int/2addr v2, v3

    #@1f
    goto :goto_0

    #@20
    .line 1003
    .end local v0    # "cp":I
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    #@21
    .restart local v2    # "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@24
    move-result v3

    #@25
    if-ge v2, v3, :cond_3

    #@27
    .line 1004
    if-eqz v2, :cond_2

    #@29
    .line 1005
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@2c
    .line 1007
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@2f
    move-result v3

    #@30
    int-to-long v4, v3

    #@31
    invoke-static {v4, v5, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-interface {p4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1003
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1010
    :cond_3
    return-object p4

    #@3c
    .line 1011
    :catch_0
    move-exception v1

    #@3d
    .line 1012
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Landroid/icu/impl/IllegalIcuArgumentException;

    #@3f
    invoke-direct {v3, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@42
    throw v3
.end method

.method public static hex(J)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # J

    #@0
    .prologue
    .line 956
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static hex(JI)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # J
    .param p2, "places"    # I

    #@0
    .prologue
    .line 963
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    cmp-long v2, p0, v2

    #@4
    if-nez v2, :cond_0

    #@6
    const-string/jumbo v2, "-8000000000000000"

    #@9
    return-object v2

    #@a
    .line 964
    :cond_0
    const-wide/16 v2, 0x0

    #@c
    cmp-long v2, p0, v2

    #@e
    if-gez v2, :cond_3

    #@10
    const/4 v0, 0x1

    #@11
    .line 965
    .local v0, "negative":Z
    :goto_0
    if-eqz v0, :cond_1

    #@13
    .line 966
    neg-long p0, p0

    #@14
    .line 968
    :cond_1
    const/16 v2, 0x10

    #@16
    invoke-static {p0, p1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 969
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@23
    move-result v2

    #@24
    if-ge v2, p2, :cond_2

    #@26
    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "0000000000000000"

    #@2e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@31
    move-result v4

    #@32
    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 972
    :cond_2
    if-eqz v0, :cond_4

    #@44
    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const/16 v3, 0x2d

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 964
    .end local v0    # "negative":Z
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    #@59
    .restart local v0    # "negative":Z
    goto :goto_0

    #@5a
    .line 975
    .restart local v1    # "result":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static hex(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 983
    const-string/jumbo v0, ","

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const/4 v2, 0x4

    #@9
    const/4 v3, 0x1

    #@a
    invoke-static {p0, v2, v0, v3, v1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            ">(TS;ITS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1031
    .local p0, "s":Ljava/lang/CharSequence;, "TS;"
    .local p2, "separator":Ljava/lang/CharSequence;, "TS;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static hex([BIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1019
    .local v1, "result":Ljava/lang/StringBuilder;
    move v0, p1

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@8
    .line 1020
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 1021
    :cond_0
    aget-byte v2, p0, v0

    #@f
    int-to-long v2, v2

    #@10
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 1019
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1023
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2
.end method

.method public static final highBit(I)B
    .locals 3
    .param p0, "n"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 1693
    if-gtz p0, :cond_0

    #@4
    .line 1694
    const/4 v1, -0x1

    #@5
    return v1

    #@6
    .line 1697
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 1699
    .local v0, "bit":B
    const/high16 v1, 0x10000

    #@9
    if-lt p0, v1, :cond_1

    #@b
    .line 1700
    shr-int/lit8 p0, p0, 0x10

    #@d
    .line 1701
    int-to-byte v0, v2

    #@e
    .line 1704
    .end local v0    # "bit":B
    :cond_1
    const/16 v1, 0x100

    #@10
    if-lt p0, v1, :cond_2

    #@12
    .line 1705
    shr-int/lit8 p0, p0, 0x8

    #@14
    .line 1706
    add-int/lit8 v1, v0, 0x8

    #@16
    int-to-byte v0, v1

    #@17
    .line 1709
    :cond_2
    if-lt p0, v2, :cond_3

    #@19
    .line 1710
    shr-int/lit8 p0, p0, 0x4

    #@1b
    .line 1711
    add-int/lit8 v1, v0, 0x4

    #@1d
    int-to-byte v0, v1

    #@1e
    .line 1714
    :cond_3
    const/4 v1, 0x4

    #@1f
    if-lt p0, v1, :cond_4

    #@21
    .line 1715
    shr-int/lit8 p0, p0, 0x2

    #@23
    .line 1716
    add-int/lit8 v1, v0, 0x2

    #@25
    int-to-byte v0, v1

    #@26
    .line 1719
    :cond_4
    const/4 v1, 0x2

    #@27
    if-lt p0, v1, :cond_5

    #@29
    .line 1720
    shr-int/lit8 p0, p0, 0x1

    #@2b
    .line 1721
    add-int/lit8 v1, v0, 0x1

    #@2d
    int-to-byte v0, v1

    #@2e
    .line 1724
    :cond_5
    return v0
.end method

.method public static isUnprintable(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1460
    const/16 v1, 0x20

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x7e

    #@7
    if-le p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1095
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 1096
    aget-object v1, p1, v0

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    return v0

    #@d
    .line 1095
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1098
    :cond_1
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method public static final objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 177
    if-nez p0, :cond_1

    #@3
    .line 178
    if-nez p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 177
    :cond_0
    :goto_0
    return v0

    #@7
    .line 179
    :cond_1
    if-eqz p1, :cond_0

    #@9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    goto :goto_0
.end method

.method public static parseChar(Ljava/lang/String;[IC)Z
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "ch"    # C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1114
    aget v0, p1, v3

    #@3
    .line 1115
    .local v0, "start":I
    aget v1, p1, v3

    #@5
    invoke-static {p0, v1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@8
    move-result v1

    #@9
    aput v1, p1, v3

    #@b
    .line 1116
    aget v1, p1, v3

    #@d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-eq v1, v2, :cond_0

    #@13
    .line 1117
    aget v1, p1, v3

    #@15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    if-eq v1, p2, :cond_1

    #@1b
    .line 1118
    :cond_0
    aput v0, p1, v3

    #@1d
    .line 1119
    return v3

    #@1e
    .line 1121
    :cond_1
    aget v1, p1, v3

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    aput v1, p1, v3

    #@24
    .line 1122
    const/4 v1, 0x1

    #@25
    return v1
.end method

.method public static parseInteger(Ljava/lang/String;[II)I
    .locals 12
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1265
    const/4 v6, 0x0

    #@2
    .line 1266
    .local v6, "count":I
    const/4 v11, 0x0

    #@3
    .line 1267
    .local v11, "value":I
    aget v2, p1, v4

    #@5
    .line 1268
    .local v2, "p":I
    const/16 v9, 0xa

    #@7
    .line 1270
    .local v9, "radix":I
    const-string/jumbo v3, "0x"

    #@a
    const/4 v1, 0x1

    #@b
    const/4 v5, 0x2

    #@c
    move-object v0, p0

    #@d
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1271
    add-int/lit8 v2, v2, 0x2

    #@15
    .line 1272
    const/16 v9, 0x10

    #@17
    move v8, v2

    #@18
    .line 1279
    .end local v2    # "p":I
    .local v8, "p":I
    :goto_0
    if-ge v8, p2, :cond_5

    #@1a
    .line 1280
    add-int/lit8 v2, v8, 0x1

    #@1c
    .end local v8    # "p":I
    .restart local v2    # "p":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v0

    #@20
    invoke-static {v0, v9}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@23
    move-result v7

    #@24
    .line 1281
    .local v7, "d":I
    if-gez v7, :cond_3

    #@26
    .line 1282
    add-int/lit8 v2, v2, -0x1

    #@28
    .line 1296
    .end local v7    # "d":I
    :goto_1
    if-lez v6, :cond_0

    #@2a
    .line 1297
    aput v2, p1, v4

    #@2c
    .line 1299
    :cond_0
    return v11

    #@2d
    .line 1273
    :cond_1
    if-ge v2, p2, :cond_2

    #@2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v0

    #@33
    const/16 v1, 0x30

    #@35
    if-ne v0, v1, :cond_2

    #@37
    .line 1274
    add-int/lit8 v2, v2, 0x1

    #@39
    .line 1275
    const/4 v6, 0x1

    #@3a
    .line 1276
    const/16 v9, 0x8

    #@3c
    move v8, v2

    #@3d
    .end local v2    # "p":I
    .restart local v8    # "p":I
    goto :goto_0

    #@3e
    .end local v8    # "p":I
    .restart local v2    # "p":I
    :cond_2
    move v8, v2

    #@3f
    .line 1273
    .end local v2    # "p":I
    .restart local v8    # "p":I
    goto :goto_0

    #@40
    .line 1285
    .end local v8    # "p":I
    .restart local v2    # "p":I
    .restart local v7    # "d":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@42
    .line 1286
    mul-int v0, v11, v9

    #@44
    add-int v10, v0, v7

    #@46
    .line 1287
    .local v10, "v":I
    if-gt v10, v11, :cond_4

    #@48
    .line 1292
    return v4

    #@49
    .line 1294
    :cond_4
    move v11, v10

    #@4a
    move v8, v2

    #@4b
    .end local v2    # "p":I
    .restart local v8    # "p":I
    goto :goto_0

    #@4c
    .end local v7    # "d":I
    .end local v10    # "v":I
    :cond_5
    move v2, v8

    #@4d
    .end local v8    # "p":I
    .restart local v2    # "p":I
    goto :goto_1
.end method

.method public static parseNumber(Ljava/lang/String;[II)I
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "radix"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1431
    const/4 v2, 0x0

    #@3
    .line 1432
    .local v2, "n":I
    aget v3, p1, v5

    #@5
    .line 1433
    .local v3, "p":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-ge v3, v4, :cond_0

    #@b
    .line 1434
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@e
    move-result v0

    #@f
    .line 1435
    .local v0, "ch":I
    invoke-static {v0, p2}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@12
    move-result v1

    #@13
    .line 1436
    .local v1, "d":I
    if-gez v1, :cond_1

    #@15
    .line 1447
    .end local v0    # "ch":I
    .end local v1    # "d":I
    :cond_0
    aget v4, p1, v5

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 1448
    return v6

    #@1a
    .line 1439
    .restart local v0    # "ch":I
    .restart local v1    # "d":I
    :cond_1
    mul-int v4, p2, v2

    #@1c
    add-int v2, v4, v1

    #@1e
    .line 1442
    if-gez v2, :cond_2

    #@20
    .line 1443
    return v6

    #@21
    .line 1445
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1450
    .end local v0    # "ch":I
    .end local v1    # "d":I
    :cond_3
    aput v3, p1, v5

    #@26
    .line 1451
    return v2
.end method

.method public static parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I
    .locals 10
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "parsedInts"    # [I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 1148
    const/4 v7, 0x1

    #@3
    new-array v5, v7, [I

    #@5
    .line 1149
    .local v5, "p":[I
    const/4 v3, 0x0

    #@6
    .line 1150
    .local v3, "intCount":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@a
    move-result v7

    #@b
    if-ge v2, v7, :cond_5

    #@d
    .line 1151
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v1

    #@11
    .line 1153
    .local v1, "cpat":C
    sparse-switch v1, :sswitch_data_0

    #@14
    .line 1176
    if-lt p1, p2, :cond_3

    #@16
    .line 1177
    return v8

    #@17
    .line 1155
    :sswitch_0
    if-lt p1, p2, :cond_0

    #@19
    .line 1156
    return v8

    #@1a
    .line 1158
    :cond_0
    add-int/lit8 v6, p1, 0x1

    #@1c
    .end local p1    # "pos":I
    .local v6, "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v0

    #@20
    .line 1159
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@23
    move-result v7

    #@24
    if-nez v7, :cond_1

    #@26
    .line 1160
    return v8

    #@27
    :cond_1
    move p1, v6

    #@28
    .line 1164
    .end local v0    # "c":C
    .end local v6    # "pos":I
    .restart local p1    # "pos":I
    :sswitch_1
    invoke-static {p0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@2b
    move-result p1

    #@2c
    .line 1150
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1167
    :sswitch_2
    aput p1, v5, v9

    #@31
    .line 1168
    add-int/lit8 v4, v3, 0x1

    #@33
    .end local v3    # "intCount":I
    .local v4, "intCount":I
    invoke-static {p0, v5, p2}, Landroid/icu/impl/Utility;->parseInteger(Ljava/lang/String;[II)I

    #@36
    move-result v7

    #@37
    aput v7, p4, v3

    #@39
    .line 1169
    aget v7, v5, v9

    #@3b
    if-ne v7, p1, :cond_2

    #@3d
    .line 1171
    return v8

    #@3e
    .line 1173
    :cond_2
    aget p1, v5, v9

    #@40
    move v3, v4

    #@41
    .line 1174
    .end local v4    # "intCount":I
    .restart local v3    # "intCount":I
    goto :goto_1

    #@42
    .line 1179
    :cond_3
    add-int/lit8 v6, p1, 0x1

    #@44
    .end local p1    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v7

    #@48
    invoke-static {v7}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    #@4b
    move-result v7

    #@4c
    int-to-char v0, v7

    #@4d
    .line 1180
    .restart local v0    # "c":C
    if-eq v0, v1, :cond_4

    #@4f
    .line 1181
    return v8

    #@50
    :cond_4
    move p1, v6

    #@51
    .line 1183
    .end local v6    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_1

    #@52
    .line 1186
    .end local v0    # "c":C
    .end local v1    # "cpat":C
    :cond_5
    return p1

    #@53
    .line 1153
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x23 -> :sswitch_2
        0x7e -> :sswitch_1
    .end sparse-switch
.end method

.method public static parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I
    .locals 6
    .param p0, "pat"    # Ljava/lang/String;
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1209
    const/4 v2, 0x0

    #@2
    .line 1212
    .local v2, "ipat":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 1213
    return p2

    #@9
    .line 1216
    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@c
    move-result v1

    #@d
    .line 1218
    .local v1, "cpat":I
    :goto_0
    if-ge p2, p3, :cond_5

    #@f
    .line 1219
    invoke-interface {p1, p2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@12
    move-result v0

    #@13
    .line 1222
    .local v0, "c":I
    const/16 v4, 0x7e

    #@15
    if-ne v1, v4, :cond_2

    #@17
    .line 1223
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1224
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@20
    move-result v4

    #@21
    add-int/2addr p2, v4

    #@22
    .line 1225
    goto :goto_0

    #@23
    .line 1227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@28
    move-result v4

    #@29
    if-ne v2, v4, :cond_4

    #@2b
    .line 1228
    return p2

    #@2c
    .line 1235
    :cond_2
    if-ne v0, v1, :cond_3

    #@2e
    .line 1236
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@31
    move-result v3

    #@32
    .line 1237
    .local v3, "n":I
    add-int/2addr p2, v3

    #@33
    .line 1238
    add-int/2addr v2, v3

    #@34
    .line 1239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    if-ne v2, v4, :cond_4

    #@3a
    .line 1240
    return p2

    #@3b
    .line 1247
    .end local v3    # "n":I
    :cond_3
    return v5

    #@3c
    .line 1250
    :cond_4
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@3f
    move-result v1

    #@40
    goto :goto_0

    #@41
    .line 1253
    .end local v0    # "c":I
    :cond_5
    return v5
.end method

.method public static parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1318
    .local v0, "buf":Ljava/lang/StringBuilder;
    aget v2, p1, v4

    #@8
    .line 1319
    .local v2, "p":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_2

    #@e
    .line 1320
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@11
    move-result v1

    #@12
    .line 1321
    .local v1, "ch":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_1

    #@18
    .line 1322
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@21
    .line 1334
    :goto_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@24
    move-result v3

    #@25
    add-int/2addr v2, v3

    #@26
    goto :goto_0

    #@27
    .line 1325
    :cond_0
    const/4 v3, 0x0

    #@28
    return-object v3

    #@29
    .line 1328
    :cond_1
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@32
    goto :goto_1

    #@33
    .line 1336
    .end local v1    # "ch":I
    :cond_2
    aput v2, p1, v4

    #@35
    .line 1337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    return-object v3
.end method

.method public static quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "setOfChars"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 1513
    move v1, p1

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    #@5
    .line 1514
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v0

    #@9
    .line 1515
    .local v0, "c":C
    const/16 v2, 0x5c

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 1516
    add-int/lit8 v1, v1, 0x1

    #@f
    .line 1513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1517
    :cond_1
    if-ne v0, v3, :cond_2

    #@14
    .line 1518
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    if-ge v1, p2, :cond_0

    #@18
    .line 1519
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v2

    #@1c
    if-eq v2, v3, :cond_0

    #@1e
    goto :goto_1

    #@1f
    .line 1520
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v2

    #@23
    if-ltz v2, :cond_0

    #@25
    .line 1521
    return v1

    #@26
    .line 1524
    .end local v0    # "c":C
    :cond_3
    const/4 v2, -0x1

    #@27
    return v2
.end method

.method private static recursiveAppendNumber(Ljava/lang/Appendable;III)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "radix"    # I
    .param p3, "minDigits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1362
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    :try_start_0
    rem-int v0, p1, p2

    #@2
    .line 1364
    .local v0, "digit":I
    if-ge p1, p2, :cond_0

    #@4
    const/4 v2, 0x1

    #@5
    if-le p3, v2, :cond_1

    #@7
    .line 1365
    :cond_0
    div-int v2, p1, p2

    #@9
    add-int/lit8 v3, p3, -0x1

    #@b
    invoke-static {p0, v2, p2, v3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    #@e
    .line 1367
    :cond_1
    sget-object v2, Landroid/icu/impl/Utility;->DIGITS:[C

    #@10
    aget-char v2, v2, v0

    #@12
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1359
    return-void

    #@16
    .line 1368
    .end local v0    # "digit":I
    :catch_0
    move-exception v1

    #@17
    .line 1369
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    #@19
    invoke-direct {v2, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v2
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1746
    if-gtz p1, :cond_0

    #@2
    const-string/jumbo v2, ""

    #@5
    return-object v2

    #@6
    .line 1747
    :cond_0
    const/4 v2, 0x1

    #@7
    if-ne p1, v2, :cond_1

    #@9
    return-object p0

    #@a
    .line 1748
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 1749
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    #@12
    .line 1750
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 1749
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1752
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method public static split(Ljava/lang/String;C[Ljava/lang/String;)V
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "divider"    # C
    .param p2, "output"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1046
    const/4 v3, 0x0

    #@1
    .line 1047
    .local v3, "last":I
    const/4 v0, 0x0

    #@2
    .line 1049
    .local v0, "current":I
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-ge v2, v4, :cond_1

    #@9
    .line 1050
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v4

    #@d
    if-ne v4, p1, :cond_0

    #@f
    .line 1051
    add-int/lit8 v1, v0, 0x1

    #@11
    .end local v0    # "current":I
    .local v1, "current":I
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    aput-object v4, p2, v0

    #@17
    .line 1052
    add-int/lit8 v3, v2, 0x1

    #@19
    move v0, v1

    #@1a
    .line 1049
    .end local v1    # "current":I
    .restart local v0    # "current":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1055
    :cond_1
    add-int/lit8 v1, v0, 0x1

    #@1f
    .end local v0    # "current":I
    .restart local v1    # "current":I
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    aput-object v4, p2, v0

    #@25
    move v0, v1

    #@26
    .line 1056
    .end local v1    # "current":I
    .restart local v0    # "current":I
    :goto_1
    array-length v4, p2

    #@27
    if-ge v0, v4, :cond_2

    #@29
    .line 1057
    add-int/lit8 v1, v0, 0x1

    #@2b
    .end local v0    # "current":I
    .restart local v1    # "current":I
    const-string/jumbo v4, ""

    #@2e
    aput-object v4, p2, v0

    #@30
    move v0, v1

    #@31
    .end local v1    # "current":I
    .restart local v0    # "current":I
    goto :goto_1

    #@32
    .line 1045
    :cond_2
    return-void
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "divider"    # C

    #@0
    .prologue
    .line 1071
    const/4 v1, 0x0

    #@1
    .line 1073
    .local v1, "last":I
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 1074
    .local v2, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v3

    #@b
    if-ge v0, v3, :cond_1

    #@d
    .line 1075
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v3

    #@11
    if-ne v3, p1, :cond_0

    #@13
    .line 1076
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1077
    add-int/lit8 v1, v0, 0x1

    #@1c
    .line 1074
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1080
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 1081
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    new-array v3, v3, [Ljava/lang/String;

    #@2c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, [Ljava/lang/String;

    #@32
    return-object v3
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\\Q"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "\\E"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1763
    const-string/jumbo v0, "\\s+"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 907
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    #@7
    new-array v5, v6, [I

    #@9
    .line 908
    .local v5, "pos":[I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v6

    #@e
    if-ge v3, v6, :cond_2

    #@10
    .line 909
    add-int/lit8 v4, v3, 0x1

    #@12
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 910
    .local v1, "c":C
    const/16 v6, 0x5c

    #@18
    if-ne v1, v6, :cond_1

    #@1a
    .line 911
    aput v4, v5, v7

    #@1c
    .line 912
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@1f
    move-result v2

    #@20
    .line 913
    .local v2, "e":I
    if-gez v2, :cond_0

    #@22
    .line 914
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v7, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v8, "Invalid escape sequence "

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 915
    add-int/lit8 v8, v4, -0x1

    #@32
    add-int/lit8 v9, v4, 0x8

    #@34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v10

    #@38
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result v9

    #@3c
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    .line 914
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v6

    #@4c
    .line 917
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@4f
    .line 918
    aget v3, v5, v7

    #@51
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@52
    .line 920
    .end local v2    # "e":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move v3, v4

    #@56
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@57
    .line 923
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    return-object v6
.end method

.method public static unescapeAt(Ljava/lang/String;[I)I
    .locals 15
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "offset16"    # [I

    #@0
    .prologue
    .line 782
    const/4 v12, 0x0

    #@1
    .line 783
    .local v12, "result":I
    const/4 v9, 0x0

    #@2
    .line 784
    .local v9, "n":I
    const/4 v8, 0x0

    #@3
    .line 785
    .local v8, "minDig":I
    const/4 v7, 0x0

    #@4
    .line 786
    .local v7, "maxDig":I
    const/4 v1, 0x4

    #@5
    .line 789
    .local v1, "bitsPerDigit":I
    const/4 v2, 0x0

    #@6
    .line 792
    .local v2, "braces":Z
    const/4 v13, 0x0

    #@7
    aget v11, p1, v13

    #@9
    .line 793
    .local v11, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v6

    #@d
    .line 794
    .local v6, "length":I
    if-ltz v11, :cond_0

    #@f
    if-lt v11, v6, :cond_1

    #@11
    .line 795
    :cond_0
    const/4 v13, -0x1

    #@12
    return v13

    #@13
    .line 799
    :cond_1
    invoke-static {p0, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@16
    move-result v3

    #@17
    .line 800
    .local v3, "c":I
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1a
    move-result v13

    #@1b
    add-int/2addr v11, v13

    #@1c
    .line 803
    sparse-switch v3, :sswitch_data_0

    #@1f
    .line 821
    const/16 v13, 0x8

    #@21
    invoke-static {v3, v13}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@24
    move-result v4

    #@25
    .line 822
    .local v4, "dig":I
    if-ltz v4, :cond_2

    #@27
    .line 823
    const/4 v8, 0x1

    #@28
    .line 824
    const/4 v7, 0x3

    #@29
    .line 825
    const/4 v9, 0x1

    #@2a
    .line 826
    const/4 v1, 0x3

    #@2b
    .line 827
    move v12, v4

    #@2c
    .line 831
    .end local v4    # "dig":I
    :cond_2
    :goto_0
    if-eqz v8, :cond_e

    #@2e
    .line 832
    :goto_1
    if-ge v11, v6, :cond_3

    #@30
    if-ge v9, v7, :cond_3

    #@32
    .line 833
    invoke-static {p0, v11}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@35
    move-result v3

    #@36
    .line 834
    const/4 v13, 0x3

    #@37
    if-ne v1, v13, :cond_5

    #@39
    const/16 v13, 0x8

    #@3b
    :goto_2
    invoke-static {v3, v13}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@3e
    move-result v4

    #@3f
    .line 835
    .restart local v4    # "dig":I
    if-gez v4, :cond_6

    #@41
    .line 842
    .end local v4    # "dig":I
    :cond_3
    if-ge v9, v8, :cond_7

    #@43
    .line 843
    const/4 v13, -0x1

    #@44
    return v13

    #@45
    .line 805
    :sswitch_0
    const/4 v7, 0x4

    #@46
    const/4 v8, 0x4

    #@47
    .line 806
    goto :goto_0

    #@48
    .line 808
    :sswitch_1
    const/16 v7, 0x8

    #@4a
    const/16 v8, 0x8

    #@4c
    .line 809
    goto :goto_0

    #@4d
    .line 811
    :sswitch_2
    const/4 v8, 0x1

    #@4e
    .line 812
    if-ge v11, v6, :cond_4

    #@50
    invoke-static {p0, v11}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@53
    move-result v13

    #@54
    const/16 v14, 0x7b

    #@56
    if-ne v13, v14, :cond_4

    #@58
    .line 813
    add-int/lit8 v11, v11, 0x1

    #@5a
    .line 814
    const/4 v2, 0x1

    #@5b
    .line 815
    const/16 v7, 0x8

    #@5d
    .line 812
    goto :goto_0

    #@5e
    .line 817
    :cond_4
    const/4 v7, 0x2

    #@5f
    goto :goto_0

    #@60
    .line 834
    :cond_5
    const/16 v13, 0x10

    #@62
    goto :goto_2

    #@63
    .line 838
    .restart local v4    # "dig":I
    :cond_6
    shl-int v13, v12, v1

    #@65
    or-int v12, v13, v4

    #@67
    .line 839
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@6a
    move-result v13

    #@6b
    add-int/2addr v11, v13

    #@6c
    .line 840
    add-int/lit8 v9, v9, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 845
    .end local v4    # "dig":I
    :cond_7
    if-eqz v2, :cond_9

    #@71
    .line 846
    const/16 v13, 0x7d

    #@73
    if-eq v3, v13, :cond_8

    #@75
    .line 847
    const/4 v13, -0x1

    #@76
    return v13

    #@77
    .line 849
    :cond_8
    add-int/lit8 v11, v11, 0x1

    #@79
    .line 851
    :cond_9
    if-ltz v12, :cond_a

    #@7b
    const/high16 v13, 0x110000

    #@7d
    if-lt v12, v13, :cond_b

    #@7f
    .line 852
    :cond_a
    const/4 v13, -0x1

    #@80
    return v13

    #@81
    .line 858
    :cond_b
    if-ge v11, v6, :cond_d

    #@83
    .line 859
    int-to-char v13, v12

    #@84
    invoke-static {v13}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@87
    move-result v13

    #@88
    .line 858
    if-eqz v13, :cond_d

    #@8a
    .line 860
    add-int/lit8 v0, v11, 0x1

    #@8c
    .line 861
    .local v0, "ahead":I
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    #@8f
    move-result v3

    #@90
    .line 862
    const/16 v13, 0x5c

    #@92
    if-ne v3, v13, :cond_c

    #@94
    if-ge v0, v6, :cond_c

    #@96
    .line 863
    const/4 v13, 0x1

    #@97
    new-array v10, v13, [I

    #@99
    const/4 v13, 0x0

    #@9a
    aput v0, v10, v13

    #@9c
    .line 864
    .local v10, "o":[I
    invoke-static {p0, v10}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@9f
    move-result v3

    #@a0
    .line 865
    const/4 v13, 0x0

    #@a1
    aget v0, v10, v13

    #@a3
    .line 867
    .end local v10    # "o":[I
    :cond_c
    int-to-char v13, v3

    #@a4
    invoke-static {v13}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@a7
    move-result v13

    #@a8
    if-eqz v13, :cond_d

    #@aa
    .line 868
    move v11, v0

    #@ab
    .line 870
    int-to-char v13, v12

    #@ac
    int-to-char v14, v3

    #@ad
    .line 869
    invoke-static {v13, v14}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@b0
    move-result v12

    #@b1
    .line 873
    .end local v0    # "ahead":I
    :cond_d
    const/4 v13, 0x0

    #@b2
    aput v11, p1, v13

    #@b4
    .line 874
    return v12

    #@b5
    .line 878
    :cond_e
    const/4 v5, 0x0

    #@b6
    .local v5, "i":I
    :goto_3
    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    #@b8
    array-length v13, v13

    #@b9
    if-ge v5, v13, :cond_10

    #@bb
    .line 879
    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    #@bd
    aget-char v13, v13, v5

    #@bf
    if-ne v3, v13, :cond_f

    #@c1
    .line 880
    const/4 v13, 0x0

    #@c2
    aput v11, p1, v13

    #@c4
    .line 881
    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    #@c6
    add-int/lit8 v14, v5, 0x1

    #@c8
    aget-char v13, v13, v14

    #@ca
    return v13

    #@cb
    .line 882
    :cond_f
    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    #@cd
    aget-char v13, v13, v5

    #@cf
    if-ge v3, v13, :cond_11

    #@d1
    .line 888
    :cond_10
    const/16 v13, 0x63

    #@d3
    if-ne v3, v13, :cond_12

    #@d5
    if-ge v11, v6, :cond_12

    #@d7
    .line 889
    invoke-static {p0, v11}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@da
    move-result v3

    #@db
    .line 890
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@de
    move-result v13

    #@df
    add-int/2addr v13, v11

    #@e0
    const/4 v14, 0x0

    #@e1
    aput v13, p1, v14

    #@e3
    .line 891
    and-int/lit8 v13, v3, 0x1f

    #@e5
    return v13

    #@e6
    .line 878
    :cond_11
    add-int/lit8 v5, v5, 0x2

    #@e8
    goto :goto_3

    #@e9
    .line 896
    :cond_12
    const/4 v13, 0x0

    #@ea
    aput v11, p1, v13

    #@ec
    .line 897
    return v3

    #@ed
    .line 803
    nop

    #@ee
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_1
        0x75 -> :sswitch_0
        0x78 -> :sswitch_2
    .end sparse-switch
.end method

.method public static unescapeLeniently(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 932
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    #@7
    new-array v5, v6, [I

    #@9
    .line 933
    .local v5, "pos":[I
    const/4 v3, 0x0

    #@a
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v6

    #@e
    if-ge v3, v6, :cond_2

    #@10
    .line 934
    add-int/lit8 v4, v3, 0x1

    #@12
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v1

    #@16
    .line 935
    .local v1, "c":C
    const/16 v6, 0x5c

    #@18
    if-ne v1, v6, :cond_1

    #@1a
    .line 936
    aput v4, v5, v7

    #@1c
    .line 937
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@1f
    move-result v2

    #@20
    .line 938
    .local v2, "e":I
    if-gez v2, :cond_0

    #@22
    .line 939
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    move v3, v4

    #@26
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@27
    .line 941
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@2a
    .line 942
    aget v3, v5, v7

    #@2c
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@2d
    .line 945
    .end local v2    # "e":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move v3, v4

    #@31
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@32
    .line 948
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    return-object v6
.end method

.method public static valueOf([I)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [I

    #@0
    .prologue
    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    array-length v2, p0

    #@3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6
    .line 1733
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 1734
    aget v2, p0, v0

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@f
    .line 1733
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1736
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method
