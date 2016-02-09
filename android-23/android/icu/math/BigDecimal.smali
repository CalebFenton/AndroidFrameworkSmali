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
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final MaxArg:I = 0x3b9ac9ff

.field private static final MaxExp:I = 0x3b9ac9ff

.field private static final MinArg:I = -0x3b9ac9ff

.field private static final MinExp:I = -0x3b9ac9ff

.field public static final ONE:Landroid/icu/math/BigDecimal;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Landroid/icu/math/BigDecimal;

.field public static final ZERO:Landroid/icu/math/BigDecimal;

.field private static bytecar:[B = null

.field private static bytedig:[B = null

.field private static final isneg:B = -0x1t

.field private static final ispos:B = 0x1t

.field private static final iszero:B = 0x0t

.field private static final plainMC:Landroid/icu/math/MathContext;

.field private static final serialVersionUID:J = 0x726d636b3a313030L


# instance fields
.field private exp:I

.field private form:B

.field private ind:B

.field private mant:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 234
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-direct {v0, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@8
    sput-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@a
    .line 246
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@c
    const-wide/16 v2, 0x1

    #@e
    invoke-direct {v0, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@11
    sput-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@13
    .line 258
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@15
    const/16 v1, 0xa

    #@17
    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(I)V

    #@1a
    sput-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    #@1c
    .line 336
    new-instance v0, Landroid/icu/math/MathContext;

    #@1e
    invoke-direct {v0, v4, v4}, Landroid/icu/math/MathContext;-><init>(II)V

    #@21
    sput-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@23
    .line 348
    const/16 v0, 0xbe

    #@25
    new-array v0, v0, [B

    #@27
    sput-object v0, Landroid/icu/math/BigDecimal;->bytecar:[B

    #@29
    .line 349
    invoke-static {}, Landroid/icu/math/BigDecimal;->diginit()[B

    #@2c
    move-result-object v0

    #@2d
    sput-object v0, Landroid/icu/math/BigDecimal;->bytedig:[B

    #@2f
    .line 222
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 379
    const/4 v0, 0x0

    #@4
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    #@6
    .line 936
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "num"    # D

    #@0
    .prologue
    .line 755
    new-instance v0, Ljava/math/BigDecimal;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    #@5
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@c
    .line 756
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "num"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 771
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@6
    .line 379
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->form:B

    #@8
    .line 773
    const/4 v0, 0x0

    #@9
    .line 775
    .local v0, "i":I
    const/16 v2, 0x9

    #@b
    if-gt p1, v2, :cond_4

    #@d
    .line 776
    const/16 v2, -0x9

    #@f
    if-lt p1, v2, :cond_4

    #@11
    .line 780
    if-nez p1, :cond_0

    #@13
    .line 781
    sget-object v2, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@15
    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@17
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@19
    .line 782
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@1b
    .line 802
    :goto_0
    return-void

    #@1c
    .line 783
    :cond_0
    if-ne p1, v5, :cond_1

    #@1e
    .line 784
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@20
    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@22
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@24
    .line 785
    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@26
    goto :goto_0

    #@27
    .line 786
    :cond_1
    if-ne p1, v6, :cond_2

    #@29
    .line 787
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@2b
    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@2d
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2f
    .line 788
    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@31
    goto :goto_0

    #@32
    .line 791
    :cond_2
    new-array v2, v5, [B

    #@34
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@36
    .line 792
    if-lez p1, :cond_3

    #@38
    .line 793
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@3a
    int-to-byte v3, p1

    #@3b
    aput-byte v3, v2, v4

    #@3d
    .line 794
    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@3f
    goto :goto_0

    #@40
    .line 796
    :cond_3
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@42
    neg-int v3, p1

    #@43
    int-to-byte v3, v3

    #@44
    aput-byte v3, v2, v4

    #@46
    .line 797
    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@48
    goto :goto_0

    #@49
    .line 807
    :cond_4
    if-lez p1, :cond_5

    #@4b
    .line 808
    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@4d
    .line 809
    neg-int p1, p1

    #@4e
    .line 815
    :goto_1
    move v1, p1

    #@4f
    .line 817
    .local v1, "mun":I
    const/16 v0, 0x9

    #@51
    .line 819
    :goto_2
    div-int/lit8 v1, v1, 0xa

    #@53
    .line 820
    if-nez v1, :cond_6

    #@55
    .line 825
    rsub-int/lit8 v2, v0, 0xa

    #@57
    new-array v2, v2, [B

    #@59
    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@5b
    .line 827
    rsub-int/lit8 v2, v0, 0xa

    #@5d
    add-int/lit8 v0, v2, -0x1

    #@5f
    .line 829
    :goto_3
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@61
    rem-int/lit8 v3, p1, 0xa

    #@63
    int-to-byte v3, v3

    #@64
    neg-int v3, v3

    #@65
    int-to-byte v3, v3

    #@66
    aput-byte v3, v2, v0

    #@68
    .line 830
    div-int/lit8 p1, p1, 0xa

    #@6a
    .line 831
    if-nez p1, :cond_7

    #@6c
    .line 835
    return-void

    #@6d
    .line 811
    .end local v1    # "mun":I
    :cond_5
    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@6f
    goto :goto_1

    #@70
    .line 818
    .restart local v1    # "mun":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@72
    goto :goto_2

    #@73
    .line 828
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@75
    goto :goto_3
.end method

.method public constructor <init>(J)V
    .locals 11
    .param p1, "num"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide/16 v8, 0xa

    #@3
    const-wide/16 v6, 0x0

    #@5
    .line 850
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@8
    .line 379
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->form:B

    #@a
    .line 852
    const/4 v0, 0x0

    #@b
    .line 857
    .local v0, "i":I
    cmp-long v1, p1, v6

    #@d
    if-lez v1, :cond_0

    #@f
    .line 858
    const/4 v1, 0x1

    #@10
    iput-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@12
    .line 859
    neg-long p1, p1

    #@13
    .line 864
    :goto_0
    move-wide v2, p1

    #@14
    .line 866
    .local v2, "mun":J
    const/16 v0, 0x12

    #@16
    .line 868
    :goto_1
    div-long/2addr v2, v8

    #@17
    .line 869
    cmp-long v1, v2, v6

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 874
    rsub-int/lit8 v1, v0, 0x13

    #@1d
    new-array v1, v1, [B

    #@1f
    iput-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@21
    .line 876
    rsub-int/lit8 v1, v0, 0x13

    #@23
    add-int/lit8 v0, v1, -0x1

    #@25
    .line 878
    :goto_2
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@27
    rem-long v4, p1, v8

    #@29
    long-to-int v4, v4

    #@2a
    int-to-byte v4, v4

    #@2b
    neg-int v4, v4

    #@2c
    int-to-byte v4, v4

    #@2d
    aput-byte v4, v1, v0

    #@2f
    .line 879
    div-long/2addr p1, v8

    #@30
    .line 880
    cmp-long v1, p1, v6

    #@32
    if-nez v1, :cond_3

    #@34
    .line 884
    return-void

    #@35
    .line 860
    .end local v2    # "mun":J
    :cond_0
    cmp-long v1, p1, v6

    #@37
    if-nez v1, :cond_1

    #@39
    .line 861
    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@3b
    goto :goto_0

    #@3c
    .line 863
    :cond_1
    const/4 v1, -0x1

    #@3d
    iput-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@3f
    goto :goto_0

    #@40
    .line 867
    .restart local v2    # "mun":J
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@42
    goto :goto_1

    #@43
    .line 877
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@45
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 928
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {p0, v0, v2, v1}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    #@c
    .line 929
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "bd"    # Ljava/math/BigDecimal;

    #@0
    .prologue
    .line 429
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@7
    .line 430
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "bi"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 448
    const/16 v0, 0xa

    #@2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@9
    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 3
    .param p1, "bi"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 473
    const/16 v0, 0xa

    #@2
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@9
    .line 474
    if-gez p2, :cond_0

    #@b
    .line 475
    new-instance v0, Ljava/lang/NumberFormatException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Negative scale: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 476
    :cond_0
    neg-int v0, p2

    #@26
    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@28
    .line 477
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "inchars"    # [C

    #@0
    .prologue
    .line 496
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    #@5
    .line 497
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 23
    .param p1, "inchars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 518
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 379
    const/16 v21, 0x0

    #@5
    move/from16 v0, v21

    #@7
    move-object/from16 v1, p0

    #@9
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@b
    .line 524
    const/4 v14, 0x0

    #@c
    .line 525
    .local v14, "i":I
    const/16 v19, 0x0

    #@e
    .line 526
    .local v19, "si":C
    const/4 v11, 0x0

    #@f
    .line 527
    .local v11, "eneg":Z
    const/16 v16, 0x0

    #@11
    .line 528
    .local v16, "k":I
    const/4 v10, 0x0

    #@12
    .line 529
    .local v10, "elen":I
    const/4 v15, 0x0

    #@13
    .line 530
    .local v15, "j":I
    const/16 v20, 0x0

    #@15
    .line 531
    .local v20, "sj":C
    const/4 v9, 0x0

    #@16
    .line 532
    .local v9, "dvalue":I
    const/16 v18, 0x0

    #@18
    .line 539
    .local v18, "mag":I
    if-gtz p3, :cond_0

    #@1a
    .line 540
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@1d
    .line 544
    :cond_0
    const/16 v21, 0x1

    #@1f
    move/from16 v0, v21

    #@21
    move-object/from16 v1, p0

    #@23
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    #@25
    .line 545
    aget-char v21, p1, p2

    #@27
    const/16 v22, 0x2d

    #@29
    move/from16 v0, v21

    #@2b
    move/from16 v1, v22

    #@2d
    if-ne v0, v1, :cond_3

    #@2f
    .line 546
    add-int/lit8 p3, p3, -0x1

    #@31
    .line 547
    if-nez p3, :cond_1

    #@33
    .line 548
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@36
    .line 549
    :cond_1
    const/16 v21, -0x1

    #@38
    move/from16 v0, v21

    #@3a
    move-object/from16 v1, p0

    #@3c
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    #@3e
    .line 550
    add-int/lit8 p2, p2, 0x1

    #@40
    .line 559
    :cond_2
    :goto_0
    const/4 v12, 0x0

    #@41
    .line 560
    .local v12, "exotic":Z
    const/4 v13, 0x0

    #@42
    .line 561
    .local v13, "hadexp":Z
    const/4 v7, 0x0

    #@43
    .line 562
    .local v7, "d":I
    const/4 v8, -0x1

    #@44
    .line 563
    .local v8, "dotoff":I
    const/16 v17, -0x1

    #@46
    .line 565
    .local v17, "last":I
    move/from16 v2, p3

    #@48
    .line 566
    .local v2, "$1":I
    move/from16 v14, p2

    #@4a
    .line 567
    .end local v19    # "si":C
    :goto_1
    if-lez v2, :cond_16

    #@4c
    .line 568
    aget-char v19, p1, v14

    #@4e
    .line 569
    .local v19, "si":C
    const/16 v21, 0x30

    #@50
    move/from16 v0, v19

    #@52
    move/from16 v1, v21

    #@54
    if-lt v0, v1, :cond_5

    #@56
    .line 570
    const/16 v21, 0x39

    #@58
    move/from16 v0, v19

    #@5a
    move/from16 v1, v21

    #@5c
    if-gt v0, v1, :cond_5

    #@5e
    .line 571
    move/from16 v17, v14

    #@60
    .line 572
    add-int/lit8 v7, v7, 0x1

    #@62
    .line 567
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@64
    add-int/lit8 v14, v14, 0x1

    #@66
    goto :goto_1

    #@67
    .line 551
    .end local v2    # "$1":I
    .end local v7    # "d":I
    .end local v8    # "dotoff":I
    .end local v12    # "exotic":Z
    .end local v13    # "hadexp":Z
    .end local v17    # "last":I
    .local v19, "si":C
    :cond_3
    aget-char v21, p1, p2

    #@69
    const/16 v22, 0x2b

    #@6b
    move/from16 v0, v21

    #@6d
    move/from16 v1, v22

    #@6f
    if-ne v0, v1, :cond_2

    #@71
    .line 552
    add-int/lit8 p3, p3, -0x1

    #@73
    .line 553
    if-nez p3, :cond_4

    #@75
    .line 554
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@78
    .line 555
    :cond_4
    add-int/lit8 p2, p2, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 575
    .restart local v2    # "$1":I
    .restart local v7    # "d":I
    .restart local v8    # "dotoff":I
    .restart local v12    # "exotic":Z
    .restart local v13    # "hadexp":Z
    .restart local v17    # "last":I
    .local v19, "si":C
    :cond_5
    const/16 v21, 0x2e

    #@7d
    move/from16 v0, v19

    #@7f
    move/from16 v1, v21

    #@81
    if-ne v0, v1, :cond_7

    #@83
    .line 576
    if-ltz v8, :cond_6

    #@85
    .line 577
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@88
    .line 578
    :cond_6
    sub-int v8, v14, p2

    #@8a
    .line 579
    goto :goto_2

    #@8b
    .line 581
    :cond_7
    const/16 v21, 0x65

    #@8d
    move/from16 v0, v19

    #@8f
    move/from16 v1, v21

    #@91
    if-eq v0, v1, :cond_9

    #@93
    .line 582
    const/16 v21, 0x45

    #@95
    move/from16 v0, v19

    #@97
    move/from16 v1, v21

    #@99
    if-eq v0, v1, :cond_9

    #@9b
    .line 583
    invoke-static/range {v19 .. v19}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    #@9e
    move-result v21

    #@9f
    if-nez v21, :cond_8

    #@a1
    .line 584
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@a4
    .line 586
    :cond_8
    const/4 v12, 0x1

    #@a5
    .line 587
    move/from16 v17, v14

    #@a7
    .line 588
    add-int/lit8 v7, v7, 0x1

    #@a9
    .line 589
    goto :goto_2

    #@aa
    .line 593
    :cond_9
    sub-int v21, v14, p2

    #@ac
    add-int/lit8 v22, p3, -0x2

    #@ae
    move/from16 v0, v21

    #@b0
    move/from16 v1, v22

    #@b2
    if-le v0, v1, :cond_a

    #@b4
    .line 594
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@b7
    .line 595
    :cond_a
    const/4 v11, 0x0

    #@b8
    .line 596
    add-int/lit8 v21, v14, 0x1

    #@ba
    aget-char v21, p1, v21

    #@bc
    const/16 v22, 0x2d

    #@be
    move/from16 v0, v21

    #@c0
    move/from16 v1, v22

    #@c2
    if-ne v0, v1, :cond_f

    #@c4
    .line 597
    const/4 v11, 0x1

    #@c5
    .line 598
    add-int/lit8 v16, v14, 0x2

    #@c7
    .line 604
    :goto_3
    sub-int v21, v16, p2

    #@c9
    sub-int v10, p3, v21

    #@cb
    .line 605
    if-nez v10, :cond_11

    #@cd
    const/16 v21, 0x1

    #@cf
    move/from16 v22, v21

    #@d1
    :goto_4
    const/16 v21, 0x9

    #@d3
    move/from16 v0, v21

    #@d5
    if-le v10, v0, :cond_12

    #@d7
    const/16 v21, 0x1

    #@d9
    :goto_5
    or-int v21, v21, v22

    #@db
    if-eqz v21, :cond_b

    #@dd
    .line 606
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@e0
    .line 608
    :cond_b
    move v3, v10

    #@e1
    .line 609
    .local v3, "$2":I
    move/from16 v15, v16

    #@e3
    .line 610
    .end local v20    # "sj":C
    :goto_6
    if-lez v3, :cond_14

    #@e5
    .line 611
    aget-char v20, p1, v15

    #@e7
    .line 612
    .local v20, "sj":C
    const/16 v21, 0x30

    #@e9
    move/from16 v0, v20

    #@eb
    move/from16 v1, v21

    #@ed
    if-ge v0, v1, :cond_c

    #@ef
    .line 613
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@f2
    .line 614
    :cond_c
    const/16 v21, 0x39

    #@f4
    move/from16 v0, v20

    #@f6
    move/from16 v1, v21

    #@f8
    if-le v0, v1, :cond_13

    #@fa
    .line 615
    invoke-static/range {v20 .. v20}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    #@fd
    move-result v21

    #@fe
    if-nez v21, :cond_d

    #@100
    .line 616
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@103
    .line 617
    :cond_d
    const/16 v21, 0xa

    #@105
    invoke-static/range {v20 .. v21}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@108
    move-result v9

    #@109
    .line 618
    if-gez v9, :cond_e

    #@10b
    .line 619
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@10e
    .line 622
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    #@110
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@112
    move/from16 v21, v0

    #@114
    mul-int/lit8 v21, v21, 0xa

    #@116
    add-int v21, v21, v9

    #@118
    move/from16 v0, v21

    #@11a
    move-object/from16 v1, p0

    #@11c
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@11e
    .line 610
    add-int/lit8 v3, v3, -0x1

    #@120
    add-int/lit8 v15, v15, 0x1

    #@122
    goto :goto_6

    #@123
    .line 599
    .end local v3    # "$2":I
    .local v20, "sj":C
    :cond_f
    add-int/lit8 v21, v14, 0x1

    #@125
    aget-char v21, p1, v21

    #@127
    const/16 v22, 0x2b

    #@129
    move/from16 v0, v21

    #@12b
    move/from16 v1, v22

    #@12d
    if-ne v0, v1, :cond_10

    #@12f
    .line 600
    add-int/lit8 v16, v14, 0x2

    #@131
    goto :goto_3

    #@132
    .line 602
    :cond_10
    add-int/lit8 v16, v14, 0x1

    #@134
    goto :goto_3

    #@135
    .line 605
    :cond_11
    const/16 v21, 0x0

    #@137
    move/from16 v22, v21

    #@139
    goto :goto_4

    #@13a
    :cond_12
    const/16 v21, 0x0

    #@13c
    goto :goto_5

    #@13d
    .line 621
    .restart local v3    # "$2":I
    .local v20, "sj":C
    :cond_13
    add-int/lit8 v9, v20, -0x30

    #@13f
    goto :goto_7

    #@140
    .line 625
    .end local v20    # "sj":C
    :cond_14
    if-eqz v11, :cond_15

    #@142
    .line 626
    move-object/from16 v0, p0

    #@144
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@146
    move/from16 v21, v0

    #@148
    move/from16 v0, v21

    #@14a
    neg-int v0, v0

    #@14b
    move/from16 v21, v0

    #@14d
    move/from16 v0, v21

    #@14f
    move-object/from16 v1, p0

    #@151
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@153
    .line 627
    :cond_15
    const/4 v13, 0x1

    #@154
    .line 633
    .end local v3    # "$2":I
    .end local v19    # "si":C
    :cond_16
    if-nez v7, :cond_17

    #@156
    .line 634
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@159
    .line 635
    :cond_17
    if-ltz v8, :cond_18

    #@15b
    .line 636
    move-object/from16 v0, p0

    #@15d
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@15f
    move/from16 v21, v0

    #@161
    add-int v21, v21, v8

    #@163
    sub-int v21, v21, v7

    #@165
    move/from16 v0, v21

    #@167
    move-object/from16 v1, p0

    #@169
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@16b
    .line 640
    :cond_18
    add-int/lit8 v4, v17, -0x1

    #@16d
    .line 641
    .local v4, "$3":I
    move/from16 v14, p2

    #@16f
    .line 642
    :goto_8
    if-gt v14, v4, :cond_1b

    #@171
    .line 643
    aget-char v19, p1, v14

    #@173
    .line 644
    .restart local v19    # "si":C
    const/16 v21, 0x30

    #@175
    move/from16 v0, v19

    #@177
    move/from16 v1, v21

    #@179
    if-ne v0, v1, :cond_19

    #@17b
    .line 645
    add-int/lit8 p2, p2, 0x1

    #@17d
    .line 646
    add-int/lit8 v8, v8, -0x1

    #@17f
    .line 647
    add-int/lit8 v7, v7, -0x1

    #@181
    .line 642
    :goto_9
    add-int/lit8 v14, v14, 0x1

    #@183
    goto :goto_8

    #@184
    .line 648
    :cond_19
    const/16 v21, 0x2e

    #@186
    move/from16 v0, v19

    #@188
    move/from16 v1, v21

    #@18a
    if-ne v0, v1, :cond_1a

    #@18c
    .line 649
    add-int/lit8 p2, p2, 0x1

    #@18e
    .line 650
    add-int/lit8 v8, v8, -0x1

    #@190
    goto :goto_9

    #@191
    .line 651
    :cond_1a
    const/16 v21, 0x39

    #@193
    move/from16 v0, v19

    #@195
    move/from16 v1, v21

    #@197
    if-gt v0, v1, :cond_1d

    #@199
    .line 665
    .end local v19    # "si":C
    :cond_1b
    new-array v0, v7, [B

    #@19b
    move-object/from16 v21, v0

    #@19d
    move-object/from16 v0, v21

    #@19f
    move-object/from16 v1, p0

    #@1a1
    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    #@1a3
    .line 666
    move/from16 v15, p2

    #@1a5
    .line 667
    if-eqz v12, :cond_20

    #@1a7
    .line 670
    move v5, v7

    #@1a8
    .line 671
    .local v5, "$4":I
    const/4 v14, 0x0

    #@1a9
    .line 672
    :goto_a
    if-lez v5, :cond_22

    #@1ab
    .line 673
    if-ne v14, v8, :cond_1c

    #@1ad
    .line 674
    add-int/lit8 v15, v15, 0x1

    #@1af
    .line 675
    :cond_1c
    aget-char v20, p1, v15

    #@1b1
    .line 676
    .restart local v20    # "sj":C
    const/16 v21, 0x39

    #@1b3
    move/from16 v0, v20

    #@1b5
    move/from16 v1, v21

    #@1b7
    if-gt v0, v1, :cond_1e

    #@1b9
    .line 677
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1bd
    move-object/from16 v21, v0

    #@1bf
    add-int/lit8 v22, v20, -0x30

    #@1c1
    move/from16 v0, v22

    #@1c3
    int-to-byte v0, v0

    #@1c4
    move/from16 v22, v0

    #@1c6
    aput-byte v22, v21, v14

    #@1c8
    .line 684
    :goto_b
    add-int/lit8 v15, v15, 0x1

    #@1ca
    .line 672
    add-int/lit8 v5, v5, -0x1

    #@1cc
    add-int/lit8 v14, v14, 0x1

    #@1ce
    goto :goto_a

    #@1cf
    .line 654
    .end local v5    # "$4":I
    .end local v20    # "sj":C
    .restart local v19    # "si":C
    :cond_1d
    const/16 v21, 0xa

    #@1d1
    move/from16 v0, v19

    #@1d3
    move/from16 v1, v21

    #@1d5
    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@1d8
    move-result v21

    #@1d9
    if-nez v21, :cond_1b

    #@1db
    .line 657
    add-int/lit8 p2, p2, 0x1

    #@1dd
    .line 658
    add-int/lit8 v8, v8, -0x1

    #@1df
    .line 659
    add-int/lit8 v7, v7, -0x1

    #@1e1
    goto :goto_9

    #@1e2
    .line 679
    .end local v19    # "si":C
    .restart local v5    # "$4":I
    .restart local v20    # "sj":C
    :cond_1e
    const/16 v21, 0xa

    #@1e4
    invoke-static/range {v20 .. v21}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@1e7
    move-result v9

    #@1e8
    .line 680
    if-gez v9, :cond_1f

    #@1ea
    .line 681
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@1ed
    .line 682
    :cond_1f
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1f1
    move-object/from16 v21, v0

    #@1f3
    int-to-byte v0, v9

    #@1f4
    move/from16 v22, v0

    #@1f6
    aput-byte v22, v21, v14

    #@1f8
    goto :goto_b

    #@1f9
    .line 692
    .end local v5    # "$4":I
    .end local v20    # "sj":C
    :cond_20
    move v6, v7

    #@1fa
    .line 693
    .local v6, "$5":I
    const/4 v14, 0x0

    #@1fb
    .line 694
    :goto_c
    if-lez v6, :cond_22

    #@1fd
    .line 695
    if-ne v14, v8, :cond_21

    #@1ff
    .line 696
    add-int/lit8 v15, v15, 0x1

    #@201
    .line 697
    :cond_21
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@205
    move-object/from16 v21, v0

    #@207
    aget-char v22, p1, v15

    #@209
    add-int/lit8 v22, v22, -0x30

    #@20b
    move/from16 v0, v22

    #@20d
    int-to-byte v0, v0

    #@20e
    move/from16 v22, v0

    #@210
    aput-byte v22, v21, v14

    #@212
    .line 698
    add-int/lit8 v15, v15, 0x1

    #@214
    .line 694
    add-int/lit8 v6, v6, -0x1

    #@216
    add-int/lit8 v14, v14, 0x1

    #@218
    goto :goto_c

    #@219
    .line 710
    .end local v6    # "$5":I
    :cond_22
    move-object/from16 v0, p0

    #@21b
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@21d
    move-object/from16 v21, v0

    #@21f
    const/16 v22, 0x0

    #@221
    aget-byte v21, v21, v22

    #@223
    if-nez v21, :cond_25

    #@225
    .line 711
    const/16 v21, 0x0

    #@227
    move/from16 v0, v21

    #@229
    move-object/from16 v1, p0

    #@22b
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    #@22d
    .line 713
    move-object/from16 v0, p0

    #@22f
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@231
    move/from16 v21, v0

    #@233
    if-lez v21, :cond_23

    #@235
    .line 714
    const/16 v21, 0x0

    #@237
    move/from16 v0, v21

    #@239
    move-object/from16 v1, p0

    #@23b
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@23d
    .line 715
    :cond_23
    if-eqz v13, :cond_24

    #@23f
    .line 716
    sget-object v21, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@241
    move-object/from16 v0, v21

    #@243
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@245
    move-object/from16 v21, v0

    #@247
    move-object/from16 v0, v21

    #@249
    move-object/from16 v1, p0

    #@24b
    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    #@24d
    .line 717
    const/16 v21, 0x0

    #@24f
    move/from16 v0, v21

    #@251
    move-object/from16 v1, p0

    #@253
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@255
    .line 731
    :cond_24
    :goto_d
    return-void

    #@256
    .line 722
    :cond_25
    if-eqz v13, :cond_24

    #@258
    .line 723
    const/16 v21, 0x1

    #@25a
    move/from16 v0, v21

    #@25c
    move-object/from16 v1, p0

    #@25e
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@260
    .line 725
    move-object/from16 v0, p0

    #@262
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@264
    move/from16 v21, v0

    #@266
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@26a
    move-object/from16 v22, v0

    #@26c
    move-object/from16 v0, v22

    #@26e
    array-length v0, v0

    #@26f
    move/from16 v22, v0

    #@271
    add-int v21, v21, v22

    #@273
    add-int/lit8 v18, v21, -0x1

    #@275
    .line 726
    const v21, -0x3b9ac9ff

    #@278
    move/from16 v0, v18

    #@27a
    move/from16 v1, v21

    #@27c
    if-ge v0, v1, :cond_26

    #@27e
    const/16 v21, 0x1

    #@280
    move/from16 v22, v21

    #@282
    :goto_e
    const v21, 0x3b9ac9ff

    #@285
    move/from16 v0, v18

    #@287
    move/from16 v1, v21

    #@289
    if-le v0, v1, :cond_27

    #@28b
    const/16 v21, 0x1

    #@28d
    :goto_f
    or-int v21, v21, v22

    #@28f
    if-eqz v21, :cond_24

    #@291
    .line 727
    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    #@294
    goto :goto_d

    #@295
    .line 726
    :cond_26
    const/16 v21, 0x0

    #@297
    move/from16 v22, v21

    #@299
    goto :goto_e

    #@29a
    :cond_27
    const/16 v21, 0x0

    #@29c
    goto :goto_f
.end method

.method private static final allzero([BI)Z
    .locals 4
    .param p0, "array"    # [B
    .param p1, "start"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3758
    const/4 v1, 0x0

    #@2
    .line 3759
    .local v1, "i":I
    if-gez p1, :cond_0

    #@4
    .line 3760
    const/4 p1, 0x0

    #@5
    .line 3762
    :cond_0
    array-length v2, p0

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .line 3763
    .local v0, "$25":I
    move v1, p1

    #@9
    .line 3764
    :goto_0
    if-gt v1, v0, :cond_2

    #@b
    .line 3765
    aget-byte v2, p0, v1

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 3766
    return v3

    #@10
    .line 3764
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 3769
    :cond_2
    const/4 v2, 0x1

    #@14
    return v2
.end method

.method private bad([C)V
    .locals 3
    .param p1, "s"    # [C

    #@0
    .prologue
    .line 3414
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Not a number: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method private badarg(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Bad argument "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "to"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, ":"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    const-string/jumbo v2, " "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method private static final byteaddsub([BI[BIIZ)[B
    .locals 17
    .param p0, "a"    # [B
    .param p1, "avlen"    # I
    .param p2, "b"    # [B
    .param p3, "bvlen"    # I
    .param p4, "m"    # I
    .param p5, "reuse"    # Z

    #@0
    .prologue
    .line 3476
    const/4 v11, 0x0

    #@1
    .line 3477
    .local v11, "op":I
    const/4 v7, 0x0

    #@2
    .line 3479
    .local v7, "dp90":I
    const/4 v8, 0x0

    #@3
    .line 3482
    .local v8, "i":I
    move-object/from16 v0, p0

    #@5
    array-length v2, v0

    #@6
    .line 3483
    .local v2, "alength":I
    move-object/from16 v0, p2

    #@8
    array-length v4, v0

    #@9
    .line 3484
    .local v4, "blength":I
    add-int/lit8 v3, p1, -0x1

    #@b
    .line 3485
    .local v3, "ap":I
    add-int/lit8 v5, p3, -0x1

    #@d
    .line 3486
    .local v5, "bp":I
    move v9, v5

    #@e
    .line 3487
    .local v9, "maxarr":I
    if-ge v9, v3, :cond_0

    #@10
    .line 3488
    move v9, v3

    #@11
    .line 3489
    :cond_0
    const/4 v13, 0x0

    #@12
    check-cast v13, [B

    #@14
    .line 3490
    .local v13, "reb":[B
    if-eqz p5, :cond_1

    #@16
    .line 3491
    add-int/lit8 v14, v9, 0x1

    #@18
    if-ne v14, v2, :cond_1

    #@1a
    .line 3492
    move-object/from16 v13, p0

    #@1c
    .line 3493
    :cond_1
    if-nez v13, :cond_2

    #@1e
    .line 3494
    add-int/lit8 v14, v9, 0x1

    #@20
    new-array v13, v14, [B

    #@22
    .line 3496
    :cond_2
    const/4 v12, 0x0

    #@23
    .line 3497
    .local v12, "quickm":Z
    const/4 v14, 0x1

    #@24
    move/from16 v0, p4

    #@26
    if-ne v0, v14, :cond_8

    #@28
    .line 3498
    const/4 v12, 0x1

    #@29
    .line 3502
    :cond_3
    :goto_0
    const/4 v6, 0x0

    #@2a
    .line 3504
    .local v6, "digit":I
    move v11, v9

    #@2b
    .line 3505
    :goto_1
    if-ltz v11, :cond_c

    #@2d
    .line 3506
    if-ltz v3, :cond_5

    #@2f
    .line 3507
    if-ge v3, v2, :cond_4

    #@31
    .line 3508
    aget-byte v14, p0, v3

    #@33
    add-int/2addr v6, v14

    #@34
    .line 3509
    :cond_4
    add-int/lit8 v3, v3, -0x1

    #@36
    .line 3511
    :cond_5
    if-ltz v5, :cond_7

    #@38
    .line 3512
    if-ge v5, v4, :cond_6

    #@3a
    .line 3513
    if-eqz v12, :cond_a

    #@3c
    .line 3514
    if-lez p4, :cond_9

    #@3e
    .line 3515
    aget-byte v14, p2, v5

    #@40
    add-int/2addr v6, v14

    #@41
    .line 3521
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, -0x1

    #@43
    .line 3524
    :cond_7
    const/16 v14, 0xa

    #@45
    if-ge v6, v14, :cond_b

    #@47
    .line 3525
    if-ltz v6, :cond_b

    #@49
    .line 3527
    int-to-byte v14, v6

    #@4a
    aput-byte v14, v13, v11

    #@4c
    .line 3528
    const/4 v6, 0x0

    #@4d
    .line 3505
    :goto_3
    add-int/lit8 v11, v11, -0x1

    #@4f
    goto :goto_1

    #@50
    .line 3499
    .end local v6    # "digit":I
    :cond_8
    const/4 v14, -0x1

    #@51
    move/from16 v0, p4

    #@53
    if-ne v0, v14, :cond_3

    #@55
    .line 3500
    const/4 v12, 0x1

    #@56
    goto :goto_0

    #@57
    .line 3517
    .restart local v6    # "digit":I
    :cond_9
    aget-byte v14, p2, v5

    #@59
    sub-int/2addr v6, v14

    #@5a
    goto :goto_2

    #@5b
    .line 3519
    :cond_a
    aget-byte v14, p2, v5

    #@5d
    mul-int v14, v14, p4

    #@5f
    add-int/2addr v6, v14

    #@60
    goto :goto_2

    #@61
    .line 3532
    :cond_b
    add-int/lit8 v7, v6, 0x5a

    #@63
    .line 3533
    sget-object v14, Landroid/icu/math/BigDecimal;->bytedig:[B

    #@65
    aget-byte v14, v14, v7

    #@67
    aput-byte v14, v13, v11

    #@69
    .line 3534
    sget-object v14, Landroid/icu/math/BigDecimal;->bytecar:[B

    #@6b
    aget-byte v6, v14, v7

    #@6d
    goto :goto_3

    #@6e
    .line 3538
    :cond_c
    if-nez v6, :cond_d

    #@70
    .line 3539
    return-object v13

    #@71
    .line 3544
    :cond_d
    const/4 v10, 0x0

    #@72
    check-cast v10, [B

    #@74
    .line 3545
    .local v10, "newarr":[B
    if-eqz p5, :cond_e

    #@76
    .line 3546
    add-int/lit8 v14, v9, 0x2

    #@78
    move-object/from16 v0, p0

    #@7a
    array-length v15, v0

    #@7b
    if-ne v14, v15, :cond_e

    #@7d
    .line 3547
    move-object/from16 v10, p0

    #@7f
    .line 3548
    :cond_e
    if-nez v10, :cond_f

    #@81
    .line 3549
    add-int/lit8 v14, v9, 0x2

    #@83
    new-array v10, v14, [B

    #@85
    .line 3550
    :cond_f
    int-to-byte v14, v6

    #@86
    const/4 v15, 0x0

    #@87
    aput-byte v14, v10, v15

    #@89
    .line 3552
    const/16 v14, 0xa

    #@8b
    if-ge v9, v14, :cond_10

    #@8d
    .line 3553
    add-int/lit8 v1, v9, 0x1

    #@8f
    .line 3554
    .local v1, "$24":I
    const/4 v8, 0x0

    #@90
    .line 3555
    :goto_4
    if-lez v1, :cond_11

    #@92
    .line 3556
    add-int/lit8 v14, v8, 0x1

    #@94
    aget-byte v15, v13, v8

    #@96
    aput-byte v15, v10, v14

    #@98
    .line 3555
    add-int/lit8 v1, v1, -0x1

    #@9a
    add-int/lit8 v8, v8, 0x1

    #@9c
    goto :goto_4

    #@9d
    .line 3560
    .end local v1    # "$24":I
    :cond_10
    add-int/lit8 v14, v9, 0x1

    #@9f
    const/4 v15, 0x0

    #@a0
    const/16 v16, 0x1

    #@a2
    move/from16 v0, v16

    #@a4
    invoke-static {v13, v15, v10, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a7
    .line 3561
    :cond_11
    return-object v10
.end method

.method private checkdigits(Landroid/icu/math/BigDecimal;I)V
    .locals 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "dig"    # I

    #@0
    .prologue
    .line 3613
    if-nez p2, :cond_0

    #@2
    .line 3614
    return-void

    #@3
    .line 3616
    :cond_0
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@5
    array-length v0, v0

    #@6
    if-le v0, p2, :cond_1

    #@8
    .line 3617
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@a
    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 3618
    new-instance v0, Ljava/lang/ArithmeticException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Too many digits: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 3619
    :cond_1
    if-nez p1, :cond_2

    #@30
    .line 3620
    return-void

    #@31
    .line 3621
    :cond_2
    iget-object v0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@33
    array-length v0, v0

    #@34
    if-le v0, p2, :cond_3

    #@36
    .line 3622
    iget-object v0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@38
    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_3

    #@3e
    .line 3623
    new-instance v0, Ljava/lang/ArithmeticException;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "Too many digits: "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 3612
    :cond_3
    return-void
.end method

.method private static final clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p0, "dec"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 3599
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@2
    invoke-direct {v0}, Landroid/icu/math/BigDecimal;-><init>()V

    #@5
    .line 3600
    .local v0, "copy":Landroid/icu/math/BigDecimal;
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@7
    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@9
    .line 3601
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@b
    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@d
    .line 3602
    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->form:B

    #@f
    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->form:B

    #@11
    .line 3603
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@13
    iput-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@15
    .line 3604
    return-object v0
.end method

.method private static final diginit()[B
    .locals 5

    #@0
    .prologue
    .line 3571
    const/4 v1, 0x0

    #@1
    .line 3572
    .local v1, "op":I
    const/4 v0, 0x0

    #@2
    .line 3573
    .local v0, "digit":I
    const/16 v3, 0xbe

    #@4
    new-array v2, v3, [B

    #@6
    .line 3575
    .local v2, "work":[B
    const/4 v1, 0x0

    #@7
    .line 3576
    :goto_0
    const/16 v3, 0xbd

    #@9
    if-gt v1, v3, :cond_1

    #@b
    .line 3577
    add-int/lit8 v0, v1, -0x5a

    #@d
    .line 3578
    if-ltz v0, :cond_0

    #@f
    .line 3579
    rem-int/lit8 v3, v0, 0xa

    #@11
    int-to-byte v3, v3

    #@12
    aput-byte v3, v2, v1

    #@14
    .line 3580
    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    #@16
    div-int/lit8 v4, v0, 0xa

    #@18
    int-to-byte v4, v4

    #@19
    aput-byte v4, v3, v1

    #@1b
    .line 3576
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 3584
    :cond_0
    add-int/lit8 v0, v0, 0x64

    #@20
    .line 3585
    rem-int/lit8 v3, v0, 0xa

    #@22
    int-to-byte v3, v3

    #@23
    aput-byte v3, v2, v1

    #@25
    .line 3586
    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    #@27
    div-int/lit8 v4, v0, 0xa

    #@29
    add-int/lit8 v4, v4, -0xa

    #@2b
    int-to-byte v4, v4

    #@2c
    aput-byte v4, v3, v1

    #@2e
    goto :goto_1

    #@2f
    .line 3589
    :cond_1
    return-object v2
.end method

.method private dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;
    .locals 30
    .param p1, "code"    # C
    .param p2, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p3, "set"    # Landroid/icu/math/MathContext;
    .param p4, "scale"    # I

    #@0
    .prologue
    .line 3126
    const/16 v27, 0x0

    #@2
    .line 3127
    .local v27, "thisdigit":I
    const/4 v15, 0x0

    #@3
    .line 3128
    .local v15, "i":I
    const/16 v28, 0x0

    #@5
    .line 3129
    .local v28, "v2":B
    const/4 v12, 0x0

    #@6
    .line 3130
    .local v12, "ba":I
    const/16 v18, 0x0

    #@8
    .line 3131
    .local v18, "mult":I
    const/16 v26, 0x0

    #@a
    .line 3132
    .local v26, "start":I
    const/16 v23, 0x0

    #@c
    .line 3133
    .local v23, "padding":I
    const/4 v13, 0x0

    #@d
    .line 3134
    .local v13, "d":I
    const/16 v22, 0x0

    #@f
    .line 3135
    .local v22, "newvar1":[B
    const/16 v16, 0x0

    #@11
    .line 3136
    .local v16, "lasthave":B
    const/4 v10, 0x0

    #@12
    .line 3137
    .local v10, "actdig":I
    const/16 v21, 0x0

    #@14
    .line 3139
    .local v21, "newmant":[B
    move-object/from16 v0, p3

    #@16
    iget-boolean v6, v0, Landroid/icu/math/MathContext;->lostDigits:Z

    #@18
    if-eqz v6, :cond_0

    #@1a
    .line 3140
    move-object/from16 v0, p3

    #@1c
    iget v6, v0, Landroid/icu/math/MathContext;->digits:I

    #@1e
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, p2

    #@22
    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@25
    .line 3141
    :cond_0
    move-object/from16 v17, p0

    #@27
    .line 3144
    .local v17, "lhs":Landroid/icu/math/BigDecimal;
    move-object/from16 v0, p2

    #@29
    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@2b
    if-nez v6, :cond_1

    #@2d
    .line 3145
    new-instance v6, Ljava/lang/ArithmeticException;

    #@2f
    const-string/jumbo v7, "Divide by 0"

    #@32
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@35
    throw v6

    #@36
    .line 3146
    :cond_1
    move-object/from16 v0, v17

    #@38
    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@3a
    if-nez v6, :cond_4

    #@3c
    .line 3147
    move-object/from16 v0, p3

    #@3e
    iget v6, v0, Landroid/icu/math/MathContext;->form:I

    #@40
    if-eqz v6, :cond_2

    #@42
    .line 3148
    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@44
    return-object v6

    #@45
    .line 3149
    :cond_2
    const/4 v6, -0x1

    #@46
    move/from16 v0, p4

    #@48
    if-ne v0, v6, :cond_3

    #@4a
    .line 3150
    return-object v17

    #@4b
    .line 3151
    :cond_3
    move-object/from16 v0, v17

    #@4d
    move/from16 v1, p4

    #@4f
    invoke-virtual {v0, v1}, Landroid/icu/math/BigDecimal;->setScale(I)Landroid/icu/math/BigDecimal;

    #@52
    move-result-object v6

    #@53
    return-object v6

    #@54
    .line 3155
    :cond_4
    move-object/from16 v0, p3

    #@56
    iget v0, v0, Landroid/icu/math/MathContext;->digits:I

    #@58
    move/from16 v24, v0

    #@5a
    .line 3156
    .local v24, "reqdig":I
    if-lez v24, :cond_7

    #@5c
    .line 3157
    move-object/from16 v0, v17

    #@5e
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@60
    array-length v6, v6

    #@61
    move/from16 v0, v24

    #@63
    if-le v6, v0, :cond_5

    #@65
    .line 3158
    invoke-static/range {v17 .. v17}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@68
    move-result-object v6

    #@69
    move-object/from16 v0, p3

    #@6b
    invoke-direct {v6, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@6e
    move-result-object v17

    #@6f
    .line 3159
    :cond_5
    move-object/from16 v0, p2

    #@71
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@73
    array-length v6, v6

    #@74
    move/from16 v0, v24

    #@76
    if-le v6, v0, :cond_6

    #@78
    .line 3160
    invoke-static/range {p2 .. p2}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@7b
    move-result-object v6

    #@7c
    move-object/from16 v0, p3

    #@7e
    invoke-direct {v6, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@81
    move-result-object p2

    #@82
    .line 3177
    :cond_6
    :goto_0
    move-object/from16 v0, v17

    #@84
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@86
    move-object/from16 v0, p2

    #@88
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@8a
    sub-int/2addr v6, v7

    #@8b
    move-object/from16 v0, v17

    #@8d
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@8f
    array-length v7, v7

    #@90
    add-int/2addr v6, v7

    #@91
    move-object/from16 v0, p2

    #@93
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@95
    array-length v7, v7

    #@96
    sub-int v19, v6, v7

    #@98
    .line 3179
    .local v19, "newexp":I
    if-gez v19, :cond_c

    #@9a
    .line 3180
    const/16 v6, 0x44

    #@9c
    move/from16 v0, p1

    #@9e
    if-eq v0, v6, :cond_c

    #@a0
    .line 3181
    const/16 v6, 0x49

    #@a2
    move/from16 v0, p1

    #@a4
    if-ne v0, v6, :cond_b

    #@a6
    .line 3182
    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@a8
    return-object v6

    #@a9
    .line 3162
    .end local v19    # "newexp":I
    :cond_7
    const/4 v6, -0x1

    #@aa
    move/from16 v0, p4

    #@ac
    if-ne v0, v6, :cond_8

    #@ae
    .line 3163
    invoke-virtual/range {v17 .. v17}, Landroid/icu/math/BigDecimal;->scale()I

    #@b1
    move-result p4

    #@b2
    .line 3165
    :cond_8
    move-object/from16 v0, v17

    #@b4
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@b6
    array-length v0, v6

    #@b7
    move/from16 v24, v0

    #@b9
    .line 3167
    move-object/from16 v0, v17

    #@bb
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@bd
    neg-int v6, v6

    #@be
    move/from16 v0, p4

    #@c0
    if-eq v0, v6, :cond_9

    #@c2
    .line 3168
    add-int v6, v24, p4

    #@c4
    move-object/from16 v0, v17

    #@c6
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@c8
    add-int v24, v6, v7

    #@ca
    .line 3169
    :cond_9
    move-object/from16 v0, p2

    #@cc
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@ce
    array-length v6, v6

    #@cf
    add-int/lit8 v6, v6, -0x1

    #@d1
    sub-int v6, v24, v6

    #@d3
    move-object/from16 v0, p2

    #@d5
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@d7
    sub-int v24, v6, v7

    #@d9
    .line 3170
    move-object/from16 v0, v17

    #@db
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@dd
    array-length v6, v6

    #@de
    move/from16 v0, v24

    #@e0
    if-ge v0, v6, :cond_a

    #@e2
    .line 3171
    move-object/from16 v0, v17

    #@e4
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@e6
    array-length v0, v6

    #@e7
    move/from16 v24, v0

    #@e9
    .line 3172
    :cond_a
    move-object/from16 v0, p2

    #@eb
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@ed
    array-length v6, v6

    #@ee
    move/from16 v0, v24

    #@f0
    if-ge v0, v6, :cond_6

    #@f2
    .line 3173
    move-object/from16 v0, p2

    #@f4
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@f6
    array-length v0, v6

    #@f7
    move/from16 v24, v0

    #@f9
    goto :goto_0

    #@fa
    .line 3184
    .restart local v19    # "newexp":I
    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@fd
    move-result-object v6

    #@fe
    const/4 v7, 0x0

    #@ff
    move-object/from16 v0, p3

    #@101
    invoke-direct {v6, v0, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@104
    move-result-object v6

    #@105
    return-object v6

    #@106
    .line 3188
    :cond_c
    new-instance v25, Landroid/icu/math/BigDecimal;

    #@108
    invoke-direct/range {v25 .. v25}, Landroid/icu/math/BigDecimal;-><init>()V

    #@10b
    .line 3189
    .local v25, "res":Landroid/icu/math/BigDecimal;
    move-object/from16 v0, v17

    #@10d
    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@10f
    move-object/from16 v0, p2

    #@111
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@113
    mul-int/2addr v6, v7

    #@114
    int-to-byte v6, v6

    #@115
    move-object/from16 v0, v25

    #@117
    iput-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@119
    .line 3190
    move/from16 v0, v19

    #@11b
    move-object/from16 v1, v25

    #@11d
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@11f
    .line 3191
    add-int/lit8 v6, v24, 0x1

    #@121
    new-array v6, v6, [B

    #@123
    move-object/from16 v0, v25

    #@125
    iput-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@127
    .line 3195
    add-int v6, v24, v24

    #@129
    add-int/lit8 v20, v6, 0x1

    #@12b
    .line 3196
    .local v20, "newlen":I
    move-object/from16 v0, v17

    #@12d
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@12f
    move/from16 v0, v20

    #@131
    invoke-static {v6, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@134
    move-result-object v2

    #@135
    .line 3197
    .local v2, "var1":[B
    move/from16 v3, v20

    #@137
    .line 3199
    .local v3, "var1len":I
    move-object/from16 v0, p2

    #@139
    iget-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@13b
    .line 3200
    .local v4, "var2":[B
    move/from16 v5, v20

    #@13d
    .line 3203
    .local v5, "var2len":I
    const/4 v6, 0x0

    #@13e
    aget-byte v6, v4, v6

    #@140
    mul-int/lit8 v6, v6, 0xa

    #@142
    add-int/lit8 v11, v6, 0x1

    #@144
    .line 3204
    .local v11, "b2b":I
    array-length v6, v4

    #@145
    const/4 v7, 0x1

    #@146
    if-le v6, v7, :cond_d

    #@148
    .line 3205
    const/4 v6, 0x1

    #@149
    aget-byte v6, v4, v6

    #@14b
    add-int/2addr v11, v6

    #@14c
    .line 3208
    :cond_d
    const/4 v14, 0x0

    #@14d
    .line 3211
    .end local v28    # "v2":B
    .local v14, "have":I
    :goto_1
    const/16 v27, 0x0

    #@14f
    .line 3215
    :cond_e
    :goto_2
    if-ge v3, v5, :cond_12

    #@151
    .line 3287
    :cond_f
    if-eqz v14, :cond_1b

    #@153
    const/4 v6, 0x1

    #@154
    move v7, v6

    #@155
    :goto_3
    if-eqz v27, :cond_1c

    #@157
    const/4 v6, 0x1

    #@158
    :goto_4
    or-int/2addr v6, v7

    #@159
    if-eqz v6, :cond_1e

    #@15b
    .line 3288
    move-object/from16 v0, v25

    #@15d
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@15f
    move/from16 v0, v27

    #@161
    int-to-byte v7, v0

    #@162
    aput-byte v7, v6, v14

    #@164
    .line 3289
    add-int/lit8 v14, v14, 0x1

    #@166
    .line 3290
    add-int/lit8 v6, v24, 0x1

    #@168
    if-ne v14, v6, :cond_1d

    #@16a
    .line 3313
    :cond_10
    :goto_5
    if-nez v14, :cond_11

    #@16c
    .line 3314
    const/4 v14, 0x1

    #@16d
    .line 3316
    :cond_11
    const/16 v6, 0x49

    #@16f
    move/from16 v0, p1

    #@171
    if-ne v0, v6, :cond_21

    #@173
    const/4 v6, 0x1

    #@174
    move v7, v6

    #@175
    :goto_6
    const/16 v6, 0x52

    #@177
    move/from16 v0, p1

    #@179
    if-ne v0, v6, :cond_22

    #@17b
    const/4 v6, 0x1

    #@17c
    :goto_7
    or-int/2addr v6, v7

    #@17d
    if-eqz v6, :cond_2b

    #@17f
    .line 3317
    move-object/from16 v0, v25

    #@181
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@183
    add-int/2addr v6, v14

    #@184
    move/from16 v0, v24

    #@186
    if-le v6, v0, :cond_23

    #@188
    .line 3318
    new-instance v6, Ljava/lang/ArithmeticException;

    #@18a
    const-string/jumbo v7, "Integer overflow"

    #@18d
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@190
    throw v6

    #@191
    .line 3217
    :cond_12
    if-ne v3, v5, :cond_19

    #@193
    .line 3221
    move v8, v3

    #@194
    .line 3222
    .local v8, "$22":I
    const/4 v15, 0x0

    #@195
    .line 3223
    :goto_8
    if-lez v8, :cond_18

    #@197
    .line 3225
    array-length v6, v4

    #@198
    if-ge v15, v6, :cond_16

    #@19a
    .line 3226
    aget-byte v28, v4, v15

    #@19c
    .line 3229
    :goto_9
    aget-byte v6, v2, v15

    #@19e
    move/from16 v0, v28

    #@1a0
    if-lt v6, v0, :cond_f

    #@1a2
    .line 3231
    aget-byte v6, v2, v15

    #@1a4
    move/from16 v0, v28

    #@1a6
    if-le v6, v0, :cond_17

    #@1a8
    .line 3249
    const/4 v6, 0x0

    #@1a9
    aget-byte v12, v2, v6

    #@1ab
    .line 3258
    .end local v8    # "$22":I
    :cond_13
    :goto_a
    mul-int/lit8 v6, v12, 0xa

    #@1ad
    div-int v18, v6, v11

    #@1af
    .line 3259
    if-nez v18, :cond_14

    #@1b1
    .line 3260
    const/16 v18, 0x1

    #@1b3
    .line 3261
    :cond_14
    add-int v27, v27, v18

    #@1b5
    .line 3263
    move/from16 v0, v18

    #@1b7
    neg-int v6, v0

    #@1b8
    const/4 v7, 0x1

    #@1b9
    invoke-static/range {v2 .. v7}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    #@1bc
    move-result-object v2

    #@1bd
    .line 3264
    const/4 v6, 0x0

    #@1be
    aget-byte v6, v2, v6

    #@1c0
    if-nez v6, :cond_e

    #@1c2
    .line 3271
    add-int/lit8 v9, v3, -0x2

    #@1c4
    .line 3272
    .local v9, "$23":I
    const/16 v26, 0x0

    #@1c6
    .line 3273
    :goto_b
    move/from16 v0, v26

    #@1c8
    if-gt v0, v9, :cond_15

    #@1ca
    .line 3274
    aget-byte v6, v2, v26

    #@1cc
    if-eqz v6, :cond_1a

    #@1ce
    .line 3279
    :cond_15
    if-eqz v26, :cond_e

    #@1d0
    .line 3282
    const/4 v6, 0x0

    #@1d1
    move/from16 v0, v26

    #@1d3
    invoke-static {v2, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d6
    goto/16 :goto_2

    #@1d8
    .line 3228
    .end local v9    # "$23":I
    .restart local v8    # "$22":I
    :cond_16
    const/16 v28, 0x0

    #@1da
    .restart local v28    # "v2":B
    goto :goto_9

    #@1db
    .line 3223
    .end local v28    # "v2":B
    :cond_17
    add-int/lit8 v8, v8, -0x1

    #@1dd
    add-int/lit8 v15, v15, 0x1

    #@1df
    goto :goto_8

    #@1e0
    .line 3240
    :cond_18
    add-int/lit8 v27, v27, 0x1

    #@1e2
    .line 3241
    move-object/from16 v0, v25

    #@1e4
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1e6
    move/from16 v0, v27

    #@1e8
    int-to-byte v7, v0

    #@1e9
    aput-byte v7, v6, v14

    #@1eb
    .line 3242
    add-int/lit8 v14, v14, 0x1

    #@1ed
    .line 3243
    const/4 v6, 0x0

    #@1ee
    const/4 v7, 0x0

    #@1ef
    aput-byte v6, v2, v7

    #@1f1
    goto/16 :goto_5

    #@1f3
    .line 3253
    .end local v8    # "$22":I
    :cond_19
    const/4 v6, 0x0

    #@1f4
    aget-byte v6, v2, v6

    #@1f6
    mul-int/lit8 v12, v6, 0xa

    #@1f8
    .line 3254
    const/4 v6, 0x1

    #@1f9
    if-le v3, v6, :cond_13

    #@1fb
    .line 3255
    const/4 v6, 0x1

    #@1fc
    aget-byte v6, v2, v6

    #@1fe
    add-int/2addr v12, v6

    #@1ff
    goto :goto_a

    #@200
    .line 3276
    .restart local v9    # "$23":I
    :cond_1a
    add-int/lit8 v3, v3, -0x1

    #@202
    .line 3273
    add-int/lit8 v26, v26, 0x1

    #@204
    goto :goto_b

    #@205
    .line 3287
    .end local v9    # "$23":I
    :cond_1b
    const/4 v6, 0x0

    #@206
    move v7, v6

    #@207
    goto/16 :goto_3

    #@209
    :cond_1c
    const/4 v6, 0x0

    #@20a
    goto/16 :goto_4

    #@20c
    .line 3292
    :cond_1d
    const/4 v6, 0x0

    #@20d
    aget-byte v6, v2, v6

    #@20f
    if-eqz v6, :cond_10

    #@211
    .line 3296
    :cond_1e
    if-ltz p4, :cond_1f

    #@213
    .line 3297
    move-object/from16 v0, v25

    #@215
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@217
    neg-int v6, v6

    #@218
    move/from16 v0, p4

    #@21a
    if-gt v6, v0, :cond_10

    #@21c
    .line 3300
    :cond_1f
    const/16 v6, 0x44

    #@21e
    move/from16 v0, p1

    #@220
    if-eq v0, v6, :cond_20

    #@222
    .line 3301
    move-object/from16 v0, v25

    #@224
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@226
    if-lez v6, :cond_10

    #@228
    .line 3303
    :cond_20
    move-object/from16 v0, v25

    #@22a
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@22c
    add-int/lit8 v6, v6, -0x1

    #@22e
    move-object/from16 v0, v25

    #@230
    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@232
    .line 3307
    add-int/lit8 v5, v5, -0x1

    #@234
    goto/16 :goto_1

    #@236
    .line 3316
    :cond_21
    const/4 v6, 0x0

    #@237
    move v7, v6

    #@238
    goto/16 :goto_6

    #@23a
    :cond_22
    const/4 v6, 0x0

    #@23b
    goto/16 :goto_7

    #@23d
    .line 3320
    :cond_23
    const/16 v6, 0x52

    #@23f
    move/from16 v0, p1

    #@241
    if-ne v0, v6, :cond_2c

    #@243
    .line 3323
    move-object/from16 v0, v25

    #@245
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@247
    const/4 v7, 0x0

    #@248
    aget-byte v6, v6, v7

    #@24a
    if-nez v6, :cond_24

    #@24c
    .line 3324
    invoke-static/range {v17 .. v17}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@24f
    move-result-object v6

    #@250
    const/4 v7, 0x0

    #@251
    move-object/from16 v0, p3

    #@253
    invoke-direct {v6, v0, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@256
    move-result-object v6

    #@257
    return-object v6

    #@258
    .line 3325
    :cond_24
    const/4 v6, 0x0

    #@259
    aget-byte v6, v2, v6

    #@25b
    if-nez v6, :cond_25

    #@25d
    .line 3326
    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@25f
    return-object v6

    #@260
    .line 3327
    :cond_25
    move-object/from16 v0, v17

    #@262
    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@264
    move-object/from16 v0, v25

    #@266
    iput-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@268
    .line 3332
    add-int v6, v24, v24

    #@26a
    add-int/lit8 v6, v6, 0x1

    #@26c
    move-object/from16 v0, v17

    #@26e
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@270
    array-length v7, v7

    #@271
    sub-int v23, v6, v7

    #@273
    .line 3333
    move-object/from16 v0, v25

    #@275
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@277
    sub-int v6, v6, v23

    #@279
    move-object/from16 v0, v17

    #@27b
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@27d
    add-int/2addr v6, v7

    #@27e
    move-object/from16 v0, v25

    #@280
    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@282
    .line 3338
    move v13, v3

    #@283
    .line 3340
    add-int/lit8 v15, v13, -0x1

    #@285
    .line 3341
    :goto_c
    const/4 v6, 0x1

    #@286
    if-lt v15, v6, :cond_26

    #@288
    .line 3342
    move-object/from16 v0, v25

    #@28a
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@28c
    move-object/from16 v0, v17

    #@28e
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@290
    if-lt v6, v7, :cond_28

    #@292
    const/4 v6, 0x1

    #@293
    :goto_d
    move-object/from16 v0, v25

    #@295
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@297
    move-object/from16 v0, p2

    #@299
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@29b
    move/from16 v29, v0

    #@29d
    move/from16 v0, v29

    #@29f
    if-lt v7, v0, :cond_29

    #@2a1
    const/4 v7, 0x1

    #@2a2
    :goto_e
    or-int/2addr v6, v7

    #@2a3
    if-eqz v6, :cond_2a

    #@2a5
    .line 3350
    :cond_26
    array-length v6, v2

    #@2a6
    if-ge v13, v6, :cond_27

    #@2a8
    .line 3351
    new-array v0, v13, [B

    #@2aa
    move-object/from16 v22, v0

    #@2ac
    .line 3352
    .local v22, "newvar1":[B
    const/4 v6, 0x0

    #@2ad
    const/4 v7, 0x0

    #@2ae
    move-object/from16 v0, v22

    #@2b0
    invoke-static {v2, v6, v0, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2b3
    .line 3353
    move-object/from16 v2, v22

    #@2b5
    .line 3355
    .end local v22    # "newvar1":[B
    :cond_27
    move-object/from16 v0, v25

    #@2b7
    iput-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2b9
    .line 3356
    const/4 v6, 0x0

    #@2ba
    move-object/from16 v0, v25

    #@2bc
    move-object/from16 v1, p3

    #@2be
    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@2c1
    move-result-object v6

    #@2c2
    return-object v6

    #@2c3
    .line 3342
    .local v22, "newvar1":[B
    :cond_28
    const/4 v6, 0x0

    #@2c4
    goto :goto_d

    #@2c5
    :cond_29
    const/4 v7, 0x0

    #@2c6
    goto :goto_e

    #@2c7
    .line 3344
    :cond_2a
    aget-byte v6, v2, v15

    #@2c9
    if-nez v6, :cond_26

    #@2cb
    .line 3346
    add-int/lit8 v13, v13, -0x1

    #@2cd
    .line 3347
    move-object/from16 v0, v25

    #@2cf
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@2d1
    add-int/lit8 v6, v6, 0x1

    #@2d3
    move-object/from16 v0, v25

    #@2d5
    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@2d7
    .line 3341
    add-int/lit8 v15, v15, -0x1

    #@2d9
    goto :goto_c

    #@2da
    .line 3366
    :cond_2b
    const/4 v6, 0x0

    #@2db
    aget-byte v6, v2, v6

    #@2dd
    if-eqz v6, :cond_2c

    #@2df
    .line 3367
    move-object/from16 v0, v25

    #@2e1
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2e3
    add-int/lit8 v7, v14, -0x1

    #@2e5
    aget-byte v16, v6, v7

    #@2e7
    .line 3368
    .local v16, "lasthave":B
    rem-int/lit8 v6, v16, 0x5

    #@2e9
    if-nez v6, :cond_2c

    #@2eb
    .line 3369
    move-object/from16 v0, v25

    #@2ed
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2ef
    add-int/lit8 v7, v14, -0x1

    #@2f1
    add-int/lit8 v29, v16, 0x1

    #@2f3
    move/from16 v0, v29

    #@2f5
    int-to-byte v0, v0

    #@2f6
    move/from16 v29, v0

    #@2f8
    aput-byte v29, v6, v7

    #@2fa
    .line 3375
    .end local v16    # "lasthave":B
    :cond_2c
    if-ltz p4, :cond_2f

    #@2fc
    .line 3378
    move-object/from16 v0, v25

    #@2fe
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@300
    array-length v6, v6

    #@301
    if-eq v14, v6, :cond_2d

    #@303
    .line 3380
    move-object/from16 v0, v25

    #@305
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@307
    move-object/from16 v0, v25

    #@309
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@30b
    array-length v7, v7

    #@30c
    sub-int/2addr v7, v14

    #@30d
    sub-int/2addr v6, v7

    #@30e
    move-object/from16 v0, v25

    #@310
    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@312
    .line 3382
    :cond_2d
    move-object/from16 v0, v25

    #@314
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@316
    array-length v6, v6

    #@317
    move-object/from16 v0, v25

    #@319
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@31b
    neg-int v7, v7

    #@31c
    sub-int v7, v7, p4

    #@31e
    sub-int v10, v6, v7

    #@320
    .line 3383
    move-object/from16 v0, p3

    #@322
    iget v6, v0, Landroid/icu/math/MathContext;->roundingMode:I

    #@324
    move-object/from16 v0, v25

    #@326
    invoke-direct {v0, v10, v6}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    #@329
    .line 3386
    move-object/from16 v0, v25

    #@32b
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@32d
    move/from16 v0, p4

    #@32f
    neg-int v7, v0

    #@330
    if-eq v6, v7, :cond_2e

    #@332
    .line 3387
    move-object/from16 v0, v25

    #@334
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@336
    move-object/from16 v0, v25

    #@338
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@33a
    array-length v7, v7

    #@33b
    add-int/lit8 v7, v7, 0x1

    #@33d
    invoke-static {v6, v7}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@340
    move-result-object v6

    #@341
    move-object/from16 v0, v25

    #@343
    iput-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@345
    .line 3388
    move-object/from16 v0, v25

    #@347
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@349
    add-int/lit8 v6, v6, -0x1

    #@34b
    move-object/from16 v0, v25

    #@34d
    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@34f
    .line 3390
    :cond_2e
    const/4 v6, 0x1

    #@350
    move-object/from16 v0, v25

    #@352
    move-object/from16 v1, p3

    #@354
    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@357
    move-result-object v6

    #@358
    return-object v6

    #@359
    .line 3395
    :cond_2f
    move-object/from16 v0, v25

    #@35b
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@35d
    array-length v6, v6

    #@35e
    if-ne v14, v6, :cond_30

    #@360
    .line 3396
    move-object/from16 v0, v25

    #@362
    move-object/from16 v1, p3

    #@364
    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@367
    .line 3397
    move/from16 v14, v24

    #@369
    .line 3408
    .end local v21    # "newmant":[B
    :goto_f
    const/4 v6, 0x1

    #@36a
    move-object/from16 v0, v25

    #@36c
    move-object/from16 v1, p3

    #@36e
    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@371
    move-result-object v6

    #@372
    return-object v6

    #@373
    .line 3399
    .restart local v21    # "newmant":[B
    :cond_30
    move-object/from16 v0, v25

    #@375
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@377
    const/4 v7, 0x0

    #@378
    aget-byte v6, v6, v7

    #@37a
    if-nez v6, :cond_31

    #@37c
    .line 3400
    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@37e
    return-object v6

    #@37f
    .line 3404
    :cond_31
    new-array v0, v14, [B

    #@381
    move-object/from16 v21, v0

    #@383
    .line 3405
    .local v21, "newmant":[B
    move-object/from16 v0, v25

    #@385
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@387
    const/4 v7, 0x0

    #@388
    const/16 v29, 0x0

    #@38a
    move-object/from16 v0, v21

    #@38c
    move/from16 v1, v29

    #@38e
    invoke-static {v6, v7, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@391
    .line 3406
    move-object/from16 v0, v21

    #@393
    move-object/from16 v1, v25

    #@395
    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    #@397
    goto :goto_f
.end method

.method private static final extend([BI)[B
    .locals 3
    .param p0, "inarr"    # [B
    .param p1, "newlen"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3436
    array-length v1, p0

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 3437
    return-object p0

    #@5
    .line 3438
    :cond_0
    new-array v0, p1, [B

    #@7
    .line 3439
    .local v0, "newarr":[B
    array-length v1, p0

    #@8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 3441
    return-object v0
.end method

.method private finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;
    .locals 12
    .param p1, "set"    # Landroid/icu/math/MathContext;
    .param p2, "strip"    # Z

    #@0
    .prologue
    const v11, 0x3b9ac9ff

    #@3
    const/4 v6, 0x1

    #@4
    const v10, -0x3b9ac9ff

    #@7
    const/4 v7, 0x0

    #@8
    .line 3782
    const/4 v1, 0x0

    #@9
    .line 3783
    .local v1, "d":I
    const/4 v2, 0x0

    #@a
    .line 3784
    .local v2, "i":I
    const/4 v4, 0x0

    #@b
    .line 3785
    .local v4, "newmant":[B
    const/4 v3, 0x0

    #@c
    .line 3786
    .local v3, "mag":I
    const/4 v5, 0x0

    #@d
    .line 3788
    .local v5, "sig":I
    iget v8, p1, Landroid/icu/math/MathContext;->digits:I

    #@f
    if-eqz v8, :cond_0

    #@11
    .line 3789
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@13
    array-length v8, v8

    #@14
    iget v9, p1, Landroid/icu/math/MathContext;->digits:I

    #@16
    if-le v8, v9, :cond_0

    #@18
    .line 3790
    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@1b
    .line 3795
    :cond_0
    if-eqz p2, :cond_2

    #@1d
    .line 3796
    iget v8, p1, Landroid/icu/math/MathContext;->form:I

    #@1f
    if-eqz v8, :cond_2

    #@21
    .line 3797
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@23
    array-length v1, v8

    #@24
    .line 3800
    add-int/lit8 v2, v1, -0x1

    #@26
    .line 3801
    :goto_0
    if-lt v2, v6, :cond_1

    #@28
    .line 3802
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2a
    aget-byte v8, v8, v2

    #@2c
    if-eqz v8, :cond_5

    #@2e
    .line 3808
    :cond_1
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@30
    array-length v8, v8

    #@31
    if-ge v1, v8, :cond_2

    #@33
    .line 3809
    new-array v4, v1, [B

    #@35
    .line 3810
    .local v4, "newmant":[B
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@37
    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 3811
    iput-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@3c
    .line 3815
    .end local v4    # "newmant":[B
    :cond_2
    iput-byte v7, p0, Landroid/icu/math/BigDecimal;->form:B

    #@3e
    .line 3819
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@40
    array-length v0, v8

    #@41
    .line 3820
    .local v0, "$26":I
    const/4 v2, 0x0

    #@42
    .line 3821
    :goto_1
    if-lez v0, :cond_e

    #@44
    .line 3822
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@46
    aget-byte v8, v8, v2

    #@48
    if-eqz v8, :cond_d

    #@4a
    .line 3825
    if-lez v2, :cond_3

    #@4c
    .line 3827
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@4e
    array-length v8, v8

    #@4f
    sub-int/2addr v8, v2

    #@50
    new-array v4, v8, [B

    #@52
    .line 3828
    .restart local v4    # "newmant":[B
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@54
    .line 3829
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@56
    array-length v9, v9

    #@57
    sub-int/2addr v9, v2

    #@58
    .line 3828
    invoke-static {v8, v2, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5b
    .line 3830
    iput-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@5d
    .line 3834
    .end local v4    # "newmant":[B
    :cond_3
    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@5f
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@61
    array-length v9, v9

    #@62
    add-int v3, v8, v9

    #@64
    .line 3835
    if-lez v3, :cond_6

    #@66
    .line 3836
    iget v8, p1, Landroid/icu/math/MathContext;->digits:I

    #@68
    if-le v3, v8, :cond_4

    #@6a
    .line 3837
    iget v8, p1, Landroid/icu/math/MathContext;->digits:I

    #@6c
    if-eqz v8, :cond_4

    #@6e
    .line 3838
    iget v8, p1, Landroid/icu/math/MathContext;->form:I

    #@70
    int-to-byte v8, v8

    #@71
    iput-byte v8, p0, Landroid/icu/math/BigDecimal;->form:B

    #@73
    .line 3839
    :cond_4
    add-int/lit8 v8, v3, -0x1

    #@75
    if-gt v8, v11, :cond_7

    #@77
    .line 3840
    return-object p0

    #@78
    .line 3804
    .end local v0    # "$26":I
    .local v4, "newmant":[B
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@7a
    .line 3805
    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@7c
    add-int/lit8 v8, v8, 0x1

    #@7e
    iput v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@80
    .line 3801
    add-int/lit8 v2, v2, -0x1

    #@82
    goto :goto_0

    #@83
    .line 3841
    .end local v4    # "newmant":[B
    .restart local v0    # "$26":I
    :cond_6
    const/4 v8, -0x5

    #@84
    if-ge v3, v8, :cond_7

    #@86
    .line 3842
    iget v8, p1, Landroid/icu/math/MathContext;->form:I

    #@88
    int-to-byte v8, v8

    #@89
    iput-byte v8, p0, Landroid/icu/math/BigDecimal;->form:B

    #@8b
    .line 3844
    :cond_7
    add-int/lit8 v3, v3, -0x1

    #@8d
    .line 3845
    if-ge v3, v10, :cond_a

    #@8f
    move v8, v6

    #@90
    :goto_2
    if-le v3, v11, :cond_b

    #@92
    :goto_3
    or-int/2addr v6, v8

    #@93
    if-eqz v6, :cond_9

    #@95
    .line 3848
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    #@97
    const/4 v7, 0x2

    #@98
    if-ne v6, v7, :cond_c

    #@9a
    .line 3849
    rem-int/lit8 v5, v3, 0x3

    #@9c
    .line 3850
    if-gez v5, :cond_8

    #@9e
    .line 3851
    add-int/lit8 v5, v5, 0x3

    #@a0
    .line 3852
    :cond_8
    sub-int/2addr v3, v5

    #@a1
    .line 3854
    if-lt v3, v10, :cond_c

    #@a3
    .line 3855
    if-gt v3, v11, :cond_c

    #@a5
    .line 3861
    :cond_9
    return-object p0

    #@a6
    :cond_a
    move v8, v7

    #@a7
    .line 3845
    goto :goto_2

    #@a8
    :cond_b
    move v6, v7

    #@a9
    goto :goto_3

    #@aa
    .line 3858
    :cond_c
    new-instance v6, Ljava/lang/ArithmeticException;

    #@ac
    new-instance v7, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v8, "Exponent Overflow: "

    #@b4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v6

    #@c4
    .line 3821
    :cond_d
    add-int/lit8 v0, v0, -0x1

    #@c6
    add-int/lit8 v2, v2, 0x1

    #@c8
    goto/16 :goto_1

    #@ca
    .line 3867
    :cond_e
    iput-byte v7, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@cc
    .line 3869
    iget v6, p1, Landroid/icu/math/MathContext;->form:I

    #@ce
    if-eqz v6, :cond_10

    #@d0
    .line 3870
    iput v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@d2
    .line 3879
    :cond_f
    :goto_4
    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@d4
    iget-object v6, v6, Landroid/icu/math/BigDecimal;->mant:[B

    #@d6
    iput-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@d8
    .line 3880
    return-object p0

    #@d9
    .line 3871
    :cond_10
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@db
    if-lez v6, :cond_11

    #@dd
    .line 3872
    iput v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@df
    goto :goto_4

    #@e0
    .line 3875
    :cond_11
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@e2
    if-ge v6, v10, :cond_f

    #@e4
    .line 3876
    new-instance v6, Ljava/lang/ArithmeticException;

    #@e6
    new-instance v7, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v8, "Exponent Overflow: "

    #@ee
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v7

    #@f2
    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@f4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v7

    #@f8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v7

    #@fc
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v6
.end method

.method private intcheck(II)I
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 3086
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    #@5
    move-result v0

    #@6
    .line 3088
    .local v0, "i":I
    if-ge v0, p1, :cond_0

    #@8
    move v3, v1

    #@9
    :goto_0
    if-le v0, p2, :cond_1

    #@b
    :goto_1
    or-int/2addr v1, v3

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 3089
    new-instance v1, Ljava/lang/ArithmeticException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Conversion overflow: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    :cond_0
    move v3, v2

    #@29
    .line 3088
    goto :goto_0

    #@2a
    :cond_1
    move v1, v2

    #@2b
    goto :goto_1

    #@2c
    .line 3090
    :cond_2
    return v0
.end method

.method private layout()[C
    .locals 21

    #@0
    .prologue
    .line 2950
    const/4 v10, 0x0

    #@1
    .line 2951
    .local v10, "i":I
    const/4 v15, 0x0

    #@2
    .line 2952
    .local v15, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    #@3
    .line 2953
    .local v9, "euse":I
    const/16 v16, 0x0

    #@5
    .line 2954
    .local v16, "sig":I
    const/4 v8, 0x0

    #@6
    .line 2955
    .local v8, "csign":C
    const/4 v14, 0x0

    #@7
    .line 2958
    .local v14, "rec":[C
    const/4 v11, 0x0

    #@8
    .line 2959
    .local v11, "len":I
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@c
    move-object/from16 v18, v0

    #@e
    move-object/from16 v0, v18

    #@10
    array-length v0, v0

    #@11
    move/from16 v18, v0

    #@13
    move/from16 v0, v18

    #@15
    new-array v7, v0, [C

    #@17
    .line 2961
    .local v7, "cmant":[C
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1b
    move-object/from16 v18, v0

    #@1d
    move-object/from16 v0, v18

    #@1f
    array-length v3, v0

    #@20
    .line 2962
    .local v3, "$18":I
    const/4 v10, 0x0

    #@21
    .line 2963
    :goto_0
    if-lez v3, :cond_0

    #@23
    .line 2964
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@27
    move-object/from16 v18, v0

    #@29
    aget-byte v18, v18, v10

    #@2b
    add-int/lit8 v18, v18, 0x30

    #@2d
    move/from16 v0, v18

    #@2f
    int-to-char v0, v0

    #@30
    move/from16 v18, v0

    #@32
    aput-char v18, v7, v10

    #@34
    .line 2963
    add-int/lit8 v3, v3, -0x1

    #@36
    add-int/lit8 v10, v10, 0x1

    #@38
    goto :goto_0

    #@39
    .line 2968
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    #@3d
    move/from16 v18, v0

    #@3f
    if-eqz v18, :cond_9

    #@41
    .line 2969
    new-instance v15, Ljava/lang/StringBuilder;

    #@43
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    array-length v0, v7

    #@44
    move/from16 v18, v0

    #@46
    add-int/lit8 v18, v18, 0xf

    #@48
    move/from16 v0, v18

    #@4a
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@4d
    .line 2970
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@4f
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@51
    move/from16 v18, v0

    #@53
    const/16 v19, -0x1

    #@55
    move/from16 v0, v18

    #@57
    move/from16 v1, v19

    #@59
    if-ne v0, v1, :cond_1

    #@5b
    .line 2971
    const/16 v18, 0x2d

    #@5d
    move/from16 v0, v18

    #@5f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    .line 2972
    :cond_1
    move-object/from16 v0, p0

    #@64
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@66
    move/from16 v18, v0

    #@68
    array-length v0, v7

    #@69
    move/from16 v19, v0

    #@6b
    add-int v18, v18, v19

    #@6d
    add-int/lit8 v9, v18, -0x1

    #@6f
    .line 2974
    move-object/from16 v0, p0

    #@71
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    #@73
    move/from16 v18, v0

    #@75
    const/16 v19, 0x1

    #@77
    move/from16 v0, v18

    #@79
    move/from16 v1, v19

    #@7b
    if-ne v0, v1, :cond_5

    #@7d
    .line 2975
    const/16 v18, 0x0

    #@7f
    aget-char v18, v7, v18

    #@81
    move/from16 v0, v18

    #@83
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    .line 2976
    array-length v0, v7

    #@87
    move/from16 v18, v0

    #@89
    const/16 v19, 0x1

    #@8b
    move/from16 v0, v18

    #@8d
    move/from16 v1, v19

    #@8f
    if-le v0, v1, :cond_2

    #@91
    .line 2977
    const/16 v18, 0x2e

    #@93
    move/from16 v0, v18

    #@95
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    move-result-object v18

    #@99
    array-length v0, v7

    #@9a
    move/from16 v19, v0

    #@9c
    add-int/lit8 v19, v19, -0x1

    #@9e
    const/16 v20, 0x1

    #@a0
    move-object/from16 v0, v18

    #@a2
    move/from16 v1, v20

    #@a4
    move/from16 v2, v19

    #@a6
    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@a9
    .line 2998
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    #@ab
    .line 2999
    if-gez v9, :cond_8

    #@ad
    .line 3000
    const/16 v8, 0x2d

    #@af
    .line 3001
    neg-int v9, v9

    #@b0
    .line 3004
    :goto_2
    const/16 v18, 0x45

    #@b2
    move/from16 v0, v18

    #@b4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v18

    #@b8
    move-object/from16 v0, v18

    #@ba
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v18

    #@be
    move-object/from16 v0, v18

    #@c0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    .line 3006
    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@c6
    move-result v18

    #@c7
    move/from16 v0, v18

    #@c9
    new-array v14, v0, [C

    #@cb
    .line 3007
    .local v14, "rec":[C
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@ce
    move-result v17

    #@cf
    .line 3008
    .local v17, "srcEnd":I
    if-eqz v17, :cond_4

    #@d1
    .line 3009
    const/16 v18, 0x0

    #@d3
    const/16 v19, 0x0

    #@d5
    move/from16 v0, v18

    #@d7
    move/from16 v1, v17

    #@d9
    move/from16 v2, v19

    #@db
    invoke-virtual {v15, v0, v1, v14, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@de
    .line 3011
    :cond_4
    return-object v14

    #@df
    .line 2980
    .end local v17    # "srcEnd":I
    .local v14, "rec":[C
    :cond_5
    rem-int/lit8 v16, v9, 0x3

    #@e1
    .line 2981
    if-gez v16, :cond_6

    #@e3
    .line 2982
    add-int/lit8 v16, v16, 0x3

    #@e5
    .line 2983
    :cond_6
    sub-int v9, v9, v16

    #@e7
    .line 2984
    add-int/lit8 v16, v16, 0x1

    #@e9
    .line 2985
    array-length v0, v7

    #@ea
    move/from16 v18, v0

    #@ec
    move/from16 v0, v16

    #@ee
    move/from16 v1, v18

    #@f0
    if-lt v0, v1, :cond_7

    #@f2
    .line 2986
    array-length v0, v7

    #@f3
    move/from16 v18, v0

    #@f5
    const/16 v19, 0x0

    #@f7
    move/from16 v0, v19

    #@f9
    move/from16 v1, v18

    #@fb
    invoke-virtual {v15, v7, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@fe
    .line 2988
    array-length v0, v7

    #@ff
    move/from16 v18, v0

    #@101
    sub-int v4, v16, v18

    #@103
    .line 2989
    .local v4, "$19":I
    :goto_3
    if-lez v4, :cond_2

    #@105
    .line 2990
    const/16 v18, 0x30

    #@107
    move/from16 v0, v18

    #@109
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10c
    .line 2989
    add-int/lit8 v4, v4, -0x1

    #@10e
    goto :goto_3

    #@10f
    .line 2994
    .end local v4    # "$19":I
    :cond_7
    const/16 v18, 0x0

    #@111
    move/from16 v0, v18

    #@113
    move/from16 v1, v16

    #@115
    invoke-virtual {v15, v7, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@118
    move-result-object v18

    #@119
    const/16 v19, 0x2e

    #@11b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v18

    #@11f
    array-length v0, v7

    #@120
    move/from16 v19, v0

    #@122
    sub-int v19, v19, v16

    #@124
    move-object/from16 v0, v18

    #@126
    move/from16 v1, v16

    #@128
    move/from16 v2, v19

    #@12a
    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@12d
    goto/16 :goto_1

    #@12f
    .line 3003
    :cond_8
    const/16 v8, 0x2b

    #@131
    goto/16 :goto_2

    #@133
    .line 3015
    .local v15, "sb":Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, p0

    #@135
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@137
    move/from16 v18, v0

    #@139
    if-nez v18, :cond_b

    #@13b
    .line 3016
    move-object/from16 v0, p0

    #@13d
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@13f
    move/from16 v18, v0

    #@141
    if-ltz v18, :cond_a

    #@143
    .line 3017
    return-object v7

    #@144
    .line 3018
    :cond_a
    array-length v0, v7

    #@145
    move/from16 v18, v0

    #@147
    add-int/lit8 v18, v18, 0x1

    #@149
    move/from16 v0, v18

    #@14b
    new-array v14, v0, [C

    #@14d
    .line 3019
    .local v14, "rec":[C
    const/16 v18, 0x2d

    #@14f
    const/16 v19, 0x0

    #@151
    aput-char v18, v14, v19

    #@153
    .line 3020
    array-length v0, v7

    #@154
    move/from16 v18, v0

    #@156
    const/16 v19, 0x0

    #@158
    const/16 v20, 0x1

    #@15a
    move/from16 v0, v19

    #@15c
    move/from16 v1, v20

    #@15e
    move/from16 v2, v18

    #@160
    invoke-static {v7, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@163
    .line 3021
    return-object v14

    #@164
    .line 3025
    .local v14, "rec":[C
    :cond_b
    move-object/from16 v0, p0

    #@166
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@168
    move/from16 v18, v0

    #@16a
    const/16 v19, -0x1

    #@16c
    move/from16 v0, v18

    #@16e
    move/from16 v1, v19

    #@170
    if-ne v0, v1, :cond_d

    #@172
    const/4 v13, 0x1

    #@173
    .line 3030
    .local v13, "needsign":I
    :goto_4
    move-object/from16 v0, p0

    #@175
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@177
    move/from16 v18, v0

    #@179
    array-length v0, v7

    #@17a
    move/from16 v19, v0

    #@17c
    add-int v12, v18, v19

    #@17e
    .line 3032
    .local v12, "mag":I
    const/16 v18, 0x1

    #@180
    move/from16 v0, v18

    #@182
    if-ge v12, v0, :cond_f

    #@184
    .line 3033
    add-int/lit8 v18, v13, 0x2

    #@186
    move-object/from16 v0, p0

    #@188
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@18a
    move/from16 v19, v0

    #@18c
    sub-int v11, v18, v19

    #@18e
    .line 3034
    new-array v14, v11, [C

    #@190
    .line 3035
    .local v14, "rec":[C
    if-eqz v13, :cond_c

    #@192
    .line 3036
    const/16 v18, 0x2d

    #@194
    const/16 v19, 0x0

    #@196
    aput-char v18, v14, v19

    #@198
    .line 3037
    :cond_c
    const/16 v18, 0x30

    #@19a
    aput-char v18, v14, v13

    #@19c
    .line 3038
    add-int/lit8 v18, v13, 0x1

    #@19e
    const/16 v19, 0x2e

    #@1a0
    aput-char v19, v14, v18

    #@1a2
    .line 3040
    neg-int v5, v12

    #@1a3
    .line 3041
    .local v5, "$20":I
    add-int/lit8 v10, v13, 0x2

    #@1a5
    .line 3042
    :goto_5
    if-lez v5, :cond_e

    #@1a7
    .line 3043
    const/16 v18, 0x30

    #@1a9
    aput-char v18, v14, v10

    #@1ab
    .line 3042
    add-int/lit8 v5, v5, -0x1

    #@1ad
    add-int/lit8 v10, v10, 0x1

    #@1af
    goto :goto_5

    #@1b0
    .line 3025
    .end local v5    # "$20":I
    .end local v12    # "mag":I
    .end local v13    # "needsign":I
    .local v14, "rec":[C
    :cond_d
    const/4 v13, 0x0

    #@1b1
    .restart local v13    # "needsign":I
    goto :goto_4

    #@1b2
    .line 3046
    .restart local v5    # "$20":I
    .restart local v12    # "mag":I
    .local v14, "rec":[C
    :cond_e
    add-int/lit8 v18, v13, 0x2

    #@1b4
    sub-int v18, v18, v12

    #@1b6
    .line 3047
    array-length v0, v7

    #@1b7
    move/from16 v19, v0

    #@1b9
    .line 3046
    const/16 v20, 0x0

    #@1bb
    move/from16 v0, v20

    #@1bd
    move/from16 v1, v18

    #@1bf
    move/from16 v2, v19

    #@1c1
    invoke-static {v7, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c4
    .line 3048
    return-object v14

    #@1c5
    .line 3051
    .end local v5    # "$20":I
    .local v14, "rec":[C
    :cond_f
    array-length v0, v7

    #@1c6
    move/from16 v18, v0

    #@1c8
    move/from16 v0, v18

    #@1ca
    if-le v12, v0, :cond_12

    #@1cc
    .line 3052
    add-int v11, v13, v12

    #@1ce
    .line 3053
    new-array v14, v11, [C

    #@1d0
    .line 3054
    .local v14, "rec":[C
    if-eqz v13, :cond_10

    #@1d2
    .line 3055
    const/16 v18, 0x2d

    #@1d4
    const/16 v19, 0x0

    #@1d6
    aput-char v18, v14, v19

    #@1d8
    .line 3056
    :cond_10
    array-length v0, v7

    #@1d9
    move/from16 v18, v0

    #@1db
    const/16 v19, 0x0

    #@1dd
    move/from16 v0, v19

    #@1df
    move/from16 v1, v18

    #@1e1
    invoke-static {v7, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e4
    .line 3058
    array-length v0, v7

    #@1e5
    move/from16 v18, v0

    #@1e7
    sub-int v6, v12, v18

    #@1e9
    .line 3059
    .local v6, "$21":I
    array-length v0, v7

    #@1ea
    move/from16 v18, v0

    #@1ec
    add-int v10, v13, v18

    #@1ee
    .line 3060
    :goto_6
    if-lez v6, :cond_11

    #@1f0
    .line 3061
    const/16 v18, 0x30

    #@1f2
    aput-char v18, v14, v10

    #@1f4
    .line 3060
    add-int/lit8 v6, v6, -0x1

    #@1f6
    add-int/lit8 v10, v10, 0x1

    #@1f8
    goto :goto_6

    #@1f9
    .line 3064
    :cond_11
    return-object v14

    #@1fa
    .line 3068
    .end local v6    # "$21":I
    .local v14, "rec":[C
    :cond_12
    add-int/lit8 v18, v13, 0x1

    #@1fc
    array-length v0, v7

    #@1fd
    move/from16 v19, v0

    #@1ff
    add-int v11, v18, v19

    #@201
    .line 3069
    new-array v14, v11, [C

    #@203
    .line 3070
    .local v14, "rec":[C
    if-eqz v13, :cond_13

    #@205
    .line 3071
    const/16 v18, 0x2d

    #@207
    const/16 v19, 0x0

    #@209
    aput-char v18, v14, v19

    #@20b
    .line 3072
    :cond_13
    const/16 v18, 0x0

    #@20d
    move/from16 v0, v18

    #@20f
    invoke-static {v7, v0, v14, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@212
    .line 3073
    add-int v18, v13, v12

    #@214
    const/16 v19, 0x2e

    #@216
    aput-char v19, v14, v18

    #@218
    .line 3074
    add-int v18, v13, v12

    #@21a
    add-int/lit8 v18, v18, 0x1

    #@21c
    .line 3075
    array-length v0, v7

    #@21d
    move/from16 v19, v0

    #@21f
    sub-int v19, v19, v12

    #@221
    .line 3074
    move/from16 v0, v18

    #@223
    move/from16 v1, v19

    #@225
    invoke-static {v7, v12, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@228
    .line 3076
    return-object v14
.end method

.method private round(II)Landroid/icu/math/BigDecimal;
    .locals 12
    .param p1, "len"    # I
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x5

    #@2
    const/4 v11, 0x0

    #@3
    .line 3649
    const/4 v5, 0x0

    #@4
    .line 3650
    .local v5, "reuse":Z
    const/4 v7, 0x0

    #@5
    .line 3652
    .local v7, "first":B
    const/4 v8, 0x0

    #@6
    .line 3653
    .local v8, "newmant":[B
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@8
    array-length v0, v0

    #@9
    sub-int v6, v0, p1

    #@b
    .line 3654
    .local v6, "adjust":I
    if-gtz v6, :cond_0

    #@d
    .line 3655
    return-object p0

    #@e
    .line 3657
    :cond_0
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@10
    add-int/2addr v0, v6

    #@11
    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@13
    .line 3658
    iget-byte v10, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@15
    .line 3659
    .local v10, "sign":I
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@17
    .line 3660
    .local v9, "oldmant":[B
    if-lez p1, :cond_3

    #@19
    .line 3662
    new-array v0, p1, [B

    #@1b
    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1d
    .line 3663
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1f
    invoke-static {v9, v11, v0, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 3664
    const/4 v5, 0x1

    #@23
    .line 3665
    aget-byte v7, v9, p1

    #@25
    .line 3677
    .end local v7    # "first":B
    :goto_0
    const/4 v4, 0x0

    #@26
    .line 3680
    .local v4, "increment":I
    const/4 v0, 0x4

    #@27
    if-ne p2, v0, :cond_5

    #@29
    .line 3681
    if-lt v7, v1, :cond_1

    #@2b
    .line 3682
    move v4, v10

    #@2c
    .line 3722
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    #@2e
    .line 3724
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@30
    if-nez v0, :cond_f

    #@32
    .line 3726
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@34
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@36
    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@38
    .line 3727
    int-to-byte v0, v4

    #@39
    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@3b
    .line 3745
    .end local v8    # "newmant":[B
    :cond_2
    :goto_2
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@3d
    const v1, 0x3b9ac9ff

    #@40
    if-le v0, v1, :cond_12

    #@42
    .line 3746
    new-instance v0, Ljava/lang/ArithmeticException;

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "Exponent Overflow: "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 3667
    .end local v4    # "increment":I
    .restart local v7    # "first":B
    .restart local v8    # "newmant":[B
    :cond_3
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@60
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@62
    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@64
    .line 3668
    iput-byte v11, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@66
    .line 3669
    const/4 v5, 0x0

    #@67
    .line 3670
    if-nez p1, :cond_4

    #@69
    .line 3671
    aget-byte v7, v9, v11

    #@6b
    .local v7, "first":B
    goto :goto_0

    #@6c
    .line 3673
    .local v7, "first":B
    :cond_4
    const/4 v7, 0x0

    #@6d
    goto :goto_0

    #@6e
    .line 3683
    .end local v7    # "first":B
    .restart local v4    # "increment":I
    :cond_5
    const/4 v0, 0x7

    #@6f
    if-ne p2, v0, :cond_6

    #@71
    .line 3685
    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@74
    move-result v0

    #@75
    if-nez v0, :cond_1

    #@77
    .line 3686
    new-instance v0, Ljava/lang/ArithmeticException;

    #@79
    const-string/jumbo v1, "Rounding necessary"

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v0

    #@80
    .line 3687
    :cond_6
    if-ne p2, v1, :cond_8

    #@82
    .line 3688
    if-le v7, v1, :cond_7

    #@84
    .line 3689
    move v4, v10

    #@85
    goto :goto_1

    #@86
    .line 3690
    :cond_7
    if-ne v7, v1, :cond_1

    #@88
    .line 3691
    add-int/lit8 v0, p1, 0x1

    #@8a
    invoke-static {v9, v0}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@8d
    move-result v0

    #@8e
    if-nez v0, :cond_1

    #@90
    .line 3692
    move v4, v10

    #@91
    goto :goto_1

    #@92
    .line 3693
    :cond_8
    const/4 v0, 0x6

    #@93
    if-ne p2, v0, :cond_b

    #@95
    .line 3694
    if-le v7, v1, :cond_9

    #@97
    .line 3695
    move v4, v10

    #@98
    goto :goto_1

    #@99
    .line 3696
    :cond_9
    if-ne v7, v1, :cond_1

    #@9b
    .line 3697
    add-int/lit8 v0, p1, 0x1

    #@9d
    invoke-static {v9, v0}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@a0
    move-result v0

    #@a1
    if-nez v0, :cond_a

    #@a3
    .line 3698
    move v4, v10

    #@a4
    goto :goto_1

    #@a5
    .line 3700
    :cond_a
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@a7
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@a9
    array-length v1, v1

    #@aa
    add-int/lit8 v1, v1, -0x1

    #@ac
    aget-byte v0, v0, v1

    #@ae
    rem-int/lit8 v0, v0, 0x2

    #@b0
    if-eqz v0, :cond_1

    #@b2
    .line 3701
    move v4, v10

    #@b3
    goto/16 :goto_1

    #@b5
    .line 3703
    :cond_b
    if-eq p2, v3, :cond_1

    #@b7
    .line 3705
    if-nez p2, :cond_c

    #@b9
    .line 3706
    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@bc
    move-result v0

    #@bd
    if-nez v0, :cond_1

    #@bf
    .line 3707
    move v4, v10

    #@c0
    goto/16 :goto_1

    #@c2
    .line 3708
    :cond_c
    const/4 v0, 0x2

    #@c3
    if-ne p2, v0, :cond_d

    #@c5
    .line 3709
    if-lez v10, :cond_1

    #@c7
    .line 3710
    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@ca
    move-result v0

    #@cb
    if-nez v0, :cond_1

    #@cd
    .line 3711
    move v4, v10

    #@ce
    goto/16 :goto_1

    #@d0
    .line 3712
    :cond_d
    const/4 v0, 0x3

    #@d1
    if-ne p2, v0, :cond_e

    #@d3
    .line 3713
    if-gez v10, :cond_1

    #@d5
    .line 3714
    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@d8
    move-result v0

    #@d9
    if-nez v0, :cond_1

    #@db
    .line 3715
    move v4, v10

    #@dc
    goto/16 :goto_1

    #@de
    .line 3717
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v2, "Bad round value: "

    #@e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v1

    #@f4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v0

    #@f8
    .line 3730
    :cond_f
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@fa
    const/4 v1, -0x1

    #@fb
    if-ne v0, v1, :cond_10

    #@fd
    .line 3731
    neg-int v4, v4

    #@fe
    .line 3732
    :cond_10
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@100
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@102
    array-length v1, v1

    #@103
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@105
    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@107
    invoke-static/range {v0 .. v5}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    #@10a
    move-result-object v8

    #@10b
    .line 3733
    .local v8, "newmant":[B
    array-length v0, v8

    #@10c
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@10e
    array-length v1, v1

    #@10f
    if-le v0, v1, :cond_11

    #@111
    .line 3735
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@113
    add-int/lit8 v0, v0, 0x1

    #@115
    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@117
    .line 3737
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@119
    .line 3738
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@11b
    array-length v1, v1

    #@11c
    .line 3737
    invoke-static {v8, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@11f
    goto/16 :goto_2

    #@121
    .line 3740
    :cond_11
    iput-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@123
    goto/16 :goto_2

    #@125
    .line 3747
    .end local v8    # "newmant":[B
    :cond_12
    return-object p0
.end method

.method private round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p1, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 3632
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    #@2
    iget v1, p1, Landroid/icu/math/MathContext;->roundingMode:I

    #@4
    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(D)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p0, "dub"    # D

    #@0
    .prologue
    .line 2880
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@2
    new-instance v1, Ljava/lang/Double;

    #@4
    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    #@7
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@e
    return-object v0
.end method

.method public static valueOf(J)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p0, "lint"    # J

    #@0
    .prologue
    .line 2893
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static valueOf(JI)Landroid/icu/math/BigDecimal;
    .locals 4
    .param p0, "lint"    # J
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 2915
    const/4 v0, 0x0

    #@1
    .line 2917
    .local v0, "res":Landroid/icu/math/BigDecimal;
    const-wide/16 v2, 0x0

    #@3
    cmp-long v1, p0, v2

    #@5
    if-nez v1, :cond_0

    #@7
    .line 2918
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@9
    .line 2927
    .local v0, "res":Landroid/icu/math/BigDecimal;
    :goto_0
    if-nez p2, :cond_3

    #@b
    .line 2928
    return-object v0

    #@c
    .line 2919
    .local v0, "res":Landroid/icu/math/BigDecimal;
    :cond_0
    const-wide/16 v2, 0x1

    #@e
    cmp-long v1, p0, v2

    #@10
    if-nez v1, :cond_1

    #@12
    .line 2920
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@14
    .local v0, "res":Landroid/icu/math/BigDecimal;
    goto :goto_0

    #@15
    .line 2921
    .local v0, "res":Landroid/icu/math/BigDecimal;
    :cond_1
    const-wide/16 v2, 0xa

    #@17
    cmp-long v1, p0, v2

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 2922
    sget-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    #@1d
    .local v0, "res":Landroid/icu/math/BigDecimal;
    goto :goto_0

    #@1e
    .line 2924
    .local v0, "res":Landroid/icu/math/BigDecimal;
    :cond_2
    new-instance v0, Landroid/icu/math/BigDecimal;

    #@20
    .end local v0    # "res":Landroid/icu/math/BigDecimal;
    invoke-direct {v0, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@23
    .local v0, "res":Landroid/icu/math/BigDecimal;
    goto :goto_0

    #@24
    .line 2929
    :cond_3
    if-gez p2, :cond_4

    #@26
    .line 2930
    new-instance v1, Ljava/lang/NumberFormatException;

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Negative scale: "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 2931
    :cond_4
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@43
    move-result-object v0

    #@44
    .line 2932
    neg-int v1, p2

    #@45
    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@47
    .line 2933
    return-object v0
.end method


# virtual methods
.method public abs()Landroid/icu/math/BigDecimal;
    .locals 1

    #@0
    .prologue
    .line 955
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p1, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 971
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 972
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 973
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 990
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 22
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1013
    const/4 v15, 0x0

    #@1
    .line 1014
    .local v15, "newlen":I
    const/16 v19, 0x0

    #@3
    .line 1015
    .local v19, "tlen":I
    const/4 v6, 0x0

    #@4
    .line 1016
    .local v6, "mult":I
    const/16 v18, 0x0

    #@6
    .line 1017
    .local v18, "t":[B
    const/4 v12, 0x0

    #@7
    .line 1018
    .local v12, "ia":I
    const/4 v13, 0x0

    #@8
    .line 1019
    .local v13, "ib":I
    const/4 v10, 0x0

    #@9
    .line 1020
    .local v10, "ea":I
    const/4 v11, 0x0

    #@a
    .line 1021
    .local v11, "eb":I
    const/4 v8, 0x0

    #@b
    .line 1022
    .local v8, "ca":B
    const/4 v9, 0x0

    #@c
    .line 1024
    .local v9, "cb":B
    move-object/from16 v0, p2

    #@e
    iget-boolean v7, v0, Landroid/icu/math/MathContext;->lostDigits:Z

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 1025
    move-object/from16 v0, p2

    #@14
    iget v7, v0, Landroid/icu/math/MathContext;->digits:I

    #@16
    move-object/from16 v0, p0

    #@18
    move-object/from16 v1, p1

    #@1a
    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@1d
    .line 1026
    :cond_0
    move-object/from16 v14, p0

    #@1f
    .line 1030
    .local v14, "lhs":Landroid/icu/math/BigDecimal;
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@21
    if-nez v7, :cond_1

    #@23
    .line 1031
    move-object/from16 v0, p2

    #@25
    iget v7, v0, Landroid/icu/math/MathContext;->form:I

    #@27
    if-eqz v7, :cond_1

    #@29
    .line 1032
    invoke-virtual/range {p1 .. p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@2c
    move-result-object v7

    #@2d
    return-object v7

    #@2e
    .line 1033
    :cond_1
    move-object/from16 v0, p1

    #@30
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@32
    if-nez v7, :cond_2

    #@34
    .line 1034
    move-object/from16 v0, p2

    #@36
    iget v7, v0, Landroid/icu/math/MathContext;->form:I

    #@38
    if-eqz v7, :cond_2

    #@3a
    .line 1035
    move-object/from16 v0, p2

    #@3c
    invoke-virtual {v14, v0}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@3f
    move-result-object v7

    #@40
    return-object v7

    #@41
    .line 1038
    :cond_2
    move-object/from16 v0, p2

    #@43
    iget v0, v0, Landroid/icu/math/MathContext;->digits:I

    #@45
    move/from16 v16, v0

    #@47
    .line 1039
    .local v16, "reqdig":I
    if-lez v16, :cond_4

    #@49
    .line 1040
    iget-object v7, v14, Landroid/icu/math/BigDecimal;->mant:[B

    #@4b
    array-length v7, v7

    #@4c
    move/from16 v0, v16

    #@4e
    if-le v7, v0, :cond_3

    #@50
    .line 1041
    invoke-static {v14}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@53
    move-result-object v7

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-direct {v7, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@59
    move-result-object v14

    #@5a
    .line 1042
    :cond_3
    move-object/from16 v0, p1

    #@5c
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@5e
    array-length v7, v7

    #@5f
    move/from16 v0, v16

    #@61
    if-le v7, v0, :cond_4

    #@63
    .line 1043
    invoke-static/range {p1 .. p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@66
    move-result-object v7

    #@67
    move-object/from16 v0, p2

    #@69
    invoke-direct {v7, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@6c
    move-result-object p1

    #@6d
    .line 1047
    :cond_4
    new-instance v17, Landroid/icu/math/BigDecimal;

    #@6f
    invoke-direct/range {v17 .. v17}, Landroid/icu/math/BigDecimal;-><init>()V

    #@72
    .line 1057
    .local v17, "res":Landroid/icu/math/BigDecimal;
    iget-object v2, v14, Landroid/icu/math/BigDecimal;->mant:[B

    #@74
    .line 1058
    .local v2, "usel":[B
    iget-object v7, v14, Landroid/icu/math/BigDecimal;->mant:[B

    #@76
    array-length v3, v7

    #@77
    .line 1059
    .local v3, "usellen":I
    move-object/from16 v0, p1

    #@79
    iget-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@7b
    .line 1060
    .local v4, "user":[B
    move-object/from16 v0, p1

    #@7d
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@7f
    array-length v5, v7

    #@80
    .line 1063
    .local v5, "userlen":I
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@82
    move-object/from16 v0, p1

    #@84
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@86
    move/from16 v20, v0

    #@88
    move/from16 v0, v20

    #@8a
    if-ne v7, v0, :cond_7

    #@8c
    .line 1065
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@8e
    move-object/from16 v0, v17

    #@90
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@92
    .line 1130
    :cond_5
    :goto_0
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@94
    if-nez v7, :cond_f

    #@96
    .line 1131
    const/4 v7, 0x1

    #@97
    move-object/from16 v0, v17

    #@99
    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@9b
    .line 1134
    :goto_1
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@9d
    const/16 v20, -0x1

    #@9f
    move/from16 v0, v20

    #@a1
    if-ne v7, v0, :cond_10

    #@a3
    const/4 v7, 0x1

    #@a4
    :goto_2
    move-object/from16 v0, p1

    #@a6
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@a8
    move/from16 v20, v0

    #@aa
    const/16 v21, -0x1

    #@ac
    move/from16 v0, v20

    #@ae
    move/from16 v1, v21

    #@b0
    if-ne v0, v1, :cond_11

    #@b2
    const/16 v20, 0x1

    #@b4
    :goto_3
    move/from16 v0, v20

    #@b6
    if-ne v7, v0, :cond_12

    #@b8
    .line 1135
    const/4 v6, 0x1

    #@b9
    .line 1207
    .end local v8    # "ca":B
    .end local v9    # "cb":B
    .end local v18    # "t":[B
    :cond_6
    :goto_4
    const/4 v7, 0x0

    #@ba
    invoke-static/range {v2 .. v7}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    #@bd
    move-result-object v7

    #@be
    move-object/from16 v0, v17

    #@c0
    iput-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@c2
    .line 1211
    const/4 v7, 0x0

    #@c3
    move-object/from16 v0, v17

    #@c5
    move-object/from16 v1, p2

    #@c7
    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@ca
    move-result-object v7

    #@cb
    return-object v7

    #@cc
    .line 1066
    .restart local v8    # "ca":B
    .restart local v9    # "cb":B
    .restart local v18    # "t":[B
    :cond_7
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@ce
    move-object/from16 v0, p1

    #@d0
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@d2
    move/from16 v20, v0

    #@d4
    move/from16 v0, v20

    #@d6
    if-le v7, v0, :cond_b

    #@d8
    .line 1067
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@da
    add-int/2addr v7, v3

    #@db
    move-object/from16 v0, p1

    #@dd
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@df
    move/from16 v20, v0

    #@e1
    sub-int v15, v7, v20

    #@e3
    .line 1072
    add-int v7, v5, v16

    #@e5
    add-int/lit8 v7, v7, 0x1

    #@e7
    if-lt v15, v7, :cond_9

    #@e9
    .line 1073
    if-lez v16, :cond_9

    #@eb
    .line 1075
    move-object/from16 v0, v17

    #@ed
    iput-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@ef
    .line 1076
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@f1
    move-object/from16 v0, v17

    #@f3
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@f5
    .line 1077
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@f7
    move-object/from16 v0, v17

    #@f9
    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@fb
    .line 1078
    move/from16 v0, v16

    #@fd
    if-ge v3, v0, :cond_8

    #@ff
    .line 1079
    iget-object v7, v14, Landroid/icu/math/BigDecimal;->mant:[B

    #@101
    move/from16 v0, v16

    #@103
    invoke-static {v7, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@106
    move-result-object v7

    #@107
    move-object/from16 v0, v17

    #@109
    iput-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@10b
    .line 1080
    move-object/from16 v0, v17

    #@10d
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@10f
    sub-int v20, v16, v3

    #@111
    sub-int v7, v7, v20

    #@113
    move-object/from16 v0, v17

    #@115
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@117
    .line 1082
    :cond_8
    const/4 v7, 0x0

    #@118
    move-object/from16 v0, v17

    #@11a
    move-object/from16 v1, p2

    #@11c
    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@11f
    move-result-object v7

    #@120
    return-object v7

    #@121
    .line 1085
    :cond_9
    move-object/from16 v0, p1

    #@123
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@125
    move-object/from16 v0, v17

    #@127
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@129
    .line 1086
    add-int/lit8 v7, v16, 0x1

    #@12b
    if-le v15, v7, :cond_a

    #@12d
    .line 1087
    if-lez v16, :cond_a

    #@12f
    .line 1089
    sub-int v7, v15, v16

    #@131
    add-int/lit8 v19, v7, -0x1

    #@133
    .line 1090
    sub-int v5, v5, v19

    #@135
    .line 1091
    move-object/from16 v0, v17

    #@137
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@139
    add-int v7, v7, v19

    #@13b
    move-object/from16 v0, v17

    #@13d
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@13f
    .line 1092
    add-int/lit8 v15, v16, 0x1

    #@141
    .line 1094
    :cond_a
    if-le v15, v3, :cond_5

    #@143
    .line 1095
    move v3, v15

    #@144
    goto/16 :goto_0

    #@146
    .line 1097
    :cond_b
    move-object/from16 v0, p1

    #@148
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@14a
    add-int/2addr v7, v5

    #@14b
    iget v0, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@14d
    move/from16 v20, v0

    #@14f
    sub-int v15, v7, v20

    #@151
    .line 1098
    add-int v7, v3, v16

    #@153
    add-int/lit8 v7, v7, 0x1

    #@155
    if-lt v15, v7, :cond_d

    #@157
    .line 1099
    if-lez v16, :cond_d

    #@159
    .line 1101
    move-object/from16 v0, v17

    #@15b
    iput-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@15d
    .line 1102
    move-object/from16 v0, p1

    #@15f
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@161
    move-object/from16 v0, v17

    #@163
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@165
    .line 1103
    move-object/from16 v0, p1

    #@167
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@169
    move-object/from16 v0, v17

    #@16b
    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@16d
    .line 1104
    move/from16 v0, v16

    #@16f
    if-ge v5, v0, :cond_c

    #@171
    .line 1105
    move-object/from16 v0, p1

    #@173
    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@175
    move/from16 v0, v16

    #@177
    invoke-static {v7, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@17a
    move-result-object v7

    #@17b
    move-object/from16 v0, v17

    #@17d
    iput-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@17f
    .line 1106
    move-object/from16 v0, v17

    #@181
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@183
    sub-int v20, v16, v5

    #@185
    sub-int v7, v7, v20

    #@187
    move-object/from16 v0, v17

    #@189
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@18b
    .line 1108
    :cond_c
    const/4 v7, 0x0

    #@18c
    move-object/from16 v0, v17

    #@18e
    move-object/from16 v1, p2

    #@190
    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@193
    move-result-object v7

    #@194
    return-object v7

    #@195
    .line 1111
    :cond_d
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@197
    move-object/from16 v0, v17

    #@199
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@19b
    .line 1112
    add-int/lit8 v7, v16, 0x1

    #@19d
    if-le v15, v7, :cond_e

    #@19f
    .line 1113
    if-lez v16, :cond_e

    #@1a1
    .line 1115
    sub-int v7, v15, v16

    #@1a3
    add-int/lit8 v19, v7, -0x1

    #@1a5
    .line 1116
    sub-int v3, v3, v19

    #@1a7
    .line 1117
    move-object/from16 v0, v17

    #@1a9
    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@1ab
    add-int v7, v7, v19

    #@1ad
    move-object/from16 v0, v17

    #@1af
    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@1b1
    .line 1118
    add-int/lit8 v15, v16, 0x1

    #@1b3
    .line 1120
    :cond_e
    if-le v15, v5, :cond_5

    #@1b5
    .line 1121
    move v5, v15

    #@1b6
    goto/16 :goto_0

    #@1b8
    .line 1133
    :cond_f
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@1ba
    move-object/from16 v0, v17

    #@1bc
    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@1be
    goto/16 :goto_1

    #@1c0
    .line 1134
    :cond_10
    const/4 v7, 0x0

    #@1c1
    goto/16 :goto_2

    #@1c3
    :cond_11
    const/16 v20, 0x0

    #@1c5
    goto/16 :goto_3

    #@1c7
    .line 1138
    :cond_12
    const/4 v6, -0x1

    #@1c8
    .line 1145
    move-object/from16 v0, p1

    #@1ca
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@1cc
    if-eqz v7, :cond_6

    #@1ce
    .line 1147
    if-ge v3, v5, :cond_13

    #@1d0
    const/4 v7, 0x1

    #@1d1
    :goto_5
    iget-byte v0, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@1d3
    move/from16 v20, v0

    #@1d5
    if-nez v20, :cond_14

    #@1d7
    const/16 v20, 0x1

    #@1d9
    :goto_6
    or-int v7, v7, v20

    #@1db
    if-eqz v7, :cond_15

    #@1dd
    .line 1148
    move-object/from16 v18, v2

    #@1df
    .line 1149
    .local v18, "t":[B
    move-object v2, v4

    #@1e0
    .line 1150
    move-object/from16 v4, v18

    #@1e2
    .line 1151
    move/from16 v19, v3

    #@1e4
    .line 1152
    move v3, v5

    #@1e5
    .line 1153
    move/from16 v5, v19

    #@1e7
    .line 1154
    move-object/from16 v0, v17

    #@1e9
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@1eb
    neg-int v7, v7

    #@1ec
    int-to-byte v7, v7

    #@1ed
    move-object/from16 v0, v17

    #@1ef
    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@1f1
    goto/16 :goto_4

    #@1f3
    .line 1147
    .local v18, "t":[B
    :cond_13
    const/4 v7, 0x0

    #@1f4
    goto :goto_5

    #@1f5
    :cond_14
    const/16 v20, 0x0

    #@1f7
    goto :goto_6

    #@1f8
    .line 1155
    :cond_15
    if-gt v3, v5, :cond_6

    #@1fa
    .line 1160
    const/4 v12, 0x0

    #@1fb
    .line 1161
    const/4 v13, 0x0

    #@1fc
    .line 1162
    array-length v7, v2

    #@1fd
    add-int/lit8 v10, v7, -0x1

    #@1ff
    .line 1163
    array-length v7, v4

    #@200
    add-int/lit8 v11, v7, -0x1

    #@202
    .line 1166
    .end local v8    # "ca":B
    .end local v9    # "cb":B
    :goto_7
    if-gt v12, v10, :cond_16

    #@204
    .line 1167
    aget-byte v8, v2, v12

    #@206
    .line 1177
    :goto_8
    if-gt v13, v11, :cond_18

    #@208
    .line 1178
    aget-byte v9, v4, v13

    #@20a
    .line 1181
    :goto_9
    if-eq v8, v9, :cond_19

    #@20c
    .line 1182
    if-ge v8, v9, :cond_6

    #@20e
    .line 1183
    move-object/from16 v18, v2

    #@210
    .line 1184
    .local v18, "t":[B
    move-object v2, v4

    #@211
    .line 1185
    move-object/from16 v4, v18

    #@213
    .line 1186
    move/from16 v19, v3

    #@215
    .line 1187
    move v3, v5

    #@216
    .line 1188
    move/from16 v5, v19

    #@218
    .line 1189
    move-object/from16 v0, v17

    #@21a
    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@21c
    neg-int v7, v7

    #@21d
    int-to-byte v7, v7

    #@21e
    move-object/from16 v0, v17

    #@220
    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@222
    goto/16 :goto_4

    #@224
    .line 1169
    .local v18, "t":[B
    :cond_16
    if-le v13, v11, :cond_17

    #@226
    .line 1170
    move-object/from16 v0, p2

    #@228
    iget v7, v0, Landroid/icu/math/MathContext;->form:I

    #@22a
    if-eqz v7, :cond_6

    #@22c
    .line 1171
    sget-object v7, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@22e
    return-object v7

    #@22f
    .line 1175
    :cond_17
    const/4 v8, 0x0

    #@230
    .restart local v8    # "ca":B
    goto :goto_8

    #@231
    .line 1180
    .end local v8    # "ca":B
    :cond_18
    const/4 v9, 0x0

    #@232
    .restart local v9    # "cb":B
    goto :goto_9

    #@233
    .line 1194
    .end local v9    # "cb":B
    :cond_19
    add-int/lit8 v12, v12, 0x1

    #@235
    .line 1195
    add-int/lit8 v13, v13, 0x1

    #@237
    goto :goto_7
.end method

.method public byteValueExact()B
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1923
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    #@5
    move-result v0

    #@6
    .line 1924
    .local v0, "num":I
    const/16 v3, 0x7f

    #@8
    if-le v0, v3, :cond_0

    #@a
    move v3, v1

    #@b
    :goto_0
    const/16 v4, -0x80

    #@d
    if-ge v0, v4, :cond_1

    #@f
    :goto_1
    or-int/2addr v1, v3

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 1925
    new-instance v1, Ljava/lang/ArithmeticException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Conversion overflow: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    :cond_0
    move v3, v2

    #@31
    .line 1924
    goto :goto_0

    #@32
    :cond_1
    move v1, v2

    #@33
    goto :goto_1

    #@34
    .line 1926
    :cond_2
    int-to-byte v1, v0

    #@35
    return v1
.end method

.method public compareTo(Landroid/icu/math/BigDecimal;)I
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1227
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I
    .locals 9
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1259
    const/4 v3, 0x0

    #@3
    .line 1260
    .local v3, "thislength":I
    const/4 v1, 0x0

    #@4
    .line 1263
    .local v1, "i":I
    iget-boolean v4, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 1264
    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    #@a
    invoke-direct {p0, p1, v4}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@d
    .line 1266
    :cond_0
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@f
    iget-byte v7, p1, Landroid/icu/math/BigDecimal;->ind:B

    #@11
    if-ne v4, v7, :cond_1

    #@13
    move v4, v5

    #@14
    :goto_0
    iget v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@16
    iget v8, p1, Landroid/icu/math/BigDecimal;->exp:I

    #@18
    if-ne v7, v8, :cond_2

    #@1a
    move v7, v5

    #@1b
    :goto_1
    and-int/2addr v4, v7

    #@1c
    if-eqz v4, :cond_a

    #@1e
    .line 1268
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@20
    array-length v3, v4

    #@21
    .line 1269
    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@23
    array-length v4, v4

    #@24
    if-ge v3, v4, :cond_3

    #@26
    .line 1270
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@28
    neg-int v4, v4

    #@29
    int-to-byte v4, v4

    #@2a
    return v4

    #@2b
    :cond_1
    move v4, v6

    #@2c
    .line 1266
    goto :goto_0

    #@2d
    :cond_2
    move v7, v6

    #@2e
    goto :goto_1

    #@2f
    .line 1271
    :cond_3
    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@31
    array-length v4, v4

    #@32
    if-le v3, v4, :cond_4

    #@34
    .line 1272
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@36
    return v4

    #@37
    .line 1277
    :cond_4
    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    #@39
    if-gt v3, v4, :cond_5

    #@3b
    move v4, v5

    #@3c
    :goto_2
    iget v7, p2, Landroid/icu/math/MathContext;->digits:I

    #@3e
    if-nez v7, :cond_6

    #@40
    :goto_3
    or-int/2addr v4, v5

    #@41
    if-eqz v4, :cond_c

    #@43
    .line 1279
    move v0, v3

    #@44
    .line 1280
    .local v0, "$6":I
    const/4 v1, 0x0

    #@45
    .line 1281
    :goto_4
    if-lez v0, :cond_9

    #@47
    .line 1282
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@49
    aget-byte v4, v4, v1

    #@4b
    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@4d
    aget-byte v5, v5, v1

    #@4f
    if-ge v4, v5, :cond_7

    #@51
    .line 1283
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@53
    neg-int v4, v4

    #@54
    int-to-byte v4, v4

    #@55
    return v4

    #@56
    .end local v0    # "$6":I
    :cond_5
    move v4, v6

    #@57
    .line 1277
    goto :goto_2

    #@58
    :cond_6
    move v5, v6

    #@59
    goto :goto_3

    #@5a
    .line 1284
    .restart local v0    # "$6":I
    :cond_7
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@5c
    aget-byte v4, v4, v1

    #@5e
    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@60
    aget-byte v5, v5, v1

    #@62
    if-le v4, v5, :cond_8

    #@64
    .line 1285
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@66
    return v4

    #@67
    .line 1281
    :cond_8
    add-int/lit8 v0, v0, -0x1

    #@69
    add-int/lit8 v1, v1, 0x1

    #@6b
    goto :goto_4

    #@6c
    .line 1288
    :cond_9
    return v6

    #@6d
    .line 1293
    .end local v0    # "$6":I
    :cond_a
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@6f
    iget-byte v6, p1, Landroid/icu/math/BigDecimal;->ind:B

    #@71
    if-ge v4, v6, :cond_b

    #@73
    .line 1294
    const/4 v4, -0x1

    #@74
    return v4

    #@75
    .line 1295
    :cond_b
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@77
    iget-byte v6, p1, Landroid/icu/math/BigDecimal;->ind:B

    #@79
    if-le v4, v6, :cond_c

    #@7b
    .line 1296
    return v5

    #@7c
    .line 1299
    :cond_c
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@7f
    move-result-object v2

    #@80
    .line 1300
    .local v2, "newrhs":Landroid/icu/math/BigDecimal;
    iget-byte v4, v2, Landroid/icu/math/BigDecimal;->ind:B

    #@82
    neg-int v4, v4

    #@83
    int-to-byte v4, v4

    #@84
    iput-byte v4, v2, Landroid/icu/math/BigDecimal;->ind:B

    #@86
    .line 1301
    invoke-virtual {p0, v2, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@89
    move-result-object v4

    #@8a
    iget-byte v4, v4, Landroid/icu/math/BigDecimal;->ind:B

    #@8c
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1226
    check-cast p1, Landroid/icu/math/BigDecimal;

    #@2
    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public divide(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1320
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    const/16 v1, 0x44

    #@4
    const/4 v2, -0x1

    #@5
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "round"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1346
    new-instance v0, Landroid/icu/math/MathContext;

    #@3
    invoke-direct {v0, v1, v1, v1, p2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@6
    .line 1348
    .local v0, "set":Landroid/icu/math/MathContext;
    const/16 v1, 0x44

    #@8
    const/4 v2, -0x1

    #@9
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;
    .locals 4
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "round"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1378
    if-gez p2, :cond_0

    #@3
    .line 1379
    new-instance v1, Ljava/lang/ArithmeticException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Negative scale: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 1380
    :cond_0
    new-instance v0, Landroid/icu/math/MathContext;

    #@1f
    invoke-direct {v0, v1, v1, v1, p3}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@22
    .line 1381
    .local v0, "set":Landroid/icu/math/MathContext;
    const/16 v1, 0x44

    #@24
    invoke-direct {p0, v1, p1, v0, p2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1398
    const/16 v0, 0x44

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public divideInteger(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1415
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    const/16 v1, 0x49

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public divideInteger(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1434
    const/16 v0, 0x49

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1970
    const/4 v2, 0x0

    #@3
    .line 1971
    .local v2, "i":I
    const/4 v3, 0x0

    #@4
    .line 1972
    .local v3, "lca":[C
    const/4 v4, 0x0

    #@5
    .line 1974
    .local v4, "rca":[C
    if-nez p1, :cond_0

    #@7
    .line 1975
    return v8

    #@8
    .line 1976
    :cond_0
    instance-of v6, p1, Landroid/icu/math/BigDecimal;

    #@a
    if-nez v6, :cond_1

    #@c
    .line 1977
    return v8

    #@d
    :cond_1
    move-object v5, p1

    #@e
    .line 1978
    check-cast v5, Landroid/icu/math/BigDecimal;

    #@10
    .line 1979
    .local v5, "rhs":Landroid/icu/math/BigDecimal;
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@12
    iget-byte v9, v5, Landroid/icu/math/BigDecimal;->ind:B

    #@14
    if-eq v6, v9, :cond_2

    #@16
    .line 1980
    return v8

    #@17
    .line 1981
    :cond_2
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@19
    array-length v6, v6

    #@1a
    iget-object v9, v5, Landroid/icu/math/BigDecimal;->mant:[B

    #@1c
    array-length v9, v9

    #@1d
    if-ne v6, v9, :cond_3

    #@1f
    move v6, v7

    #@20
    :goto_0
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@22
    iget v10, v5, Landroid/icu/math/BigDecimal;->exp:I

    #@24
    if-ne v9, v10, :cond_4

    #@26
    move v9, v7

    #@27
    :goto_1
    and-int/2addr v9, v6

    #@28
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    #@2a
    iget-byte v10, v5, Landroid/icu/math/BigDecimal;->form:B

    #@2c
    if-ne v6, v10, :cond_5

    #@2e
    move v6, v7

    #@2f
    :goto_2
    and-int/2addr v6, v9

    #@30
    if-eqz v6, :cond_7

    #@32
    .line 1986
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@34
    array-length v0, v6

    #@35
    .line 1987
    .local v0, "$8":I
    const/4 v2, 0x0

    #@36
    .line 1988
    :goto_3
    if-lez v0, :cond_a

    #@38
    .line 1989
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@3a
    aget-byte v6, v6, v2

    #@3c
    iget-object v9, v5, Landroid/icu/math/BigDecimal;->mant:[B

    #@3e
    aget-byte v9, v9, v2

    #@40
    if-eq v6, v9, :cond_6

    #@42
    .line 1990
    return v8

    #@43
    .end local v0    # "$8":I
    :cond_3
    move v6, v8

    #@44
    .line 1981
    goto :goto_0

    #@45
    :cond_4
    move v9, v8

    #@46
    goto :goto_1

    #@47
    :cond_5
    move v6, v8

    #@48
    goto :goto_2

    #@49
    .line 1988
    .restart local v0    # "$8":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@4b
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_3

    #@4e
    .line 1994
    .end local v0    # "$8":I
    :cond_7
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    #@51
    move-result-object v3

    #@52
    .line 1995
    .local v3, "lca":[C
    invoke-direct {v5}, Landroid/icu/math/BigDecimal;->layout()[C

    #@55
    move-result-object v4

    #@56
    .line 1996
    .local v4, "rca":[C
    array-length v6, v3

    #@57
    array-length v9, v4

    #@58
    if-eq v6, v9, :cond_8

    #@5a
    .line 1997
    return v8

    #@5b
    .line 2000
    :cond_8
    array-length v1, v3

    #@5c
    .line 2001
    .local v1, "$9":I
    const/4 v2, 0x0

    #@5d
    .line 2002
    :goto_4
    if-lez v1, :cond_a

    #@5f
    .line 2003
    aget-char v6, v3, v2

    #@61
    aget-char v9, v4, v2

    #@63
    if-eq v6, v9, :cond_9

    #@65
    .line 2004
    return v8

    #@66
    .line 2002
    :cond_9
    add-int/lit8 v1, v1, -0x1

    #@68
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_4

    #@6b
    .line 2008
    .end local v1    # "$9":I
    .end local v3    # "lca":[C
    .end local v4    # "rca":[C
    :cond_a
    return v7
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 2025
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public format(II)Ljava/lang/String;
    .locals 7
    .param p1, "before"    # I
    .param p2, "after"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 2069
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x4

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v4, v3

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/icu/math/BigDecimal;->format(IIIIII)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public format(IIIIII)Ljava/lang/String;
    .locals 28
    .param p1, "before"    # I
    .param p2, "after"    # I
    .param p3, "explaces"    # I
    .param p4, "exdigits"    # I
    .param p5, "exformint"    # I
    .param p6, "exround"    # I

    #@0
    .prologue
    .line 2144
    const/4 v15, 0x0

    #@1
    .line 2145
    .local v15, "mag":I
    const/16 v23, 0x0

    #@3
    .line 2146
    .local v23, "thisafter":I
    const/4 v14, 0x0

    #@4
    .line 2147
    .local v14, "lead":I
    const/16 v18, 0x0

    #@6
    .line 2148
    .local v18, "newmant":[B
    const/4 v12, 0x0

    #@7
    .line 2149
    .local v12, "chop":I
    const/16 v16, 0x0

    #@9
    .line 2150
    .local v16, "need":I
    const/16 v20, 0x0

    #@b
    .line 2152
    .local v20, "oldexp":I
    const/16 v21, 0x0

    #@d
    .line 2153
    .local v21, "p":I
    const/16 v17, 0x0

    #@f
    .line 2154
    .local v17, "newa":[C
    const/4 v13, 0x0

    #@10
    .line 2155
    .local v13, "i":I
    const/16 v22, 0x0

    #@12
    .line 2158
    .local v22, "places":I
    const/16 v24, -0x1

    #@14
    move/from16 v0, p1

    #@16
    move/from16 v1, v24

    #@18
    if-ge v0, v1, :cond_a

    #@1a
    const/16 v24, 0x1

    #@1c
    move/from16 v25, v24

    #@1e
    :goto_0
    if-nez p1, :cond_b

    #@20
    const/16 v24, 0x1

    #@22
    :goto_1
    or-int v24, v24, v25

    #@24
    if-eqz v24, :cond_0

    #@26
    .line 2159
    const-string/jumbo v24, "format"

    #@29
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2c
    move-result-object v25

    #@2d
    const/16 v26, 0x1

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v24

    #@33
    move/from16 v2, v26

    #@35
    move-object/from16 v3, v25

    #@37
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@3a
    .line 2160
    :cond_0
    const/16 v24, -0x1

    #@3c
    move/from16 v0, p2

    #@3e
    move/from16 v1, v24

    #@40
    if-ge v0, v1, :cond_1

    #@42
    .line 2161
    const-string/jumbo v24, "format"

    #@45
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@48
    move-result-object v25

    #@49
    const/16 v26, 0x2

    #@4b
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, v24

    #@4f
    move/from16 v2, v26

    #@51
    move-object/from16 v3, v25

    #@53
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@56
    .line 2162
    :cond_1
    const/16 v24, -0x1

    #@58
    move/from16 v0, p3

    #@5a
    move/from16 v1, v24

    #@5c
    if-ge v0, v1, :cond_c

    #@5e
    const/16 v24, 0x1

    #@60
    move/from16 v25, v24

    #@62
    :goto_2
    if-nez p3, :cond_d

    #@64
    const/16 v24, 0x1

    #@66
    :goto_3
    or-int v24, v24, v25

    #@68
    if-eqz v24, :cond_2

    #@6a
    .line 2163
    const-string/jumbo v24, "format"

    #@6d
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@70
    move-result-object v25

    #@71
    const/16 v26, 0x3

    #@73
    move-object/from16 v0, p0

    #@75
    move-object/from16 v1, v24

    #@77
    move/from16 v2, v26

    #@79
    move-object/from16 v3, v25

    #@7b
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@7e
    .line 2164
    :cond_2
    const/16 v24, -0x1

    #@80
    move/from16 v0, p4

    #@82
    move/from16 v1, v24

    #@84
    if-ge v0, v1, :cond_3

    #@86
    .line 2165
    const-string/jumbo v24, "format"

    #@89
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@8c
    move-result-object v25

    #@8d
    const/16 v26, 0x4

    #@8f
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, v24

    #@93
    move/from16 v2, v26

    #@95
    move-object/from16 v3, v25

    #@97
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@9a
    .line 2167
    :cond_3
    const/16 v24, 0x1

    #@9c
    move/from16 v0, p5

    #@9e
    move/from16 v1, v24

    #@a0
    if-ne v0, v1, :cond_e

    #@a2
    .line 2178
    :cond_4
    :goto_4
    const/16 v24, 0x4

    #@a4
    move/from16 v0, p6

    #@a6
    move/from16 v1, v24

    #@a8
    if-eq v0, v1, :cond_5

    #@aa
    .line 2180
    const/16 v24, -0x1

    #@ac
    move/from16 v0, p6

    #@ae
    move/from16 v1, v24

    #@b0
    if-ne v0, v1, :cond_10

    #@b2
    .line 2181
    const/16 p6, 0x4

    #@b4
    .line 2189
    :cond_5
    :goto_5
    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@b7
    move-result-object v19

    #@b8
    .line 2200
    .local v19, "num":Landroid/icu/math/BigDecimal;
    const/16 v24, -0x1

    #@ba
    move/from16 v0, p4

    #@bc
    move/from16 v1, v24

    #@be
    if-ne v0, v1, :cond_11

    #@c0
    .line 2201
    const/16 v24, 0x0

    #@c2
    move/from16 v0, v24

    #@c4
    move-object/from16 v1, v19

    #@c6
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@c8
    .line 2221
    :goto_6
    if-ltz p2, :cond_7

    #@ca
    .line 2225
    :cond_6
    :goto_7
    move-object/from16 v0, v19

    #@cc
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    #@ce
    move/from16 v24, v0

    #@d0
    if-nez v24, :cond_15

    #@d2
    .line 2226
    move-object/from16 v0, v19

    #@d4
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@d6
    move/from16 v24, v0

    #@d8
    move/from16 v0, v24

    #@da
    neg-int v0, v0

    #@db
    move/from16 v23, v0

    #@dd
    .line 2240
    :goto_8
    move/from16 v0, v23

    #@df
    move/from16 v1, p2

    #@e1
    if-ne v0, v1, :cond_19

    #@e3
    .line 2275
    .end local v18    # "newmant":[B
    :cond_7
    :goto_9
    invoke-direct/range {v19 .. v19}, Landroid/icu/math/BigDecimal;->layout()[C

    #@e6
    move-result-object v11

    #@e7
    .line 2279
    .local v11, "a":[C
    if-lez p1, :cond_1e

    #@e9
    .line 2282
    array-length v6, v11

    #@ea
    .line 2283
    .local v6, "$11":I
    const/16 v21, 0x0

    #@ec
    .line 2284
    :goto_a
    if-lez v6, :cond_8

    #@ee
    .line 2285
    aget-char v24, v11, v21

    #@f0
    const/16 v25, 0x2e

    #@f2
    move/from16 v0, v24

    #@f4
    move/from16 v1, v25

    #@f6
    if-ne v0, v1, :cond_1c

    #@f8
    .line 2293
    :cond_8
    move/from16 v0, v21

    #@fa
    move/from16 v1, p1

    #@fc
    if-le v0, v1, :cond_9

    #@fe
    .line 2294
    const-string/jumbo v24, "format"

    #@101
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@104
    move-result-object v25

    #@105
    const/16 v26, 0x1

    #@107
    move-object/from16 v0, p0

    #@109
    move-object/from16 v1, v24

    #@10b
    move/from16 v2, v26

    #@10d
    move-object/from16 v3, v25

    #@10f
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@112
    .line 2295
    :cond_9
    move/from16 v0, v21

    #@114
    move/from16 v1, p1

    #@116
    if-ge v0, v1, :cond_1e

    #@118
    .line 2296
    array-length v0, v11

    #@119
    move/from16 v24, v0

    #@11b
    add-int v24, v24, p1

    #@11d
    sub-int v24, v24, v21

    #@11f
    move/from16 v0, v24

    #@121
    new-array v0, v0, [C

    #@123
    move-object/from16 v17, v0

    #@125
    .line 2298
    .local v17, "newa":[C
    sub-int v7, p1, v21

    #@127
    .line 2299
    .local v7, "$12":I
    const/4 v13, 0x0

    #@128
    .line 2300
    :goto_b
    if-lez v7, :cond_1d

    #@12a
    .line 2301
    const/16 v24, 0x20

    #@12c
    aput-char v24, v17, v13

    #@12e
    .line 2300
    add-int/lit8 v7, v7, -0x1

    #@130
    add-int/lit8 v13, v13, 0x1

    #@132
    goto :goto_b

    #@133
    .line 2158
    .end local v6    # "$11":I
    .end local v7    # "$12":I
    .end local v11    # "a":[C
    .end local v19    # "num":Landroid/icu/math/BigDecimal;
    .local v17, "newa":[C
    .restart local v18    # "newmant":[B
    :cond_a
    const/16 v24, 0x0

    #@135
    move/from16 v25, v24

    #@137
    goto/16 :goto_0

    #@139
    :cond_b
    const/16 v24, 0x0

    #@13b
    goto/16 :goto_1

    #@13d
    .line 2162
    :cond_c
    const/16 v24, 0x0

    #@13f
    move/from16 v25, v24

    #@141
    goto/16 :goto_2

    #@143
    :cond_d
    const/16 v24, 0x0

    #@145
    goto/16 :goto_3

    #@147
    .line 2168
    :cond_e
    const/16 v24, 0x2

    #@149
    move/from16 v0, p5

    #@14b
    move/from16 v1, v24

    #@14d
    if-eq v0, v1, :cond_4

    #@14f
    .line 2169
    const/16 v24, -0x1

    #@151
    move/from16 v0, p5

    #@153
    move/from16 v1, v24

    #@155
    if-ne v0, v1, :cond_f

    #@157
    .line 2170
    const/16 p5, 0x1

    #@159
    goto/16 :goto_4

    #@15b
    .line 2173
    :cond_f
    const-string/jumbo v24, "format"

    #@15e
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@161
    move-result-object v25

    #@162
    const/16 v26, 0x5

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, v24

    #@168
    move/from16 v2, v26

    #@16a
    move-object/from16 v3, v25

    #@16c
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@16f
    goto/16 :goto_4

    #@171
    .line 2183
    :cond_10
    :try_start_0
    new-instance v24, Landroid/icu/math/MathContext;

    #@173
    const/16 v25, 0x9

    #@175
    const/16 v26, 0x1

    #@177
    const/16 v27, 0x0

    #@179
    move-object/from16 v0, v24

    #@17b
    move/from16 v1, v25

    #@17d
    move/from16 v2, v26

    #@17f
    move/from16 v3, v27

    #@181
    move/from16 v4, p6

    #@183
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/math/MathContext;-><init>(IIZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@186
    goto/16 :goto_5

    #@188
    .line 2184
    :catch_0
    move-exception v5

    #@189
    .line 2185
    .local v5, "$10":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v24, "format"

    #@18c
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@18f
    move-result-object v25

    #@190
    const/16 v26, 0x6

    #@192
    move-object/from16 v0, p0

    #@194
    move-object/from16 v1, v24

    #@196
    move/from16 v2, v26

    #@198
    move-object/from16 v3, v25

    #@19a
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@19d
    goto/16 :goto_5

    #@19f
    .line 2202
    .end local v5    # "$10":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "num":Landroid/icu/math/BigDecimal;
    :cond_11
    move-object/from16 v0, v19

    #@1a1
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@1a3
    move/from16 v24, v0

    #@1a5
    if-nez v24, :cond_12

    #@1a7
    .line 2203
    const/16 v24, 0x0

    #@1a9
    move/from16 v0, v24

    #@1ab
    move-object/from16 v1, v19

    #@1ad
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@1af
    goto/16 :goto_6

    #@1b1
    .line 2206
    :cond_12
    move-object/from16 v0, v19

    #@1b3
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@1b5
    move/from16 v24, v0

    #@1b7
    move-object/from16 v0, v19

    #@1b9
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@1bb
    move-object/from16 v25, v0

    #@1bd
    move-object/from16 v0, v25

    #@1bf
    array-length v0, v0

    #@1c0
    move/from16 v25, v0

    #@1c2
    add-int v15, v24, v25

    #@1c4
    .line 2207
    move/from16 v0, p4

    #@1c6
    if-le v15, v0, :cond_13

    #@1c8
    .line 2208
    move/from16 v0, p5

    #@1ca
    int-to-byte v0, v0

    #@1cb
    move/from16 v24, v0

    #@1cd
    move/from16 v0, v24

    #@1cf
    move-object/from16 v1, v19

    #@1d1
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@1d3
    goto/16 :goto_6

    #@1d5
    .line 2209
    :cond_13
    const/16 v24, -0x5

    #@1d7
    move/from16 v0, v24

    #@1d9
    if-ge v15, v0, :cond_14

    #@1db
    .line 2210
    move/from16 v0, p5

    #@1dd
    int-to-byte v0, v0

    #@1de
    move/from16 v24, v0

    #@1e0
    move/from16 v0, v24

    #@1e2
    move-object/from16 v1, v19

    #@1e4
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@1e6
    goto/16 :goto_6

    #@1e8
    .line 2212
    :cond_14
    const/16 v24, 0x0

    #@1ea
    move/from16 v0, v24

    #@1ec
    move-object/from16 v1, v19

    #@1ee
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    #@1f0
    goto/16 :goto_6

    #@1f2
    .line 2227
    :cond_15
    move-object/from16 v0, v19

    #@1f4
    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    #@1f6
    move/from16 v24, v0

    #@1f8
    const/16 v25, 0x1

    #@1fa
    move/from16 v0, v24

    #@1fc
    move/from16 v1, v25

    #@1fe
    if-ne v0, v1, :cond_16

    #@200
    .line 2228
    move-object/from16 v0, v19

    #@202
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@204
    move-object/from16 v24, v0

    #@206
    move-object/from16 v0, v24

    #@208
    array-length v0, v0

    #@209
    move/from16 v24, v0

    #@20b
    add-int/lit8 v23, v24, -0x1

    #@20d
    goto/16 :goto_8

    #@20f
    .line 2230
    :cond_16
    move-object/from16 v0, v19

    #@211
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@213
    move/from16 v24, v0

    #@215
    move-object/from16 v0, v19

    #@217
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@219
    move-object/from16 v25, v0

    #@21b
    move-object/from16 v0, v25

    #@21d
    array-length v0, v0

    #@21e
    move/from16 v25, v0

    #@220
    add-int v24, v24, v25

    #@222
    add-int/lit8 v24, v24, -0x1

    #@224
    rem-int/lit8 v14, v24, 0x3

    #@226
    .line 2231
    if-gez v14, :cond_17

    #@228
    .line 2232
    add-int/lit8 v14, v14, 0x3

    #@22a
    .line 2233
    :cond_17
    add-int/lit8 v14, v14, 0x1

    #@22c
    .line 2234
    move-object/from16 v0, v19

    #@22e
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@230
    move-object/from16 v24, v0

    #@232
    move-object/from16 v0, v24

    #@234
    array-length v0, v0

    #@235
    move/from16 v24, v0

    #@237
    move/from16 v0, v24

    #@239
    if-lt v14, v0, :cond_18

    #@23b
    .line 2235
    const/16 v23, 0x0

    #@23d
    goto/16 :goto_8

    #@23f
    .line 2237
    :cond_18
    move-object/from16 v0, v19

    #@241
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@243
    move-object/from16 v24, v0

    #@245
    move-object/from16 v0, v24

    #@247
    array-length v0, v0

    #@248
    move/from16 v24, v0

    #@24a
    sub-int v23, v24, v14

    #@24c
    goto/16 :goto_8

    #@24e
    .line 2242
    :cond_19
    move/from16 v0, v23

    #@250
    move/from16 v1, p2

    #@252
    if-ge v0, v1, :cond_1a

    #@254
    .line 2244
    move-object/from16 v0, v19

    #@256
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@258
    move-object/from16 v24, v0

    #@25a
    move-object/from16 v0, v19

    #@25c
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@25e
    move-object/from16 v25, v0

    #@260
    move-object/from16 v0, v25

    #@262
    array-length v0, v0

    #@263
    move/from16 v25, v0

    #@265
    add-int v25, v25, p2

    #@267
    sub-int v25, v25, v23

    #@269
    invoke-static/range {v24 .. v25}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@26c
    move-result-object v18

    #@26d
    .line 2245
    .local v18, "newmant":[B
    move-object/from16 v0, v18

    #@26f
    move-object/from16 v1, v19

    #@271
    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    #@273
    .line 2246
    move-object/from16 v0, v19

    #@275
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@277
    move/from16 v24, v0

    #@279
    sub-int v25, p2, v23

    #@27b
    sub-int v24, v24, v25

    #@27d
    move/from16 v0, v24

    #@27f
    move-object/from16 v1, v19

    #@281
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@283
    .line 2247
    move-object/from16 v0, v19

    #@285
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@287
    move/from16 v24, v0

    #@289
    const v25, -0x3b9ac9ff

    #@28c
    move/from16 v0, v24

    #@28e
    move/from16 v1, v25

    #@290
    if-ge v0, v1, :cond_7

    #@292
    .line 2248
    new-instance v24, Ljava/lang/ArithmeticException;

    #@294
    new-instance v25, Ljava/lang/StringBuilder;

    #@296
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@299
    const-string/jumbo v26, "Exponent Overflow: "

    #@29c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v25

    #@2a0
    move-object/from16 v0, v19

    #@2a2
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@2a4
    move/from16 v26, v0

    #@2a6
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v25

    #@2aa
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ad
    move-result-object v25

    #@2ae
    invoke-direct/range {v24 .. v25}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2b1
    throw v24

    #@2b2
    .line 2254
    .local v18, "newmant":[B
    :cond_1a
    sub-int v12, v23, p2

    #@2b4
    .line 2255
    move-object/from16 v0, v19

    #@2b6
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2b8
    move-object/from16 v24, v0

    #@2ba
    move-object/from16 v0, v24

    #@2bc
    array-length v0, v0

    #@2bd
    move/from16 v24, v0

    #@2bf
    move/from16 v0, v24

    #@2c1
    if-le v12, v0, :cond_1b

    #@2c3
    .line 2257
    sget-object v24, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@2c5
    move-object/from16 v0, v24

    #@2c7
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2c9
    move-object/from16 v24, v0

    #@2cb
    move-object/from16 v0, v24

    #@2cd
    move-object/from16 v1, v19

    #@2cf
    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    #@2d1
    .line 2258
    const/16 v24, 0x0

    #@2d3
    move/from16 v0, v24

    #@2d5
    move-object/from16 v1, v19

    #@2d7
    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    #@2d9
    .line 2259
    const/16 v24, 0x0

    #@2db
    move/from16 v0, v24

    #@2dd
    move-object/from16 v1, v19

    #@2df
    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    #@2e1
    goto/16 :goto_7

    #@2e3
    .line 2264
    :cond_1b
    move-object/from16 v0, v19

    #@2e5
    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2e7
    move-object/from16 v24, v0

    #@2e9
    move-object/from16 v0, v24

    #@2eb
    array-length v0, v0

    #@2ec
    move/from16 v24, v0

    #@2ee
    sub-int v16, v24, v12

    #@2f0
    .line 2265
    move-object/from16 v0, v19

    #@2f2
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@2f4
    move/from16 v20, v0

    #@2f6
    .line 2266
    move-object/from16 v0, v19

    #@2f8
    move/from16 v1, v16

    #@2fa
    move/from16 v2, p6

    #@2fc
    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    #@2ff
    .line 2269
    move-object/from16 v0, v19

    #@301
    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@303
    move/from16 v24, v0

    #@305
    sub-int v24, v24, v20

    #@307
    move/from16 v0, v24

    #@309
    if-ne v0, v12, :cond_6

    #@30b
    goto/16 :goto_9

    #@30d
    .line 2287
    .end local v18    # "newmant":[B
    .restart local v6    # "$11":I
    .restart local v11    # "a":[C
    :cond_1c
    aget-char v24, v11, v21

    #@30f
    const/16 v25, 0x45

    #@311
    move/from16 v0, v24

    #@313
    move/from16 v1, v25

    #@315
    if-eq v0, v1, :cond_8

    #@317
    .line 2284
    add-int/lit8 v6, v6, -0x1

    #@319
    add-int/lit8 v21, v21, 0x1

    #@31b
    goto/16 :goto_a

    #@31d
    .line 2304
    .restart local v7    # "$12":I
    .local v17, "newa":[C
    :cond_1d
    array-length v0, v11

    #@31e
    move/from16 v24, v0

    #@320
    const/16 v25, 0x0

    #@322
    move/from16 v0, v25

    #@324
    move-object/from16 v1, v17

    #@326
    move/from16 v2, v24

    #@328
    invoke-static {v11, v0, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32b
    .line 2305
    move-object/from16 v11, v17

    #@32d
    .line 2310
    .end local v6    # "$11":I
    .end local v7    # "$12":I
    .end local v17    # "newa":[C
    :cond_1e
    if-lez p3, :cond_22

    #@32f
    .line 2313
    array-length v0, v11

    #@330
    move/from16 v24, v0

    #@332
    add-int/lit8 v8, v24, -0x1

    #@334
    .line 2314
    .local v8, "$13":I
    array-length v0, v11

    #@335
    move/from16 v24, v0

    #@337
    add-int/lit8 v21, v24, -0x1

    #@339
    .line 2315
    :goto_c
    if-lez v8, :cond_1f

    #@33b
    .line 2316
    aget-char v24, v11, v21

    #@33d
    const/16 v25, 0x45

    #@33f
    move/from16 v0, v24

    #@341
    move/from16 v1, v25

    #@343
    if-ne v0, v1, :cond_20

    #@345
    .line 2321
    :cond_1f
    if-nez v21, :cond_23

    #@347
    .line 2322
    array-length v0, v11

    #@348
    move/from16 v24, v0

    #@34a
    add-int v24, v24, p3

    #@34c
    add-int/lit8 v24, v24, 0x2

    #@34e
    move/from16 v0, v24

    #@350
    new-array v0, v0, [C

    #@352
    move-object/from16 v17, v0

    #@354
    .line 2323
    .restart local v17    # "newa":[C
    array-length v0, v11

    #@355
    move/from16 v24, v0

    #@357
    const/16 v25, 0x0

    #@359
    const/16 v26, 0x0

    #@35b
    move/from16 v0, v25

    #@35d
    move-object/from16 v1, v17

    #@35f
    move/from16 v2, v26

    #@361
    move/from16 v3, v24

    #@363
    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@366
    .line 2325
    add-int/lit8 v9, p3, 0x2

    #@368
    .line 2326
    .local v9, "$14":I
    array-length v13, v11

    #@369
    .line 2327
    :goto_d
    if-lez v9, :cond_21

    #@36b
    .line 2328
    const/16 v24, 0x20

    #@36d
    aput-char v24, v17, v13

    #@36f
    .line 2327
    add-int/lit8 v9, v9, -0x1

    #@371
    add-int/lit8 v13, v13, 0x1

    #@373
    goto :goto_d

    #@374
    .line 2315
    .end local v9    # "$14":I
    .end local v17    # "newa":[C
    :cond_20
    add-int/lit8 v8, v8, -0x1

    #@376
    add-int/lit8 v21, v21, -0x1

    #@378
    goto :goto_c

    #@379
    .line 2331
    .restart local v9    # "$14":I
    .restart local v17    # "newa":[C
    :cond_21
    move-object/from16 v11, v17

    #@37b
    .line 2355
    .end local v8    # "$13":I
    .end local v9    # "$14":I
    .end local v17    # "newa":[C
    :cond_22
    :goto_e
    new-instance v24, Ljava/lang/String;

    #@37d
    move-object/from16 v0, v24

    #@37f
    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([C)V

    #@382
    return-object v24

    #@383
    .line 2333
    .restart local v8    # "$13":I
    :cond_23
    array-length v0, v11

    #@384
    move/from16 v24, v0

    #@386
    sub-int v24, v24, v21

    #@388
    add-int/lit8 v22, v24, -0x2

    #@38a
    .line 2334
    move/from16 v0, v22

    #@38c
    move/from16 v1, p3

    #@38e
    if-le v0, v1, :cond_24

    #@390
    .line 2335
    const-string/jumbo v24, "format"

    #@393
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@396
    move-result-object v25

    #@397
    const/16 v26, 0x3

    #@399
    move-object/from16 v0, p0

    #@39b
    move-object/from16 v1, v24

    #@39d
    move/from16 v2, v26

    #@39f
    move-object/from16 v3, v25

    #@3a1
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    #@3a4
    .line 2336
    :cond_24
    move/from16 v0, v22

    #@3a6
    move/from16 v1, p3

    #@3a8
    if-ge v0, v1, :cond_22

    #@3aa
    .line 2337
    array-length v0, v11

    #@3ab
    move/from16 v24, v0

    #@3ad
    add-int v24, v24, p3

    #@3af
    sub-int v24, v24, v22

    #@3b1
    move/from16 v0, v24

    #@3b3
    new-array v0, v0, [C

    #@3b5
    move-object/from16 v17, v0

    #@3b7
    .line 2338
    .restart local v17    # "newa":[C
    add-int/lit8 v24, v21, 0x2

    #@3b9
    const/16 v25, 0x0

    #@3bb
    const/16 v26, 0x0

    #@3bd
    move/from16 v0, v25

    #@3bf
    move-object/from16 v1, v17

    #@3c1
    move/from16 v2, v26

    #@3c3
    move/from16 v3, v24

    #@3c5
    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3c8
    .line 2341
    sub-int v10, p3, v22

    #@3ca
    .line 2342
    .local v10, "$15":I
    add-int/lit8 v13, v21, 0x2

    #@3cc
    .line 2343
    :goto_f
    if-lez v10, :cond_25

    #@3ce
    .line 2344
    const/16 v24, 0x30

    #@3d0
    aput-char v24, v17, v13

    #@3d2
    .line 2343
    add-int/lit8 v10, v10, -0x1

    #@3d4
    add-int/lit8 v13, v13, 0x1

    #@3d6
    goto :goto_f

    #@3d7
    .line 2347
    :cond_25
    add-int/lit8 v24, v21, 0x2

    #@3d9
    move/from16 v0, v24

    #@3db
    move-object/from16 v1, v17

    #@3dd
    move/from16 v2, v22

    #@3df
    invoke-static {v11, v0, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e2
    .line 2350
    move-object/from16 v11, v17

    #@3e4
    goto :goto_e
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 2373
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 2388
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public intValueExact()I
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x9

    #@2
    const/4 v8, 0x0

    #@3
    .line 2403
    const/4 v5, 0x0

    #@4
    .line 2405
    .local v5, "useexp":I
    const/4 v1, 0x0

    #@5
    .line 2406
    .local v1, "i":I
    const/4 v4, 0x0

    #@6
    .line 2410
    .local v4, "topdig":I
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@8
    if-nez v6, :cond_0

    #@a
    .line 2411
    return v8

    #@b
    .line 2413
    :cond_0
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@d
    array-length v6, v6

    #@e
    add-int/lit8 v2, v6, -0x1

    #@10
    .line 2414
    .local v2, "lodigit":I
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@12
    if-gez v6, :cond_4

    #@14
    .line 2415
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@16
    add-int/2addr v2, v6

    #@17
    .line 2417
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@19
    add-int/lit8 v7, v2, 0x1

    #@1b
    invoke-static {v6, v7}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_1

    #@21
    .line 2418
    new-instance v6, Ljava/lang/ArithmeticException;

    #@23
    new-instance v7, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v8, "Decimal part non-zero: "

    #@2b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v6

    #@3f
    .line 2419
    :cond_1
    if-gez v2, :cond_2

    #@41
    .line 2420
    return v8

    #@42
    .line 2421
    :cond_2
    const/4 v5, 0x0

    #@43
    .line 2428
    :goto_0
    const/4 v3, 0x0

    #@44
    .line 2430
    .local v3, "result":I
    add-int v0, v2, v5

    #@46
    .line 2431
    .local v0, "$16":I
    const/4 v1, 0x0

    #@47
    .line 2432
    :goto_1
    if-gt v1, v0, :cond_6

    #@49
    .line 2433
    mul-int/lit8 v3, v3, 0xa

    #@4b
    .line 2434
    if-gt v1, v2, :cond_3

    #@4d
    .line 2435
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@4f
    aget-byte v6, v6, v1

    #@51
    add-int/2addr v3, v6

    #@52
    .line 2432
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_1

    #@55
    .line 2423
    .end local v0    # "$16":I
    .end local v3    # "result":I
    :cond_4
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@57
    add-int/2addr v6, v2

    #@58
    if-le v6, v9, :cond_5

    #@5a
    .line 2424
    new-instance v6, Ljava/lang/ArithmeticException;

    #@5c
    new-instance v7, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v8, "Conversion overflow: "

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@77
    throw v6

    #@78
    .line 2425
    :cond_5
    iget v5, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@7a
    goto :goto_0

    #@7b
    .line 2440
    .restart local v0    # "$16":I
    .restart local v3    # "result":I
    :cond_6
    add-int v6, v2, v5

    #@7d
    if-ne v6, v9, :cond_8

    #@7f
    .line 2443
    const v6, 0x3b9aca00

    #@82
    div-int v4, v3, v6

    #@84
    .line 2444
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@86
    aget-byte v6, v6, v8

    #@88
    if-eq v4, v6, :cond_8

    #@8a
    .line 2446
    const/high16 v6, -0x80000000

    #@8c
    if-ne v3, v6, :cond_7

    #@8e
    .line 2447
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@90
    const/4 v7, -0x1

    #@91
    if-ne v6, v7, :cond_7

    #@93
    .line 2448
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@95
    aget-byte v6, v6, v8

    #@97
    const/4 v7, 0x2

    #@98
    if-ne v6, v7, :cond_7

    #@9a
    .line 2449
    return v3

    #@9b
    .line 2450
    :cond_7
    new-instance v6, Ljava/lang/ArithmeticException;

    #@9d
    new-instance v7, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v8, "Conversion overflow: "

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@ac
    move-result-object v8

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v6

    #@b9
    .line 2455
    :cond_8
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@bb
    const/4 v7, 0x1

    #@bc
    if-ne v6, v7, :cond_9

    #@be
    .line 2456
    return v3

    #@bf
    .line 2457
    :cond_9
    neg-int v6, v3

    #@c0
    return v6
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 2472
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public longValueExact()J
    .locals 14

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/16 v13, 0x12

    #@4
    const/4 v12, 0x0

    #@5
    .line 2487
    const/4 v1, 0x0

    #@6
    .line 2488
    .local v1, "cstart":I
    const/4 v8, 0x0

    #@7
    .line 2490
    .local v8, "useexp":I
    const/4 v2, 0x0

    #@8
    .line 2491
    .local v2, "i":I
    const-wide/16 v6, 0x0

    #@a
    .line 2493
    .local v6, "topdig":J
    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@c
    if-nez v9, :cond_0

    #@e
    .line 2494
    return-wide v10

    #@f
    .line 2495
    :cond_0
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@11
    array-length v9, v9

    #@12
    add-int/lit8 v3, v9, -0x1

    #@14
    .line 2496
    .local v3, "lodigit":I
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@16
    if-gez v9, :cond_5

    #@18
    .line 2497
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@1a
    add-int/2addr v3, v9

    #@1b
    .line 2499
    if-gez v3, :cond_1

    #@1d
    .line 2500
    const/4 v1, 0x0

    #@1e
    .line 2503
    :goto_0
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@20
    invoke-static {v9, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@23
    move-result v9

    #@24
    if-nez v9, :cond_2

    #@26
    .line 2504
    new-instance v9, Ljava/lang/ArithmeticException;

    #@28
    new-instance v10, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v11, "Decimal part non-zero: "

    #@30
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@37
    move-result-object v11

    #@38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v10

    #@40
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@43
    throw v9

    #@44
    .line 2502
    :cond_1
    add-int/lit8 v1, v3, 0x1

    #@46
    goto :goto_0

    #@47
    .line 2505
    :cond_2
    if-gez v3, :cond_3

    #@49
    .line 2506
    return-wide v10

    #@4a
    .line 2507
    :cond_3
    const/4 v8, 0x0

    #@4b
    .line 2518
    :goto_1
    const-wide/16 v4, 0x0

    #@4d
    .line 2520
    .local v4, "result":J
    add-int v0, v3, v8

    #@4f
    .line 2521
    .local v0, "$17":I
    const/4 v2, 0x0

    #@50
    .line 2522
    :goto_2
    if-gt v2, v0, :cond_7

    #@52
    .line 2523
    const-wide/16 v10, 0xa

    #@54
    mul-long/2addr v4, v10

    #@55
    .line 2524
    if-gt v2, v3, :cond_4

    #@57
    .line 2525
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@59
    aget-byte v9, v9, v2

    #@5b
    int-to-long v10, v9

    #@5c
    add-long/2addr v4, v10

    #@5d
    .line 2522
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 2509
    .end local v0    # "$17":I
    .end local v4    # "result":J
    :cond_5
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@62
    iget-object v10, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@64
    array-length v10, v10

    #@65
    add-int/2addr v9, v10

    #@66
    if-le v9, v13, :cond_6

    #@68
    .line 2510
    new-instance v9, Ljava/lang/ArithmeticException;

    #@6a
    new-instance v10, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v11, "Conversion overflow: "

    #@72
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@79
    move-result-object v11

    #@7a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@85
    throw v9

    #@86
    .line 2511
    :cond_6
    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@88
    goto :goto_1

    #@89
    .line 2530
    .restart local v0    # "$17":I
    .restart local v4    # "result":J
    :cond_7
    add-int v9, v3, v8

    #@8b
    if-ne v9, v13, :cond_9

    #@8d
    .line 2531
    const-wide v10, 0xde0b6b3a7640000L

    #@92
    div-long v6, v4, v10

    #@94
    .line 2532
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@96
    aget-byte v9, v9, v12

    #@98
    int-to-long v10, v9

    #@99
    cmp-long v9, v6, v10

    #@9b
    if-eqz v9, :cond_9

    #@9d
    .line 2534
    const-wide/high16 v10, -0x8000000000000000L

    #@9f
    cmp-long v9, v4, v10

    #@a1
    if-nez v9, :cond_8

    #@a3
    .line 2535
    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@a5
    const/4 v10, -0x1

    #@a6
    if-ne v9, v10, :cond_8

    #@a8
    .line 2536
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@aa
    aget-byte v9, v9, v12

    #@ac
    const/16 v10, 0x9

    #@ae
    if-ne v9, v10, :cond_8

    #@b0
    .line 2537
    return-wide v4

    #@b1
    .line 2538
    :cond_8
    new-instance v9, Ljava/lang/ArithmeticException;

    #@b3
    new-instance v10, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v11, "Conversion overflow: "

    #@bb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v10

    #@bf
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@c2
    move-result-object v11

    #@c3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v10

    #@c7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v10

    #@cb
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v9

    #@cf
    .line 2543
    :cond_9
    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@d1
    const/4 v10, 0x1

    #@d2
    if-ne v9, v10, :cond_a

    #@d4
    .line 2544
    return-wide v4

    #@d5
    .line 2545
    :cond_a
    neg-long v10, v4

    #@d6
    return-wide v10
.end method

.method public max(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1449
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1470
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 1471
    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1473
    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public min(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1488
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1509
    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 1510
    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 1512
    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public movePointLeft(I)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 2567
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    .line 2568
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@6
    sub-int/2addr v1, p1

    #@7
    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@9
    .line 2569
    sget-object v1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public movePointRight(I)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 2590
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@3
    move-result-object v0

    #@4
    .line 2591
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@6
    add-int/2addr v1, p1

    #@7
    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@9
    .line 2592
    sget-object v1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1530
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 15
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1549
    const/4 v10, 0x0

    #@1
    .line 1550
    .local v10, "multer":[B
    const/4 v3, 0x0

    #@2
    .line 1552
    .local v3, "multand":[B
    const/4 v8, 0x0

    #@3
    .line 1555
    .local v8, "acclen":I
    const/4 v11, 0x0

    #@4
    .line 1556
    .local v11, "n":I
    const/4 v5, 0x0

    #@5
    .line 1557
    .local v5, "mult":B
    move-object/from16 v0, p2

    #@7
    iget-boolean v2, v0, Landroid/icu/math/MathContext;->lostDigits:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1558
    move-object/from16 v0, p2

    #@d
    iget v2, v0, Landroid/icu/math/MathContext;->digits:I

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-direct {p0, v0, v2}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@14
    .line 1559
    :cond_0
    move-object v9, p0

    #@15
    .line 1562
    .local v9, "lhs":Landroid/icu/math/BigDecimal;
    const/4 v12, 0x0

    #@16
    .line 1563
    .local v12, "padding":I
    move-object/from16 v0, p2

    #@18
    iget v13, v0, Landroid/icu/math/MathContext;->digits:I

    #@1a
    .line 1564
    .local v13, "reqdig":I
    if-lez v13, :cond_4

    #@1c
    .line 1565
    iget-object v2, v9, Landroid/icu/math/BigDecimal;->mant:[B

    #@1e
    array-length v2, v2

    #@1f
    if-le v2, v13, :cond_1

    #@21
    .line 1566
    invoke-static {v9}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@24
    move-result-object v2

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-direct {v2, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@2a
    move-result-object v9

    #@2b
    .line 1567
    :cond_1
    move-object/from16 v0, p1

    #@2d
    iget-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@2f
    array-length v2, v2

    #@30
    if-le v2, v13, :cond_2

    #@32
    .line 1568
    invoke-static/range {p1 .. p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@35
    move-result-object v2

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-direct {v2, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@3b
    move-result-object p1

    #@3c
    .line 1583
    :cond_2
    :goto_0
    iget-object v2, v9, Landroid/icu/math/BigDecimal;->mant:[B

    #@3e
    array-length v2, v2

    #@3f
    move-object/from16 v0, p1

    #@41
    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@43
    array-length v6, v6

    #@44
    if-ge v2, v6, :cond_6

    #@46
    .line 1584
    iget-object v10, v9, Landroid/icu/math/BigDecimal;->mant:[B

    #@48
    .line 1585
    .local v10, "multer":[B
    move-object/from16 v0, p1

    #@4a
    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@4c
    .line 1592
    .local v3, "multand":[B
    :goto_1
    array-length v2, v10

    #@4d
    array-length v6, v3

    #@4e
    add-int/2addr v2, v6

    #@4f
    add-int/lit8 v4, v2, -0x1

    #@51
    .line 1594
    .local v4, "multandlen":I
    const/4 v2, 0x0

    #@52
    aget-byte v2, v10, v2

    #@54
    const/4 v6, 0x0

    #@55
    aget-byte v6, v3, v6

    #@57
    mul-int/2addr v2, v6

    #@58
    const/16 v6, 0x9

    #@5a
    if-le v2, v6, :cond_7

    #@5c
    .line 1595
    add-int/lit8 v8, v4, 0x1

    #@5e
    .line 1600
    :goto_2
    new-instance v14, Landroid/icu/math/BigDecimal;

    #@60
    invoke-direct {v14}, Landroid/icu/math/BigDecimal;-><init>()V

    #@63
    .line 1601
    .local v14, "res":Landroid/icu/math/BigDecimal;
    new-array v1, v8, [B

    #@65
    .line 1607
    .local v1, "acc":[B
    array-length v7, v10

    #@66
    .line 1608
    .local v7, "$7":I
    const/4 v11, 0x0

    #@67
    .line 1609
    .end local v5    # "mult":B
    :goto_3
    if-lez v7, :cond_8

    #@69
    .line 1610
    aget-byte v5, v10, v11

    #@6b
    .line 1611
    .local v5, "mult":B
    if-eqz v5, :cond_3

    #@6d
    .line 1613
    array-length v2, v1

    #@6e
    const/4 v6, 0x1

    #@6f
    invoke-static/range {v1 .. v6}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    #@72
    move-result-object v1

    #@73
    .line 1616
    :cond_3
    add-int/lit8 v4, v4, -0x1

    #@75
    .line 1609
    add-int/lit8 v7, v7, -0x1

    #@77
    add-int/lit8 v11, v11, 0x1

    #@79
    goto :goto_3

    #@7a
    .line 1573
    .end local v1    # "acc":[B
    .end local v4    # "multandlen":I
    .end local v7    # "$7":I
    .end local v14    # "res":Landroid/icu/math/BigDecimal;
    .local v3, "multand":[B
    .local v5, "mult":B
    .local v10, "multer":[B
    :cond_4
    iget v2, v9, Landroid/icu/math/BigDecimal;->exp:I

    #@7c
    if-lez v2, :cond_5

    #@7e
    .line 1574
    iget v2, v9, Landroid/icu/math/BigDecimal;->exp:I

    #@80
    add-int/lit8 v12, v2, 0x0

    #@82
    .line 1575
    :cond_5
    move-object/from16 v0, p1

    #@84
    iget v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@86
    if-lez v2, :cond_2

    #@88
    .line 1576
    move-object/from16 v0, p1

    #@8a
    iget v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@8c
    add-int/2addr v12, v2

    #@8d
    goto :goto_0

    #@8e
    .line 1587
    :cond_6
    move-object/from16 v0, p1

    #@90
    iget-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    #@92
    .line 1588
    .local v10, "multer":[B
    iget-object v3, v9, Landroid/icu/math/BigDecimal;->mant:[B

    #@94
    .local v3, "multand":[B
    goto :goto_1

    #@95
    .line 1597
    .restart local v4    # "multandlen":I
    :cond_7
    move v8, v4

    #@96
    goto :goto_2

    #@97
    .line 1620
    .end local v5    # "mult":B
    .restart local v1    # "acc":[B
    .restart local v7    # "$7":I
    .restart local v14    # "res":Landroid/icu/math/BigDecimal;
    :cond_8
    iget-byte v2, v9, Landroid/icu/math/BigDecimal;->ind:B

    #@99
    move-object/from16 v0, p1

    #@9b
    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@9d
    mul-int/2addr v2, v6

    #@9e
    int-to-byte v2, v2

    #@9f
    iput-byte v2, v14, Landroid/icu/math/BigDecimal;->ind:B

    #@a1
    .line 1621
    iget v2, v9, Landroid/icu/math/BigDecimal;->exp:I

    #@a3
    move-object/from16 v0, p1

    #@a5
    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@a7
    add-int/2addr v2, v6

    #@a8
    sub-int/2addr v2, v12

    #@a9
    iput v2, v14, Landroid/icu/math/BigDecimal;->exp:I

    #@ab
    .line 1625
    if-nez v12, :cond_9

    #@ad
    .line 1626
    iput-object v1, v14, Landroid/icu/math/BigDecimal;->mant:[B

    #@af
    .line 1629
    :goto_4
    const/4 v2, 0x0

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-direct {v14, v0, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@b5
    move-result-object v2

    #@b6
    return-object v2

    #@b7
    .line 1628
    :cond_9
    array-length v2, v1

    #@b8
    add-int/2addr v2, v12

    #@b9
    invoke-static {v1, v2}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@bc
    move-result-object v2

    #@bd
    iput-object v2, v14, Landroid/icu/math/BigDecimal;->mant:[B

    #@bf
    goto :goto_4
.end method

.method public negate()Landroid/icu/math/BigDecimal;
    .locals 1

    #@0
    .prologue
    .line 1646
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1664
    iget-boolean v1, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1665
    const/4 v1, 0x0

    #@5
    check-cast v1, Landroid/icu/math/BigDecimal;

    #@7
    iget v2, p1, Landroid/icu/math/MathContext;->digits:I

    #@9
    invoke-direct {p0, v1, v2}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@c
    .line 1666
    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@f
    move-result-object v0

    #@10
    .line 1667
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@12
    neg-int v1, v1

    #@13
    int-to-byte v1, v1

    #@14
    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@16
    .line 1668
    const/4 v1, 0x0

    #@17
    invoke-direct {v0, p1, v1}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public plus()Landroid/icu/math/BigDecimal;
    .locals 1

    #@0
    .prologue
    .line 1684
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1703
    iget-boolean v0, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1704
    const/4 v0, 0x0

    #@6
    check-cast v0, Landroid/icu/math/BigDecimal;

    #@8
    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@d
    .line 1706
    :cond_0
    iget v0, p1, Landroid/icu/math/MathContext;->form:I

    #@f
    if-nez v0, :cond_2

    #@11
    .line 1707
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1708
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@17
    array-length v0, v0

    #@18
    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    #@1a
    if-gt v0, v1, :cond_1

    #@1c
    .line 1709
    return-object p0

    #@1d
    .line 1710
    :cond_1
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 1711
    return-object p0

    #@22
    .line 1713
    :cond_2
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@25
    move-result-object v0

    #@26
    invoke-direct {v0, p1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public pow(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1736
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 12
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1766
    const/4 v7, 0x0

    #@2
    .line 1767
    .local v7, "workdigits":I
    const/4 v0, 0x0

    #@3
    .line 1771
    .local v0, "L":I
    const/4 v1, 0x0

    #@4
    .line 1772
    .local v1, "i":I
    iget-boolean v9, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    #@6
    if-eqz v9, :cond_0

    #@8
    .line 1773
    iget v9, p2, Landroid/icu/math/MathContext;->digits:I

    #@a
    invoke-direct {p0, p1, v9}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@d
    .line 1774
    :cond_0
    const v9, -0x3b9ac9ff

    #@10
    const v10, 0x3b9ac9ff

    #@13
    invoke-direct {p1, v9, v10}, Landroid/icu/math/BigDecimal;->intcheck(II)I

    #@16
    move-result v3

    #@17
    .line 1775
    .local v3, "n":I
    move-object v2, p0

    #@18
    .line 1777
    .local v2, "lhs":Landroid/icu/math/BigDecimal;
    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    #@1a
    .line 1778
    .local v4, "reqdig":I
    if-nez v4, :cond_2

    #@1c
    .line 1779
    iget-byte v9, p1, Landroid/icu/math/BigDecimal;->ind:B

    #@1e
    const/4 v10, -0x1

    #@1f
    if-ne v9, v10, :cond_1

    #@21
    .line 1780
    new-instance v9, Ljava/lang/ArithmeticException;

    #@23
    new-instance v10, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v11, "Negative power: "

    #@2b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v10

    #@2f
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@32
    move-result-object v11

    #@33
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v10

    #@37
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v10

    #@3b
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v9

    #@3f
    .line 1781
    :cond_1
    const/4 v7, 0x0

    #@40
    .line 1798
    :goto_0
    new-instance v8, Landroid/icu/math/MathContext;

    #@42
    iget v9, p2, Landroid/icu/math/MathContext;->form:I

    #@44
    iget v10, p2, Landroid/icu/math/MathContext;->roundingMode:I

    #@46
    invoke-direct {v8, v7, v9, v11, v10}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    #@49
    .line 1800
    .local v8, "workset":Landroid/icu/math/MathContext;
    sget-object v5, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@4b
    .line 1801
    .local v5, "res":Landroid/icu/math/BigDecimal;
    if-nez v3, :cond_5

    #@4d
    .line 1802
    return-object v5

    #@4e
    .line 1783
    .end local v5    # "res":Landroid/icu/math/BigDecimal;
    .end local v8    # "workset":Landroid/icu/math/MathContext;
    :cond_2
    iget-object v9, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@50
    array-length v9, v9

    #@51
    iget v10, p1, Landroid/icu/math/BigDecimal;->exp:I

    #@53
    add-int/2addr v9, v10

    #@54
    if-le v9, v4, :cond_3

    #@56
    .line 1784
    new-instance v9, Ljava/lang/ArithmeticException;

    #@58
    new-instance v10, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v11, "Too many digits: "

    #@60
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@67
    move-result-object v11

    #@68
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v10

    #@70
    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@73
    throw v9

    #@74
    .line 1787
    :cond_3
    iget-object v9, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@76
    array-length v9, v9

    #@77
    if-le v9, v4, :cond_4

    #@79
    .line 1788
    invoke-static {v2}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@7c
    move-result-object v9

    #@7d
    invoke-direct {v9, p2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@80
    move-result-object v2

    #@81
    .line 1791
    :cond_4
    iget-object v9, p1, Landroid/icu/math/BigDecimal;->mant:[B

    #@83
    array-length v9, v9

    #@84
    iget v10, p1, Landroid/icu/math/BigDecimal;->exp:I

    #@86
    add-int v0, v9, v10

    #@88
    .line 1792
    add-int v9, v4, v0

    #@8a
    add-int/lit8 v7, v9, 0x1

    #@8c
    goto :goto_0

    #@8d
    .line 1803
    .restart local v5    # "res":Landroid/icu/math/BigDecimal;
    .restart local v8    # "workset":Landroid/icu/math/MathContext;
    :cond_5
    if-gez v3, :cond_6

    #@8f
    .line 1804
    neg-int v3, v3

    #@90
    .line 1805
    :cond_6
    const/4 v6, 0x0

    #@91
    .line 1807
    .local v6, "seenbit":Z
    const/4 v1, 0x1

    #@92
    .line 1809
    :goto_1
    add-int/2addr v3, v3

    #@93
    .line 1810
    if-gez v3, :cond_7

    #@95
    .line 1811
    const/4 v6, 0x1

    #@96
    .line 1812
    invoke-virtual {v5, v2, v8}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@99
    move-result-object v5

    #@9a
    .line 1814
    :cond_7
    const/16 v9, 0x1f

    #@9c
    if-ne v1, v9, :cond_9

    #@9e
    .line 1821
    iget-byte v9, p1, Landroid/icu/math/BigDecimal;->ind:B

    #@a0
    if-gez v9, :cond_8

    #@a2
    .line 1822
    sget-object v9, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    #@a4
    invoke-virtual {v9, v5, v8}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@a7
    move-result-object v5

    #@a8
    .line 1823
    :cond_8
    const/4 v9, 0x1

    #@a9
    invoke-direct {v5, p2, v9}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    #@ac
    move-result-object v9

    #@ad
    return-object v9

    #@ae
    .line 1816
    :cond_9
    if-nez v6, :cond_a

    #@b0
    .line 1808
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@b2
    goto :goto_1

    #@b3
    .line 1818
    :cond_a
    invoke-virtual {v5, v5, v8}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@b6
    move-result-object v5

    #@b7
    goto :goto_2
.end method

.method public remainder(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1843
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    const/16 v1, 0x52

    #@4
    const/4 v2, -0x1

    #@5
    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public remainder(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1863
    const/16 v0, 0x52

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public scale()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2605
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 2606
    return v1

    #@6
    .line 2607
    :cond_0
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@8
    neg-int v0, v0

    #@9
    return v0
.end method

.method public setScale(I)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "scale"    # I

    #@0
    .prologue
    .line 2631
    const/4 v0, 0x7

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setScale(II)Landroid/icu/math/BigDecimal;
    .locals 7
    .param p1, "scale"    # I
    .param p2, "round"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2661
    const/4 v2, 0x0

    #@2
    .line 2662
    .local v2, "padding":I
    const/4 v0, 0x0

    #@3
    .line 2665
    .local v0, "newlen":I
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    #@6
    move-result v1

    #@7
    .line 2666
    .local v1, "ourscale":I
    if-ne v1, p1, :cond_0

    #@9
    .line 2667
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->form:B

    #@b
    if-nez v4, :cond_0

    #@d
    .line 2668
    return-object p0

    #@e
    .line 2669
    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@11
    move-result-object v3

    #@12
    .line 2670
    .local v3, "res":Landroid/icu/math/BigDecimal;
    if-gt v1, p1, :cond_3

    #@14
    .line 2672
    if-nez v1, :cond_2

    #@16
    .line 2673
    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    #@18
    add-int v2, v4, p1

    #@1a
    .line 2676
    :goto_0
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@1c
    iget-object v5, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@1e
    array-length v5, v5

    #@1f
    add-int/2addr v5, v2

    #@20
    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@23
    move-result-object v4

    #@24
    iput-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@26
    .line 2677
    neg-int v4, p1

    #@27
    iput v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    #@29
    .line 2691
    :cond_1
    :goto_1
    iput-byte v6, v3, Landroid/icu/math/BigDecimal;->form:B

    #@2b
    .line 2692
    return-object v3

    #@2c
    .line 2675
    :cond_2
    sub-int v2, p1, v1

    #@2e
    goto :goto_0

    #@2f
    .line 2679
    :cond_3
    if-gez p1, :cond_4

    #@31
    .line 2680
    new-instance v4, Ljava/lang/ArithmeticException;

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "Negative scale: "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v4

    #@4b
    .line 2682
    :cond_4
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@4d
    array-length v4, v4

    #@4e
    sub-int v5, v1, p1

    #@50
    sub-int v0, v4, v5

    #@52
    .line 2683
    invoke-direct {v3, v0, p2}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    #@55
    move-result-object v3

    #@56
    .line 2686
    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    #@58
    neg-int v5, p1

    #@59
    if-eq v4, v5, :cond_1

    #@5b
    .line 2687
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@5d
    iget-object v5, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@5f
    array-length v5, v5

    #@60
    add-int/lit8 v5, v5, 0x1

    #@62
    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    #@65
    move-result-object v4

    #@66
    iput-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    #@68
    .line 2688
    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    #@6a
    add-int/lit8 v4, v4, -0x1

    #@6c
    iput v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    #@6e
    goto :goto_1
.end method

.method public shortValueExact()S
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2707
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    #@5
    move-result v0

    #@6
    .line 2708
    .local v0, "num":I
    const/16 v3, 0x7fff

    #@8
    if-le v0, v3, :cond_0

    #@a
    move v3, v1

    #@b
    :goto_0
    const/16 v4, -0x8000

    #@d
    if-ge v0, v4, :cond_1

    #@f
    :goto_1
    or-int/2addr v1, v3

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 2709
    new-instance v1, Ljava/lang/ArithmeticException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Conversion overflow: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    :cond_0
    move v3, v2

    #@31
    .line 2708
    goto :goto_0

    #@32
    :cond_1
    move v1, v2

    #@33
    goto :goto_1

    #@34
    .line 2710
    :cond_2
    int-to-short v1, v0

    #@35
    return v1
.end method

.method public signum()I
    .locals 1

    #@0
    .prologue
    .line 2724
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    #@2
    return v0
.end method

.method public subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;

    #@0
    .prologue
    .line 1880
    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2
    .param p1, "rhs"    # Landroid/icu/math/BigDecimal;
    .param p2, "set"    # Landroid/icu/math/MathContext;

    #@0
    .prologue
    .line 1897
    iget-boolean v1, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1898
    iget v1, p2, Landroid/icu/math/MathContext;->digits:I

    #@6
    invoke-direct {p0, p1, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    #@9
    .line 1902
    :cond_0
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@c
    move-result-object v0

    #@d
    .line 1903
    .local v0, "newrhs":Landroid/icu/math/BigDecimal;
    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@f
    neg-int v1, v1

    #@10
    int-to-byte v1, v1

    #@11
    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    #@13
    .line 1904
    invoke-virtual {p0, v0, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    #@0
    .prologue
    .line 2742
    new-instance v0, Ljava/math/BigDecimal;

    #@2
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@d
    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2756
    const/4 v2, 0x0

    #@3
    .line 2757
    .local v2, "res":Landroid/icu/math/BigDecimal;
    const/4 v0, 0x0

    #@4
    .line 2758
    .local v0, "newlen":I
    const/4 v1, 0x0

    #@5
    .line 2760
    .local v1, "newmant":[B
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@7
    if-ltz v3, :cond_0

    #@9
    move v3, v4

    #@a
    :goto_0
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    #@c
    if-nez v6, :cond_1

    #@e
    :goto_1
    and-int/2addr v3, v4

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 2761
    move-object v2, p0

    #@12
    .line 2783
    .end local v1    # "newmant":[B
    .local v2, "res":Landroid/icu/math/BigDecimal;
    :goto_2
    new-instance v3, Ljava/math/BigInteger;

    #@14
    new-instance v4, Ljava/lang/String;

    #@16
    invoke-direct {v2}, Landroid/icu/math/BigDecimal;->layout()[C

    #@19
    move-result-object v5

    #@1a
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    #@1d
    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@20
    return-object v3

    #@21
    .restart local v1    # "newmant":[B
    .local v2, "res":Landroid/icu/math/BigDecimal;
    :cond_0
    move v3, v5

    #@22
    .line 2760
    goto :goto_0

    #@23
    :cond_1
    move v4, v5

    #@24
    goto :goto_1

    #@25
    .line 2762
    :cond_2
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@27
    if-ltz v3, :cond_3

    #@29
    .line 2763
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@2c
    move-result-object v2

    #@2d
    .line 2764
    .local v2, "res":Landroid/icu/math/BigDecimal;
    iput-byte v5, v2, Landroid/icu/math/BigDecimal;->form:B

    #@2f
    goto :goto_2

    #@30
    .line 2768
    .local v2, "res":Landroid/icu/math/BigDecimal;
    :cond_3
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@32
    neg-int v3, v3

    #@33
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@35
    array-length v4, v4

    #@36
    if-lt v3, v4, :cond_4

    #@38
    .line 2769
    sget-object v2, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    #@3a
    .local v2, "res":Landroid/icu/math/BigDecimal;
    goto :goto_2

    #@3b
    .line 2771
    .local v2, "res":Landroid/icu/math/BigDecimal;
    :cond_4
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@3e
    move-result-object v2

    #@3f
    .line 2772
    .local v2, "res":Landroid/icu/math/BigDecimal;
    iget-object v3, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@41
    array-length v3, v3

    #@42
    iget v4, v2, Landroid/icu/math/BigDecimal;->exp:I

    #@44
    add-int v0, v3, v4

    #@46
    .line 2773
    new-array v1, v0, [B

    #@48
    .line 2774
    .local v1, "newmant":[B
    iget-object v3, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@4a
    invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4d
    .line 2776
    iput-object v1, v2, Landroid/icu/math/BigDecimal;->mant:[B

    #@4f
    .line 2777
    iput-byte v5, v2, Landroid/icu/math/BigDecimal;->form:B

    #@51
    .line 2778
    iput v5, v2, Landroid/icu/math/BigDecimal;->exp:I

    #@53
    goto :goto_2
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 2798
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 2800
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@6
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    #@8
    array-length v1, v1

    #@9
    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@b
    add-int/2addr v1, v2

    #@c
    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 2801
    new-instance v0, Ljava/lang/ArithmeticException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Decimal part non-zero: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 2803
    :cond_0
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public toCharArray()[C
    .locals 1

    #@0
    .prologue
    .line 2816
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2835
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@9
    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2849
    const/4 v0, 0x0

    #@2
    .line 2850
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    #@4
    if-ltz v1, :cond_0

    #@6
    .line 2851
    move-object v0, p0

    #@7
    .line 2856
    .local v0, "res":Landroid/icu/math/BigDecimal;
    :goto_0
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 2853
    .local v0, "res":Landroid/icu/math/BigDecimal;
    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@f
    move-result-object v0

    #@10
    .line 2854
    .local v0, "res":Landroid/icu/math/BigDecimal;
    iput v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    #@12
    goto :goto_0
.end method
