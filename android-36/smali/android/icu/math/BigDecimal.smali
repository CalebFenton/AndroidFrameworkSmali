.class public Landroid/icu/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o MaxArg:I = 0x3b9ac9ff

.field private static final greylist-max-o MaxExp:I = 0x3b9ac9ff

.field private static final greylist-max-o MinArg:I = -0x3b9ac9ff

.field private static final greylist-max-o MinExp:I = -0x3b9ac9ff

.field public static final whitelist test-api ONE:Landroid/icu/math/BigDecimal;

.field public static final whitelist test-api ROUND_CEILING:I = 0x2

.field public static final whitelist test-api ROUND_DOWN:I = 0x1

.field public static final whitelist test-api ROUND_FLOOR:I = 0x3

.field public static final whitelist test-api ROUND_HALF_DOWN:I = 0x5

.field public static final whitelist test-api ROUND_HALF_EVEN:I = 0x6

.field public static final whitelist test-api ROUND_HALF_UP:I = 0x4

.field public static final whitelist test-api ROUND_UNNECESSARY:I = 0x7

.field public static final whitelist test-api ROUND_UP:I = 0x0

.field public static final whitelist test-api TEN:Landroid/icu/math/BigDecimal;

.field public static final whitelist test-api ZERO:Landroid/icu/math/BigDecimal;

.field private static greylist-max-o bytecar:[B = null

.field private static greylist-max-o bytedig:[B = null

.field private static final greylist-max-o isneg:B = -0x1t

.field private static final greylist-max-o ispos:B = 0x1t

.field private static final greylist-max-o iszero:B = 0x0t

.field private static final greylist-max-o plainMC:Landroid/icu/math/MathContext;

.field private static final whitelist serialVersionUID:J = 0x726d636b3a313030L


# instance fields
.field private greylist-max-o exp:I

.field private greylist-max-o form:B

.field private greylist-max-o ind:B

.field private greylist-max-o mant:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 235
    new-instance v0, Landroid/icu/math/BigDecimal;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    .line 246
    new-instance v0, Landroid/icu/math/BigDecimal;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    .line 257
    new-instance v0, Landroid/icu/math/BigDecimal;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(I)V

    sput-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    .line 327
    new-instance v0, Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/math/MathContext;-><init>(II)V

    sput-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    .line 339
    const/16 v0, 0xbe

    new-array v0, v0, [B

    sput-object v0, Landroid/icu/math/BigDecimal;->bytecar:[B

    .line 340
    invoke-static {}, Landroid/icu/math/BigDecimal;->diginit()[B

    move-result-object v0

    sput-object v0, Landroid/icu/math/BigDecimal;->bytedig:[B

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 917
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 918
    return-void
.end method

.method public constructor whitelist test-api <init>(D)V
    .registers 4
    .param p1, "num"    # D

    .line 740
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 7
    .param p1, "num"    # I

    .line 755
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 757
    const/4 v1, 0x0

    .line 759
    .local v1, "i":I
    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gt p1, v2, :cond_49

    .line 760
    const/16 v2, -0x9

    if-lt p1, v2, :cond_49

    .line 764
    if-nez p1, :cond_1c

    .line 765
    sget-object v2, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 766
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_48

    .line 767
    :cond_1c
    if-ne p1, v3, :cond_27

    .line 768
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 769
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_48

    .line 770
    :cond_27
    if-ne p1, v4, :cond_32

    .line 771
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 772
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_48

    .line 775
    :cond_32
    new-array v2, v3, [B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 776
    if-lez p1, :cond_40

    .line 777
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    .line 778
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_48

    .line 780
    :cond_40
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    neg-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 781
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 786
    :goto_48
    return-void

    .line 791
    :cond_49
    if-lez p1, :cond_4f

    .line 792
    iput-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 793
    neg-int p1, p1

    goto :goto_51

    .line 795
    :cond_4f
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 799
    :goto_51
    move v0, p1

    .line 801
    .local v0, "mun":I
    const/16 v1, 0x9

    .line 803
    :goto_54
    div-int/lit8 v0, v0, 0xa

    .line 804
    if-nez v0, :cond_74

    .line 805
    nop

    .line 809
    rsub-int/lit8 v2, v1, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 811
    rsub-int/lit8 v2, v1, 0xa

    sub-int/2addr v2, v3

    .line 813
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_62
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rem-int/lit8 v3, p1, 0xa

    int-to-byte v3, v3

    neg-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 814
    div-int/lit8 p1, p1, 0xa

    .line 815
    if-nez p1, :cond_71

    .line 816
    nop

    .line 819
    return-void

    .line 812
    :cond_71
    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    .line 802
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_54
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 13
    .param p1, "num"    # J

    .line 833
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 370
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 835
    const/4 v1, 0x0

    .line 840
    .local v1, "i":I
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    if-lez v4, :cond_12

    .line 841
    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 842
    neg-long p1, p1

    goto :goto_1c

    .line 843
    :cond_12
    cmp-long v4, p1, v2

    if-nez v4, :cond_19

    .line 844
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_1c

    .line 846
    :cond_19
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 847
    :goto_1c
    move-wide v6, p1

    .line 849
    .local v6, "mun":J
    const/16 v0, 0x12

    .line 851
    .end local v1    # "i":I
    .local v0, "i":I
    :goto_1f
    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    .line 852
    cmp-long v1, v6, v2

    if-nez v1, :cond_44

    .line 853
    nop

    .line 857
    rsub-int/lit8 v1, v0, 0x13

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 859
    rsub-int/lit8 v1, v0, 0x13

    sub-int/2addr v1, v5

    .line 861
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_30
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rem-long v4, p1, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    neg-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 862
    div-long/2addr p1, v8

    .line 863
    cmp-long v0, p1, v2

    if-nez v0, :cond_41

    .line 864
    nop

    .line 867
    return-void

    .line 860
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 850
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 910
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    .line 911
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigDecimal;)V
    .registers 3
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "bi"    # Ljava/math/BigInteger;

    .line 437
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;I)V
    .registers 6
    .param p1, "bi"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 461
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 462
    if-ltz p2, :cond_f

    .line 464
    neg-int v0, p2

    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 465
    return-void

    .line 463
    :cond_f
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([C)V
    .registers 4
    .param p1, "inchars"    # [C

    .line 483
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    .line 484
    return-void
.end method

.method public constructor whitelist test-api <init>([CII)V
    .registers 28
    .param p1, "inchars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 504
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 370
    const/4 v1, 0x0

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->form:B

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, "i":I
    const/4 v3, 0x0

    .line 512
    .local v3, "si":C
    const/4 v4, 0x0

    .line 513
    .local v4, "eneg":Z
    const/4 v5, 0x0

    .line 514
    .local v5, "k":I
    const/4 v6, 0x0

    .line 515
    .local v6, "elen":I
    const/4 v7, 0x0

    .line 516
    .local v7, "j":I
    const/4 v8, 0x0

    .line 517
    .local v8, "sj":C
    const/4 v9, 0x0

    .line 518
    .local v9, "dvalue":I
    const/4 v10, 0x0

    .line 525
    .local v10, "mag":I
    if-gtz p3, :cond_16

    .line 526
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 530
    :cond_16
    const/4 v11, 0x1

    iput-byte v11, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 531
    aget-char v12, p1, p2

    const/16 v13, 0x2b

    const/16 v14, 0x2d

    if-ne v12, v14, :cond_2e

    .line 532
    add-int/lit8 v12, p3, -0x1

    .line 533
    .end local p3    # "length":I
    .local v12, "length":I
    if-nez v12, :cond_28

    .line 534
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 535
    :cond_28
    const/4 v15, -0x1

    iput-byte v15, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 536
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "offset":I
    .local v15, "offset":I
    goto :goto_40

    .line 537
    .end local v12    # "length":I
    .end local v15    # "offset":I
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2e
    aget-char v12, p1, p2

    if-ne v12, v13, :cond_3c

    .line 538
    add-int/lit8 v12, p3, -0x1

    .line 539
    .end local p3    # "length":I
    .restart local v12    # "length":I
    if-nez v12, :cond_39

    .line 540
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 541
    :cond_39
    add-int/lit8 v15, p2, 0x1

    .end local p2    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_40

    .line 537
    .end local v12    # "length":I
    .end local v15    # "offset":I
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_3c
    move/from16 v15, p2

    move/from16 v12, p3

    .line 545
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .restart local v12    # "length":I
    .restart local v15    # "offset":I
    :goto_40
    const/16 v16, 0x0

    .line 546
    .local v16, "exotic":Z
    const/16 v17, 0x0

    .line 547
    .local v17, "hadexp":Z
    const/16 v18, 0x0

    .line 548
    .local v18, "d":I
    const/16 v19, -0x1

    .line 549
    .local v19, "dotoff":I
    const/16 v20, -0x1

    .line 551
    .local v20, "last":I
    move/from16 v21, v12

    .line 552
    .local v21, "$1":I
    move v2, v15

    .line 553
    :goto_4d
    move/from16 v22, v11

    const/16 v11, 0x2e

    move/from16 v23, v1

    const/16 v1, 0x39

    const/16 v13, 0x30

    if-lez v21, :cond_113

    .line 554
    aget-char v3, p1, v2

    .line 555
    if-lt v3, v13, :cond_65

    .line 556
    if-gt v3, v1, :cond_65

    .line 557
    move v1, v2

    .line 558
    .end local v20    # "last":I
    .local v1, "last":I
    add-int/lit8 v18, v18, 0x1

    .line 559
    move/from16 v20, v1

    goto :goto_8a

    .line 561
    .end local v1    # "last":I
    .restart local v20    # "last":I
    :cond_65
    if-ne v3, v11, :cond_71

    .line 562
    if-ltz v19, :cond_6c

    .line 563
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 564
    :cond_6c
    sub-int v1, v2, v15

    .line 565
    .end local v19    # "dotoff":I
    .local v1, "dotoff":I
    move/from16 v19, v1

    goto :goto_8a

    .line 567
    .end local v1    # "dotoff":I
    .restart local v19    # "dotoff":I
    :cond_71
    const/16 v11, 0x65

    if-eq v3, v11, :cond_95

    .line 568
    const/16 v11, 0x45

    if-eq v3, v11, :cond_95

    .line 569
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_82

    .line 570
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 572
    :cond_82
    const/4 v1, 0x1

    .line 573
    .end local v16    # "exotic":Z
    .local v1, "exotic":Z
    move v11, v2

    .line 574
    .end local v20    # "last":I
    .local v11, "last":I
    add-int/lit8 v18, v18, 0x1

    .line 575
    move/from16 v16, v1

    move/from16 v20, v11

    .line 553
    .end local v1    # "exotic":Z
    .end local v11    # "last":I
    .restart local v16    # "exotic":Z
    .restart local v20    # "last":I
    :goto_8a
    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v22

    move/from16 v1, v23

    const/16 v13, 0x2b

    goto :goto_4d

    .line 579
    :cond_95
    sub-int v11, v2, v15

    add-int/lit8 v1, v12, -0x2

    if-le v11, v1, :cond_9e

    .line 580
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 581
    :cond_9e
    const/4 v1, 0x0

    .line 582
    .end local v4    # "eneg":Z
    .local v1, "eneg":Z
    add-int/lit8 v4, v2, 0x1

    aget-char v4, p1, v4

    if-ne v4, v14, :cond_ab

    .line 583
    const/4 v1, 0x1

    .line 584
    add-int/lit8 v4, v2, 0x2

    move v5, v4

    move v4, v1

    .end local v5    # "k":I
    .local v4, "k":I
    goto :goto_bc

    .line 585
    .end local v4    # "k":I
    .restart local v5    # "k":I
    :cond_ab
    add-int/lit8 v4, v2, 0x1

    aget-char v4, p1, v4

    const/16 v11, 0x2b

    if-ne v4, v11, :cond_b8

    .line 586
    add-int/lit8 v4, v2, 0x2

    move v5, v4

    move v4, v1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    goto :goto_bc

    .line 588
    .end local v4    # "k":I
    .restart local v5    # "k":I
    :cond_b8
    add-int/lit8 v4, v2, 0x1

    move v5, v4

    move v4, v1

    .line 590
    .end local v1    # "eneg":Z
    .local v4, "eneg":Z
    :goto_bc
    sub-int v1, v5, v15

    sub-int v6, v12, v1

    .line 591
    if-nez v6, :cond_c5

    move/from16 v1, v22

    goto :goto_c7

    :cond_c5
    move/from16 v1, v23

    :goto_c7
    const/16 v11, 0x9

    if-le v6, v11, :cond_ce

    move/from16 v11, v22

    goto :goto_d0

    :cond_ce
    move/from16 v11, v23

    :goto_d0
    or-int/2addr v1, v11

    if-eqz v1, :cond_d6

    .line 592
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 594
    :cond_d6
    move v1, v6

    .line 595
    .local v1, "$2":I
    move v7, v5

    .line 596
    :goto_d8
    if-lez v1, :cond_109

    .line 597
    aget-char v8, p1, v7

    .line 598
    if-ge v8, v13, :cond_e1

    .line 599
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 600
    :cond_e1
    const/16 v11, 0x39

    if-le v8, v11, :cond_fa

    .line 601
    invoke-static {v8}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v11

    if-nez v11, :cond_ee

    .line 602
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 603
    :cond_ee
    const/16 v11, 0xa

    invoke-static {v8, v11}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v9

    .line 604
    if-gez v9, :cond_fc

    .line 605
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    goto :goto_fc

    .line 607
    :cond_fa
    add-int/lit8 v9, v8, -0x30

    .line 608
    :cond_fc
    :goto_fc
    iget v11, v0, Landroid/icu/math/BigDecimal;->exp:I

    const/16 v14, 0xa

    mul-int/2addr v11, v14

    add-int/2addr v11, v9

    iput v11, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 596
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_d8

    .line 611
    .end local v1    # "$2":I
    :cond_109
    if-eqz v4, :cond_110

    .line 612
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v1, v1

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 613
    :cond_110
    const/16 v17, 0x1

    .line 614
    nop

    .line 619
    .end local v21    # "$1":I
    :cond_113
    if-nez v18, :cond_118

    .line 620
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 621
    :cond_118
    if-ltz v19, :cond_122

    .line 622
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int v1, v1, v19

    sub-int v1, v1, v18

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 626
    :cond_122
    add-int/lit8 v1, v20, -0x1

    .line 627
    .local v1, "$3":I
    move v2, v15

    move/from16 v11, v18

    move/from16 v14, v19

    .line 628
    .end local v18    # "d":I
    .end local v19    # "dotoff":I
    .local v11, "d":I
    .local v14, "dotoff":I
    :goto_129
    if-gt v2, v1, :cond_15c

    .line 629
    aget-char v3, p1, v2

    .line 630
    if-ne v3, v13, :cond_138

    .line 631
    add-int/lit8 v15, v15, 0x1

    .line 632
    add-int/lit8 v14, v14, -0x1

    .line 633
    add-int/lit8 v11, v11, -0x1

    move/from16 v18, v13

    goto :goto_157

    .line 634
    :cond_138
    move/from16 v18, v13

    const/16 v13, 0x2e

    if-ne v3, v13, :cond_143

    .line 635
    add-int/lit8 v15, v15, 0x1

    .line 636
    add-int/lit8 v14, v14, -0x1

    goto :goto_157

    .line 637
    :cond_143
    const/16 v13, 0x39

    if-gt v3, v13, :cond_148

    .line 638
    goto :goto_15e

    .line 640
    :cond_148
    const/16 v13, 0xa

    invoke-static {v3, v13}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v19

    if-eqz v19, :cond_151

    .line 641
    goto :goto_15e

    .line 643
    :cond_151
    add-int/lit8 v15, v15, 0x1

    .line 644
    add-int/lit8 v14, v14, -0x1

    .line 645
    add-int/lit8 v11, v11, -0x1

    .line 628
    :goto_157
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v18

    goto :goto_129

    :cond_15c
    move/from16 v18, v13

    .line 651
    .end local v1    # "$3":I
    :goto_15e
    new-array v1, v11, [B

    iput-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 652
    move v1, v15

    .line 653
    .end local v7    # "j":I
    .local v1, "j":I
    if-eqz v16, :cond_198

    .line 656
    move v7, v11

    .line 657
    .local v7, "$4":I
    const/4 v2, 0x0

    .line 658
    :goto_167
    if-lez v7, :cond_197

    .line 659
    if-ne v2, v14, :cond_16d

    .line 660
    add-int/lit8 v1, v1, 0x1

    .line 661
    :cond_16d
    aget-char v8, p1, v1

    .line 662
    const/16 v13, 0x39

    if-gt v8, v13, :cond_17d

    .line 663
    iget-object v13, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 p3, v1

    .end local v1    # "j":I
    .local p3, "j":I
    add-int/lit8 v1, v8, -0x30

    int-to-byte v1, v1

    aput-byte v1, v13, v2

    goto :goto_190

    .line 665
    .end local p3    # "j":I
    .restart local v1    # "j":I
    :cond_17d
    move/from16 p3, v1

    .end local v1    # "j":I
    .restart local p3    # "j":I
    const/16 v13, 0xa

    invoke-static {v8, v13}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v1

    .line 666
    .end local v9    # "dvalue":I
    .local v1, "dvalue":I
    if-gez v1, :cond_18a

    .line 667
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 668
    :cond_18a
    iget-object v9, v0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v13, v1

    aput-byte v13, v9, v2

    move v9, v1

    .line 670
    .end local v1    # "dvalue":I
    .restart local v9    # "dvalue":I
    :goto_190
    add-int/lit8 v1, p3, 0x1

    .line 658
    .end local p3    # "j":I
    .local v1, "j":I
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_167

    .line 672
    .end local v7    # "$4":I
    :cond_197
    goto :goto_1b2

    .line 678
    :cond_198
    move v7, v11

    .line 679
    .local v7, "$5":I
    const/4 v2, 0x0

    .line 680
    :goto_19a
    if-lez v7, :cond_1b2

    .line 681
    if-ne v2, v14, :cond_1a0

    .line 682
    add-int/lit8 v1, v1, 0x1

    .line 683
    :cond_1a0
    iget-object v13, v0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-char v19, p1, v1

    move/from16 p2, v1

    .end local v1    # "j":I
    .local p2, "j":I
    add-int/lit8 v1, v19, -0x30

    int-to-byte v1, v1

    aput-byte v1, v13, v2

    .line 684
    add-int/lit8 v1, p2, 0x1

    .line 680
    .end local p2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19a

    .line 696
    .end local v7    # "$5":I
    :cond_1b2
    :goto_1b2
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v7, v7, v23

    if-nez v7, :cond_1cd

    .line 697
    move/from16 v7, v23

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 699
    iget v13, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v13, :cond_1c2

    .line 700
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 701
    :cond_1c2
    if-eqz v17, :cond_1f5

    .line 702
    sget-object v13, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v13, v13, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v13, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 703
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_1f5

    .line 708
    :cond_1cd
    move/from16 v7, v23

    if-eqz v17, :cond_1f5

    .line 709
    move/from16 v13, v22

    iput-byte v13, v0, Landroid/icu/math/BigDecimal;->form:B

    .line 711
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v13, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v13, v13

    add-int/2addr v7, v13

    add-int/lit8 v10, v7, -0x1

    .line 712
    const v7, -0x3b9ac9ff

    if-ge v10, v7, :cond_1e5

    move/from16 v7, v22

    goto :goto_1e6

    :cond_1e5
    const/4 v7, 0x0

    :goto_1e6
    const v13, 0x3b9ac9ff

    if-le v10, v13, :cond_1ec

    goto :goto_1ee

    :cond_1ec
    const/16 v22, 0x0

    :goto_1ee
    or-int v7, v7, v22

    if-eqz v7, :cond_1f5

    .line 713
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    .line 717
    :cond_1f5
    :goto_1f5
    return-void
.end method

.method private static final greylist-max-o allzero([BI)Z
    .registers 6
    .param p0, "array"    # [B
    .param p1, "start"    # I

    .line 3693
    const/4 v0, 0x0

    .line 3694
    .local v0, "i":I
    if-gez p1, :cond_4

    .line 3695
    const/4 p1, 0x0

    .line 3697
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3698
    .local v1, "$25":I
    move v0, p1

    .line 3699
    :goto_8
    if-gt v0, v1, :cond_13

    .line 3700
    aget-byte v3, p0, v0

    if-eqz v3, :cond_10

    .line 3701
    const/4 v2, 0x0

    return v2

    .line 3699
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3704
    .end local v1    # "$25":I
    :cond_13
    return v2
.end method

.method private greylist-max-o bad([C)V
    .registers 5
    .param p1, "s"    # [C

    .line 3349
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o badarg(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 3358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o byteaddsub([BI[BIIZ)[B
    .registers 23
    .param p0, "a"    # [B
    .param p1, "avlen"    # I
    .param p2, "b"    # [B
    .param p3, "bvlen"    # I
    .param p4, "m"    # I
    .param p5, "reuse"    # Z

    .line 3411
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 3412
    .local v3, "op":I
    const/4 v4, 0x0

    .line 3414
    .local v4, "dp90":I
    const/4 v5, 0x0

    .line 3417
    .local v5, "i":I
    array-length v6, v0

    .line 3418
    .local v6, "alength":I
    array-length v7, v1

    .line 3419
    .local v7, "blength":I
    add-int/lit8 v8, p1, -0x1

    .line 3420
    .local v8, "ap":I
    add-int/lit8 v9, p3, -0x1

    .line 3421
    .local v9, "bp":I
    move v10, v9

    .line 3422
    .local v10, "maxarr":I
    if-ge v10, v8, :cond_13

    .line 3423
    move v10, v8

    .line 3424
    :cond_13
    const/4 v11, 0x0

    .line 3425
    .local v11, "reb":[B
    if-eqz p5, :cond_1c

    .line 3426
    add-int/lit8 v12, v10, 0x1

    if-ne v12, v6, :cond_1c

    .line 3427
    move-object/from16 v11, p0

    .line 3428
    :cond_1c
    if-nez v11, :cond_22

    .line 3429
    add-int/lit8 v12, v10, 0x1

    new-array v11, v12, [B

    .line 3431
    :cond_22
    const/4 v12, 0x0

    .line 3432
    .local v12, "quickm":Z
    const/4 v13, 0x1

    if-ne v2, v13, :cond_28

    .line 3433
    const/4 v12, 0x1

    goto :goto_2c

    .line 3434
    :cond_28
    const/4 v14, -0x1

    if-ne v2, v14, :cond_2c

    .line 3435
    const/4 v12, 0x1

    .line 3437
    :cond_2c
    :goto_2c
    const/4 v14, 0x0

    .line 3439
    .local v14, "digit":I
    move v3, v10

    .line 3440
    :goto_2e
    const/16 v15, 0xa

    if-ltz v3, :cond_6e

    .line 3441
    if-ltz v8, :cond_3c

    .line 3442
    if-ge v8, v6, :cond_3a

    .line 3443
    aget-byte v16, v0, v8

    add-int v14, v14, v16

    .line 3444
    :cond_3a
    add-int/lit8 v8, v8, -0x1

    .line 3446
    :cond_3c
    if-ltz v9, :cond_56

    .line 3447
    if-ge v9, v7, :cond_54

    .line 3448
    if-eqz v12, :cond_4e

    .line 3449
    if-lez v2, :cond_49

    .line 3450
    aget-byte v16, v1, v9

    add-int v14, v14, v16

    goto :goto_54

    .line 3452
    :cond_49
    aget-byte v16, v1, v9

    sub-int v14, v14, v16

    goto :goto_54

    .line 3454
    :cond_4e
    aget-byte v16, v1, v9

    mul-int v16, v16, v2

    add-int v14, v14, v16

    .line 3456
    :cond_54
    :goto_54
    add-int/lit8 v9, v9, -0x1

    .line 3459
    :cond_56
    if-ge v14, v15, :cond_5f

    .line 3460
    if-ltz v14, :cond_5f

    .line 3462
    int-to-byte v15, v14

    aput-byte v15, v11, v3

    .line 3463
    const/4 v14, 0x0

    .line 3464
    goto :goto_6b

    .line 3467
    :cond_5f
    add-int/lit8 v4, v14, 0x5a

    .line 3468
    sget-object v15, Landroid/icu/math/BigDecimal;->bytedig:[B

    aget-byte v15, v15, v4

    aput-byte v15, v11, v3

    .line 3469
    sget-object v15, Landroid/icu/math/BigDecimal;->bytecar:[B

    aget-byte v14, v15, v4

    .line 3440
    :goto_6b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    .line 3473
    :cond_6e
    if-nez v14, :cond_71

    .line 3474
    return-object v11

    .line 3479
    :cond_71
    const/16 v16, 0x0

    .line 3480
    .local v16, "newarr":[B
    if-eqz p5, :cond_7c

    .line 3481
    add-int/lit8 v13, v10, 0x2

    array-length v15, v0

    if-ne v13, v15, :cond_7c

    .line 3482
    move-object/from16 v16, p0

    .line 3483
    :cond_7c
    if-nez v16, :cond_83

    .line 3484
    add-int/lit8 v13, v10, 0x2

    new-array v13, v13, [B

    .end local v16    # "newarr":[B
    .local v13, "newarr":[B
    goto :goto_85

    .line 3483
    .end local v13    # "newarr":[B
    .restart local v16    # "newarr":[B
    :cond_83
    move-object/from16 v13, v16

    .line 3485
    .end local v16    # "newarr":[B
    .restart local v13    # "newarr":[B
    :goto_85
    int-to-byte v15, v14

    const/4 v0, 0x0

    aput-byte v15, v13, v0

    .line 3487
    const/16 v15, 0xa

    if-ge v10, v15, :cond_9e

    .line 3488
    add-int/lit8 v0, v10, 0x1

    .line 3489
    .local v0, "$24":I
    const/4 v5, 0x0

    .line 3490
    :goto_90
    if-lez v0, :cond_9d

    .line 3491
    add-int/lit8 v15, v5, 0x1

    aget-byte v16, v11, v5

    aput-byte v16, v13, v15

    .line 3490
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 3493
    .end local v0    # "$24":I
    :cond_9d
    goto :goto_a4

    .line 3495
    :cond_9e
    add-int/lit8 v15, v10, 0x1

    const/4 v1, 0x1

    invoke-static {v11, v0, v13, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3496
    :goto_a4
    return-object v13
.end method

.method private greylist-max-o checkdigits(Landroid/icu/math/BigDecimal;I)V
    .registers 6
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "dig"    # I

    .line 3548
    if-nez p2, :cond_3

    .line 3549
    return-void

    .line 3551
    :cond_3
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    const-string v1, "Too many digits: "

    if-le v0, p2, :cond_2e

    .line 3552
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2e

    .line 3553
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3554
    :cond_2e
    :goto_2e
    if-nez p1, :cond_31

    .line 3555
    return-void

    .line 3556
    :cond_31
    iget-object v0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, p2, :cond_5a

    .line 3557
    iget-object v0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_5a

    .line 3558
    :cond_3f
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3559
    :cond_5a
    :goto_5a
    return-void
.end method

.method private static final greylist-max-o clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p0, "dec"    # Landroid/icu/math/BigDecimal;

    .line 3534
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 3535
    .local v0, "copy":Landroid/icu/math/BigDecimal;
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 3536
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3537
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->form:B

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->form:B

    .line 3538
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3539
    return-object v0
.end method

.method private static final greylist-max-o diginit()[B
    .registers 5

    .line 3506
    const/4 v0, 0x0

    .line 3507
    .local v0, "op":I
    const/4 v1, 0x0

    .line 3508
    .local v1, "digit":I
    const/16 v2, 0xbe

    new-array v2, v2, [B

    .line 3510
    .local v2, "work":[B
    const/4 v0, 0x0

    .line 3511
    :goto_7
    const/16 v3, 0xbd

    if-gt v0, v3, :cond_2f

    .line 3512
    add-int/lit8 v1, v0, -0x5a

    .line 3513
    if-ltz v1, :cond_1c

    .line 3514
    rem-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 3515
    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v4, v1, 0xa

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 3516
    goto :goto_2c

    .line 3519
    :cond_1c
    add-int/lit8 v1, v1, 0x64

    .line 3520
    rem-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 3521
    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, -0xa

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 3511
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3524
    :cond_2f
    return-object v2
.end method

.method private greylist-max-o dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;
    .registers 43
    .param p1, "code"    # C
    .param p2, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p3, "set"    # Landroid/icu/math/MathContext;
    .param p4, "scale"    # I

    .line 3061
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    .line 3062
    .local v4, "thisdigit":I
    const/4 v5, 0x0

    .line 3063
    .local v5, "i":I
    const/4 v6, 0x0

    .line 3064
    .local v6, "v2":B
    const/4 v7, 0x0

    .line 3065
    .local v7, "ba":I
    const/4 v8, 0x0

    .line 3066
    .local v8, "mult":I
    const/4 v9, 0x0

    .line 3067
    .local v9, "start":I
    const/4 v10, 0x0

    .line 3068
    .local v10, "padding":I
    const/4 v11, 0x0

    .line 3069
    .local v11, "d":I
    const/4 v12, 0x0

    .line 3070
    .local v12, "newvar1":[B
    const/4 v13, 0x0

    .line 3071
    .local v13, "lasthave":B
    const/4 v14, 0x0

    .line 3072
    .local v14, "actdig":I
    const/4 v15, 0x0

    .line 3074
    .local v15, "newmant":[B
    move/from16 v16, v4

    .end local v4    # "thisdigit":I
    .local v16, "thisdigit":I
    iget-boolean v4, v2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v4, :cond_24

    .line 3075
    iget v4, v2, Landroid/icu/math/MathContext;->digits:I

    move/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "i":I
    .local v17, "i":I
    invoke-direct {v5, v1, v4}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    goto :goto_28

    .line 3074
    .end local v17    # "i":I
    .restart local v5    # "i":I
    :cond_24
    move/from16 v17, v5

    move-object/from16 v5, p0

    .line 3076
    .end local v5    # "i":I
    .restart local v17    # "i":I
    :goto_28
    move-object/from16 v4, p0

    .line 3079
    .local v4, "lhs":Landroid/icu/math/BigDecimal;
    iget-byte v5, v1, Landroid/icu/math/BigDecimal;->ind:B

    if-eqz v5, :cond_3a2

    .line 3081
    iget-byte v5, v4, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v18, v5

    if-nez v18, :cond_44

    .line 3082
    iget v5, v2, Landroid/icu/math/MathContext;->form:I

    if-eqz v5, :cond_3b

    .line 3083
    sget-object v5, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v5

    .line 3084
    :cond_3b
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3f

    .line 3085
    return-object v4

    .line 3086
    :cond_3f
    invoke-virtual {v4, v3}, Landroid/icu/math/BigDecimal;->setScale(I)Landroid/icu/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 3090
    :cond_44
    iget v5, v2, Landroid/icu/math/MathContext;->digits:I

    .line 3091
    .local v5, "reqdig":I
    move/from16 v19, v6

    .end local v6    # "v2":B
    .local v19, "v2":B
    if-lez v5, :cond_70

    .line 3092
    const/16 v20, 0x1

    iget-object v6, v4, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-le v6, v5, :cond_59

    .line 3093
    invoke-static {v4}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    invoke-direct {v6, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    .line 3094
    :cond_59
    iget-object v6, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-le v6, v5, :cond_6b

    .line 3095
    invoke-static {v1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    invoke-direct {v6, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    move v6, v3

    move v3, v5

    move-object v5, v1

    move-object v1, v4

    .end local p2    # "rhs":Landroid/icu/math/BigDecimal;
    .local v1, "rhs":Landroid/icu/math/BigDecimal;
    goto :goto_b4

    .line 3094
    .end local v1    # "rhs":Landroid/icu/math/BigDecimal;
    .restart local p2    # "rhs":Landroid/icu/math/BigDecimal;
    :cond_6b
    move v6, v3

    move v3, v5

    move-object v5, v1

    move-object v1, v4

    goto :goto_b4

    .line 3097
    :cond_70
    const/16 v20, 0x1

    const/4 v6, -0x1

    if-ne v3, v6, :cond_79

    .line 3098
    invoke-virtual {v4}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v3

    .line 3100
    .end local p4    # "scale":I
    .local v3, "scale":I
    :cond_79
    iget-object v6, v4, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v6

    .line 3102
    iget v6, v4, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v6, v6

    if-eq v3, v6, :cond_8a

    .line 3103
    add-int v6, v5, v3

    move/from16 v18, v3

    .end local v3    # "scale":I
    .local v18, "scale":I
    iget v3, v4, Landroid/icu/math/BigDecimal;->exp:I

    add-int v5, v6, v3

    goto :goto_8c

    .line 3102
    .end local v18    # "scale":I
    .restart local v3    # "scale":I
    :cond_8a
    move/from16 v18, v3

    .line 3104
    .end local v3    # "scale":I
    .restart local v18    # "scale":I
    :goto_8c
    iget-object v3, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v5, v3

    iget v6, v1, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v3, v6

    .line 3105
    .end local v5    # "reqdig":I
    .local v3, "reqdig":I
    iget-object v5, v4, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    if-ge v3, v5, :cond_a0

    .line 3106
    iget-object v5, v4, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v5

    move v5, v3

    goto :goto_a1

    .line 3105
    :cond_a0
    move v5, v3

    .line 3107
    .end local v3    # "reqdig":I
    .restart local v5    # "reqdig":I
    :goto_a1
    iget-object v3, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    if-ge v5, v3, :cond_af

    .line 3108
    iget-object v3, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v3

    move v3, v5

    move/from16 v6, v18

    move-object v5, v1

    move-object v1, v4

    goto :goto_b4

    .line 3107
    :cond_af
    move v3, v5

    move/from16 v6, v18

    move-object v5, v1

    move-object v1, v4

    .line 3112
    .end local v4    # "lhs":Landroid/icu/math/BigDecimal;
    .end local v18    # "scale":I
    .end local p2    # "rhs":Landroid/icu/math/BigDecimal;
    .local v1, "lhs":Landroid/icu/math/BigDecimal;
    .restart local v3    # "reqdig":I
    .local v5, "rhs":Landroid/icu/math/BigDecimal;
    .local v6, "scale":I
    :goto_b4
    iget v4, v1, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v18, v4

    iget v4, v5, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v4, v18, v4

    move/from16 p2, v4

    iget-object v4, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    add-int v4, p2, v4

    move/from16 p2, v4

    iget-object v4, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    sub-int v4, p2, v4

    .line 3114
    .local v4, "newexp":I
    move/from16 v18, v7

    .end local v7    # "ba":I
    .local v18, "ba":I
    if-gez v4, :cond_e8

    .line 3115
    const/16 v7, 0x44

    if-eq v0, v7, :cond_e5

    .line 3116
    const/16 v7, 0x49

    if-ne v0, v7, :cond_d9

    .line 3117
    sget-object v7, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v7

    .line 3119
    :cond_d9
    invoke-static {v1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    move/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "mult":I
    .local v24, "mult":I
    invoke-direct {v7, v2, v8}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    .line 3115
    .end local v24    # "mult":I
    .restart local v8    # "mult":I
    :cond_e5
    move/from16 v24, v8

    .end local v8    # "mult":I
    .restart local v24    # "mult":I
    goto :goto_ea

    .line 3114
    .end local v24    # "mult":I
    .restart local v8    # "mult":I
    :cond_e8
    move/from16 v24, v8

    .line 3123
    .end local v8    # "mult":I
    .restart local v24    # "mult":I
    :goto_ea
    new-instance v7, Landroid/icu/math/BigDecimal;

    invoke-direct {v7}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 3124
    .local v7, "res":Landroid/icu/math/BigDecimal;
    iget-byte v8, v1, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 p2, v8

    iget-byte v8, v5, Landroid/icu/math/BigDecimal;->ind:B

    mul-int v8, v8, p2

    int-to-byte v8, v8

    iput-byte v8, v7, Landroid/icu/math/BigDecimal;->ind:B

    .line 3125
    iput v4, v7, Landroid/icu/math/BigDecimal;->exp:I

    .line 3126
    add-int/lit8 v8, v3, 0x1

    new-array v8, v8, [B

    iput-object v8, v7, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3130
    add-int v8, v3, v3

    add-int/lit8 v8, v8, 0x1

    .line 3131
    .local v8, "newlen":I
    move/from16 p2, v4

    .end local v4    # "newexp":I
    .local p2, "newexp":I
    iget-object v4, v1, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v4, v8}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v4

    .line 3132
    .local v4, "var1":[B
    move/from16 v25, v8

    .line 3134
    .local v25, "var1len":I
    move-object/from16 p4, v4

    .end local v4    # "var1":[B
    .local p4, "var1":[B
    iget-object v4, v5, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3135
    .local v4, "var2":[B
    move/from16 v26, v8

    .line 3138
    .local v26, "var2len":I
    const/16 v23, 0x0

    aget-byte v27, v4, v23

    mul-int/lit8 v27, v27, 0xa

    add-int/lit8 v27, v27, 0x1

    .line 3139
    .local v27, "b2b":I
    move/from16 v32, v8

    .end local v8    # "newlen":I
    .local v32, "newlen":I
    array-length v8, v4

    move/from16 v28, v9

    move/from16 v9, v20

    .end local v9    # "start":I
    .local v28, "start":I
    if-le v8, v9, :cond_12e

    .line 3140
    aget-byte v8, v4, v9

    add-int v27, v27, v8

    move/from16 v8, v27

    goto :goto_130

    .line 3139
    :cond_12e
    move/from16 v8, v27

    .line 3143
    .end local v27    # "b2b":I
    .local v8, "b2b":I
    :goto_130
    const/4 v9, 0x0

    move/from16 v33, v8

    move/from16 v8, v26

    move/from16 v26, v25

    move/from16 v25, v9

    move-object/from16 v9, p4

    .line 3146
    .end local p4    # "var1":[B
    .local v8, "var2len":I
    .local v9, "var1":[B
    .local v25, "have":I
    .local v26, "var1len":I
    .local v33, "b2b":I
    :goto_13b
    const/16 v16, 0x0

    move/from16 v34, v10

    move/from16 v35, v11

    move/from16 v10, v16

    move/from16 v11, v26

    move/from16 v16, v28

    .line 3150
    .end local v26    # "var1len":I
    .end local v28    # "start":I
    .local v10, "thisdigit":I
    .local v11, "var1len":I
    .local v16, "start":I
    .local v34, "padding":I
    .local v35, "d":I
    :goto_147
    if-ge v11, v8, :cond_150

    .line 3151
    move-object/from16 v27, v4

    move/from16 v29, v8

    move-object/from16 v36, v12

    goto :goto_16f

    .line 3152
    :cond_150
    if-ne v11, v8, :cond_32a

    .line 3156
    move/from16 v26, v11

    .line 3157
    .local v26, "$22":I
    const/16 v17, 0x0

    move/from16 v29, v8

    move/from16 v8, v17

    .line 3158
    .end local v17    # "i":I
    .local v8, "i":I
    .local v29, "var2len":I
    :goto_15a
    if-lez v26, :cond_1eb

    .line 3160
    move-object/from16 v36, v12

    .end local v12    # "newvar1":[B
    .local v36, "newvar1":[B
    array-length v12, v4

    if-ge v8, v12, :cond_164

    .line 3161
    aget-byte v12, v4, v8

    .end local v19    # "v2":B
    .local v12, "v2":B
    goto :goto_165

    .line 3163
    .end local v12    # "v2":B
    .restart local v19    # "v2":B
    :cond_164
    const/4 v12, 0x0

    .line 3164
    .end local v19    # "v2":B
    .restart local v12    # "v2":B
    :goto_165
    move-object/from16 v27, v4

    .end local v4    # "var2":[B
    .local v27, "var2":[B
    aget-byte v4, v9, v8

    if-ge v4, v12, :cond_1c5

    .line 3165
    move/from16 v17, v8

    move/from16 v19, v12

    .line 3222
    .end local v8    # "i":I
    .end local v12    # "v2":B
    .end local v26    # "$22":I
    .restart local v17    # "i":I
    .restart local v19    # "v2":B
    :goto_16f
    if-eqz v25, :cond_173

    const/4 v4, 0x1

    goto :goto_174

    :cond_173
    const/4 v4, 0x0

    :goto_174
    if-eqz v10, :cond_178

    const/4 v8, 0x1

    goto :goto_179

    :cond_178
    const/4 v8, 0x0

    :goto_179
    or-int/2addr v4, v8

    if-eqz v4, :cond_195

    .line 3223
    iget-object v4, v7, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v8, v10

    aput-byte v8, v4, v25

    .line 3224
    add-int/lit8 v4, v25, 0x1

    .line 3225
    .end local v25    # "have":I
    .local v4, "have":I
    add-int/lit8 v8, v3, 0x1

    if-ne v4, v8, :cond_188

    .line 3226
    goto :goto_18f

    .line 3227
    :cond_188
    const/16 v23, 0x0

    aget-byte v8, v9, v23

    if-nez v8, :cond_193

    .line 3228
    nop

    .line 3248
    :goto_18f
    move/from16 v8, v17

    goto/16 :goto_1ff

    .line 3227
    :cond_193
    move/from16 v25, v4

    .line 3231
    .end local v4    # "have":I
    .restart local v25    # "have":I
    :cond_195
    if-ltz v6, :cond_19d

    .line 3232
    iget v4, v7, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v4, v4

    if-le v4, v6, :cond_19d

    .line 3233
    goto :goto_1a6

    .line 3235
    :cond_19d
    const/16 v4, 0x44

    if-eq v0, v4, :cond_1ab

    .line 3236
    iget v8, v7, Landroid/icu/math/BigDecimal;->exp:I

    if-gtz v8, :cond_1ab

    .line 3237
    nop

    .line 3248
    :goto_1a6
    move/from16 v8, v17

    move/from16 v4, v25

    goto :goto_1ff

    .line 3238
    :cond_1ab
    iget v8, v7, Landroid/icu/math/BigDecimal;->exp:I

    const/16 v20, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Landroid/icu/math/BigDecimal;->exp:I

    .line 3242
    add-int/lit8 v8, v29, -0x1

    move/from16 v26, v11

    move/from16 v28, v16

    move-object/from16 v4, v27

    move/from16 v11, v35

    move-object/from16 v12, v36

    move/from16 v16, v10

    move/from16 v10, v34

    .end local v29    # "var2len":I
    .local v8, "var2len":I
    goto/16 :goto_13b

    .line 3166
    .end local v17    # "i":I
    .end local v19    # "v2":B
    .local v8, "i":I
    .restart local v12    # "v2":B
    .restart local v26    # "$22":I
    .restart local v29    # "var2len":I
    :cond_1c5
    const/16 v4, 0x44

    aget-byte v4, v9, v8

    if-le v4, v12, :cond_1df

    .line 3167
    nop

    .line 3184
    .end local v26    # "$22":I
    const/16 v23, 0x0

    aget-byte v4, v9, v23

    move-object/from16 v37, v1

    move/from16 v21, v3

    move/from16 v18, v4

    move/from16 v17, v8

    move/from16 v19, v12

    const/4 v0, 0x1

    const/16 v12, 0x49

    .end local v18    # "ba":I
    .local v4, "ba":I
    goto/16 :goto_346

    .line 3158
    .end local v4    # "ba":I
    .restart local v18    # "ba":I
    .restart local v26    # "$22":I
    :cond_1df
    add-int/lit8 v26, v26, -0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v12

    move-object/from16 v4, v27

    move-object/from16 v12, v36

    goto/16 :goto_15a

    .end local v27    # "var2":[B
    .end local v36    # "newvar1":[B
    .local v4, "var2":[B
    .local v12, "newvar1":[B
    .restart local v19    # "v2":B
    :cond_1eb
    move-object/from16 v27, v4

    move-object/from16 v36, v12

    .line 3175
    .end local v4    # "var2":[B
    .end local v12    # "newvar1":[B
    .end local v26    # "$22":I
    .restart local v27    # "var2":[B
    .restart local v36    # "newvar1":[B
    add-int/lit8 v10, v10, 0x1

    .line 3176
    iget-object v4, v7, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v12, v10

    aput-byte v12, v4, v25

    .line 3177
    const/16 v20, 0x1

    add-int/lit8 v4, v25, 0x1

    .line 3178
    .end local v25    # "have":I
    .local v4, "have":I
    const/16 v23, 0x0

    aput-byte v23, v9, v23

    .line 3180
    nop

    .line 3248
    :goto_1ff
    if-nez v4, :cond_202

    .line 3249
    const/4 v4, 0x1

    .line 3251
    :cond_202
    const/16 v12, 0x49

    if-ne v0, v12, :cond_208

    const/4 v12, 0x1

    goto :goto_209

    :cond_208
    const/4 v12, 0x0

    :goto_209
    move/from16 p4, v8

    .end local v8    # "i":I
    .local p4, "i":I
    const/16 v8, 0x52

    if-ne v0, v8, :cond_212

    const/16 v17, 0x1

    goto :goto_214

    :cond_212
    const/16 v17, 0x0

    :goto_214
    or-int v12, v12, v17

    if-eqz v12, :cond_2af

    .line 3252
    iget v12, v7, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v12, v4

    if-gt v12, v3, :cond_2a5

    .line 3255
    if-ne v0, v8, :cond_29f

    .line 3258
    iget-object v8, v7, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v12, 0x0

    aget-byte v8, v8, v12

    if-nez v8, :cond_22f

    .line 3259
    invoke-static {v1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v8

    invoke-direct {v8, v2, v12}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v8

    return-object v8

    .line 3260
    :cond_22f
    aget-byte v8, v9, v12

    if-nez v8, :cond_236

    .line 3261
    sget-object v8, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v8

    .line 3262
    :cond_236
    iget-byte v8, v1, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v8, v7, Landroid/icu/math/BigDecimal;->ind:B

    .line 3267
    add-int v8, v3, v3

    const/16 v20, 0x1

    add-int/lit8 v8, v8, 0x1

    iget-object v12, v1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v12, v12

    sub-int/2addr v8, v12

    .line 3268
    .end local v34    # "padding":I
    .local v8, "padding":I
    iget v12, v7, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v12, v8

    iget v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v12, v0

    iput v12, v7, Landroid/icu/math/BigDecimal;->exp:I

    .line 3273
    move v0, v11

    .line 3275
    .end local v35    # "d":I
    .local v0, "d":I
    add-int/lit8 v12, v0, -0x1

    .line 3276
    .end local p4    # "i":I
    .local v12, "i":I
    :goto_24f
    move/from16 v21, v3

    const/4 v3, 0x1

    .end local v3    # "reqdig":I
    .local v21, "reqdig":I
    if-lt v12, v3, :cond_286

    .line 3277
    iget v3, v7, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v17, v8

    .end local v8    # "padding":I
    .local v17, "padding":I
    iget v8, v1, Landroid/icu/math/BigDecimal;->exp:I

    if-ge v3, v8, :cond_25e

    const/4 v3, 0x1

    goto :goto_25f

    :cond_25e
    const/4 v3, 0x0

    :goto_25f
    iget v8, v7, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v37, v1

    .end local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .local v37, "lhs":Landroid/icu/math/BigDecimal;
    iget v1, v5, Landroid/icu/math/BigDecimal;->exp:I

    if-ge v8, v1, :cond_269

    const/4 v1, 0x1

    goto :goto_26a

    :cond_269
    const/4 v1, 0x0

    :goto_26a
    and-int/2addr v1, v3

    if-nez v1, :cond_26e

    .line 3278
    goto :goto_28a

    .line 3279
    :cond_26e
    aget-byte v1, v9, v12

    if-eqz v1, :cond_273

    .line 3280
    goto :goto_28a

    .line 3281
    :cond_273
    add-int/lit8 v0, v0, -0x1

    .line 3282
    iget v1, v7, Landroid/icu/math/BigDecimal;->exp:I

    const/16 v20, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Landroid/icu/math/BigDecimal;->exp:I

    .line 3276
    add-int/lit8 v12, v12, -0x1

    move/from16 v8, v17

    move/from16 v3, v21

    move-object/from16 v1, v37

    goto :goto_24f

    .end local v17    # "padding":I
    .end local v37    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v8    # "padding":I
    :cond_286
    move-object/from16 v37, v1

    move/from16 v17, v8

    .line 3285
    .end local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .end local v8    # "padding":I
    .restart local v17    # "padding":I
    .restart local v37    # "lhs":Landroid/icu/math/BigDecimal;
    :goto_28a
    array-length v1, v9

    if-ge v0, v1, :cond_295

    .line 3286
    new-array v1, v0, [B

    .line 3287
    .end local v36    # "newvar1":[B
    .local v1, "newvar1":[B
    const/4 v8, 0x0

    invoke-static {v9, v8, v1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3288
    move-object v9, v1

    goto :goto_298

    .line 3285
    .end local v1    # "newvar1":[B
    .restart local v36    # "newvar1":[B
    :cond_295
    const/4 v8, 0x0

    move-object/from16 v1, v36

    .line 3290
    .end local v36    # "newvar1":[B
    .restart local v1    # "newvar1":[B
    :goto_298
    iput-object v9, v7, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3291
    invoke-direct {v7, v2, v8}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 3255
    .end local v0    # "d":I
    .end local v12    # "i":I
    .end local v17    # "padding":I
    .end local v21    # "reqdig":I
    .end local v37    # "lhs":Landroid/icu/math/BigDecimal;
    .local v1, "lhs":Landroid/icu/math/BigDecimal;
    .restart local v3    # "reqdig":I
    .restart local v34    # "padding":I
    .restart local v35    # "d":I
    .restart local v36    # "newvar1":[B
    .restart local p4    # "i":I
    :cond_29f
    move-object/from16 v37, v1

    move/from16 v21, v3

    const/4 v8, 0x0

    .end local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .end local v3    # "reqdig":I
    .restart local v21    # "reqdig":I
    .restart local v37    # "lhs":Landroid/icu/math/BigDecimal;
    goto :goto_2cb

    .line 3253
    .end local v21    # "reqdig":I
    .end local v37    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v3    # "reqdig":I
    :cond_2a5
    move-object/from16 v37, v1

    .end local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v37    # "lhs":Landroid/icu/math/BigDecimal;
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3301
    .end local v37    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v1    # "lhs":Landroid/icu/math/BigDecimal;
    :cond_2af
    move-object/from16 v37, v1

    move/from16 v21, v3

    const/4 v8, 0x0

    .end local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .end local v3    # "reqdig":I
    .restart local v21    # "reqdig":I
    .restart local v37    # "lhs":Landroid/icu/math/BigDecimal;
    aget-byte v0, v9, v8

    if-eqz v0, :cond_2cb

    .line 3302
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v1, v4, -0x1

    aget-byte v13, v0, v1

    .line 3303
    rem-int/lit8 v0, v13, 0x5

    if-nez v0, :cond_2cb

    .line 3304
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v3, v13, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 3310
    :cond_2cb
    :goto_2cb
    if-ltz v6, :cond_306

    .line 3313
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-eq v4, v0, :cond_2db

    .line 3315
    iget v0, v7, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v1, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    sub-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/icu/math/BigDecimal;->exp:I

    .line 3317
    :cond_2db
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, v7, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v1, v1

    sub-int/2addr v1, v6

    sub-int/2addr v0, v1

    .line 3318
    .end local v14    # "actdig":I
    .local v0, "actdig":I
    iget v1, v2, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {v7, v0, v1}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    .line 3321
    iget v1, v7, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v3, v6

    if-eq v1, v3, :cond_300

    .line 3322
    iget-object v1, v7, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v3, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    const/4 v8, 0x1

    add-int/2addr v3, v8

    invoke-static {v1, v3}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v1

    iput-object v1, v7, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3323
    iget v1, v7, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v1, v8

    iput v1, v7, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_301

    .line 3321
    :cond_300
    const/4 v8, 0x1

    .line 3325
    :goto_301
    invoke-direct {v7, v2, v8}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 3330
    .end local v0    # "actdig":I
    .restart local v14    # "actdig":I
    :cond_306
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-ne v4, v0, :cond_311

    .line 3331
    invoke-direct {v7, v2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    .line 3332
    move/from16 v4, v21

    goto :goto_324

    .line 3334
    :cond_311
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v8, 0x0

    aget-byte v0, v0, v8

    if-nez v0, :cond_31b

    .line 3335
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v0

    .line 3339
    :cond_31b
    new-array v15, v4, [B

    .line 3340
    iget-object v0, v7, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, v8, v15, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3341
    iput-object v15, v7, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3343
    :goto_324
    const/4 v0, 0x1

    invoke-direct {v7, v2, v0}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3188
    .end local v21    # "reqdig":I
    .end local v27    # "var2":[B
    .end local v29    # "var2len":I
    .end local v36    # "newvar1":[B
    .end local v37    # "lhs":Landroid/icu/math/BigDecimal;
    .end local p4    # "i":I
    .restart local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .restart local v3    # "reqdig":I
    .local v4, "var2":[B
    .local v8, "var2len":I
    .local v12, "newvar1":[B
    .local v17, "i":I
    .restart local v25    # "have":I
    :cond_32a
    move-object/from16 v37, v1

    move/from16 v21, v3

    move-object/from16 v27, v4

    move/from16 v29, v8

    move-object/from16 v36, v12

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/16 v12, 0x49

    .end local v1    # "lhs":Landroid/icu/math/BigDecimal;
    .end local v3    # "reqdig":I
    .end local v4    # "var2":[B
    .end local v8    # "var2len":I
    .end local v12    # "newvar1":[B
    .restart local v21    # "reqdig":I
    .restart local v27    # "var2":[B
    .restart local v29    # "var2len":I
    .restart local v36    # "newvar1":[B
    .restart local v37    # "lhs":Landroid/icu/math/BigDecimal;
    aget-byte v1, v9, v8

    mul-int/lit8 v1, v1, 0xa

    .line 3189
    .end local v18    # "ba":I
    .local v1, "ba":I
    if-le v11, v0, :cond_344

    .line 3190
    aget-byte v3, v9, v0

    add-int/2addr v1, v3

    move/from16 v18, v1

    goto :goto_346

    .line 3189
    :cond_344
    move/from16 v18, v1

    .line 3193
    .end local v1    # "ba":I
    .restart local v18    # "ba":I
    :goto_346
    mul-int/lit8 v1, v18, 0xa

    div-int v1, v1, v33

    .line 3194
    .end local v24    # "mult":I
    .local v1, "mult":I
    if-nez v1, :cond_34d

    .line 3195
    const/4 v1, 0x1

    .line 3196
    :cond_34d
    add-int/2addr v10, v1

    .line 3198
    neg-int v3, v1

    const/16 v31, 0x1

    move/from16 v30, v3

    move-object/from16 v26, v9

    move-object/from16 v28, v27

    move/from16 v27, v11

    .end local v9    # "var1":[B
    .end local v11    # "var1len":I
    .local v26, "var1":[B
    .local v27, "var1len":I
    .local v28, "var2":[B
    invoke-static/range {v26 .. v31}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v9

    .line 3199
    move-object/from16 v8, v28

    .end local v26    # "var1":[B
    .end local v28    # "var2":[B
    .local v8, "var2":[B
    .restart local v9    # "var1":[B
    const/16 v23, 0x0

    aget-byte v3, v9, v23

    if-eqz v3, :cond_376

    .line 3200
    move/from16 v0, p1

    move/from16 v24, v1

    move-object v4, v8

    move/from16 v3, v21

    move/from16 v11, v27

    move/from16 v8, v29

    move-object/from16 v12, v36

    move-object/from16 v1, v37

    goto/16 :goto_147

    .line 3206
    :cond_376
    add-int/lit8 v11, v27, -0x2

    .line 3207
    .local v11, "$23":I
    const/4 v3, 0x0

    move v4, v3

    move/from16 v3, v27

    .line 3208
    .end local v16    # "start":I
    .end local v27    # "var1len":I
    .local v3, "var1len":I
    .local v4, "start":I
    :goto_37c
    if-gt v4, v11, :cond_388

    .line 3209
    aget-byte v16, v9, v4

    if-eqz v16, :cond_383

    .line 3210
    goto :goto_388

    .line 3211
    :cond_383
    add-int/lit8 v3, v3, -0x1

    .line 3208
    add-int/lit8 v4, v4, 0x1

    goto :goto_37c

    .line 3214
    .end local v11    # "$23":I
    :cond_388
    :goto_388
    if-nez v4, :cond_38c

    .line 3215
    const/4 v11, 0x0

    goto :goto_390

    .line 3217
    :cond_38c
    const/4 v11, 0x0

    invoke-static {v9, v4, v9, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3150
    :goto_390
    move/from16 v0, p1

    move/from16 v24, v1

    move v11, v3

    move/from16 v16, v4

    move-object v4, v8

    move/from16 v3, v21

    move/from16 v8, v29

    move-object/from16 v12, v36

    move-object/from16 v1, v37

    goto/16 :goto_147

    .line 3080
    .end local v1    # "mult":I
    .end local v3    # "var1len":I
    .end local v5    # "rhs":Landroid/icu/math/BigDecimal;
    .end local v18    # "ba":I
    .end local v19    # "v2":B
    .end local v21    # "reqdig":I
    .end local v25    # "have":I
    .end local v29    # "var2len":I
    .end local v32    # "newlen":I
    .end local v33    # "b2b":I
    .end local v34    # "padding":I
    .end local v35    # "d":I
    .end local v36    # "newvar1":[B
    .end local v37    # "lhs":Landroid/icu/math/BigDecimal;
    .local v4, "lhs":Landroid/icu/math/BigDecimal;
    .local v6, "v2":B
    .local v7, "ba":I
    .local v8, "mult":I
    .local v9, "start":I
    .local v10, "padding":I
    .local v11, "d":I
    .restart local v12    # "newvar1":[B
    .local v16, "thisdigit":I
    .local p2, "rhs":Landroid/icu/math/BigDecimal;
    .local p4, "scale":I
    :cond_3a2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v5, "Divide by 0"

    invoke-direct {v0, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o extend([BI)[B
    .registers 5
    .param p0, "inarr"    # [B
    .param p1, "newlen"    # I

    .line 3371
    array-length v0, p0

    if-ne v0, p1, :cond_4

    .line 3372
    return-object p0

    .line 3373
    :cond_4
    new-array v0, p1, [B

    .line 3374
    .local v0, "newarr":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3376
    return-object v0
.end method

.method private greylist-max-o finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;
    .registers 15
    .param p1, "set"    # Landroid/icu/math/MathContext;
    .param p2, "strip"    # Z

    .line 3717
    const/4 v0, 0x0

    .line 3718
    .local v0, "d":I
    const/4 v1, 0x0

    .line 3719
    .local v1, "i":I
    const/4 v2, 0x0

    .line 3720
    .local v2, "newmant":[B
    const/4 v3, 0x0

    .line 3721
    .local v3, "mag":I
    const/4 v4, 0x0

    .line 3723
    .local v4, "sig":I
    iget v5, p1, Landroid/icu/math/MathContext;->digits:I

    if-eqz v5, :cond_13

    .line 3724
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    iget v6, p1, Landroid/icu/math/MathContext;->digits:I

    if-le v5, v6, :cond_13

    .line 3725
    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    .line 3730
    :cond_13
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_41

    .line 3731
    iget v7, p1, Landroid/icu/math/MathContext;->form:I

    if-eqz v7, :cond_41

    .line 3732
    iget-object v7, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v7

    .line 3735
    add-int/lit8 v1, v0, -0x1

    .line 3736
    :goto_20
    if-lt v1, v5, :cond_33

    .line 3737
    iget-object v7, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v7, v7, v1

    if-eqz v7, :cond_29

    .line 3738
    goto :goto_33

    .line 3739
    :cond_29
    add-int/lit8 v0, v0, -0x1

    .line 3740
    iget v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v7, v5

    iput v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3736
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 3743
    :cond_33
    :goto_33
    iget-object v7, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    if-ge v0, v7, :cond_41

    .line 3744
    new-array v2, v0, [B

    .line 3745
    iget-object v7, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v7, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3746
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3750
    :cond_41
    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 3754
    iget-object v7, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    .line 3755
    .local v7, "$26":I
    const/4 v1, 0x0

    .line 3756
    :goto_47
    const-string v8, "Exponent Overflow: "

    const v9, -0x3b9ac9ff

    if-lez v7, :cond_c9

    .line 3757
    iget-object v10, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v10, v10, v1

    if-eqz v10, :cond_c3

    .line 3760
    if-lez v1, :cond_67

    .line 3762
    iget-object v10, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v10, v10

    sub-int/2addr v10, v1

    new-array v2, v10, [B

    .line 3763
    iget-object v10, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v11, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v11, v11

    sub-int/2addr v11, v1

    invoke-static {v10, v1, v2, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3765
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3769
    :cond_67
    iget v10, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v11, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v11, v11

    add-int/2addr v10, v11

    .line 3770
    .end local v3    # "mag":I
    .local v10, "mag":I
    const v3, 0x3b9ac9ff

    if-lez v10, :cond_84

    .line 3771
    iget v11, p1, Landroid/icu/math/MathContext;->digits:I

    if-le v10, v11, :cond_7f

    .line 3772
    iget v11, p1, Landroid/icu/math/MathContext;->digits:I

    if-eqz v11, :cond_7f

    .line 3773
    iget v11, p1, Landroid/icu/math/MathContext;->form:I

    int-to-byte v11, v11

    iput-byte v11, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 3774
    :cond_7f
    add-int/lit8 v11, v10, -0x1

    if-gt v11, v3, :cond_8c

    .line 3775
    return-object p0

    .line 3776
    :cond_84
    const/4 v11, -0x5

    if-ge v10, v11, :cond_8c

    .line 3777
    iget v11, p1, Landroid/icu/math/MathContext;->form:I

    int-to-byte v11, v11

    iput-byte v11, p0, Landroid/icu/math/BigDecimal;->form:B

    .line 3779
    :cond_8c
    add-int/lit8 v10, v10, -0x1

    .line 3780
    if-ge v10, v9, :cond_92

    move v11, v5

    goto :goto_93

    :cond_92
    move v11, v6

    :goto_93
    if-le v10, v3, :cond_96

    goto :goto_97

    :cond_96
    move v5, v6

    :goto_97
    or-int/2addr v5, v11

    if-eqz v5, :cond_c2

    .line 3783
    iget-byte v5, p0, Landroid/icu/math/BigDecimal;->form:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_ab

    .line 3784
    rem-int/lit8 v4, v10, 0x3

    .line 3785
    if-gez v4, :cond_a5

    .line 3786
    add-int/lit8 v4, v4, 0x3

    .line 3787
    :cond_a5
    sub-int/2addr v10, v4

    .line 3789
    if-lt v10, v9, :cond_ab

    .line 3790
    if-gt v10, v3, :cond_ab

    .line 3791
    goto :goto_c2

    .line 3793
    :cond_ab
    new-instance v3, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3796
    :cond_c2
    :goto_c2
    return-object p0

    .line 3756
    .end local v10    # "mag":I
    .restart local v3    # "mag":I
    :cond_c3
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_47

    .line 3802
    .end local v7    # "$26":I
    :cond_c9
    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    .line 3804
    iget v5, p1, Landroid/icu/math/MathContext;->form:I

    if-eqz v5, :cond_d2

    .line 3805
    iput v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_dd

    .line 3806
    :cond_d2
    iget v5, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v5, :cond_d9

    .line 3807
    iput v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_dd

    .line 3810
    :cond_d9
    iget v5, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-lt v5, v9, :cond_e4

    .line 3814
    :goto_dd
    sget-object v5, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v5, v5, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3815
    return-object p0

    .line 3811
    :cond_e4
    new-instance v5, Ljava/lang/ArithmeticException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private greylist-max-o intcheck(II)I
    .registers 7
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 3021
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    .line 3023
    .local v0, "i":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p1, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    if-le v0, p2, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    or-int/2addr v1, v3

    if-nez v1, :cond_13

    .line 3025
    return v0

    .line 3024
    :cond_13
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversion overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o layout()[C
    .registers 18

    .line 2885
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2886
    .local v1, "i":I
    const/4 v2, 0x0

    .line 2887
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2888
    .local v3, "euse":I
    const/4 v4, 0x0

    .line 2889
    .local v4, "sig":I
    const/4 v5, 0x0

    .line 2890
    .local v5, "csign":C
    const/4 v6, 0x0

    .line 2893
    .local v6, "rec":[C
    const/4 v7, 0x0

    .line 2894
    .local v7, "len":I
    iget-object v8, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    new-array v8, v8, [C

    .line 2896
    .local v8, "cmant":[C
    iget-object v9, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    .line 2897
    .local v9, "$18":I
    const/4 v1, 0x0

    .line 2898
    :goto_12
    const/16 v10, 0x30

    if-lez v9, :cond_23

    .line 2899
    iget-object v11, v0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v11, v11, v1

    add-int/2addr v11, v10

    int-to-char v10, v11

    aput-char v10, v8, v1

    .line 2898
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2903
    .end local v9    # "$18":I
    :cond_23
    iget-byte v9, v0, Landroid/icu/math/BigDecimal;->form:B

    const/16 v11, 0x2e

    const/16 v12, 0x2d

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v9, :cond_ac

    .line 2904
    new-instance v9, Ljava/lang/StringBuilder;

    array-length v10, v8

    add-int/lit8 v10, v10, 0xf

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2905
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v9, "sb":Ljava/lang/StringBuilder;
    iget-byte v2, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v2, v13, :cond_3d

    .line 2906
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2907
    :cond_3d
    iget v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    array-length v10, v8

    add-int/2addr v2, v10

    sub-int/2addr v2, v15

    .line 2909
    .end local v3    # "euse":I
    .local v2, "euse":I
    iget-byte v3, v0, Landroid/icu/math/BigDecimal;->form:B

    if-ne v3, v15, :cond_58

    .line 2910
    aget-char v3, v8, v14

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2911
    array-length v3, v8

    if-le v3, v15, :cond_83

    .line 2912
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v10, v8

    sub-int/2addr v10, v15

    invoke-virtual {v3, v8, v15, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 2915
    :cond_58
    rem-int/lit8 v3, v2, 0x3

    .line 2916
    .end local v4    # "sig":I
    .local v3, "sig":I
    if-gez v3, :cond_5e

    .line 2917
    add-int/lit8 v3, v3, 0x3

    .line 2918
    :cond_5e
    sub-int/2addr v2, v3

    .line 2919
    add-int/lit8 v4, v3, 0x1

    .line 2920
    .end local v3    # "sig":I
    .restart local v4    # "sig":I
    array-length v3, v8

    if-lt v4, v3, :cond_76

    .line 2921
    array-length v3, v8

    invoke-virtual {v9, v8, v14, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2923
    array-length v3, v8

    sub-int v3, v4, v3

    .line 2924
    .local v3, "$19":I
    :goto_6b
    if-lez v3, :cond_75

    .line 2925
    const/16 v10, 0x30

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2924
    add-int/lit8 v3, v3, -0x1

    goto :goto_6b

    .line 2927
    .end local v3    # "$19":I
    :cond_75
    goto :goto_83

    .line 2929
    :cond_76
    invoke-virtual {v9, v8, v14, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v10, v8

    sub-int/2addr v10, v4

    invoke-virtual {v3, v8, v4, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2933
    :cond_83
    :goto_83
    if-eqz v2, :cond_9c

    .line 2934
    if-gez v2, :cond_8c

    .line 2935
    const/16 v3, 0x2d

    .line 2936
    .end local v5    # "csign":C
    .local v3, "csign":C
    neg-int v2, v2

    move v5, v3

    goto :goto_8f

    .line 2938
    .end local v3    # "csign":C
    .restart local v5    # "csign":C
    :cond_8c
    const/16 v3, 0x2b

    move v5, v3

    .line 2939
    :goto_8f
    const/16 v3, 0x45

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2941
    :cond_9c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    new-array v3, v3, [C

    .line 2942
    .end local v6    # "rec":[C
    .local v3, "rec":[C
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 2943
    .local v6, "srcEnd":I
    if-eqz v6, :cond_ab

    .line 2944
    invoke-virtual {v9, v14, v6, v3, v14}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 2946
    :cond_ab
    return-object v3

    .line 2950
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .local v2, "sb":Ljava/lang/StringBuilder;
    .local v3, "euse":I
    .local v6, "rec":[C
    :cond_ac
    iget v9, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-nez v9, :cond_c0

    .line 2951
    iget-byte v9, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-ltz v9, :cond_b5

    .line 2952
    return-object v8

    .line 2953
    :cond_b5
    array-length v9, v8

    add-int/2addr v9, v15

    new-array v6, v9, [C

    .line 2954
    aput-char v12, v6, v14

    .line 2955
    array-length v9, v8

    invoke-static {v8, v14, v6, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2956
    return-object v6

    .line 2960
    :cond_c0
    iget-byte v9, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v9, v13, :cond_c6

    move v9, v15

    goto :goto_c7

    :cond_c6
    move v9, v14

    .line 2965
    .local v9, "needsign":I
    :goto_c7
    iget v10, v0, Landroid/icu/math/BigDecimal;->exp:I

    array-length v13, v8

    add-int/2addr v10, v13

    .line 2967
    .local v10, "mag":I
    if-ge v10, v15, :cond_f6

    .line 2968
    add-int/lit8 v13, v9, 0x2

    iget v15, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v13, v15

    .line 2969
    .end local v7    # "len":I
    .local v13, "len":I
    new-array v6, v13, [C

    .line 2970
    if-eqz v9, :cond_d8

    .line 2971
    aput-char v12, v6, v14

    .line 2972
    :cond_d8
    const/16 v16, 0x30

    aput-char v16, v6, v9

    .line 2973
    add-int/lit8 v7, v9, 0x1

    aput-char v11, v6, v7

    .line 2975
    neg-int v7, v10

    .line 2976
    .local v7, "$20":I
    add-int/lit8 v1, v9, 0x2

    .line 2977
    :goto_e3
    if-lez v7, :cond_ee

    .line 2978
    const/16 v16, 0x30

    aput-char v16, v6, v1

    .line 2977
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 2981
    .end local v7    # "$20":I
    :cond_ee
    add-int/lit8 v7, v9, 0x2

    sub-int/2addr v7, v10

    array-length v11, v8

    invoke-static {v8, v14, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2983
    return-object v6

    .line 2986
    .end local v13    # "len":I
    .local v7, "len":I
    :cond_f6
    array-length v13, v8

    if-le v10, v13, :cond_116

    .line 2987
    add-int v7, v9, v10

    .line 2988
    new-array v6, v7, [C

    .line 2989
    if-eqz v9, :cond_101

    .line 2990
    aput-char v12, v6, v14

    .line 2991
    :cond_101
    array-length v11, v8

    invoke-static {v8, v14, v6, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2993
    array-length v11, v8

    sub-int v11, v10, v11

    .line 2994
    .local v11, "$21":I
    array-length v12, v8

    add-int/2addr v12, v9

    .line 2995
    .end local v1    # "i":I
    .local v12, "i":I
    :goto_10a
    if-lez v11, :cond_115

    .line 2996
    const/16 v16, 0x30

    aput-char v16, v6, v12

    .line 2995
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_10a

    .line 2999
    .end local v11    # "$21":I
    :cond_115
    return-object v6

    .line 3003
    .end local v12    # "i":I
    .restart local v1    # "i":I
    :cond_116
    add-int/lit8 v13, v9, 0x1

    move/from16 v16, v11

    array-length v11, v8

    add-int/2addr v13, v11

    .line 3004
    .end local v7    # "len":I
    .restart local v13    # "len":I
    new-array v6, v13, [C

    .line 3005
    if-eqz v9, :cond_122

    .line 3006
    aput-char v12, v6, v14

    .line 3007
    :cond_122
    invoke-static {v8, v14, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3008
    add-int v7, v9, v10

    aput-char v16, v6, v7

    .line 3009
    add-int v7, v9, v10

    add-int/2addr v7, v15

    array-length v11, v8

    sub-int/2addr v11, v10

    invoke-static {v8, v10, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3011
    return-object v6
.end method

.method private greylist-max-o round(II)Landroid/icu/math/BigDecimal;
    .registers 20
    .param p1, "len"    # I
    .param p2, "mode"    # I

    .line 3584
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 3585
    .local v3, "reuse":Z
    const/4 v4, 0x0

    .line 3587
    .local v4, "first":B
    const/4 v5, 0x0

    .line 3588
    .local v5, "newmant":[B
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    sub-int/2addr v6, v1

    .line 3589
    .local v6, "adjust":I
    if-gtz v6, :cond_10

    .line 3590
    return-object v0

    .line 3592
    :cond_10
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v7, v6

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3593
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 3594
    .local v7, "sign":I
    iget-object v8, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3595
    .local v8, "oldmant":[B
    const/4 v9, 0x0

    if-lez v1, :cond_2a

    .line 3597
    new-array v10, v1, [B

    iput-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3598
    iget-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v8, v9, v10, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3599
    const/4 v3, 0x1

    .line 3600
    aget-byte v4, v8, v1

    move v15, v3

    goto :goto_3b

    .line 3602
    :cond_2a
    sget-object v10, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v10, v10, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3603
    iput-byte v9, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 3604
    const/4 v3, 0x0

    .line 3605
    if-nez v1, :cond_39

    .line 3606
    aget-byte v4, v8, v9

    move v15, v3

    goto :goto_3b

    .line 3608
    :cond_39
    const/4 v4, 0x0

    move v15, v3

    .line 3612
    .end local v3    # "reuse":Z
    .local v15, "reuse":Z
    :goto_3b
    const/4 v3, 0x0

    .line 3615
    .local v3, "increment":I
    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x5

    if-ne v2, v10, :cond_46

    .line 3616
    if-lt v4, v12, :cond_b2

    .line 3617
    move v3, v7

    goto/16 :goto_b2

    .line 3618
    :cond_46
    const/4 v10, 0x7

    if-ne v2, v10, :cond_59

    .line 3620
    invoke-static {v8, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v10

    if-eqz v10, :cond_51

    goto/16 :goto_b2

    .line 3621
    :cond_51
    new-instance v9, Ljava/lang/ArithmeticException;

    const-string v10, "Rounding necessary"

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3622
    :cond_59
    if-ne v2, v12, :cond_6c

    .line 3623
    if-le v4, v12, :cond_60

    .line 3624
    move v3, v7

    goto/16 :goto_b2

    .line 3625
    :cond_60
    if-ne v4, v12, :cond_b2

    .line 3626
    add-int/lit8 v10, v1, 0x1

    invoke-static {v8, v10}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v10

    if-nez v10, :cond_b2

    .line 3627
    move v3, v7

    goto :goto_b2

    .line 3628
    :cond_6c
    const/4 v10, 0x6

    const/4 v13, 0x2

    if-ne v2, v10, :cond_8d

    .line 3629
    if-le v4, v12, :cond_74

    .line 3630
    move v3, v7

    goto :goto_b2

    .line 3631
    :cond_74
    if-ne v4, v12, :cond_b2

    .line 3632
    add-int/lit8 v10, v1, 0x1

    invoke-static {v8, v10}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v10

    if-nez v10, :cond_80

    .line 3633
    move v3, v7

    goto :goto_b2

    .line 3635
    :cond_80
    iget-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v12, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v12, v12

    sub-int/2addr v12, v11

    aget-byte v10, v10, v12

    rem-int/2addr v10, v13

    if-eqz v10, :cond_b2

    .line 3636
    move v3, v7

    goto :goto_b2

    .line 3638
    :cond_8d
    if-ne v2, v11, :cond_90

    goto :goto_b2

    .line 3640
    :cond_90
    if-nez v2, :cond_9a

    .line 3641
    invoke-static {v8, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v10

    if-nez v10, :cond_b2

    .line 3642
    move v3, v7

    goto :goto_b2

    .line 3643
    :cond_9a
    if-ne v2, v13, :cond_a6

    .line 3644
    if-lez v7, :cond_b2

    .line 3645
    invoke-static {v8, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v10

    if-nez v10, :cond_b2

    .line 3646
    move v3, v7

    goto :goto_b2

    .line 3647
    :cond_a6
    const/4 v10, 0x3

    if-ne v2, v10, :cond_118

    .line 3648
    if-gez v7, :cond_b2

    .line 3649
    invoke-static {v8, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v10

    if-nez v10, :cond_b2

    .line 3650
    move v3, v7

    .line 3657
    :cond_b2
    :goto_b2
    if-eqz v3, :cond_f5

    .line 3659
    iget-byte v10, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v10, :cond_c2

    .line 3661
    sget-object v9, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v9, v9, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v9, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3662
    int-to-byte v9, v3

    iput-byte v9, v0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_f5

    .line 3665
    :cond_c2
    iget-byte v10, v0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v12, -0x1

    if-ne v10, v12, :cond_ca

    .line 3666
    neg-int v3, v3

    move v14, v3

    goto :goto_cb

    .line 3665
    :cond_ca
    move v14, v3

    .line 3667
    .end local v3    # "increment":I
    .local v14, "increment":I
    :goto_cb
    iget-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    sget-object v12, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v12, v12, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v13, 0x1

    move/from16 v16, v11

    move v11, v3

    move/from16 v3, v16

    invoke-static/range {v10 .. v15}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v5

    .line 3668
    array-length v10, v5

    iget-object v11, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v11, v11

    if-le v10, v11, :cond_f2

    .line 3670
    iget v10, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v10, v3

    iput v10, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 3672
    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v10, v10

    invoke-static {v5, v9, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f4

    .line 3675
    :cond_f2
    iput-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 3680
    :goto_f4
    move v3, v14

    .end local v14    # "increment":I
    .restart local v3    # "increment":I
    :cond_f5
    :goto_f5
    iget v9, v0, Landroid/icu/math/BigDecimal;->exp:I

    const v10, 0x3b9ac9ff

    if-gt v9, v10, :cond_fd

    .line 3682
    return-object v0

    .line 3681
    :cond_fd
    new-instance v9, Ljava/lang/ArithmeticException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exponent Overflow: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3652
    :cond_118
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad round value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private greylist-max-o round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p1, "set"    # Landroid/icu/math/MathContext;

    .line 3567
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    iget v1, p1, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(D)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p0, "dub"    # D

    .line 2817
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(J)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p0, "lint"    # J

    .line 2829
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(JI)Landroid/icu/math/BigDecimal;
    .registers 7
    .param p0, "lint"    # J
    .param p2, "scale"    # I

    .line 2850
    const/4 v0, 0x0

    .line 2852
    .local v0, "res":Landroid/icu/math/BigDecimal;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_a

    .line 2853
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    goto :goto_22

    .line 2854
    :cond_a
    const-wide/16 v1, 0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_13

    .line 2855
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    goto :goto_22

    .line 2856
    :cond_13
    const-wide/16 v1, 0xa

    cmp-long v1, p0, v1

    if-nez v1, :cond_1c

    .line 2857
    sget-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    goto :goto_22

    .line 2859
    :cond_1c
    new-instance v1, Landroid/icu/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    move-object v0, v1

    .line 2862
    :goto_22
    if-nez p2, :cond_25

    .line 2863
    return-object v0

    .line 2864
    :cond_25
    if-ltz p2, :cond_2f

    .line 2866
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 2867
    neg-int v1, p2

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2868
    return-object v0

    .line 2865
    :cond_2f
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api abs()Landroid/icu/math/BigDecimal;
    .registers 2

    .line 936
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p1, "set"    # Landroid/icu/math/MathContext;

    .line 951
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 952
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 953
    :cond_a
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 969
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 31
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 991
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 992
    .local v2, "newlen":I
    const/4 v3, 0x0

    .line 993
    .local v3, "tlen":I
    const/4 v4, 0x0

    .line 994
    .local v4, "mult":I
    const/4 v5, 0x0

    .line 995
    .local v5, "t":[B
    const/4 v6, 0x0

    .line 996
    .local v6, "ia":I
    const/4 v7, 0x0

    .line 997
    .local v7, "ib":I
    const/4 v8, 0x0

    .line 998
    .local v8, "ea":I
    const/4 v9, 0x0

    .line 999
    .local v9, "eb":I
    const/4 v10, 0x0

    .line 1000
    .local v10, "ca":B
    const/4 v11, 0x0

    .line 1002
    .local v11, "cb":B
    iget-boolean v12, v1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v12, :cond_1a

    .line 1003
    iget v12, v1, Landroid/icu/math/MathContext;->digits:I

    move-object/from16 v13, p0

    invoke-direct {v13, v0, v12}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    goto :goto_1c

    .line 1002
    :cond_1a
    move-object/from16 v13, p0

    .line 1004
    :goto_1c
    move-object/from16 v12, p0

    .line 1008
    .local v12, "lhs":Landroid/icu/math/BigDecimal;
    iget-byte v14, v12, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v14, :cond_2b

    .line 1009
    iget v14, v1, Landroid/icu/math/MathContext;->form:I

    if-eqz v14, :cond_2b

    .line 1010
    invoke-virtual/range {p1 .. p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v14

    return-object v14

    .line 1011
    :cond_2b
    iget-byte v14, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v14, :cond_38

    .line 1012
    iget v14, v1, Landroid/icu/math/MathContext;->form:I

    if-eqz v14, :cond_38

    .line 1013
    invoke-virtual {v12, v1}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v14

    return-object v14

    .line 1016
    :cond_38
    iget v14, v1, Landroid/icu/math/MathContext;->digits:I

    .line 1017
    .local v14, "reqdig":I
    if-lez v14, :cond_56

    .line 1018
    iget-object v15, v12, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v15, v15

    if-le v15, v14, :cond_49

    .line 1019
    invoke-static {v12}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v15

    invoke-direct {v15, v1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v12

    .line 1020
    :cond_49
    iget-object v15, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v15, v15

    if-le v15, v14, :cond_56

    .line 1021
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v15

    invoke-direct {v15, v1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1025
    .end local p1    # "rhs":Landroid/icu/math/BigDecimal;
    .local v0, "rhs":Landroid/icu/math/BigDecimal;
    :cond_56
    new-instance v15, Landroid/icu/math/BigDecimal;

    invoke-direct {v15}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 1035
    .local v15, "res":Landroid/icu/math/BigDecimal;
    move/from16 v16, v2

    .end local v2    # "newlen":I
    .local v16, "newlen":I
    iget-object v2, v12, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1036
    .local v2, "usel":[B
    move/from16 v17, v3

    .end local v3    # "tlen":I
    .local v17, "tlen":I
    iget-object v3, v12, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    .line 1037
    .local v3, "usellen":I
    move/from16 v18, v4

    .end local v4    # "mult":I
    .local v18, "mult":I
    iget-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1038
    .local v4, "user":[B
    move-object/from16 v19, v5

    .end local v5    # "t":[B
    .local v19, "t":[B
    iget-object v5, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    .line 1041
    .local v5, "userlen":I
    move/from16 v20, v6

    .end local v6    # "ia":I
    .local v20, "ia":I
    iget v6, v12, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v21, v7

    .end local v7    # "ib":I
    .local v21, "ib":I
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v22, v8

    .end local v8    # "ea":I
    .local v22, "ea":I
    const/4 v8, 0x1

    if-ne v6, v7, :cond_84

    .line 1043
    iget v6, v12, Landroid/icu/math/BigDecimal;->exp:I

    iput v6, v15, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v23, v8

    move/from16 v6, v16

    goto/16 :goto_127

    .line 1044
    :cond_84
    iget v6, v12, Landroid/icu/math/BigDecimal;->exp:I

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-le v6, v7, :cond_db

    .line 1045
    iget v6, v12, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v6, v3

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v6, v7

    .line 1050
    .end local v16    # "newlen":I
    .local v6, "newlen":I
    add-int v7, v5, v14

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_b8

    .line 1051
    if-lez v14, :cond_b8

    .line 1053
    iput-object v2, v15, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1054
    iget v7, v12, Landroid/icu/math/BigDecimal;->exp:I

    iput v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1055
    iget-byte v7, v12, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v7, v15, Landroid/icu/math/BigDecimal;->ind:B

    .line 1056
    if-ge v3, v14, :cond_b2

    .line 1057
    iget-object v7, v12, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v7, v14}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v7

    iput-object v7, v15, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1058
    iget v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v8, v14, v3

    sub-int/2addr v7, v8

    iput v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1060
    :cond_b2
    const/4 v7, 0x0

    invoke-direct {v15, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    .line 1063
    :cond_b8
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    iput v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1064
    add-int/lit8 v7, v14, 0x1

    if-le v6, v7, :cond_d5

    .line 1065
    if-lez v14, :cond_d2

    .line 1067
    sub-int v7, v6, v14

    sub-int/2addr v7, v8

    .line 1068
    .end local v17    # "tlen":I
    .local v7, "tlen":I
    sub-int/2addr v5, v7

    .line 1069
    move/from16 v23, v8

    iget v8, v15, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v8, v7

    iput v8, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1070
    add-int/lit8 v6, v14, 0x1

    move/from16 v17, v7

    goto :goto_d7

    .line 1065
    .end local v7    # "tlen":I
    .restart local v17    # "tlen":I
    :cond_d2
    move/from16 v23, v8

    goto :goto_d7

    .line 1064
    :cond_d5
    move/from16 v23, v8

    .line 1072
    :goto_d7
    if-le v6, v3, :cond_127

    .line 1073
    move v3, v6

    goto :goto_127

    .line 1075
    .end local v6    # "newlen":I
    .restart local v16    # "newlen":I
    :cond_db
    move/from16 v23, v8

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v6, v5

    iget v7, v12, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v6, v7

    .line 1076
    .end local v16    # "newlen":I
    .restart local v6    # "newlen":I
    add-int v7, v3, v14

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v7, :cond_10c

    .line 1077
    if-lez v14, :cond_10c

    .line 1079
    iput-object v4, v15, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1080
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    iput v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1081
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v7, v15, Landroid/icu/math/BigDecimal;->ind:B

    .line 1082
    if-ge v5, v14, :cond_106

    .line 1083
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v7, v14}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v7

    iput-object v7, v15, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1084
    iget v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v8, v14, v5

    sub-int/2addr v7, v8

    iput v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1086
    :cond_106
    const/4 v7, 0x0

    invoke-direct {v15, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    .line 1089
    :cond_10c
    iget v7, v12, Landroid/icu/math/BigDecimal;->exp:I

    iput v7, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1090
    add-int/lit8 v7, v14, 0x1

    if-le v6, v7, :cond_124

    .line 1091
    if-lez v14, :cond_124

    .line 1093
    sub-int v7, v6, v14

    add-int/lit8 v7, v7, -0x1

    .line 1094
    .end local v17    # "tlen":I
    .restart local v7    # "tlen":I
    sub-int/2addr v3, v7

    .line 1095
    iget v8, v15, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v8, v7

    iput v8, v15, Landroid/icu/math/BigDecimal;->exp:I

    .line 1096
    add-int/lit8 v6, v14, 0x1

    move/from16 v17, v7

    .line 1098
    .end local v7    # "tlen":I
    .restart local v17    # "tlen":I
    :cond_124
    if-le v6, v5, :cond_127

    .line 1099
    move v5, v6

    .line 1108
    :cond_127
    :goto_127
    iget-byte v7, v12, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v7, :cond_130

    .line 1109
    move/from16 v7, v23

    iput-byte v7, v15, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_134

    .line 1111
    :cond_130
    iget-byte v7, v12, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v7, v15, Landroid/icu/math/BigDecimal;->ind:B

    .line 1112
    :goto_134
    iget-byte v7, v12, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v8, -0x1

    if-ne v7, v8, :cond_13b

    const/4 v7, 0x1

    goto :goto_13c

    :cond_13b
    const/4 v7, 0x0

    :goto_13c
    move/from16 v16, v6

    .end local v6    # "newlen":I
    .restart local v16    # "newlen":I
    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v6, v8, :cond_144

    const/4 v6, 0x1

    goto :goto_145

    :cond_144
    const/4 v6, 0x0

    :goto_145
    if-ne v7, v6, :cond_15e

    .line 1113
    const/4 v6, 0x1

    move-object/from16 v18, v0

    move/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v22, v2

    .end local v18    # "mult":I
    .local v6, "mult":I
    goto/16 :goto_21d

    .line 1116
    .end local v6    # "mult":I
    .restart local v18    # "mult":I
    :cond_15e
    const/4 v6, -0x1

    .line 1123
    .end local v18    # "mult":I
    .restart local v6    # "mult":I
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v7, :cond_164

    goto :goto_198

    .line 1125
    :cond_164
    if-ge v3, v5, :cond_168

    const/4 v7, 0x1

    goto :goto_169

    :cond_168
    const/4 v7, 0x0

    :goto_169
    iget-byte v8, v12, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v8, :cond_16f

    const/4 v8, 0x1

    goto :goto_170

    :cond_16f
    const/4 v8, 0x0

    :goto_170
    or-int/2addr v7, v8

    if-eqz v7, :cond_196

    .line 1126
    move-object v7, v2

    .line 1127
    .end local v19    # "t":[B
    .local v7, "t":[B
    move-object v2, v4

    .line 1128
    move-object v4, v7

    .line 1129
    move/from16 v17, v3

    .line 1130
    move v3, v5

    .line 1131
    move/from16 v5, v17

    .line 1132
    iget-byte v8, v15, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v8, v8

    int-to-byte v8, v8

    iput-byte v8, v15, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v18, v0

    move/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object v5, v7

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v22, v2

    goto/16 :goto_21d

    .line 1133
    .end local v7    # "t":[B
    .restart local v19    # "t":[B
    :cond_196
    if-le v3, v5, :cond_1ae

    .line 1185
    :goto_198
    move-object/from16 v18, v0

    move/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v22, v2

    goto/16 :goto_21d

    .line 1138
    :cond_1ae
    const/4 v7, 0x0

    .line 1139
    .end local v20    # "ia":I
    .local v7, "ia":I
    const/4 v8, 0x0

    .line 1140
    .end local v21    # "ib":I
    .local v8, "ib":I
    move-object/from16 v18, v0

    .end local v0    # "rhs":Landroid/icu/math/BigDecimal;
    .local v18, "rhs":Landroid/icu/math/BigDecimal;
    array-length v0, v2

    const/16 v23, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 1141
    .end local v22    # "ea":I
    .local v0, "ea":I
    move-object/from16 v20, v2

    .end local v2    # "usel":[B
    .local v20, "usel":[B
    array-length v2, v4

    add-int/lit8 v9, v2, -0x1

    .line 1144
    :goto_1bc
    if-gt v7, v0, :cond_1c2

    .line 1145
    aget-byte v2, v20, v7

    move v10, v2

    .end local v10    # "ca":B
    .local v2, "ca":B
    goto :goto_1dd

    .line 1147
    .end local v2    # "ca":B
    .restart local v10    # "ca":B
    :cond_1c2
    if-le v8, v9, :cond_1db

    .line 1148
    iget v2, v1, Landroid/icu/math/MathContext;->form:I

    if-eqz v2, :cond_1cb

    .line 1149
    sget-object v2, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v2

    .line 1148
    :cond_1cb
    move/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move v6, v7

    move v7, v8

    move-object/from16 v5, v19

    move-object/from16 v22, v20

    move v8, v0

    goto :goto_21d

    .line 1153
    :cond_1db
    const/4 v2, 0x0

    move v10, v2

    .line 1155
    :goto_1dd
    if-gt v8, v9, :cond_1e3

    .line 1156
    aget-byte v2, v4, v8

    move v11, v2

    .end local v11    # "cb":B
    .local v2, "cb":B
    goto :goto_1e5

    .line 1158
    .end local v2    # "cb":B
    .restart local v11    # "cb":B
    :cond_1e3
    const/4 v2, 0x0

    move v11, v2

    .line 1159
    :goto_1e5
    if-eq v10, v11, :cond_22b

    .line 1160
    if-ge v10, v11, :cond_20b

    .line 1161
    move-object/from16 v2, v20

    .line 1162
    .end local v19    # "t":[B
    .local v2, "t":[B
    move-object/from16 v19, v4

    .line 1163
    .end local v20    # "usel":[B
    .local v19, "usel":[B
    move-object v4, v2

    .line 1164
    move/from16 v17, v3

    .line 1165
    move v3, v5

    .line 1166
    move/from16 v5, v17

    .line 1167
    move/from16 v21, v0

    .end local v0    # "ea":I
    .local v21, "ea":I
    iget-byte v0, v15, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, v15, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move v6, v7

    move v7, v8

    move-object/from16 v22, v19

    move/from16 v8, v21

    move-object v5, v2

    goto :goto_21d

    .line 1160
    .end local v2    # "t":[B
    .end local v21    # "ea":I
    .restart local v0    # "ea":I
    .local v19, "t":[B
    .restart local v20    # "usel":[B
    :cond_20b
    move/from16 v21, v0

    .end local v0    # "ea":I
    .restart local v21    # "ea":I
    move/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move v6, v7

    move v7, v8

    move-object/from16 v5, v19

    move-object/from16 v22, v20

    move/from16 v8, v21

    .line 1185
    .end local v3    # "usellen":I
    .end local v4    # "user":[B
    .end local v19    # "t":[B
    .end local v20    # "usel":[B
    .end local v21    # "ea":I
    .local v5, "t":[B
    .local v6, "ia":I
    .local v7, "ib":I
    .local v8, "ea":I
    .local v22, "usel":[B
    .local v23, "usellen":I
    .local v24, "user":[B
    .local v25, "userlen":I
    .local v26, "mult":I
    :goto_21d
    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v0

    iput-object v0, v15, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1189
    const/4 v0, 0x0

    invoke-direct {v15, v1, v0}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1172
    .end local v22    # "usel":[B
    .end local v23    # "usellen":I
    .end local v24    # "user":[B
    .end local v25    # "userlen":I
    .end local v26    # "mult":I
    .restart local v0    # "ea":I
    .restart local v3    # "usellen":I
    .restart local v4    # "user":[B
    .local v5, "userlen":I
    .local v6, "mult":I
    .local v7, "ia":I
    .local v8, "ib":I
    .restart local v19    # "t":[B
    .restart local v20    # "usel":[B
    :cond_22b
    move/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "ea":I
    .restart local v21    # "ea":I
    add-int/lit8 v7, v7, 0x1

    .line 1173
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v21

    goto :goto_1bc
.end method

.method public whitelist test-api byteValueExact()B
    .registers 6

    .line 1877
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    .line 1878
    .local v0, "num":I
    const/16 v1, 0x7f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    const/16 v4, -0x80

    if-ge v0, v4, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    or-int/2addr v1, v2

    if-nez v1, :cond_18

    .line 1880
    int-to-byte v1, v0

    return v1

    .line 1879
    :cond_18
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversion overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api compareTo(Landroid/icu/math/BigDecimal;)I
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1205
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I
    .registers 10
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "thislength":I
    const/4 v1, 0x0

    .line 1240
    .local v1, "i":I
    iget-boolean v2, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v2, :cond_b

    .line 1241
    iget v2, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v2}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1243
    :cond_b
    iget-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v3, p1, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_15

    move v2, v5

    goto :goto_16

    :cond_15
    move v2, v4

    :goto_16
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget v6, p1, Landroid/icu/math/BigDecimal;->exp:I

    if-ne v3, v6, :cond_1e

    move v3, v5

    goto :goto_1f

    :cond_1e
    move v3, v4

    :goto_1f
    and-int/2addr v2, v3

    if-eqz v2, :cond_6d

    .line 1245
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v2

    .line 1246
    iget-object v2, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    .line 1247
    iget-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v2, v2

    int-to-byte v2, v2

    return v2

    .line 1248
    :cond_2f
    iget-object v2, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    if-le v0, v2, :cond_37

    .line 1249
    iget-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    return v2

    .line 1254
    :cond_37
    iget v2, p2, Landroid/icu/math/MathContext;->digits:I

    if-gt v0, v2, :cond_3d

    move v2, v5

    goto :goto_3e

    :cond_3d
    move v2, v4

    :goto_3e
    iget v3, p2, Landroid/icu/math/MathContext;->digits:I

    if-nez v3, :cond_43

    goto :goto_44

    :cond_43
    move v5, v4

    :goto_44
    or-int/2addr v2, v5

    if-eqz v2, :cond_7c

    .line 1256
    move v2, v0

    .line 1257
    .local v2, "$6":I
    const/4 v1, 0x0

    .line 1258
    :goto_49
    if-lez v2, :cond_6c

    .line 1259
    iget-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v1

    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v1

    if-ge v3, v5, :cond_5a

    .line 1260
    iget-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v3, v3

    int-to-byte v3, v3

    return v3

    .line 1261
    :cond_5a
    iget-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v3, v3, v1

    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v1

    if-le v3, v5, :cond_67

    .line 1262
    iget-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    return v3

    .line 1258
    :cond_67
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1265
    .end local v2    # "$6":I
    :cond_6c
    return v4

    .line 1270
    :cond_6d
    iget-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v3, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-ge v2, v3, :cond_75

    .line 1271
    const/4 v2, -0x1

    return v2

    .line 1272
    :cond_75
    iget-byte v2, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v3, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-le v2, v3, :cond_7c

    .line 1273
    return v5

    .line 1276
    :cond_7c
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    .line 1277
    .local v2, "newrhs":Landroid/icu/math/BigDecimal;
    iget-byte v3, v2, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v3, v3

    int-to-byte v3, v3

    iput-byte v3, v2, Landroid/icu/math/BigDecimal;->ind:B

    .line 1278
    invoke-virtual {p0, v2, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    iget-byte v3, v3, Landroid/icu/math/BigDecimal;->ind:B

    return v3
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 224
    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api divide(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1296
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v1, -0x1

    const/16 v2, 0x44

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .registers 6
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "round"    # I

    .line 1321
    new-instance v0, Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    .line 1323
    .local v0, "set":Landroid/icu/math/MathContext;
    const/16 v1, 0x44

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;
    .registers 7
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "round"    # I

    .line 1352
    if-ltz p2, :cond_f

    .line 1354
    new-instance v0, Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p3}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    .line 1355
    .local v0, "set":Landroid/icu/math/MathContext;
    const/16 v1, 0x44

    invoke-direct {p0, v1, p1, v0, p2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1353
    .end local v0    # "set":Landroid/icu/math/MathContext;
    :cond_f
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1371
    const/16 v0, 0x44

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divideInteger(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1387
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v1, 0x0

    const/16 v2, 0x49

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divideInteger(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1405
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 1899
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1924
    const/4 v0, 0x0

    .line 1925
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1926
    .local v1, "lca":[C
    const/4 v2, 0x0

    .line 1928
    .local v2, "rca":[C
    const/4 v3, 0x0

    if-nez p1, :cond_7

    .line 1929
    return v3

    .line 1930
    :cond_7
    instance-of v4, p1, Landroid/icu/math/BigDecimal;

    if-nez v4, :cond_c

    .line 1931
    return v3

    .line 1932
    :cond_c
    move-object v4, p1

    check-cast v4, Landroid/icu/math/BigDecimal;

    .line 1933
    .local v4, "rhs":Landroid/icu/math/BigDecimal;
    iget-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v6, v4, Landroid/icu/math/BigDecimal;->ind:B

    if-eq v5, v6, :cond_16

    .line 1934
    return v3

    .line 1935
    :cond_16
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    iget-object v6, v4, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_21

    move v5, v7

    goto :goto_22

    :cond_21
    move v5, v3

    :goto_22
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget v8, v4, Landroid/icu/math/BigDecimal;->exp:I

    if-ne v6, v8, :cond_2a

    move v6, v7

    goto :goto_2b

    :cond_2a
    move v6, v3

    :goto_2b
    and-int/2addr v5, v6

    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    iget-byte v8, v4, Landroid/icu/math/BigDecimal;->form:B

    if-ne v6, v8, :cond_34

    move v6, v7

    goto :goto_35

    :cond_34
    move v6, v3

    :goto_35
    and-int/2addr v5, v6

    if-eqz v5, :cond_4f

    .line 1940
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    .line 1941
    .local v5, "$8":I
    const/4 v0, 0x0

    .line 1942
    :goto_3c
    if-lez v5, :cond_4e

    .line 1943
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v0

    iget-object v8, v4, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v0

    if-eq v6, v8, :cond_49

    .line 1944
    return v3

    .line 1942
    :cond_49
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1946
    .end local v5    # "$8":I
    :cond_4e
    goto :goto_6c

    .line 1948
    :cond_4f
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v1

    .line 1949
    invoke-direct {v4}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v2

    .line 1950
    array-length v5, v1

    array-length v6, v2

    if-eq v5, v6, :cond_5c

    .line 1951
    return v3

    .line 1954
    :cond_5c
    array-length v5, v1

    .line 1955
    .local v5, "$9":I
    const/4 v0, 0x0

    .line 1956
    :goto_5e
    if-lez v5, :cond_6c

    .line 1957
    aget-char v6, v1, v0

    aget-char v8, v2, v0

    if-eq v6, v8, :cond_67

    .line 1958
    return v3

    .line 1956
    :cond_67
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 1962
    .end local v5    # "$9":I
    :cond_6c
    :goto_6c
    return v7
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 1979
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public whitelist test-api format(II)Ljava/lang/String;
    .registers 10
    .param p1, "before"    # I
    .param p2, "after"    # I

    .line 2022
    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "before":I
    .end local p2    # "after":I
    .local v1, "before":I
    .local v2, "after":I
    invoke-virtual/range {v0 .. v6}, Landroid/icu/math/BigDecimal;->format(IIIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api format(IIIIII)Ljava/lang/String;
    .registers 34
    .param p1, "before"    # I
    .param p2, "after"    # I
    .param p3, "explaces"    # I
    .param p4, "exdigits"    # I
    .param p5, "exformint"    # I
    .param p6, "exround"    # I

    .line 2096
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v0, p5

    move/from16 v6, p6

    const/4 v7, 0x0

    .line 2097
    .local v7, "mag":I
    const/4 v8, 0x0

    .line 2098
    .local v8, "thisafter":I
    const/4 v9, 0x0

    .line 2099
    .local v9, "lead":I
    const/4 v10, 0x0

    .line 2100
    .local v10, "newmant":[B
    const/4 v11, 0x0

    .line 2101
    .local v11, "chop":I
    const/4 v12, 0x0

    .line 2102
    .local v12, "need":I
    const/4 v13, 0x0

    .line 2104
    .local v13, "oldexp":I
    const/4 v14, 0x0

    .line 2105
    .local v14, "p":I
    const/4 v15, 0x0

    .line 2106
    .local v15, "newa":[C
    const/16 v16, 0x0

    .line 2107
    .local v16, "i":I
    const/16 v17, 0x0

    .line 2110
    .local v17, "places":I
    move/from16 v18, v7

    .end local v7    # "mag":I
    .local v18, "mag":I
    const/4 v7, -0x1

    if-ge v2, v7, :cond_23

    const/16 v20, 0x1

    goto :goto_25

    :cond_23
    const/16 v20, 0x0

    :goto_25
    if-nez v2, :cond_2a

    const/16 v21, 0x1

    goto :goto_2c

    :cond_2a
    const/16 v21, 0x0

    :goto_2c
    or-int v20, v20, v21

    const-string v7, "format"

    if-eqz v20, :cond_3f

    .line 2111
    move/from16 v20, v8

    .end local v8    # "thisafter":I
    .local v20, "thisafter":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v22, v9

    const/4 v9, 0x1

    .end local v9    # "lead":I
    .local v22, "lead":I
    invoke-direct {v1, v7, v9, v8}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_43

    .line 2110
    .end local v20    # "thisafter":I
    .end local v22    # "lead":I
    .restart local v8    # "thisafter":I
    .restart local v9    # "lead":I
    :cond_3f
    move/from16 v20, v8

    move/from16 v22, v9

    .line 2112
    .end local v8    # "thisafter":I
    .end local v9    # "lead":I
    .restart local v20    # "thisafter":I
    .restart local v22    # "lead":I
    :goto_43
    const/4 v8, 0x2

    const/4 v9, -0x1

    if-ge v3, v9, :cond_4e

    .line 2113
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2114
    :cond_4e
    const/4 v9, -0x1

    if-ge v4, v9, :cond_53

    const/4 v9, 0x1

    goto :goto_54

    :cond_53
    const/4 v9, 0x0

    :goto_54
    if-nez v4, :cond_59

    const/16 v23, 0x1

    goto :goto_5b

    :cond_59
    const/16 v23, 0x0

    :goto_5b
    or-int v9, v9, v23

    const/4 v8, 0x3

    if-eqz v9, :cond_67

    .line 2115
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2116
    :cond_67
    const/4 v9, 0x4

    move/from16 v24, v8

    const/4 v8, -0x1

    if-ge v5, v8, :cond_74

    .line 2117
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v9, v8}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2119
    :cond_74
    const/4 v8, 0x1

    if-ne v0, v8, :cond_78

    goto :goto_8a

    .line 2120
    :cond_78
    const/4 v8, 0x2

    if-ne v0, v8, :cond_7c

    goto :goto_8a

    .line 2121
    :cond_7c
    const/4 v8, -0x1

    if-ne v0, v8, :cond_82

    .line 2122
    const/4 v0, 0x1

    move v8, v0

    .end local p5    # "exformint":I
    .local v0, "exformint":I
    goto :goto_8b

    .line 2125
    .end local v0    # "exformint":I
    .restart local p5    # "exformint":I
    :cond_82
    const/4 v8, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2130
    :goto_8a
    move v8, v0

    .end local p5    # "exformint":I
    .local v8, "exformint":I
    :goto_8b
    const/4 v0, 0x4

    if-eq v6, v0, :cond_b6

    .line 2132
    const/4 v9, -0x1

    if-ne v6, v9, :cond_97

    .line 2133
    const/4 v0, 0x4

    move-object/from16 v25, v10

    move/from16 v26, v11

    .end local p6    # "exround":I
    .local v0, "exround":I
    goto :goto_a5

    .line 2135
    .end local v0    # "exround":I
    .restart local p6    # "exround":I
    :cond_97
    :try_start_97
    new-instance v0, Landroid/icu/math/MathContext;
    :try_end_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_99} :catch_a8

    const/16 v9, 0x9

    move-object/from16 v25, v10

    move/from16 v26, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    .end local v10    # "newmant":[B
    .end local v11    # "chop":I
    .local v25, "newmant":[B
    .local v26, "chop":I
    :try_start_a1
    invoke-direct {v0, v9, v11, v10, v6}, Landroid/icu/math/MathContext;-><init>(IIZI)V
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_a4} :catch_a6

    move v0, v6

    .line 2138
    .end local p6    # "exround":I
    .restart local v0    # "exround":I
    :goto_a5
    goto :goto_bb

    .line 2136
    .end local v0    # "exround":I
    .restart local p6    # "exround":I
    :catch_a6
    move-exception v0

    goto :goto_ad

    .end local v25    # "newmant":[B
    .end local v26    # "chop":I
    .restart local v10    # "newmant":[B
    .restart local v11    # "chop":I
    :catch_a8
    move-exception v0

    move-object/from16 v25, v10

    move/from16 v26, v11

    .line 2137
    .end local v10    # "newmant":[B
    .end local v11    # "chop":I
    .local v0, "$10":Ljava/lang/IllegalArgumentException;
    .restart local v25    # "newmant":[B
    .restart local v26    # "chop":I
    :goto_ad
    const/4 v9, 0x6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v7, v9, v10}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_ba

    .line 2130
    .end local v0    # "$10":Ljava/lang/IllegalArgumentException;
    .end local v25    # "newmant":[B
    .end local v26    # "chop":I
    .restart local v10    # "newmant":[B
    .restart local v11    # "chop":I
    :cond_b6
    move-object/from16 v25, v10

    move/from16 v26, v11

    .line 2141
    .end local v10    # "newmant":[B
    .end local v11    # "chop":I
    .restart local v25    # "newmant":[B
    .restart local v26    # "chop":I
    :goto_ba
    move v0, v6

    .end local p6    # "exround":I
    .local v0, "exround":I
    :goto_bb
    invoke-static {v1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    .line 2152
    .local v6, "num":Landroid/icu/math/BigDecimal;
    const/4 v9, -0x1

    if-ne v5, v9, :cond_c6

    .line 2153
    const/4 v10, 0x0

    iput-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_cd

    .line 2154
    :cond_c6
    const/4 v10, 0x0

    iget-byte v9, v6, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v9, :cond_d0

    .line 2155
    iput-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    .line 2173
    :goto_cd
    move/from16 v9, v18

    goto :goto_e6

    .line 2158
    :cond_d0
    iget v9, v6, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v10, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v10, v10

    add-int/2addr v9, v10

    .line 2159
    .end local v18    # "mag":I
    .local v9, "mag":I
    if-le v9, v5, :cond_dc

    .line 2160
    int-to-byte v10, v8

    iput-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_e6

    .line 2161
    :cond_dc
    const/4 v10, -0x5

    if-ge v9, v10, :cond_e3

    .line 2162
    int-to-byte v10, v8

    iput-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_e6

    .line 2164
    :cond_e3
    const/4 v10, 0x0

    iput-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    .line 2173
    :goto_e6
    if-ltz v3, :cond_194

    move/from16 v11, v26

    .line 2177
    .end local v26    # "chop":I
    .restart local v11    # "chop":I
    :goto_ea
    iget-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    if-nez v10, :cond_f2

    .line 2178
    iget v10, v6, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v10, v10

    .end local v20    # "thisafter":I
    .local v10, "thisafter":I
    goto :goto_11f

    .line 2179
    .end local v10    # "thisafter":I
    .restart local v20    # "thisafter":I
    :cond_f2
    iget-byte v10, v6, Landroid/icu/math/BigDecimal;->form:B

    const/4 v5, 0x1

    if-ne v10, v5, :cond_fc

    .line 2180
    iget-object v10, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v10, v10

    sub-int/2addr v10, v5

    .end local v20    # "thisafter":I
    .restart local v10    # "thisafter":I
    goto :goto_11f

    .line 2182
    .end local v10    # "thisafter":I
    .restart local v20    # "thisafter":I
    :cond_fc
    iget v10, v6, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v19, v5

    iget-object v5, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x1

    rem-int/lit8 v10, v10, 0x3

    .line 2183
    .end local v22    # "lead":I
    .local v10, "lead":I
    if-gez v10, :cond_10c

    .line 2184
    add-int/lit8 v10, v10, 0x3

    .line 2185
    :cond_10c
    add-int/lit8 v10, v10, 0x1

    .line 2186
    iget-object v5, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    if-lt v10, v5, :cond_118

    .line 2187
    const/4 v5, 0x0

    move/from16 v22, v10

    move v10, v5

    .end local v20    # "thisafter":I
    .local v5, "thisafter":I
    goto :goto_11f

    .line 2189
    .end local v5    # "thisafter":I
    .restart local v20    # "thisafter":I
    :cond_118
    iget-object v5, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    sub-int/2addr v5, v10

    move/from16 v22, v10

    move v10, v5

    .line 2192
    .end local v20    # "thisafter":I
    .local v10, "thisafter":I
    .restart local v22    # "lead":I
    :goto_11f
    if-ne v10, v3, :cond_123

    .line 2193
    goto/16 :goto_198

    .line 2194
    :cond_123
    if-ge v10, v3, :cond_162

    .line 2196
    iget-object v5, v6, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v3, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    add-int v3, v3, p2

    sub-int/2addr v3, v10

    invoke-static {v5, v3}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v3

    .line 2197
    .end local v25    # "newmant":[B
    .local v3, "newmant":[B
    iput-object v3, v6, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2198
    iget v5, v6, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v18, p2, v10

    sub-int v5, v5, v18

    iput v5, v6, Landroid/icu/math/BigDecimal;->exp:I

    .line 2199
    iget v5, v6, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 p5, v3

    .end local v3    # "newmant":[B
    .local p5, "newmant":[B
    const v3, -0x3b9ac9ff

    if-lt v5, v3, :cond_147

    move-object/from16 v25, p5

    goto :goto_198

    .line 2200
    :cond_147
    new-instance v3, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exponent Overflow: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v6, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2206
    .end local p5    # "newmant":[B
    .restart local v25    # "newmant":[B
    :cond_162
    sub-int v11, v10, p2

    .line 2207
    iget-object v3, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    if-le v11, v3, :cond_17c

    .line 2209
    sget-object v3, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v3, v3, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v3, v6, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2210
    const/4 v3, 0x0

    iput-byte v3, v6, Landroid/icu/math/BigDecimal;->ind:B

    .line 2211
    iput v3, v6, Landroid/icu/math/BigDecimal;->exp:I

    .line 2212
    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v20, v10

    goto/16 :goto_ea

    .line 2216
    :cond_17c
    iget-object v3, v6, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    sub-int v12, v3, v11

    .line 2217
    iget v13, v6, Landroid/icu/math/BigDecimal;->exp:I

    .line 2218
    invoke-direct {v6, v12, v0}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    .line 2221
    iget v3, v6, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v3, v13

    if-ne v3, v11, :cond_18c

    .line 2222
    goto :goto_198

    .line 2221
    :cond_18c
    move/from16 v3, p2

    move/from16 v5, p4

    move/from16 v20, v10

    goto/16 :goto_ea

    .line 2173
    .end local v10    # "thisafter":I
    .end local v11    # "chop":I
    .restart local v20    # "thisafter":I
    .restart local v26    # "chop":I
    :cond_194
    move/from16 v10, v20

    move/from16 v11, v26

    .line 2227
    .end local v20    # "thisafter":I
    .end local v26    # "chop":I
    .restart local v10    # "thisafter":I
    .restart local v11    # "chop":I
    :goto_198
    invoke-direct {v6}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v3

    .line 2231
    .local v3, "a":[C
    const/16 p5, 0x20

    if-lez v2, :cond_1e7

    .line 2234
    array-length v5, v3

    .line 2235
    .local v5, "$11":I
    const/4 v14, 0x0

    .line 2236
    :goto_1a2
    if-lez v5, :cond_1bd

    .line 2237
    move/from16 v18, v0

    .end local v0    # "exround":I
    .local v18, "exround":I
    aget-char v0, v3, v14

    move/from16 v20, v5

    .end local v5    # "$11":I
    .local v20, "$11":I
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1af

    .line 2238
    goto :goto_1c1

    .line 2239
    :cond_1af
    aget-char v0, v3, v14

    const/16 v5, 0x45

    if-ne v0, v5, :cond_1b6

    .line 2240
    goto :goto_1c1

    .line 2236
    :cond_1b6
    add-int/lit8 v5, v20, -0x1

    .end local v20    # "$11":I
    .restart local v5    # "$11":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v18

    goto :goto_1a2

    .end local v18    # "exround":I
    .restart local v0    # "exround":I
    :cond_1bd
    move/from16 v18, v0

    move/from16 v20, v5

    .line 2245
    .end local v0    # "exround":I
    .end local v5    # "$11":I
    .restart local v18    # "exround":I
    :goto_1c1
    if-le v14, v2, :cond_1cb

    .line 2246
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v1, v7, v5, v0}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2247
    :cond_1cb
    if-ge v14, v2, :cond_1e9

    .line 2248
    array-length v0, v3

    add-int/2addr v0, v2

    sub-int/2addr v0, v14

    new-array v15, v0, [C

    .line 2250
    sub-int v0, v2, v14

    .line 2251
    .local v0, "$12":I
    const/4 v5, 0x0

    .line 2252
    .end local v16    # "i":I
    .local v5, "i":I
    :goto_1d5
    if-lez v0, :cond_1de

    .line 2253
    aput-char p5, v15, v5

    .line 2252
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d5

    .line 2256
    .end local v0    # "$12":I
    :cond_1de
    array-length v0, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v15, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2257
    move-object v3, v15

    move/from16 v16, v5

    goto :goto_1e9

    .line 2231
    .end local v5    # "i":I
    .end local v18    # "exround":I
    .local v0, "exround":I
    .restart local v16    # "i":I
    :cond_1e7
    move/from16 v18, v0

    .line 2262
    .end local v0    # "exround":I
    .restart local v18    # "exround":I
    :cond_1e9
    :goto_1e9
    if-lez v4, :cond_25b

    .line 2265
    array-length v0, v3

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 2266
    .local v0, "$13":I
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    move v14, v2

    .line 2267
    :goto_1f4
    if-lez v0, :cond_202

    .line 2268
    aget-char v2, v3, v14

    const/16 v5, 0x45

    if-ne v2, v5, :cond_1fd

    .line 2269
    goto :goto_202

    .line 2267
    :cond_1fd
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_1f4

    .line 2273
    .end local v0    # "$13":I
    :cond_202
    :goto_202
    if-nez v14, :cond_221

    .line 2274
    array-length v0, v3

    add-int/2addr v0, v4

    const/16 v23, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v15, v0, [C

    .line 2275
    array-length v0, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v15, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2277
    add-int/lit8 v0, v4, 0x2

    .line 2278
    .local v0, "$14":I
    array-length v2, v3

    move/from16 v16, v2

    .line 2279
    :goto_216
    if-lez v0, :cond_21f

    .line 2280
    aput-char p5, v15, v16

    .line 2279
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_216

    .line 2283
    .end local v0    # "$14":I
    :cond_21f
    move-object v3, v15

    goto :goto_25b

    .line 2285
    :cond_221
    array-length v0, v3

    sub-int/2addr v0, v14

    const/16 v23, 0x2

    add-int/lit8 v0, v0, -0x2

    .line 2286
    .end local v17    # "places":I
    .local v0, "places":I
    if-le v0, v4, :cond_232

    .line 2287
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v5, v24

    invoke-direct {v1, v7, v5, v2}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2288
    :cond_232
    if-ge v0, v4, :cond_259

    .line 2289
    array-length v2, v3

    add-int/2addr v2, v4

    sub-int/2addr v2, v0

    new-array v15, v2, [C

    .line 2290
    add-int/lit8 v2, v14, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5, v15, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2293
    sub-int v2, v4, v0

    .line 2294
    .local v2, "$15":I
    add-int/lit8 v5, v14, 0x2

    .line 2295
    .end local v16    # "i":I
    .restart local v5    # "i":I
    :goto_243
    if-lez v2, :cond_24e

    .line 2296
    const/16 v7, 0x30

    aput-char v7, v15, v5

    .line 2295
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_243

    .line 2299
    .end local v2    # "$15":I
    :cond_24e
    add-int/lit8 v2, v14, 0x2

    invoke-static {v3, v2, v15, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2302
    move-object v3, v15

    move/from16 v17, v0

    move/from16 v16, v5

    goto :goto_25b

    .line 2288
    .end local v5    # "i":I
    .restart local v16    # "i":I
    :cond_259
    move/from16 v17, v0

    .line 2307
    .end local v0    # "places":I
    .restart local v17    # "places":I
    :cond_25b
    :goto_25b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2325
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 2340
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValueExact()I
    .registers 12

    .line 2354
    const/4 v0, 0x0

    .line 2356
    .local v0, "useexp":I
    const/4 v1, 0x0

    .line 2357
    .local v1, "i":I
    const/4 v2, 0x0

    .line 2361
    .local v2, "topdig":I
    iget-byte v3, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v4, 0x0

    if-nez v3, :cond_9

    .line 2362
    return v4

    .line 2364
    :cond_9
    iget-object v3, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 2365
    .local v3, "lodigit":I
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    const-string v7, "Conversion overflow: "

    const/16 v8, 0x9

    if-gez v6, :cond_45

    .line 2366
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v6

    .line 2368
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v9, v3, 0x1

    invoke-static {v6, v9}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 2370
    if-gez v3, :cond_26

    .line 2371
    return v4

    .line 2372
    :cond_26
    const/4 v0, 0x0

    goto :goto_4c

    .line 2369
    :cond_28
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decimal part non-zero: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2374
    :cond_45
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v6, v3

    if-gt v6, v8, :cond_a0

    .line 2376
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2379
    :goto_4c
    const/4 v6, 0x0

    .line 2381
    .local v6, "result":I
    add-int v9, v3, v0

    .line 2382
    .local v9, "$16":I
    const/4 v1, 0x0

    .line 2383
    :goto_50
    if-gt v1, v9, :cond_5e

    .line 2384
    mul-int/lit8 v6, v6, 0xa

    .line 2385
    if-gt v1, v3, :cond_5b

    .line 2386
    iget-object v10, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v10, v10, v1

    add-int/2addr v6, v10

    .line 2383
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 2391
    .end local v9    # "$16":I
    :cond_5e
    add-int v9, v3, v0

    if-ne v9, v8, :cond_99

    .line 2394
    const v8, 0x3b9aca00

    div-int v2, v6, v8

    .line 2395
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v4

    if-eq v2, v8, :cond_99

    .line 2397
    const/high16 v5, -0x80000000

    if-ne v6, v5, :cond_7e

    .line 2398
    iget-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v8, -0x1

    if-ne v5, v8, :cond_7e

    .line 2399
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v5, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7e

    .line 2400
    return v6

    .line 2401
    :cond_7e
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2406
    :cond_99
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v4, v5, :cond_9e

    .line 2407
    return v6

    .line 2408
    :cond_9e
    neg-int v4, v6

    return v4

    .line 2375
    .end local v6    # "result":I
    :cond_a0
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 2423
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api longValueExact()J
    .registers 15

    .line 2437
    const/4 v0, 0x0

    .line 2438
    .local v0, "cstart":I
    const/4 v1, 0x0

    .line 2440
    .local v1, "useexp":I
    const/4 v2, 0x0

    .line 2441
    .local v2, "i":I
    const-wide/16 v3, 0x0

    .line 2443
    .local v3, "topdig":J
    iget-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    const-wide/16 v6, 0x0

    if-nez v5, :cond_c

    .line 2444
    return-wide v6

    .line 2445
    :cond_c
    iget-object v5, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    .line 2446
    .local v5, "lodigit":I
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    const-string v10, "Conversion overflow: "

    const/16 v11, 0x12

    if-gez v9, :cond_4c

    .line 2447
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v5, v9

    .line 2449
    if-gez v5, :cond_20

    .line 2450
    const/4 v0, 0x0

    goto :goto_22

    .line 2452
    :cond_20
    add-int/lit8 v0, v5, 0x1

    .line 2453
    :goto_22
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v9, v0}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 2455
    if-gez v5, :cond_2d

    .line 2456
    return-wide v6

    .line 2457
    :cond_2d
    const/4 v1, 0x0

    goto :goto_56

    .line 2454
    :cond_2f
    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decimal part non-zero: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2459
    :cond_4c
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v7, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    add-int/2addr v6, v7

    if-gt v6, v11, :cond_b6

    .line 2461
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2468
    :goto_56
    const-wide/16 v6, 0x0

    .line 2470
    .local v6, "result":J
    add-int v9, v5, v1

    .line 2471
    .local v9, "$17":I
    const/4 v2, 0x0

    .line 2472
    :goto_5b
    if-gt v2, v9, :cond_6b

    .line 2473
    const-wide/16 v12, 0xa

    mul-long/2addr v6, v12

    .line 2474
    if-gt v2, v5, :cond_68

    .line 2475
    iget-object v12, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v12, v12, v2

    int-to-long v12, v12

    add-long/2addr v6, v12

    .line 2472
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 2480
    .end local v9    # "$17":I
    :cond_6b
    add-int v9, v5, v1

    if-ne v9, v11, :cond_af

    .line 2481
    const-wide v11, 0xde0b6b3a7640000L

    div-long v3, v6, v11

    .line 2482
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v11, 0x0

    aget-byte v9, v9, v11

    int-to-long v12, v9

    cmp-long v9, v3, v12

    if-eqz v9, :cond_af

    .line 2484
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-nez v8, :cond_94

    .line 2485
    iget-byte v8, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v9, -0x1

    if-ne v8, v9, :cond_94

    .line 2486
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v11

    const/16 v9, 0x9

    if-ne v8, v9, :cond_94

    .line 2487
    return-wide v6

    .line 2488
    :cond_94
    new-instance v8, Ljava/lang/ArithmeticException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2493
    :cond_af
    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v9, v8, :cond_b4

    .line 2494
    return-wide v6

    .line 2495
    :cond_b4
    neg-long v8, v6

    return-wide v8

    .line 2460
    .end local v6    # "result":J
    :cond_b6
    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public whitelist test-api max(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1419
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1439
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 1440
    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1442
    :cond_b
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api min(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1456
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1476
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    if-gtz v0, :cond_b

    .line 1477
    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1479
    :cond_b
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api movePointLeft(I)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "n"    # I

    .line 2516
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 2517
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2518
    sget-object v1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api movePointRight(I)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "n"    # I

    .line 2538
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 2539
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2540
    sget-object v1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1496
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 22
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1514
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1515
    .local v2, "multer":[B
    const/4 v3, 0x0

    .line 1517
    .local v3, "multand":[B
    const/4 v4, 0x0

    .line 1520
    .local v4, "acclen":I
    const/4 v5, 0x0

    .line 1521
    .local v5, "n":I
    const/4 v6, 0x0

    .line 1522
    .local v6, "mult":B
    iget-boolean v7, v1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v7, :cond_15

    .line 1523
    iget v7, v1, Landroid/icu/math/MathContext;->digits:I

    move-object/from16 v8, p0

    invoke-direct {v8, v0, v7}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    goto :goto_17

    .line 1522
    :cond_15
    move-object/from16 v8, p0

    .line 1524
    :goto_17
    move-object/from16 v7, p0

    .line 1527
    .local v7, "lhs":Landroid/icu/math/BigDecimal;
    const/4 v9, 0x0

    .line 1528
    .local v9, "padding":I
    iget v10, v1, Landroid/icu/math/MathContext;->digits:I

    .line 1529
    .local v10, "reqdig":I
    if-lez v10, :cond_39

    .line 1530
    iget-object v11, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v11, v11

    if-le v11, v10, :cond_2b

    .line 1531
    invoke-static {v7}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v11

    invoke-direct {v11, v1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    .line 1532
    :cond_2b
    iget-object v11, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v11, v11

    if-le v11, v10, :cond_47

    .line 1533
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v11

    invoke-direct {v11, v1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .end local p1    # "rhs":Landroid/icu/math/BigDecimal;
    .local v0, "rhs":Landroid/icu/math/BigDecimal;
    goto :goto_47

    .line 1538
    .end local v0    # "rhs":Landroid/icu/math/BigDecimal;
    .restart local p1    # "rhs":Landroid/icu/math/BigDecimal;
    :cond_39
    iget v11, v7, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v11, :cond_40

    .line 1539
    iget v11, v7, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v9, v11

    .line 1540
    :cond_40
    iget v11, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v11, :cond_47

    .line 1541
    iget v11, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v9, v11

    .line 1548
    .end local p1    # "rhs":Landroid/icu/math/BigDecimal;
    .restart local v0    # "rhs":Landroid/icu/math/BigDecimal;
    :cond_47
    :goto_47
    iget-object v11, v7, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v11, v11

    iget-object v12, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v12, v12

    if-ge v11, v12, :cond_55

    .line 1549
    iget-object v2, v7, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1550
    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object v13, v3

    goto :goto_5a

    .line 1552
    :cond_55
    iget-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1553
    iget-object v3, v7, Landroid/icu/math/BigDecimal;->mant:[B

    move-object v13, v3

    .line 1557
    .end local v3    # "multand":[B
    .local v13, "multand":[B
    :goto_5a
    array-length v3, v2

    array-length v11, v13

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, -0x1

    .line 1559
    .local v3, "multandlen":I
    const/4 v11, 0x0

    aget-byte v12, v2, v11

    aget-byte v14, v13, v11

    mul-int/2addr v12, v14

    const/16 v14, 0x9

    if-le v12, v14, :cond_6c

    .line 1560
    add-int/lit8 v4, v3, 0x1

    goto :goto_6d

    .line 1562
    :cond_6c
    move v4, v3

    .line 1565
    :goto_6d
    new-instance v12, Landroid/icu/math/BigDecimal;

    invoke-direct {v12}, Landroid/icu/math/BigDecimal;-><init>()V

    .line 1566
    .local v12, "res":Landroid/icu/math/BigDecimal;
    new-array v14, v4, [B

    .line 1572
    .local v14, "acc":[B
    array-length v15, v2

    .line 1573
    .local v15, "$7":I
    const/4 v5, 0x0

    move-object/from16 v18, v14

    move v14, v3

    move v3, v15

    move v15, v11

    move-object/from16 v11, v18

    .line 1574
    .end local v15    # "$7":I
    .local v3, "$7":I
    .local v11, "acc":[B
    .local v14, "multandlen":I
    :goto_7d
    if-lez v3, :cond_a7

    .line 1575
    move/from16 v16, v15

    aget-byte v15, v2, v5

    .line 1576
    .end local v6    # "mult":B
    .local v15, "mult":B
    if-eqz v15, :cond_96

    .line 1578
    move-object v6, v12

    .end local v12    # "res":Landroid/icu/math/BigDecimal;
    .local v6, "res":Landroid/icu/math/BigDecimal;
    array-length v12, v11

    move/from16 v17, v16

    const/16 v16, 0x1

    move/from16 v18, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    .end local v2    # "multer":[B
    .local v17, "multer":[B
    invoke-static/range {v11 .. v16}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v11

    goto :goto_9b

    .line 1576
    .end local v6    # "res":Landroid/icu/math/BigDecimal;
    .end local v17    # "multer":[B
    .restart local v2    # "multer":[B
    .restart local v12    # "res":Landroid/icu/math/BigDecimal;
    :cond_96
    move-object/from16 v17, v2

    move-object v6, v12

    move/from16 v2, v16

    .line 1581
    .end local v2    # "multer":[B
    .end local v12    # "res":Landroid/icu/math/BigDecimal;
    .restart local v6    # "res":Landroid/icu/math/BigDecimal;
    .restart local v17    # "multer":[B
    :goto_9b
    add-int/lit8 v14, v14, -0x1

    .line 1574
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, 0x1

    move-object v12, v6

    move v6, v15

    move v15, v2

    move-object/from16 v2, v17

    goto :goto_7d

    .end local v15    # "mult":B
    .end local v17    # "multer":[B
    .restart local v2    # "multer":[B
    .local v6, "mult":B
    .restart local v12    # "res":Landroid/icu/math/BigDecimal;
    :cond_a7
    move-object/from16 v17, v2

    move v2, v15

    .line 1585
    .end local v2    # "multer":[B
    .end local v3    # "$7":I
    .restart local v17    # "multer":[B
    iget-byte v3, v7, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v15, v0, Landroid/icu/math/BigDecimal;->ind:B

    mul-int/2addr v3, v15

    int-to-byte v3, v3

    iput-byte v3, v12, Landroid/icu/math/BigDecimal;->ind:B

    .line 1586
    iget v3, v7, Landroid/icu/math/BigDecimal;->exp:I

    iget v15, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v15

    sub-int/2addr v3, v9

    iput v3, v12, Landroid/icu/math/BigDecimal;->exp:I

    .line 1590
    if-nez v9, :cond_bf

    .line 1591
    iput-object v11, v12, Landroid/icu/math/BigDecimal;->mant:[B

    goto :goto_c7

    .line 1593
    :cond_bf
    array-length v3, v11

    add-int/2addr v3, v9

    invoke-static {v11, v3}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v3

    iput-object v3, v12, Landroid/icu/math/BigDecimal;->mant:[B

    .line 1594
    :goto_c7
    invoke-direct {v12, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api negate()Landroid/icu/math/BigDecimal;
    .registers 2

    .line 1610
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p1, "set"    # Landroid/icu/math/MathContext;

    .line 1627
    iget-boolean v0, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_d

    .line 1628
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/icu/math/BigDecimal;

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1629
    :cond_d
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1630
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 1631
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api plus()Landroid/icu/math/BigDecimal;
    .registers 2

    .line 1646
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 4
    .param p1, "set"    # Landroid/icu/math/MathContext;

    .line 1664
    iget-boolean v0, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_d

    .line 1665
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/icu/math/BigDecimal;

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1667
    :cond_d
    iget v0, p1, Landroid/icu/math/MathContext;->form:I

    if-nez v0, :cond_22

    .line 1668
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v0, :cond_22

    .line 1669
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    if-gt v0, v1, :cond_1d

    .line 1670
    return-object p0

    .line 1671
    :cond_1d
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    if-nez v0, :cond_22

    .line 1672
    return-object p0

    .line 1674
    :cond_22
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pow(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1696
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 14
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, "workdigits":I
    const/4 v1, 0x0

    .line 1730
    .local v1, "L":I
    const/4 v2, 0x0

    .line 1731
    .local v2, "i":I
    iget-boolean v3, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v3, :cond_c

    .line 1732
    iget v3, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v3}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1733
    :cond_c
    const v3, -0x3b9ac9ff

    const v4, 0x3b9ac9ff

    invoke-direct {p1, v3, v4}, Landroid/icu/math/BigDecimal;->intcheck(II)I

    move-result v3

    .line 1734
    .local v3, "n":I
    move-object v4, p0

    .line 1736
    .local v4, "lhs":Landroid/icu/math/BigDecimal;
    iget v5, p2, Landroid/icu/math/MathContext;->digits:I

    .line 1737
    .local v5, "reqdig":I
    const/4 v6, 0x1

    if-nez v5, :cond_43

    .line 1738
    iget-byte v7, p1, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v8, -0x1

    if-eq v7, v8, :cond_26

    .line 1740
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    move-object v9, v4

    goto :goto_66

    .line 1739
    :cond_26
    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Negative power: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1742
    :cond_43
    iget-object v7, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    iget v8, p1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v7, v8

    if-gt v7, v5, :cond_a1

    .line 1746
    iget-object v7, v4, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    if-le v7, v5, :cond_58

    .line 1747
    invoke-static {v4}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    invoke-direct {v7, p2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    .line 1750
    :cond_58
    iget-object v7, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    iget v8, p1, Landroid/icu/math/BigDecimal;->exp:I

    add-int v1, v7, v8

    .line 1751
    add-int v7, v5, v1

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v1

    move-object v9, v4

    .line 1757
    .end local v0    # "workdigits":I
    .end local v1    # "L":I
    .end local v4    # "lhs":Landroid/icu/math/BigDecimal;
    .local v7, "workdigits":I
    .local v8, "L":I
    .local v9, "lhs":Landroid/icu/math/BigDecimal;
    :goto_66
    new-instance v0, Landroid/icu/math/MathContext;

    iget v1, p2, Landroid/icu/math/MathContext;->form:I

    const/4 v4, 0x0

    iget v10, p2, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {v0, v7, v1, v4, v10}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    move-object v10, v0

    .line 1759
    .local v10, "workset":Landroid/icu/math/MathContext;
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    .line 1760
    .local v0, "res":Landroid/icu/math/BigDecimal;
    if-nez v3, :cond_76

    .line 1761
    return-object v0

    .line 1762
    :cond_76
    if-gez v3, :cond_79

    .line 1763
    neg-int v3, v3

    .line 1764
    :cond_79
    const/4 v1, 0x0

    .line 1766
    .local v1, "seenbit":Z
    const/4 v2, 0x1

    .line 1768
    :goto_7b
    add-int/2addr v3, v3

    .line 1769
    if-gez v3, :cond_83

    .line 1770
    const/4 v1, 0x1

    .line 1771
    invoke-virtual {v0, v9, v10}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1773
    :cond_83
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_97

    .line 1774
    nop

    .line 1780
    iget-byte v4, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-gez v4, :cond_92

    .line 1781
    sget-object v4, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v4, v0, v10}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1782
    :cond_92
    invoke-direct {v0, p2, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 1775
    :cond_97
    if-nez v1, :cond_9a

    .line 1776
    goto :goto_9e

    .line 1777
    :cond_9a
    invoke-virtual {v0, v0, v10}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1767
    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 1743
    .end local v7    # "workdigits":I
    .end local v8    # "L":I
    .end local v9    # "lhs":Landroid/icu/math/BigDecimal;
    .end local v10    # "workset":Landroid/icu/math/MathContext;
    .local v0, "workdigits":I
    .local v1, "L":I
    .restart local v4    # "lhs":Landroid/icu/math/BigDecimal;
    :cond_a1
    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many digits: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public whitelist test-api remainder(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1801
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v1, -0x1

    const/16 v2, 0x52

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remainder(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1820
    const/16 v0, 0x52

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scale()I
    .registers 2

    .line 2552
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_6

    .line 2553
    const/4 v0, 0x0

    return v0

    .line 2554
    :cond_6
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v0, v0

    return v0
.end method

.method public whitelist test-api setScale(I)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "scale"    # I

    .line 2577
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setScale(II)Landroid/icu/math/BigDecimal;
    .registers 10
    .param p1, "scale"    # I
    .param p2, "round"    # I

    .line 2606
    const/4 v0, 0x0

    .line 2607
    .local v0, "padding":I
    const/4 v1, 0x0

    .line 2610
    .local v1, "newlen":I
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v2

    .line 2611
    .local v2, "ourscale":I
    if-ne v2, p1, :cond_d

    .line 2612
    iget-byte v3, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v3, :cond_d

    .line 2613
    return-object p0

    .line 2614
    :cond_d
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    .line 2615
    .local v3, "res":Landroid/icu/math/BigDecimal;
    if-gt v2, p1, :cond_2c

    .line 2617
    if-nez v2, :cond_1a

    .line 2618
    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v4, p1

    move v0, v4

    .end local v0    # "padding":I
    .local v4, "padding":I
    goto :goto_1c

    .line 2620
    .end local v4    # "padding":I
    .restart local v0    # "padding":I
    :cond_1a
    sub-int v0, p1, v2

    .line 2621
    :goto_1c
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v5, v3, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v4

    iput-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2622
    neg-int v4, p1

    iput v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_51

    .line 2624
    :cond_2c
    if-ltz p1, :cond_55

    .line 2627
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    sub-int v5, v2, p1

    sub-int v1, v4, v5

    .line 2628
    invoke-direct {v3, v1, p2}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-result-object v3

    .line 2631
    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v5, p1

    if-eq v4, v5, :cond_51

    .line 2632
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v5, v3, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v4

    iput-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2633
    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    .line 2636
    :cond_51
    :goto_51
    const/4 v4, 0x0

    iput-byte v4, v3, Landroid/icu/math/BigDecimal;->form:B

    .line 2637
    return-object v3

    .line 2625
    :cond_55
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Negative scale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist test-api shortValueExact()S
    .registers 6

    .line 2651
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    .line 2652
    .local v0, "num":I
    const/16 v1, 0x7fff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    const/16 v4, -0x8000

    if-ge v0, v4, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    or-int/2addr v1, v2

    if-nez v1, :cond_18

    .line 2654
    int-to-short v1, v0

    return v1

    .line 2653
    :cond_18
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversion overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api signum()I
    .registers 2

    .line 2667
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    return v0
.end method

.method public whitelist test-api subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .registers 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    .line 1836
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .registers 5
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    .line 1852
    iget-boolean v0, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_9

    .line 1853
    iget v0, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v0}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    .line 1857
    :cond_9
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 1858
    .local v0, "newrhs":Landroid/icu/math/BigDecimal;
    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    .line 1859
    invoke-virtual {p0, v0, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toBigDecimal()Ljava/math/BigDecimal;
    .registers 4

    .line 2684
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public whitelist test-api toBigInteger()Ljava/math/BigInteger;
    .registers 8

    .line 2697
    const/4 v0, 0x0

    .line 2698
    .local v0, "res":Landroid/icu/math/BigDecimal;
    const/4 v1, 0x0

    .line 2699
    .local v1, "newlen":I
    const/4 v2, 0x0

    .line 2701
    .local v2, "newmant":[B
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_b

    move v3, v4

    goto :goto_c

    :cond_b
    move v3, v5

    :goto_c
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v6, :cond_11

    goto :goto_12

    :cond_11
    move v4, v5

    :goto_12
    and-int/2addr v3, v4

    if-eqz v3, :cond_17

    .line 2702
    move-object v0, p0

    goto :goto_45

    .line 2703
    :cond_17
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v3, :cond_22

    .line 2704
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 2705
    iput-byte v5, v0, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_45

    .line 2709
    :cond_22
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v3, v3

    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-lt v3, v4, :cond_2d

    .line 2710
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    goto :goto_45

    .line 2712
    :cond_2d
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 2713
    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    iget v4, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int v1, v3, v4

    .line 2714
    new-array v2, v1, [B

    .line 2715
    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2717
    iput-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    .line 2718
    iput-byte v5, v0, Landroid/icu/math/BigDecimal;->form:B

    .line 2719
    iput v5, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2724
    :goto_45
    new-instance v3, Ljava/math/BigInteger;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public whitelist test-api toBigIntegerExact()Ljava/math/BigInteger;
    .registers 4

    .line 2738
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-gez v0, :cond_30

    .line 2740
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_30

    .line 2741
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2743
    :cond_30
    :goto_30
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toCharArray()[C
    .registers 2

    .line 2755
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2774
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public whitelist test-api unscaledValue()Ljava/math/BigInteger;
    .registers 3

    .line 2787
    const/4 v0, 0x0

    .line 2788
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v1, :cond_7

    .line 2789
    move-object v0, p0

    goto :goto_e

    .line 2791
    :cond_7
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    .line 2792
    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    .line 2794
    :goto_e
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method
