.class public Landroid/graphics/ColorSpace$Rgb$TransferParameters;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferParameters"
.end annotation


# static fields
.field private static final blacklist TYPE_HLGish:D = -3.0

.field private static final blacklist TYPE_PQish:D = -2.0


# instance fields
.field public final whitelist a:D

.field public final whitelist b:D

.field public final whitelist c:D

.field public final whitelist d:D

.field public final whitelist e:D

.field public final whitelist f:D

.field public final whitelist g:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .registers 1

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isHLGish()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .registers 1

    invoke-direct {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isPQish()Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(DDDDD)V
    .registers 26
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "g"    # D

    .line 2532
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    .line 2533
    return-void
.end method

.method public constructor whitelist <init>(DDDDDDD)V
    .registers 31
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "e"    # D
    .param p11, "f"    # D
    .param p13, "g"    # D

    .line 2550
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p13

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2551
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_e4

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_e4

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_e4

    .line 2552
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_dd

    invoke-static/range {p9 .. p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_dd

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_dd

    .line 2553
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_d6

    .line 2556
    invoke-static {v7, v8}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->isSpecialG(D)Z

    move-result v9

    if-nez v9, :cond_c1

    .line 2560
    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-ltz v11, :cond_a8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Math;->ulp(F)F

    move-result v12

    add-float/2addr v12, v11

    float-to-double v11, v12

    cmpg-double v11, v5, v11

    if-gtz v11, :cond_a8

    .line 2565
    cmpl-double v11, v5, v9

    if-nez v11, :cond_64

    cmpl-double v11, v1, v9

    if-eqz v11, :cond_5c

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_5c

    goto :goto_64

    .line 2566
    :cond_5c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter a or g is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2570
    :cond_64
    :goto_64
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v5, v11

    if-ltz v11, :cond_77

    cmpl-double v11, v3, v9

    if-eqz v11, :cond_6f

    goto :goto_77

    .line 2571
    :cond_6f
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter c is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2575
    :cond_77
    :goto_77
    cmpl-double v11, v1, v9

    if-eqz v11, :cond_7f

    cmpl-double v11, v7, v9

    if-nez v11, :cond_83

    :cond_7f
    cmpl-double v11, v3, v9

    if-eqz v11, :cond_a0

    .line 2580
    :cond_83
    cmpg-double v11, v3, v9

    if-ltz v11, :cond_98

    .line 2585
    cmpg-double v11, v1, v9

    if-ltz v11, :cond_90

    cmpg-double v9, v7, v9

    if-ltz v9, :cond_90

    goto :goto_c1

    .line 2586
    :cond_90
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The transfer function must be positive or increasing"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2581
    :cond_98
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The transfer function must be increasing"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2576
    :cond_a0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2561
    :cond_a8
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parameter d must be in the range [0..1], was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2590
    :cond_c1
    :goto_c1
    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    .line 2591
    move-wide/from16 v9, p3

    iput-wide v9, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 2592
    iput-wide v3, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    .line 2593
    iput-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    .line 2594
    move-wide/from16 v11, p9

    iput-wide v11, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    .line 2595
    move-wide/from16 v13, p11

    iput-wide v13, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    .line 2596
    iput-wide v7, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    .line 2597
    return-void

    .line 2553
    :cond_d6
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    goto :goto_ea

    .line 2552
    :cond_dd
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    goto :goto_ea

    .line 2551
    :cond_e4
    move-wide/from16 v9, p3

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    .line 2554
    :goto_ea
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters cannot be NaN"

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method private blacklist isHLGish()Z
    .registers 5

    .line 2641
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isPQish()Z
    .registers 5

    .line 2645
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist isSpecialG(D)Z
    .registers 4
    .param p0, "g"    # D

    .line 2507
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_f

    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 2602
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2603
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_64

    .line 2605
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2607
    .local v2, "that":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_20

    return v1

    .line 2608
    :cond_20
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2b

    return v1

    .line 2609
    :cond_2b
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_36

    return v1

    .line 2610
    :cond_36
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_41

    return v1

    .line 2611
    :cond_41
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4c

    return v1

    .line 2612
    :cond_4c
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_57

    return v1

    .line 2613
    :cond_57
    iget-wide v3, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    return v0

    .line 2603
    .end local v2    # "that":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    :cond_64
    :goto_64
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 2620
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2621
    .local v0, "temp":J
    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v3, v0

    long-to-int v3, v3

    .line 2622
    .local v3, "result":I
    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2623
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v4, v5

    .line 2624
    .end local v3    # "result":I
    .local v4, "result":I
    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2625
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 2626
    .end local v4    # "result":I
    .restart local v3    # "result":I
    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2627
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v4, v5

    .line 2628
    .end local v3    # "result":I
    .restart local v4    # "result":I
    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2629
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v3, v5

    .line 2630
    .end local v4    # "result":I
    .restart local v3    # "result":I
    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2631
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int/2addr v4, v5

    .line 2632
    .end local v3    # "result":I
    .restart local v4    # "result":I
    iget-wide v5, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2633
    mul-int/lit8 v3, v4, 0x1f

    ushr-long v5, v0, v2

    xor-long/2addr v5, v0

    long-to-int v2, v5

    add-int/2addr v3, v2

    .line 2634
    .end local v4    # "result":I
    .restart local v3    # "result":I
    return v3
.end method
