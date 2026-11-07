.class public final Landroid/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist APOSTROPHE:C = '\''

.field private static final blacklist BACKSLASH:C = '\\'

.field static final blacklist DIGITS:[C

.field private static final blacklist ESCAPE:C = '\ua5a5'

.field static final blacklist ESCAPE_BYTE:B = -0x5bt

.field static final blacklist HEX_DIGIT:[C

.field public static blacklist LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final blacklist MAGIC_UNSIGNED:I = -0x80000000

.field private static final blacklist UNESCAPE_MAP:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    nop

    .line 644
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    .line 699
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_24

    sput-object v1, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    .line 769
    new-array v0, v0, [C

    fill-array-data v0, :array_38

    sput-object v0, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    .line 1419
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_4c

    sput-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    return-void

    nop

    :array_24
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

    :array_38
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

    :array_4c
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist RLEStringToByteArray(Ljava/lang/String;)[B
    .registers 13
    .param p0, "s"    # Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    .line 576
    .local v0, "length":I
    new-array v1, v0, [B

    .line 577
    .local v1, "array":[B
    const/4 v2, 0x1

    .line 578
    .local v2, "nextChar":Z
    const/4 v3, 0x0

    .line 579
    .local v3, "c":C
    const/4 v4, 0x0

    .line 580
    .local v4, "node":I
    const/4 v5, 0x0

    .line 581
    .local v5, "runLength":I
    const/4 v6, 0x2

    .line 582
    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "ai":I
    :goto_15
    if-ge v7, v0, :cond_59

    .line 588
    if-eqz v2, :cond_24

    .line 589
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 590
    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    .line 591
    .local v6, "b":B
    const/4 v2, 0x0

    goto :goto_2b

    .line 594
    .end local v8    # "i":I
    .local v6, "i":I
    :cond_24
    and-int/lit16 v8, v3, 0xff

    int-to-byte v8, v8

    .line 595
    .local v8, "b":B
    const/4 v2, 0x1

    move v11, v8

    move v8, v6

    move v6, v11

    .line 602
    .local v6, "b":B
    .local v8, "i":I
    :goto_2b
    const/16 v9, -0x5b

    packed-switch v4, :pswitch_data_72

    goto :goto_57

    .line 629
    :pswitch_31
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_32
    if-ge v9, v5, :cond_3c

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "ai":I
    .local v10, "ai":I
    aput-byte v6, v1, v7

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    goto :goto_32

    .line 630
    .end local v9    # "j":I
    .end local v10    # "ai":I
    .restart local v7    # "ai":I
    :cond_3c
    const/4 v4, 0x0

    goto :goto_57

    .line 615
    :pswitch_3e
    if-ne v6, v9, :cond_47

    .line 616
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "ai":I
    .restart local v10    # "ai":I
    aput-byte v9, v1, v7

    .line 617
    const/4 v4, 0x0

    move v7, v10

    goto :goto_57

    .line 620
    .end local v10    # "ai":I
    .restart local v7    # "ai":I
    :cond_47
    move v5, v6

    .line 622
    if-gez v5, :cond_4c

    add-int/lit16 v5, v5, 0x100

    .line 623
    :cond_4c
    const/4 v4, 0x2

    .line 625
    goto :goto_57

    .line 605
    :pswitch_4e
    if-ne v6, v9, :cond_52

    .line 606
    const/4 v4, 0x1

    goto :goto_57

    .line 609
    :cond_52
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ai":I
    .local v9, "ai":I
    aput-byte v6, v1, v7

    .line 611
    move v7, v9

    .line 633
    .end local v6    # "b":B
    .end local v9    # "ai":I
    .restart local v7    # "ai":I
    :goto_57
    move v6, v8

    goto :goto_15

    .line 635
    .end local v7    # "ai":I
    .end local v8    # "i":I
    .local v6, "i":I
    :cond_59
    if-nez v4, :cond_6a

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_62

    .line 641
    return-object v1

    .line 639
    :cond_62
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Excess data in RLE byte array string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 636
    :cond_6a
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Bad run-length encoded byte array"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_3e
        :pswitch_31
    .end packed-switch
.end method

.method public static final blacklist RLEStringToCharArray(Ljava/lang/String;)[C
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    .line 546
    .local v0, "length":I
    new-array v2, v0, [C

    .line 547
    .local v2, "array":[C
    const/4 v3, 0x0

    .line 548
    .local v3, "ai":I
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_48

    .line 549
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 550
    .local v5, "c":C
    const v6, 0xa5a5

    if-ne v5, v6, :cond_41

    .line 551
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 552
    if-ne v5, v6, :cond_2e

    .line 553
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ai":I
    .local v6, "ai":I
    aput-char v5, v2, v3

    move v3, v6

    goto :goto_46

    .line 555
    .end local v6    # "ai":I
    .restart local v3    # "ai":I
    :cond_2e
    move v6, v5

    .line 556
    .local v6, "runLength":I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 557
    .local v7, "runValue":C
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_36
    if-ge v8, v6, :cond_40

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "ai":I
    .local v9, "ai":I
    aput-char v7, v2, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_36

    .line 558
    .end local v6    # "runLength":I
    .end local v7    # "runValue":C
    .end local v8    # "j":I
    .end local v9    # "ai":I
    .restart local v3    # "ai":I
    :cond_40
    goto :goto_46

    .line 561
    :cond_41
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ai":I
    .local v6, "ai":I
    aput-char v5, v2, v3

    move v3, v6

    .line 548
    .end local v5    # "c":C
    .end local v6    # "ai":I
    .restart local v3    # "ai":I
    :goto_46
    add-int/2addr v4, v1

    goto :goto_11

    .line 565
    .end local v4    # "i":I
    :cond_48
    if-ne v3, v0, :cond_4b

    .line 568
    return-object v2

    .line 566
    :cond_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Bad run-length encoded short array"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final blacklist RLEStringToIntArray(Ljava/lang/String;)[I
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .line 476
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 477
    .local v0, "length":I
    new-array v1, v0, [I

    .line 478
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "ai":I
    const/4 v3, 0x1

    .line 480
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 481
    .local v4, "maxI":I
    :goto_f
    if-ge v2, v0, :cond_48

    if-ge v3, v4, :cond_48

    .line 482
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-static {p0, v3}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 484
    .local v3, "c":I
    const v6, 0xa5a5

    if-ne v3, v6, :cond_41

    .line 485
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 486
    if-ne v3, v6, :cond_2d

    .line 487
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "ai":I
    .local v5, "ai":I
    aput v3, v1, v2

    move v2, v5

    move v3, v7

    goto :goto_47

    .line 489
    .end local v5    # "ai":I
    .restart local v2    # "ai":I
    :cond_2d
    move v5, v3

    .line 490
    .local v5, "runLength":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .local v6, "i":I
    invoke-static {p0, v7}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 491
    .local v7, "runValue":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_35
    if-ge v8, v5, :cond_3f

    .line 492
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "ai":I
    .local v9, "ai":I
    aput v7, v1, v2

    .line 491
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_35

    .line 494
    .end local v5    # "runLength":I
    .end local v7    # "runValue":I
    .end local v8    # "j":I
    .end local v9    # "ai":I
    .restart local v2    # "ai":I
    :cond_3f
    move v3, v6

    goto :goto_47

    .line 497
    .end local v6    # "i":I
    .local v5, "i":I
    :cond_41
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ai":I
    .local v6, "ai":I
    aput v3, v1, v2

    move v3, v5

    move v2, v6

    .line 499
    .end local v5    # "i":I
    .end local v6    # "ai":I
    .restart local v2    # "ai":I
    .local v3, "i":I
    :goto_47
    goto :goto_f

    .line 501
    :cond_48
    if-ne v2, v0, :cond_4d

    if-ne v3, v4, :cond_4d

    .line 505
    return-object v1

    .line 502
    :cond_4d
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Bad run-length encoded int array"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final blacklist RLEStringToShortArray(Ljava/lang/String;)[S
    .registers 11
    .param p0, "s"    # Ljava/lang/String;

    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    .line 516
    .local v0, "length":I
    new-array v2, v0, [S

    .line 517
    .local v2, "array":[S
    const/4 v3, 0x0

    .line 518
    .local v3, "ai":I
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4b

    .line 519
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 520
    .local v5, "c":C
    const v6, 0xa5a5

    if-ne v5, v6, :cond_43

    .line 521
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 522
    if-ne v5, v6, :cond_2f

    .line 523
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ai":I
    .local v6, "ai":I
    int-to-short v7, v5

    aput-short v7, v2, v3

    move v3, v6

    goto :goto_49

    .line 525
    .end local v6    # "ai":I
    .restart local v3    # "ai":I
    :cond_2f
    move v6, v5

    .line 526
    .local v6, "runLength":I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-short v7, v7

    .line 527
    .local v7, "runValue":S
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_38
    if-ge v8, v6, :cond_42

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "ai":I
    .local v9, "ai":I
    aput-short v7, v2, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_38

    .line 528
    .end local v6    # "runLength":I
    .end local v7    # "runValue":S
    .end local v8    # "j":I
    .end local v9    # "ai":I
    .restart local v3    # "ai":I
    :cond_42
    goto :goto_49

    .line 531
    :cond_43
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ai":I
    .local v6, "ai":I
    int-to-short v7, v5

    aput-short v7, v2, v3

    move v3, v6

    .line 518
    .end local v5    # "c":C
    .end local v6    # "ai":I
    .restart local v3    # "ai":I
    :goto_49
    add-int/2addr v4, v1

    goto :goto_11

    .line 535
    .end local v4    # "i":I
    :cond_4b
    if-ne v3, v0, :cond_4e

    .line 538
    return-object v2

    .line 536
    :cond_4e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Bad run-length encoded short array"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final blacklist _digit16(I)I
    .registers 2
    .param p0, "c"    # I

    .line 794
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 795
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 797
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v0, 0x46

    if-gt p0, v0, :cond_16

    .line 798
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 800
    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_21

    const/16 v0, 0x66

    if-gt p0, v0, :cond_21

    .line 801
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 803
    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method private static final blacklist _digit8(I)I
    .registers 2
    .param p0, "c"    # I

    .line 786
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x37

    if-gt p0, v0, :cond_b

    .line 787
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 789
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist addExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1914
    add-int v0, p0, p1

    .line 1916
    .local v0, "r":I
    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 1919
    return v0

    .line 1917
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final blacklist appendEncodedByte(Ljava/lang/Appendable;B[B)V
    .registers 6
    .param p1, "value"    # B
    .param p2, "state"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;B[B)V"
        }
    .end annotation

    .line 458
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x0

    :try_start_1
    aget-byte v1, p2, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 459
    aget-byte v1, p2, v2

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, p1, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    .line 460
    .local v1, "c":C
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 461
    aput-byte v0, p2, v0

    .line 462
    .end local v1    # "c":C
    goto :goto_18

    .line 464
    :cond_14
    aput-byte v2, p2, v0

    .line 465
    aput-byte p1, p2, v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1a

    .line 469
    :goto_18
    nop

    .line 470
    return-void

    .line 467
    :catch_1a
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final blacklist appendInt(Ljava/lang/Appendable;I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)V"
        }
    .end annotation

    .line 384
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    ushr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    :try_start_3
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 385
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_10

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_10
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;
    .registers 7
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

    .line 1469
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x2

    if-lt p2, v0, :cond_14

    const/16 v0, 0x24

    if-gt p2, v0, :cond_14

    .line 1474
    move v0, p1

    .line 1476
    .local v0, "abs":I
    if-gez p1, :cond_10

    .line 1477
    neg-int v0, p1

    .line 1478
    :try_start_b
    const-string v1, "-"

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1481
    :cond_10
    invoke-static {p0, v0, p2, p3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    .line 1483
    return-object p0

    .line 1470
    .end local v0    # "abs":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal radix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "result":Ljava/lang/Appendable;, "TT;"
    .end local p1    # "n":I
    .end local p2    # "radix":I
    .end local p3    # "minDigits":I
    throw v0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2d} :catch_2d

    .line 1484
    .restart local p0    # "result":Ljava/lang/Appendable;, "TT;"
    .restart local p1    # "n":I
    .restart local p2    # "radix":I
    .restart local p3    # "minDigits":I
    :catch_2d
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 4
    .param p0, "string"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TA;)TA;"
        }
    .end annotation

    .line 1959
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    :try_start_0
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1960
    return-object p1

    .line 1961
    :catch_4
    move-exception v0

    .line 1962
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
    .registers 12
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # I
    .param p2, "isLiteral"    # Z
    .param p3, "escapeUnprintable"    # Z
    .param p4, "quoteBuf"    # Ljava/lang/StringBuffer;

    .line 1663
    const/16 v0, 0x5c

    const/16 v1, 0x27

    if-nez p2, :cond_60

    if-eqz p3, :cond_f

    .line 1664
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_60

    .line 1716
    :cond_f
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_23

    if-eq p1, v1, :cond_19

    if-ne p1, v0, :cond_23

    .line 1718
    :cond_19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f3

    .line 1724
    :cond_23
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_55

    const/16 v0, 0x21

    if-lt p1, v0, :cond_49

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_49

    const/16 v0, 0x30

    if-lt p1, v0, :cond_39

    const/16 v0, 0x39

    if-le p1, v0, :cond_49

    :cond_39
    const/16 v0, 0x41

    if-lt p1, v0, :cond_41

    const/16 v0, 0x5a

    if-le p1, v0, :cond_49

    :cond_41
    const/16 v0, 0x61

    if-lt p1, v0, :cond_55

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_55

    .line 1729
    :cond_49
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_55

    .line 1739
    :cond_50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto/16 :goto_f3

    .line 1730
    :cond_55
    :goto_55
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 1732
    if-ne p1, v1, :cond_f3

    .line 1733
    int-to-char v0, p1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f3

    .line 1665
    :cond_60
    :goto_60
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_cd

    .line 1673
    :goto_66
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v2, v5, :cond_86

    .line 1674
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_86

    .line 1675
    invoke-virtual {p4, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_86

    .line 1676
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1677
    invoke-virtual {p4, v3, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_66

    .line 1681
    :cond_86
    const/4 v2, 0x0

    .line 1682
    .local v2, "trailingCount":I
    :goto_87
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lt v6, v5, :cond_ae

    .line 1683
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_ae

    .line 1684
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_ae

    .line 1685
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p4, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1686
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 1688
    :cond_ae
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_c0

    .line 1689
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1690
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1691
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1692
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1694
    :cond_c0
    :goto_c0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "trailingCount":I
    .local v3, "trailingCount":I
    if-lez v2, :cond_cd

    .line 1695
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_c0

    .line 1698
    .end local v3    # "trailingCount":I
    :cond_cd
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f3

    .line 1704
    const/16 v0, 0x20

    if-ne p1, v0, :cond_e6

    .line 1705
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1706
    .local v1, "len":I
    if-lez v1, :cond_ef

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_ef

    .line 1707
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_ef

    .line 1709
    .end local v1    # "len":I
    :cond_e6
    if-eqz p3, :cond_f0

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v0

    if-nez v0, :cond_ef

    goto :goto_f0

    :cond_ef
    :goto_ef
    goto :goto_f3

    .line 1710
    :cond_f0
    :goto_f0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 1741
    :cond_f3
    :goto_f3
    return-void
.end method

.method public static blacklist appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .registers 6
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "matcher"    # Landroid/icu/text/UnicodeMatcher;
    .param p2, "escapeUnprintable"    # Z
    .param p3, "quoteBuf"    # Ljava/lang/StringBuffer;

    .line 1766
    if-eqz p1, :cond_a

    .line 1767
    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 1770
    :cond_a
    return-void
.end method

.method public static blacklist appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .registers 7
    .param p0, "rule"    # Ljava/lang/StringBuffer;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isLiteral"    # Z
    .param p3, "escapeUnprintable"    # Z
    .param p4, "quoteBuf"    # Ljava/lang/StringBuffer;

    .line 1752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1754
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 1752
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1756
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final blacklist arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/Object;

    .line 81
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 84
    :cond_8
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 85
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 86
    :cond_14
    instance-of v0, p0, [I

    if-eqz v0, :cond_20

    .line 87
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 88
    :cond_20
    instance-of v0, p0, [D

    if-eqz v0, :cond_2c

    .line 89
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    move-result v0

    return v0

    .line 90
    :cond_2c
    instance-of v0, p0, [B

    if-eqz v0, :cond_38

    .line 91
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v0

    return v0

    .line 92
    :cond_38
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final blacklist arrayEquals([BLjava/lang/Object;)Z
    .registers 7
    .param p0, "source"    # [B
    .param p1, "target"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    .line 70
    :cond_9
    instance-of v2, p1, [B

    if-nez v2, :cond_e

    return v1

    .line 71
    :cond_e
    move-object v2, p1

    check-cast v2, [B

    .line 72
    .local v2, "targ":[B
    array-length v3, p0

    array-length v4, v2

    if-ne v3, v4, :cond_1d

    array-length v3, p0

    .line 73
    invoke-static {p0, v1, v2, v1, v3}, Landroid/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 72
    :goto_1e
    return v0
.end method

.method public static final blacklist arrayEquals([DLjava/lang/Object;)Z
    .registers 7
    .param p0, "source"    # [D
    .param p1, "target"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    .line 63
    :cond_9
    instance-of v2, p1, [D

    if-nez v2, :cond_e

    return v1

    .line 64
    :cond_e
    move-object v2, p1

    check-cast v2, [D

    .line 65
    .local v2, "targ":[D
    array-length v3, p0

    array-length v4, v2

    if-ne v3, v4, :cond_1d

    array-length v3, p0

    .line 66
    invoke-static {p0, v1, v2, v1, v3}, Landroid/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 65
    :goto_1e
    return v0
.end method

.method public static final blacklist arrayEquals([ILjava/lang/Object;)Z
    .registers 7
    .param p0, "source"    # [I
    .param p1, "target"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    .line 51
    :cond_9
    instance-of v2, p1, [I

    if-nez v2, :cond_e

    return v1

    .line 52
    :cond_e
    move-object v2, p1

    check-cast v2, [I

    .line 53
    .local v2, "targ":[I
    array-length v3, p0

    array-length v4, v2

    if-ne v3, v4, :cond_1d

    array-length v3, p0

    .line 54
    invoke-static {p0, v1, v2, v1, v3}, Landroid/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 53
    :goto_1e
    return v0
.end method

.method public static final blacklist arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p0, "source"    # [Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    .line 39
    :cond_9
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_e

    return v1

    .line 40
    :cond_e
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 41
    .local v2, "targ":[Ljava/lang/Object;
    array-length v3, p0

    array-length v4, v2

    if-ne v3, v4, :cond_1d

    array-length v3, p0

    .line 42
    invoke-static {p0, v1, v2, v1, v3}, Landroid/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 41
    :goto_1e
    return v0
.end method

.method public static final blacklist arrayRegionMatches([BI[BII)Z
    .registers 10
    .param p0, "source"    # [B
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [B
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 172
    add-int v0, p1, p4

    .line 173
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 174
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 175
    aget-byte v3, p0, v2

    add-int v4, v2, v1

    aget-byte v4, p2, v4

    if-eq v3, v4, :cond_11

    .line 176
    const/4 v3, 0x0

    return v3

    .line 174
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 178
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method public static final blacklist arrayRegionMatches([CI[CII)Z
    .registers 10
    .param p0, "source"    # [C
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 124
    add-int v0, p1, p4

    .line 125
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 126
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 127
    aget-char v3, p0, v2

    add-int v4, v2, v1

    aget-char v4, p2, v4

    if-eq v3, v4, :cond_11

    .line 128
    const/4 v3, 0x0

    return v3

    .line 126
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 130
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method public static final blacklist arrayRegionMatches([DI[DII)Z
    .registers 12
    .param p0, "source"    # [D
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [D
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 162
    add-int v0, p1, p4

    .line 163
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 164
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_16

    .line 165
    aget-wide v3, p0, v2

    add-int v5, v2, v1

    aget-wide v5, p2, v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_13

    .line 166
    const/4 v3, 0x0

    return v3

    .line 164
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 168
    .end local v2    # "i":I
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method public static final blacklist arrayRegionMatches([II[III)Z
    .registers 10
    .param p0, "source"    # [I
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [I
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 143
    add-int v0, p1, p4

    .line 144
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 145
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 146
    aget v3, p0, v2

    add-int v4, v2, v1

    aget v4, p2, v4

    if-eq v3, v4, :cond_11

    .line 147
    const/4 v3, 0x0

    return v3

    .line 145
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 149
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method public static final blacklist arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .registers 10
    .param p0, "source"    # [Ljava/lang/Object;
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [Ljava/lang/Object;
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 105
    add-int v0, p1, p4

    .line 106
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 107
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_18

    .line 108
    aget-object v3, p0, v2

    add-int v4, v2, v1

    aget-object v4, p2, v4

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 109
    const/4 v3, 0x0

    return v3

    .line 107
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 111
    .end local v2    # "i":I
    :cond_18
    const/4 v2, 0x1

    return v2
.end method

.method public static final blacklist arrayToRLEString([B)Ljava/lang/String;
    .registers 9
    .param p0, "a"    # [B

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    .line 335
    .local v2, "runValue":B
    const/4 v3, 0x1

    .line 336
    .local v3, "runLength":I
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 337
    .local v4, "state":[B
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_19
    array-length v6, p0

    if-ge v5, v6, :cond_2f

    .line 338
    aget-byte v6, p0, v5

    .line 339
    .local v6, "b":B
    if-ne v6, v2, :cond_27

    const/16 v7, 0xff

    if-ge v3, v7, :cond_27

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 341
    :cond_27
    invoke-static {v0, v2, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    .line 342
    move v2, v6

    .line 343
    const/4 v3, 0x1

    .line 337
    .end local v6    # "b":B
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 346
    .end local v5    # "i":I
    :cond_2f
    invoke-static {v0, v2, v3, v4}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    .line 350
    aget-byte v5, v4, v1

    if-eqz v5, :cond_39

    invoke-static {v0, v1, v4}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 352
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final blacklist arrayToRLEString([C)Ljava/lang/String;
    .registers 7
    .param p0, "a"    # [C

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    const/4 v1, 0x0

    aget-char v1, p0, v1

    .line 302
    .local v1, "runValue":C
    const/4 v2, 0x1

    .line 303
    .local v2, "runLength":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_16
    array-length v4, p0

    if-ge v3, v4, :cond_2e

    .line 304
    aget-char v4, p0, v3

    .line 305
    .local v4, "s":C
    if-ne v4, v1, :cond_25

    const v5, 0xffff

    if-ge v2, v5, :cond_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 307
    :cond_25
    int-to-short v5, v1

    invoke-static {v0, v5, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 308
    move v1, v4

    .line 309
    const/4 v2, 0x1

    .line 303
    .end local v4    # "s":C
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 312
    .end local v3    # "i":I
    :cond_2e
    int-to-short v3, v1

    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final blacklist arrayToRLEString([I)Ljava/lang/String;
    .registers 7
    .param p0, "a"    # [I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 235
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 236
    .local v1, "runValue":I
    const/4 v2, 0x1

    .line 237
    .local v2, "runLength":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_e
    array-length v4, p0

    if-ge v3, v4, :cond_25

    .line 238
    aget v4, p0, v3

    .line 239
    .local v4, "s":I
    if-ne v4, v1, :cond_1d

    const v5, 0xffff

    if-ge v2, v5, :cond_1d

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 242
    :cond_1d
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    .line 243
    move v1, v4

    .line 244
    const/4 v2, 0x1

    .line 237
    .end local v4    # "s":I
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 247
    .end local v3    # "i":I
    :cond_25
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final blacklist arrayToRLEString([S)Ljava/lang/String;
    .registers 7
    .param p0, "a"    # [S

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "buffer":Ljava/lang/StringBuilder;
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    array-length v1, p0

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    const/4 v1, 0x0

    aget-short v1, p0, v1

    .line 270
    .local v1, "runValue":S
    const/4 v2, 0x1

    .line 271
    .local v2, "runLength":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_16
    array-length v4, p0

    if-ge v3, v4, :cond_2d

    .line 272
    aget-short v4, p0, v3

    .line 273
    .local v4, "s":S
    if-ne v4, v1, :cond_25

    const v5, 0xffff

    if-ge v2, v5, :cond_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 275
    :cond_25
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 276
    move v1, v4

    .line 277
    const/4 v2, 0x1

    .line 271
    .end local v4    # "s":S
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 280
    .end local v3    # "i":I
    :cond_2d
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 1926
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1927
    return v0

    .line 1929
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_2b

    if-nez p1, :cond_a

    goto :goto_2b

    .line 1932
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 1933
    return v1

    .line 1935
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1936
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_27

    .line 1937
    return v1

    .line 1935
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1939
    .end local v2    # "i":I
    :cond_2a
    return v0

    .line 1930
    :cond_2b
    :goto_2b
    return v1
.end method

.method public static blacklist charSequenceHashCode(Ljava/lang/CharSequence;)I
    .registers 5
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 1947
    const/4 v0, 0x0

    .line 1948
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 1949
    mul-int/lit8 v2, v0, 0x1f

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v0, v2, v3

    .line 1948
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1951
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public static blacklist checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;)I"
        }
    .end annotation

    .line 194
    .local p0, "a":Ljava/lang/Comparable;, "TT;"
    .local p1, "b":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_8

    .line 195
    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    const/4 v0, -0x1

    goto :goto_10

    .line 196
    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_10

    :cond_c
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 194
    :goto_10
    return v0
.end method

.method public static blacklist checkHash(Ljava/lang/Object;)I
    .registers 2
    .param p0, "a"    # Ljava/lang/Object;

    .line 203
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    return v0
.end method

.method private static blacklist codePointAndLength(II)I
    .registers 3
    .param p0, "c"    # I
    .param p1, "length"    # I

    .line 948
    nop

    .line 949
    nop

    .line 950
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p1

    return v0
.end method

.method private static blacklist codePointAndLength(III)I
    .registers 4
    .param p0, "c"    # I
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 954
    sub-int v0, p2, p1

    invoke-static {p0, v0}, Landroid/icu/impl/Utility;->codePointAndLength(II)I

    move-result v0

    return v0
.end method

.method public static final blacklist compareUnsigned(II)I
    .registers 3
    .param p0, "source"    # I
    .param p1, "target"    # I

    .line 1781
    const/high16 v0, -0x80000000

    sub-int/2addr p0, v0

    .line 1782
    sub-int/2addr p1, v0

    .line 1783
    if-ge p0, p1, :cond_8

    .line 1784
    const/4 v0, -0x1

    return v0

    .line 1786
    :cond_8
    if-le p0, p1, :cond_c

    .line 1787
    const/4 v0, 0x1

    return v0

    .line 1789
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist cpFromCodePointAndLength(I)I
    .registers 2
    .param p0, "cpAndLength"    # I

    .line 958
    nop

    .line 959
    shr-int/lit8 v0, p0, 0x8

    return v0
.end method

.method private static final blacklist encodeRun(Ljava/lang/Appendable;BI[B)V
    .registers 6
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

    .line 429
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x4

    const/16 v1, -0x5b

    if-ge p2, v0, :cond_14

    .line 430
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    if-ge v0, p2, :cond_13

    .line 431
    if-ne p1, v1, :cond_d

    invoke-static {p0, v1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 432
    :cond_d
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "j":I
    :cond_13
    goto :goto_2b

    .line 436
    :cond_14
    int-to-byte v0, p2

    if-ne v0, v1, :cond_21

    .line 437
    if-ne p1, v1, :cond_1c

    invoke-static {p0, v1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 438
    :cond_1c
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 439
    add-int/lit8 p2, p2, -0x1

    .line 441
    :cond_21
    invoke-static {p0, v1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 442
    int-to-byte v0, p2

    invoke-static {p0, v0, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 443
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    .line 445
    :goto_2b
    return-void
.end method

.method private static final blacklist encodeRun(Ljava/lang/Appendable;II)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;II)V"
        }
    .end annotation

    .line 360
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x4

    const v1, 0xa5a5

    if-ge p2, v0, :cond_15

    .line 361
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_7
    if-ge v0, p2, :cond_14

    .line 362
    if-ne p1, v1, :cond_e

    .line 363
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 365
    :cond_e
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v0    # "j":I
    :cond_14
    goto :goto_2a

    .line 369
    :cond_15
    if-ne p2, v1, :cond_21

    .line 370
    if-ne p1, v1, :cond_1c

    .line 371
    invoke-static {p0, v1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 373
    :cond_1c
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 374
    add-int/lit8 p2, p2, -0x1

    .line 376
    :cond_21
    invoke-static {p0, v1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 377
    invoke-static {p0, p2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 378
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    .line 380
    :goto_2a
    return-void
.end method

.method private static final blacklist encodeRun(Ljava/lang/Appendable;SI)V
    .registers 6
    .param p1, "value"    # S
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;SI)V"
        }
    .end annotation

    .line 397
    .local p0, "buffer":Ljava/lang/Appendable;, "TT;"
    int-to-char v0, p1

    .line 398
    .local v0, "valueChar":C
    const/4 v1, 0x4

    const v2, 0xa5a5

    if-ge p2, v1, :cond_16

    .line 399
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    if-ge v1, p2, :cond_15

    .line 400
    if-ne v0, v2, :cond_f

    .line 401
    :try_start_c
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 403
    :cond_f
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "j":I
    :cond_15
    goto :goto_2c

    .line 407
    :cond_16
    if-ne p2, v2, :cond_22

    .line 408
    if-ne v0, v2, :cond_1d

    .line 409
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 411
    :cond_1d
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 412
    add-int/lit8 p2, p2, -0x1

    .line 414
    :cond_22
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 415
    int-to-char v1, p2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 416
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2c} :catch_2e

    .line 420
    .end local v0    # "valueChar":C
    :goto_2c
    nop

    .line 421
    return-void

    .line 418
    :catch_2e
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist escape(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .registers 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1585
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    const/16 v0, 0x5c

    :try_start_2
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1586
    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3c

    .line 1587
    const/16 v0, 0x55

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1588
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x1c

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1589
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x18

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1590
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1591
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x10

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_41

    .line 1593
    :cond_3c
    const/16 v0, 0x75

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1595
    :goto_41
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1596
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1597
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1598
    sget-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6b} :catch_6c

    .line 1599
    return-object p0

    .line 1600
    :catch_6c
    move-exception v0

    .line 1601
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final blacklist escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 751
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 752
    .local v2, "c":I
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 753
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_2c

    .line 754
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_27

    .line 755
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 757
    :cond_27
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 760
    :cond_2c
    const v3, 0xffff

    if-gt v2, v3, :cond_33

    const/4 v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    .line 761
    .local v3, "four":Z
    :goto_34
    if-eqz v3, :cond_39

    const-string v4, "\\u"

    goto :goto_3b

    :cond_39
    const-string v4, "\\U"

    :goto_3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    int-to-long v4, v2

    if-eqz v3, :cond_43

    const/4 v6, 0x4

    goto :goto_45

    :cond_43
    const/16 v6, 0x8

    :goto_45
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .end local v2    # "c":I
    .end local v3    # "four":Z
    :goto_4c
    goto :goto_6

    .line 765
    .end local v1    # "i":I
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist escapeUnprintable(Ljava/lang/Appendable;I)Z
    .registers 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    .line 1571
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1572
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escape(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    .line 1573
    const/4 v0, 0x1

    return v0

    .line 1575
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static final blacklist format1ForSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ge v1, v2, :cond_a2

    .line 710
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 711
    .local v1, "c":C
    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v1, v4, :cond_5f

    if-eq v1, v3, :cond_5f

    if-ne v1, v5, :cond_24

    goto :goto_5f

    .line 729
    :cond_24
    const/16 v3, 0x7e

    if-gt v1, v3, :cond_2d

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9f

    .line 733
    :cond_2d
    const-string v3, "\\u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    const v4, 0xf000

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0xc

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0xf00

    shr-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 712
    :cond_5f
    :goto_5f
    const/16 v3, 0xa

    if-ne v1, v3, :cond_69

    .line 713
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 714
    :cond_69
    const/16 v3, 0x9

    if-ne v1, v3, :cond_73

    .line 715
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 716
    :cond_73
    const/16 v3, 0xd

    if-ne v1, v3, :cond_7d

    .line 717
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 723
    :cond_7d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v4, v1, 0x1c0

    shr-int/lit8 v4, v4, 0x6

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v4, v1, 0x38

    shr-int/lit8 v4, v4, 0x3

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    sget-object v3, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v4, v1, 0x7

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    .end local v1    # "c":C
    :goto_9f
    move v1, v2

    goto/16 :goto_b

    .line 740
    .end local v2    # "i":I
    :cond_a2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final blacklist formatForSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_cc

    .line 654
    if-lez v1, :cond_19

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_19
    const-string v2, "        \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const/16 v2, 0xb

    .line 657
    .local v2, "count":I
    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    if-ge v1, v3, :cond_c7

    const/16 v3, 0x50

    if-ge v2, v3, :cond_c7

    .line 658
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 659
    .local v1, "c":C
    const/16 v5, 0x20

    const/16 v6, 0x5c

    if-lt v1, v5, :cond_7c

    if-eq v1, v4, :cond_7c

    if-ne v1, v6, :cond_3d

    goto :goto_7c

    .line 681
    :cond_3d
    const/16 v4, 0x7e

    if-gt v1, v4, :cond_48

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c4

    .line 686
    :cond_48
    const-string v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    const v5, 0xf000

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0xc

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 688
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0xf00

    shr-int/lit8 v5, v5, 0x8

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    add-int/lit8 v2, v2, 0x6

    goto :goto_c4

    .line 660
    :cond_7c
    :goto_7c
    const/16 v4, 0xa

    if-ne v1, v4, :cond_88

    .line 661
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v2, v2, 0x2

    goto :goto_c4

    .line 663
    :cond_88
    const/16 v4, 0x9

    if-ne v1, v4, :cond_94

    .line 664
    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    add-int/lit8 v2, v2, 0x2

    goto :goto_c4

    .line 666
    :cond_94
    const/16 v4, 0xd

    if-ne v1, v4, :cond_a0

    .line 667
    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    add-int/lit8 v2, v2, 0x2

    goto :goto_c4

    .line 674
    :cond_a0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 675
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0x1c0

    shr-int/lit8 v5, v5, 0x6

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0x38

    shr-int/lit8 v5, v5, 0x3

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0x7

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    add-int/lit8 v2, v2, 0x4

    .line 693
    .end local v1    # "c":C
    :goto_c4
    move v1, v3

    goto/16 :goto_20

    .line 694
    .end local v3    # "i":I
    .local v1, "i":I
    :cond_c7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    .end local v2    # "count":I
    goto/16 :goto_6

    .line 696
    .end local v1    # "i":I
    :cond_cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fromHex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "separator"    # Ljava/lang/String;

    .line 1884
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_6

    :cond_4
    const-string v0, "\\s+"

    :goto_6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;
    .registers 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "separator"    # Ljava/util/regex/Pattern;

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1896
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 1897
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_3a

    aget-object v4, v1, v3

    .line 1898
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, p1, :cond_21

    .line 1901
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 1902
    .local v5, "cp":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1897
    .end local v4    # "part":Ljava/lang/String;
    .end local v5    # "cp":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1899
    .restart local v4    # "part":Ljava/lang/String;
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code point too short: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1904
    .end local v4    # "part":Ljava/lang/String;
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static final blacklist getInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 508
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 9
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

    .line 1072
    .local p0, "s":Ljava/lang/CharSequence;, "TS;"
    .local p2, "separator":Ljava/lang/CharSequence;, "TU;"
    .local p4, "result":Ljava/lang/Appendable;, "TT;"
    if-eqz p3, :cond_21

    .line 1074
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    :try_start_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1075
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1076
    .local v1, "cp":I
    if-eqz v0, :cond_12

    .line 1077
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1079
    :cond_12
    int-to-long v2, v1

    invoke-static {v2, v3, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1074
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "cp":I
    :cond_20
    goto :goto_3c

    .line 1082
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 1083
    if-eqz v0, :cond_2d

    .line 1084
    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1086
    :cond_2d
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_39} :catch_3d

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1089
    .end local v0    # "i":I
    :cond_3c
    :goto_3c
    return-object p4

    .line 1090
    :catch_3d
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist hex(J)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # J

    .line 1035
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hex(JI)Ljava/lang/String;
    .registers 8
    .param p0, "i"    # J
    .param p2, "places"    # I

    .line 1042
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_9

    const-string v0, "-8000000000000000"

    return-object v0

    .line 1043
    :cond_9
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1044
    .local v0, "negative":Z
    :goto_12
    if-eqz v0, :cond_15

    .line 1045
    neg-long p0, p0

    .line 1047
    :cond_15
    const/16 v1, 0x10

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_42

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0000000000000000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    :cond_42
    if-eqz v0, :cond_58

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1054
    :cond_58
    return-object v1
.end method

.method public static blacklist hex(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    const-string v2, ","

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            ">(TS;ITS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1110
    .local p0, "s":Ljava/lang/CharSequence;, "TS;"
    .local p2, "separator":Ljava/lang/CharSequence;, "TS;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist hex([BIILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "o"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "separator"    # Ljava/lang/String;

    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .local v0, "result":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_6
    if-ge v1, p2, :cond_1a

    .line 1099
    if-eqz v1, :cond_d

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    :cond_d
    aget-byte v2, p0, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1102
    .end local v1    # "i":I
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final blacklist highBit(I)B
    .registers 3
    .param p0, "n"    # I

    .line 1803
    if-gtz p0, :cond_4

    .line 1804
    const/4 v0, -0x1

    return v0

    .line 1807
    :cond_4
    const/4 v0, 0x0

    .line 1809
    .local v0, "bit":B
    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_e

    .line 1810
    shr-int/lit8 p0, p0, 0x10

    .line 1811
    add-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 1814
    :cond_e
    const/16 v1, 0x100

    if-lt p0, v1, :cond_17

    .line 1815
    shr-int/lit8 p0, p0, 0x8

    .line 1816
    add-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 1819
    :cond_17
    const/16 v1, 0x10

    if-lt p0, v1, :cond_20

    .line 1820
    shr-int/lit8 p0, p0, 0x4

    .line 1821
    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 1824
    :cond_20
    const/4 v1, 0x4

    if-lt p0, v1, :cond_28

    .line 1825
    shr-int/lit8 p0, p0, 0x2

    .line 1826
    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 1829
    :cond_28
    const/4 v1, 0x2

    if-lt p0, v1, :cond_30

    .line 1830
    shr-int/lit8 p0, p0, 0x1

    .line 1831
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 1834
    :cond_30
    return v0
.end method

.method public static blacklist isUnprintable(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 1539
    const/16 v0, 0x20

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7e

    if-le p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1974
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1979
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/CharSequence;>;"
    const/4 v2, 0x1

    .line 1980
    .local v2, "isFirstElem":Z
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1981
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1982
    .local v3, "element":Ljava/lang/CharSequence;
    if-eqz v3, :cond_26

    .line 1983
    if-nez v2, :cond_22

    .line 1984
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1986
    :cond_22
    const/4 v2, 0x0

    .line 1988
    :goto_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1990
    .end local v3    # "element":Ljava/lang/CharSequence;
    :cond_26
    goto :goto_e

    .line 1991
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1975
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/CharSequence;>;"
    .end local v2    # "isFirstElem":Z
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Delimiter or elements is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist lengthFromCodePointAndLength(I)I
    .registers 2
    .param p0, "cpAndLength"    # I

    .line 963
    nop

    .line 964
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static blacklist lookup(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # [Ljava/lang/String;

    .line 1174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 1175
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 1174
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1177
    .end local v0    # "i":I
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist parseChar(Ljava/lang/String;[IC)Z
    .registers 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "ch"    # C

    .line 1193
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1194
    .local v1, "start":I
    aget v2, p1, v0

    invoke-static {p0, v2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    aput v2, p1, v0

    .line 1195
    aget v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_23

    aget v2, p1, v0

    .line 1196
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, p2, :cond_1c

    goto :goto_23

    .line 1200
    :cond_1c
    aget v2, p1, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 1201
    return v3

    .line 1197
    :cond_23
    :goto_23
    aput v1, p1, v0

    .line 1198
    return v0
.end method

.method public static blacklist parseInteger(Ljava/lang/String;[II)I
    .registers 13
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "limit"    # I

    .line 1344
    const/4 v0, 0x0

    .line 1345
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1346
    .local v1, "value":I
    const/4 v2, 0x0

    aget v5, p1, v2

    .line 1347
    .local v5, "p":I
    const/16 v9, 0xa

    .line 1349
    .local v9, "radix":I
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const-string v6, "0x"

    move-object v3, p0

    .end local p0    # "rule":Ljava/lang/String;
    .local v3, "rule":Ljava/lang/String;
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 1350
    add-int/lit8 v5, v5, 0x2

    .line 1351
    const/16 v9, 0x10

    goto :goto_27

    .line 1352
    :cond_18
    if-ge v5, p2, :cond_27

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v4, 0x30

    if-ne p0, v4, :cond_27

    .line 1353
    add-int/lit8 v5, v5, 0x1

    .line 1354
    const/4 v0, 0x1

    .line 1355
    const/16 v9, 0x8

    .line 1358
    :cond_27
    :goto_27
    if-ge v5, p2, :cond_43

    .line 1359
    add-int/lit8 p0, v5, 0x1

    .end local v5    # "p":I
    .local p0, "p":I
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v9}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v4

    .line 1360
    .local v4, "d":I
    if-gez v4, :cond_38

    .line 1361
    add-int/lit8 v5, p0, -0x1

    .line 1362
    .end local p0    # "p":I
    .restart local v5    # "p":I
    goto :goto_43

    .line 1364
    .end local v5    # "p":I
    .restart local p0    # "p":I
    :cond_38
    add-int/lit8 v0, v0, 0x1

    .line 1365
    mul-int v5, v1, v9

    add-int/2addr v5, v4

    .line 1366
    .local v5, "v":I
    if-gt v5, v1, :cond_40

    .line 1371
    return v2

    .line 1373
    :cond_40
    move v1, v5

    .line 1374
    .end local v4    # "d":I
    .end local v5    # "v":I
    move v5, p0

    goto :goto_27

    .line 1375
    .end local p0    # "p":I
    .local v5, "p":I
    :cond_43
    :goto_43
    if-lez v0, :cond_47

    .line 1376
    aput v5, p1, v2

    .line 1378
    :cond_47
    return v1
.end method

.method public static blacklist parseNumber(Ljava/lang/String;[II)I
    .registers 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "radix"    # I

    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, "n":I
    const/4 v1, 0x0

    aget v2, p1, v1

    .line 1512
    .local v2, "p":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_21

    .line 1513
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1514
    .local v3, "ch":I
    invoke-static {v3, p2}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v5

    .line 1515
    .local v5, "d":I
    if-gez v5, :cond_16

    .line 1516
    goto :goto_21

    .line 1518
    :cond_16
    mul-int v6, p2, v0

    add-int v0, v6, v5

    .line 1521
    if-gez v0, :cond_1d

    .line 1522
    return v4

    .line 1524
    :cond_1d
    nop

    .end local v3    # "ch":I
    .end local v5    # "d":I
    add-int/lit8 v2, v2, 0x1

    .line 1525
    goto :goto_4

    .line 1526
    :cond_21
    :goto_21
    aget v3, p1, v1

    if-ne v2, v3, :cond_26

    .line 1527
    return v4

    .line 1529
    :cond_26
    aput v2, p1, v1

    .line 1530
    return v0
.end method

.method public static blacklist parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I
    .registers 13
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "parsedInts"    # [I

    .line 1227
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1228
    .local v0, "p":[I
    const/4 v1, 0x0

    .line 1229
    .local v1, "intCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 1230
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1232
    .local v3, "cpat":C
    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_54

    .line 1255
    if-lt p1, p2, :cond_40

    .line 1256
    return v4

    .line 1246
    :sswitch_16
    const/4 v5, 0x0

    aput p1, v0, v5

    .line 1247
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "intCount":I
    .local v6, "intCount":I
    invoke-static {p0, v0, p2}, Landroid/icu/impl/Utility;->parseInteger(Ljava/lang/String;[II)I

    move-result v7

    aput v7, p4, v1

    .line 1248
    aget v1, v0, v5

    if-ne v1, p1, :cond_26

    .line 1250
    return v4

    .line 1252
    :cond_26
    aget p1, v0, v5

    .line 1253
    move v1, v6

    goto :goto_4f

    .line 1234
    .end local v6    # "intCount":I
    .restart local v1    # "intCount":I
    :sswitch_2a
    if-lt p1, p2, :cond_2d

    .line 1235
    return v4

    .line 1237
    :cond_2d
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "pos":I
    .local v5, "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1238
    .local p1, "c":C
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 1239
    return v4

    .line 1238
    :cond_3a
    move p1, v5

    .line 1243
    .end local v5    # "pos":I
    .local p1, "pos":I
    :sswitch_3b
    invoke-static {p0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1244
    goto :goto_4f

    .line 1258
    :cond_40
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "pos":I
    .restart local v5    # "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result p1

    int-to-char p1, p1

    .line 1259
    .local p1, "c":C
    if-eq p1, v3, :cond_4e

    .line 1260
    return v4

    .line 1259
    :cond_4e
    move p1, v5

    .line 1229
    .end local v3    # "cpat":C
    .end local v5    # "pos":I
    .local p1, "pos":I
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1265
    .end local v2    # "i":I
    :cond_52
    return p1

    nop

    :sswitch_data_54
    .sparse-switch
        0x20 -> :sswitch_2a
        0x23 -> :sswitch_16
        0x7e -> :sswitch_3b
    .end sparse-switch
.end method

.method public static blacklist parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I
    .registers 9
    .param p0, "pat"    # Ljava/lang/String;
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 1288
    const/4 v0, 0x0

    .line 1291
    .local v0, "ipat":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1292
    return p2

    .line 1295
    :cond_8
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1297
    .local v1, "cpat":I
    :goto_c
    const/4 v2, -0x1

    if-ge p2, p3, :cond_42

    .line 1298
    invoke-interface {p1, p2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v3

    .line 1301
    .local v3, "c":I
    const/16 v4, 0x7e

    if-ne v1, v4, :cond_2c

    .line 1302
    invoke-static {v3}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1303
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr p2, v2

    .line 1304
    goto :goto_c

    .line 1306
    :cond_23
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3c

    .line 1307
    return p2

    .line 1314
    :cond_2c
    if-ne v3, v1, :cond_41

    .line 1315
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    .line 1316
    .local v2, "n":I
    add-int/2addr p2, v2

    .line 1317
    add-int/2addr v0, v2

    .line 1318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_3b

    .line 1319
    return p2

    .line 1322
    .end local v2    # "n":I
    :cond_3b
    nop

    .line 1329
    :cond_3c
    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 1330
    .end local v3    # "c":I
    goto :goto_c

    .line 1326
    .restart local v3    # "c":I
    :cond_41
    return v2

    .line 1332
    .end local v3    # "c":I
    :cond_42
    return v2
.end method

.method public static blacklist parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # [I

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v2, p1, v1

    .line 1398
    .local v2, "p":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 1399
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1400
    .local v3, "ch":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_24

    .line 1401
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1402
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1404
    :cond_22
    const/4 v1, 0x0

    return-object v1

    .line 1407
    :cond_24
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1413
    :goto_2d
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1414
    .end local v3    # "ch":I
    goto :goto_8

    .line 1415
    :cond_33
    aput v2, p1, v1

    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I
    .registers 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "setOfChars"    # Ljava/lang/String;

    .line 1623
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_27

    .line 1624
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1625
    .local v1, "c":C
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_e

    .line 1626
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1627
    :cond_e
    const/16 v2, 0x27

    if-ne v1, v2, :cond_1d

    .line 1628
    :goto_12
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_24

    .line 1629
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_24

    goto :goto_12

    .line 1630
    :cond_1d
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_24

    .line 1631
    return v0

    .line 1623
    .end local v1    # "c":C
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1634
    .end local v0    # "i":I
    :cond_27
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist recursiveAppendNumber(Ljava/lang/Appendable;III)V
    .registers 7
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

    .line 1441
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    :try_start_0
    rem-int v0, p1, p2

    .line 1443
    .local v0, "digit":I
    if-ge p1, p2, :cond_7

    const/4 v1, 0x1

    if-le p3, v1, :cond_e

    .line 1444
    :cond_7
    div-int v1, p1, p2

    add-int/lit8 v2, p3, -0x1

    invoke-static {p0, v1, p2, v2}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    .line 1446
    :cond_e
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    aget-char v1, v1, v0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    .line 1449
    nop

    .line 1450
    .end local v0    # "digit":I
    return-void

    .line 1447
    :catch_17
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "count"    # I

    .line 1856
    if-gtz p1, :cond_5

    const-string v0, ""

    return-object v0

    .line 1857
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    return-object p0

    .line 1858
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1859
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, p1, :cond_17

    .line 1860
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1862
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final blacklist sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 187
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist shouldAlwaysBeEscaped(I)Z
    .registers 5
    .param p0, "c"    # I

    .line 1546
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ge p0, v0, :cond_6

    .line 1547
    return v1

    .line 1548
    :cond_6
    const/16 v0, 0x7e

    const/4 v2, 0x0

    if-gt p0, v0, :cond_c

    .line 1549
    return v2

    .line 1550
    :cond_c
    const/16 v0, 0x9f

    if-gt p0, v0, :cond_11

    .line 1551
    return v1

    .line 1552
    :cond_11
    const v0, 0xd800

    if-ge p0, v0, :cond_17

    .line 1553
    return v2

    .line 1554
    :cond_17
    const v0, 0xdfff

    if-le p0, v0, :cond_35

    const v0, 0xfdd0

    if-gt v0, p0, :cond_26

    const v0, 0xfdef

    if-le p0, v0, :cond_35

    :cond_26
    const v0, 0xfffe

    and-int v3, p0, v0

    if-ne v3, v0, :cond_2e

    goto :goto_35

    .line 1556
    :cond_2e
    const v0, 0x10ffff

    if-gt p0, v0, :cond_34

    .line 1557
    return v2

    .line 1559
    :cond_34
    return v1

    .line 1555
    :cond_35
    :goto_35
    return v1
.end method

.method public static blacklist split(Ljava/lang/String;C[Ljava/lang/String;)V
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "divider"    # C
    .param p2, "output"    # [Ljava/lang/String;

    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, "last":I
    const/4 v1, 0x0

    .line 1128
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 1129
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 1130
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "current":I
    .local v3, "current":I
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v1

    .line 1131
    add-int/lit8 v0, v2, 0x1

    move v1, v3

    .line 1128
    .end local v3    # "current":I
    .restart local v1    # "current":I
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1134
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "current":I
    .restart local v3    # "current":I
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v1

    .line 1135
    :goto_25
    array-length v1, p2

    if-ge v3, v1, :cond_30

    .line 1136
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "current":I
    .restart local v1    # "current":I
    const-string v4, ""

    aput-object v4, p2, v3

    move v3, v1

    goto :goto_25

    .line 1138
    .end local v1    # "current":I
    .restart local v3    # "current":I
    :cond_30
    return-void
.end method

.method public static blacklist split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "divider"    # C

    .line 1150
    const/4 v0, 0x0

    .line 1152
    .local v0, "last":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 1154
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1c

    .line 1155
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    add-int/lit8 v0, v2, 0x1

    .line 1153
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1159
    :cond_1f
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static blacklist splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "src"    # Ljava/lang/String;

    .line 1873
    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unescape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 975
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 976
    .local v1, "c":C
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_5d

    .line 977
    if-nez v0, :cond_24

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 980
    :cond_24
    invoke-static {p0, v2}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 981
    .local v3, "cpAndLength":I
    if-ltz v3, :cond_34

    .line 985
    shr-int/lit8 v4, v3, 0x8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 986
    and-int/lit16 v4, v3, 0xff

    add-int/2addr v2, v4

    .line 987
    .end local v3    # "cpAndLength":I
    move v1, v2

    goto :goto_63

    .line 982
    .restart local v3    # "cpAndLength":I
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid escape sequence "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v2, 0x9

    .line 983
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 987
    .end local v3    # "cpAndLength":I
    :cond_5d
    if-eqz v0, :cond_62

    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 991
    .end local v1    # "c":C
    :cond_62
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    :goto_63
    goto :goto_2

    .line 992
    .end local v1    # "i":I
    :cond_64
    if-nez v0, :cond_6b

    .line 994
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 996
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist unescapeAndLengthAt(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 817
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static blacklist unescapeAndLengthAt(Ljava/lang/CharSequence;II)I
    .registers 15
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "result":I
    const/4 v1, 0x0

    .line 823
    .local v1, "n":I
    const/4 v2, 0x0

    .line 824
    .local v2, "minDig":I
    const/4 v3, 0x0

    .line 825
    .local v3, "maxDig":I
    const/4 v4, 0x4

    .line 827
    .local v4, "bitsPerDigit":I
    const/4 v5, 0x0

    .line 830
    .local v5, "braces":Z
    const/4 v6, -0x1

    if-ltz p1, :cond_fd

    if-lt p1, p2, :cond_d

    goto/16 :goto_fd

    .line 833
    :cond_d
    move v7, p1

    .line 836
    .local v7, "start":I
    add-int/lit8 v8, p1, 0x1

    .end local p1    # "offset":I
    .local v8, "offset":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 839
    .local p1, "c":I
    sparse-switch p1, :sswitch_data_fe

    .line 857
    invoke-static {p1}, Landroid/icu/impl/Utility;->_digit8(I)I

    move-result v9

    .line 858
    .local v9, "dig":I
    if-ltz v9, :cond_3f

    .line 859
    const/4 v2, 0x1

    .line 860
    const/4 v3, 0x3

    .line 861
    const/4 v1, 0x1

    .line 862
    const/4 v4, 0x3

    .line 863
    move v0, v9

    goto :goto_3f

    .line 847
    .end local v9    # "dig":I
    :sswitch_23
    const/4 v2, 0x1

    .line 848
    if-ge v8, p2, :cond_34

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_34

    .line 849
    add-int/lit8 v8, v8, 0x1

    .line 850
    const/4 v5, 0x1

    .line 851
    const/16 v3, 0x8

    goto :goto_3f

    .line 853
    :cond_34
    const/4 v3, 0x2

    .line 855
    goto :goto_3f

    .line 841
    :sswitch_36
    const/4 v9, 0x4

    move v3, v9

    move v2, v9

    .line 842
    goto :goto_3f

    .line 844
    :sswitch_3a
    const/16 v9, 0x8

    move v3, v9

    move v2, v9

    .line 845
    nop

    .line 867
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_a9

    .line 868
    :goto_41
    if-ge v8, p2, :cond_61

    if-ge v1, v3, :cond_61

    .line 869
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 870
    const/4 v9, 0x3

    if-ne v4, v9, :cond_51

    invoke-static {p1}, Landroid/icu/impl/Utility;->_digit8(I)I

    move-result v9

    goto :goto_55

    :cond_51
    invoke-static {p1}, Landroid/icu/impl/Utility;->_digit16(I)I

    move-result v9

    .line 871
    .restart local v9    # "dig":I
    :goto_55
    if-gez v9, :cond_58

    .line 872
    goto :goto_61

    .line 874
    :cond_58
    shl-int v10, v0, v4

    or-int v0, v10, v9

    .line 875
    add-int/lit8 v8, v8, 0x1

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 878
    .end local v9    # "dig":I
    :cond_61
    :goto_61
    if-ge v1, v2, :cond_64

    .line 879
    return v6

    .line 881
    :cond_64
    if-eqz v5, :cond_6d

    .line 882
    const/16 v9, 0x7d

    if-eq p1, v9, :cond_6b

    .line 883
    return v6

    .line 885
    :cond_6b
    add-int/lit8 v8, v8, 0x1

    .line 887
    :cond_6d
    if-ltz v0, :cond_a8

    const/high16 v9, 0x110000

    if-lt v0, v9, :cond_74

    goto :goto_a8

    .line 894
    :cond_74
    if-ge v8, p2, :cond_a3

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 895
    add-int/lit8 v6, v8, 0x1

    .line 896
    .local v6, "ahead":I
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 897
    const/16 v9, 0x5c

    if-ne p1, v9, :cond_98

    if-ge v6, p2, :cond_98

    .line 901
    add-int/lit8 v9, v6, 0xb

    .line 902
    .local v9, "tailLimit":I
    if-le v9, p2, :cond_8d

    .line 903
    move v9, p2

    .line 905
    :cond_8d
    invoke-static {p0, v6, v9}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;II)I

    move-result v10

    .line 906
    .local v10, "cpAndLength":I
    if-ltz v10, :cond_98

    .line 907
    shr-int/lit8 p1, v10, 0x8

    .line 908
    and-int/lit16 v11, v10, 0xff

    add-int/2addr v6, v11

    .line 911
    .end local v9    # "tailLimit":I
    .end local v10    # "cpAndLength":I
    :cond_98
    invoke-static {p1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 912
    move v8, v6

    .line 913
    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toCodePoint(II)I

    move-result v0

    .line 916
    .end local v6    # "ahead":I
    :cond_a3
    invoke-static {v0, v7, v8}, Landroid/icu/impl/Utility;->codePointAndLength(III)I

    move-result v6

    return v6

    .line 888
    :cond_a8
    :goto_a8
    return v6

    .line 920
    :cond_a9
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_aa
    sget-object v9, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    array-length v9, v9

    if-ge v6, v9, :cond_ca

    .line 921
    sget-object v9, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    aget-char v9, v9, v6

    if-ne p1, v9, :cond_c0

    .line 922
    sget-object v9, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    add-int/lit8 v10, v6, 0x1

    aget-char v9, v9, v10

    invoke-static {v9, v7, v8}, Landroid/icu/impl/Utility;->codePointAndLength(III)I

    move-result v9

    return v9

    .line 923
    :cond_c0
    sget-object v9, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    aget-char v9, v9, v6

    if-ge p1, v9, :cond_c7

    .line 924
    goto :goto_ca

    .line 920
    :cond_c7
    add-int/lit8 v6, v6, 0x2

    goto :goto_aa

    .line 929
    .end local v6    # "i":I
    :cond_ca
    :goto_ca
    const/16 v6, 0x63

    if-ne p1, v6, :cond_e0

    if-ge v8, p2, :cond_e0

    .line 930
    invoke-static {p0, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 931
    and-int/lit8 v6, p1, 0x1f

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v6, v7, v9}, Landroid/icu/impl/Utility;->codePointAndLength(III)I

    move-result v6

    return v6

    .line 937
    :cond_e0
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_f8

    if-ge v8, p2, :cond_f8

    .line 938
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 939
    .local v6, "c2":I
    invoke-static {v6}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 940
    add-int/lit8 v8, v8, 0x1

    .line 941
    invoke-static {p1, v6}, Landroid/icu/lang/UCharacter;->toCodePoint(II)I

    move-result p1

    .line 944
    .end local v6    # "c2":I
    :cond_f8
    invoke-static {p1, v7, v8}, Landroid/icu/impl/Utility;->codePointAndLength(III)I

    move-result v6

    return v6

    .line 831
    .end local v7    # "start":I
    .end local v8    # "offset":I
    .local p1, "offset":I
    :cond_fd
    :goto_fd
    return v6

    :sswitch_data_fe
    .sparse-switch
        0x55 -> :sswitch_3a
        0x75 -> :sswitch_36
        0x78 -> :sswitch_23
    .end sparse-switch
.end method

.method public static blacklist unescapeLeniently(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 1006
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1007
    .local v1, "c":C
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_38

    .line 1008
    if-nez v0, :cond_24

    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, p0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1011
    :cond_24
    invoke-static {p0, v2}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1012
    .local v3, "cpAndLength":I
    if-gez v3, :cond_2e

    .line 1013
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 1015
    :cond_2e
    shr-int/lit8 v4, v3, 0x8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1016
    and-int/lit16 v4, v3, 0xff

    add-int/2addr v2, v4

    .line 1018
    .end local v3    # "cpAndLength":I
    :goto_36
    move v1, v2

    goto :goto_3e

    :cond_38
    if-eqz v0, :cond_3d

    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1022
    .end local v1    # "c":C
    :cond_3d
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    :goto_3e
    goto :goto_2

    .line 1023
    .end local v1    # "i":I
    :cond_3f
    if-nez v0, :cond_46

    .line 1025
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist valueOf([I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # [I

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1843
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1844
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1843
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1846
    .end local v1    # "i":I
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
