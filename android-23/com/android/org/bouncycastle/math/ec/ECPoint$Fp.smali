.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 615
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@4
    .line 613
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 3
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@5
    .line 632
    if-nez p2, :cond_0

    #@7
    move v2, v0

    #@8
    :goto_0
    if-nez p3, :cond_1

    #@a
    :goto_1
    if-eq v2, v0, :cond_2

    #@c
    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Exactly one of the field elements is null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    :cond_0
    move v2, v1

    #@16
    .line 632
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_1

    #@19
    .line 637
    :cond_2
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@1b
    .line 628
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    #@0
    .prologue
    .line 642
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 644
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@5
    .line 640
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 52
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 667
    return-object p1

    #@7
    .line 669
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 671
    return-object p0

    #@e
    .line 673
    :cond_1
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p1

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v3

    #@18
    return-object v3

    #@19
    .line 678
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v4

    #@1d
    .line 679
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@20
    move-result v38

    #@21
    .line 681
    .local v38, "coord":I
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25
    move-object/from16 v24, v0

    #@27
    .local v24, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-object/from16 v26, v0

    #@2d
    .line 682
    .local v26, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@2f
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@31
    move-object/from16 v25, v0

    #@33
    .local v25, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@35
    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@37
    move-object/from16 v27, v0

    #@39
    .line 684
    .local v27, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v38, :pswitch_data_0

    #@3c
    .line 876
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3e
    const-string/jumbo v8, "unsupported coordinate system"

    #@41
    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3

    #@45
    .line 688
    :pswitch_1
    move-object/from16 v0, v25

    #@47
    move-object/from16 v1, v24

    #@49
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    move-result-object v39

    #@4d
    .local v39, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    #@4f
    move-object/from16 v1, v26

    #@51
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@54
    move-result-object v40

    #@55
    .line 690
    .local v40, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_4

    #@5b
    .line 692
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@5e
    move-result v3

    #@5f
    if-eqz v3, :cond_3

    #@61
    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@64
    move-result-object v3

    #@65
    return-object v3

    #@66
    .line 699
    :cond_3
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@69
    move-result-object v3

    #@6a
    return-object v3

    #@6b
    .line 702
    :cond_4
    move-object/from16 v0, v40

    #@6d
    move-object/from16 v1, v39

    #@6f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@72
    move-result-object v41

    #@73
    .line 703
    .local v41, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v41 .. v41}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@76
    move-result-object v3

    #@77
    move-object/from16 v0, v24

    #@79
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7c
    move-result-object v3

    #@7d
    move-object/from16 v0, v25

    #@7f
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@82
    move-result-object v5

    #@83
    .line 704
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    #@85
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v3

    #@89
    move-object/from16 v0, v41

    #@8b
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8e
    move-result-object v3

    #@8f
    move-object/from16 v0, v26

    #@91
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@94
    move-result-object v6

    #@95
    .line 706
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@97
    move-object/from16 v0, p0

    #@99
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@9b
    invoke-direct {v3, v4, v5, v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@9e
    return-object v3

    #@9f
    .line 711
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v41    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    #@a1
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a3
    const/4 v8, 0x0

    #@a4
    aget-object v28, v3, v8

    #@a6
    .line 712
    .local v28, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@a8
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@aa
    const/4 v8, 0x0

    #@ab
    aget-object v32, v3, v8

    #@ad
    .line 714
    .local v32, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@b0
    move-result v30

    #@b1
    .line 715
    .local v30, "Z1IsOne":Z
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@b4
    move-result v34

    #@b5
    .line 717
    .local v34, "Z2IsOne":Z
    if-eqz v30, :cond_5

    #@b7
    move-object/from16 v43, v27

    #@b9
    .line 718
    .local v43, "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    if-eqz v34, :cond_6

    #@bb
    move-object/from16 v44, v26

    #@bd
    .line 719
    .local v44, "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v43 .. v44}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c0
    move-result-object v42

    #@c1
    .line 720
    .local v42, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_7

    #@c3
    move-object/from16 v46, v25

    #@c5
    .line 721
    .local v46, "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    if-eqz v34, :cond_8

    #@c7
    move-object/from16 v47, v24

    #@c9
    .line 722
    .local v47, "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual/range {v46 .. v47}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@cc
    move-result-object v45

    #@cd
    .line 725
    .local v45, "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@d0
    move-result v3

    #@d1
    if-eqz v3, :cond_a

    #@d3
    .line 727
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@d6
    move-result v3

    #@d7
    if-eqz v3, :cond_9

    #@d9
    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@dc
    move-result-object v3

    #@dd
    return-object v3

    #@de
    .line 717
    .end local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v27 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e1
    move-result-object v43

    #@e2
    .restart local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@e3
    .line 718
    :cond_6
    move-object/from16 v0, v26

    #@e5
    move-object/from16 v1, v32

    #@e7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ea
    move-result-object v44

    #@eb
    .restart local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    #@ec
    .line 720
    .restart local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    move-object/from16 v0, v25

    #@ee
    move-object/from16 v1, v28

    #@f0
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f3
    move-result-object v46

    #@f4
    .restart local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_2

    #@f5
    .line 721
    :cond_8
    move-object/from16 v0, v24

    #@f7
    move-object/from16 v1, v32

    #@f9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@fc
    move-result-object v47

    #@fd
    .restart local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    #@fe
    .line 734
    .restart local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@101
    move-result-object v3

    #@102
    return-object v3

    #@103
    .line 738
    :cond_a
    if-eqz v30, :cond_b

    #@105
    move-object/from16 v51, v32

    #@107
    .line 739
    .local v51, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10a
    move-result-object v49

    #@10b
    .line 740
    .local v49, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    #@10d
    move-object/from16 v1, v45

    #@10f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@112
    move-result-object v48

    #@113
    .line 741
    .local v48, "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    #@115
    move-object/from16 v1, v47

    #@117
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11a
    move-result-object v50

    #@11b
    .line 742
    .local v50, "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11e
    move-result-object v3

    #@11f
    move-object/from16 v0, v51

    #@121
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@124
    move-result-object v3

    #@125
    move-object/from16 v0, v48

    #@127
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12a
    move-result-object v3

    #@12b
    move-object/from16 v0, p0

    #@12d
    move-object/from16 v1, v50

    #@12f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@132
    move-result-object v8

    #@133
    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@136
    move-result-object v9

    #@137
    .line 744
    .local v9, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v45

    #@139
    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13c
    move-result-object v5

    #@13d
    .line 745
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v50

    #@13f
    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@142
    move-result-object v3

    #@143
    move-object/from16 v0, v42

    #@145
    move-object/from16 v1, v44

    #@147
    move-object/from16 v2, v48

    #@149
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14c
    move-result-object v6

    #@14d
    .line 746
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v48

    #@14f
    move-object/from16 v1, v51

    #@151
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@154
    move-result-object v36

    #@155
    .line 748
    .local v36, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@157
    const/4 v8, 0x1

    #@158
    new-array v7, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15a
    const/4 v8, 0x0

    #@15b
    aput-object v36, v7, v8

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@161
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@164
    return-object v3

    #@165
    .line 738
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v48    # "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v49    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v50    # "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    if-eqz v34, :cond_c

    #@167
    move-object/from16 v51, v28

    #@169
    .restart local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    #@16a
    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c
    move-object/from16 v0, v28

    #@16c
    move-object/from16 v1, v32

    #@16e
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@171
    move-result-object v51

    #@172
    .restart local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    #@173
    .line 754
    .end local v28    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "Z1IsOne":Z
    .end local v32    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    #@175
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@177
    const/4 v8, 0x0

    #@178
    aget-object v28, v3, v8

    #@17a
    .line 755
    .restart local v28    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@17c
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17e
    const/4 v8, 0x0

    #@17f
    aget-object v32, v3, v8

    #@181
    .line 757
    .restart local v32    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@184
    move-result v30

    #@185
    .line 759
    .restart local v30    # "Z1IsOne":Z
    const/16 v37, 0x0

    #@187
    .line 761
    .local v37, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_10

    #@189
    move-object/from16 v0, v28

    #@18b
    move-object/from16 v1, v32

    #@18d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@190
    move-result v3

    #@191
    if-eqz v3, :cond_10

    #@193
    .line 765
    invoke-virtual/range {v24 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@196
    move-result-object v39

    #@197
    .restart local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19a
    move-result-object v40

    #@19b
    .line 766
    .restart local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@19e
    move-result v3

    #@19f
    if-eqz v3, :cond_e

    #@1a1
    .line 768
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1a4
    move-result v3

    #@1a5
    if-eqz v3, :cond_d

    #@1a7
    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1aa
    move-result-object v3

    #@1ab
    return-object v3

    #@1ac
    .line 772
    :cond_d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1af
    move-result-object v3

    #@1b0
    return-object v3

    #@1b1
    .line 775
    :cond_e
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b4
    move-result-object v11

    #@1b5
    .line 776
    .local v11, "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    #@1b7
    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ba
    move-result-object v21

    #@1bb
    .local v21, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v25

    #@1bd
    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c0
    move-result-object v22

    #@1c1
    .line 777
    .local v22, "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c4
    move-result-object v3

    #@1c5
    move-object/from16 v0, v26

    #@1c7
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ca
    move-result-object v10

    #@1cb
    .line 779
    .local v10, "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ce
    move-result-object v3

    #@1cf
    move-object/from16 v0, v21

    #@1d1
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d4
    move-result-object v3

    #@1d5
    move-object/from16 v0, v22

    #@1d7
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1da
    move-result-object v5

    #@1db
    .line 780
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    #@1dd
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e0
    move-result-object v3

    #@1e1
    move-object/from16 v0, v40

    #@1e3
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e6
    move-result-object v3

    #@1e7
    invoke-virtual {v3, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ea
    move-result-object v6

    #@1eb
    .line 781
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v39

    #@1ed
    .line 783
    .restart local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v36

    #@1ef
    move-object/from16 v1, v28

    #@1f1
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f4
    move-result-object v36

    #@1f5
    .line 859
    .end local v10    # "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_f
    :goto_5
    const/4 v3, 0x4

    #@1f6
    move/from16 v0, v38

    #@1f8
    if-ne v0, v3, :cond_17

    #@1fa
    .line 862
    move-object/from16 v0, p0

    #@1fc
    move-object/from16 v1, v36

    #@1fe
    move-object/from16 v2, v37

    #@200
    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@203
    move-result-object v23

    #@204
    .line 864
    .local v23, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    #@205
    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@207
    const/4 v3, 0x0

    #@208
    aput-object v36, v7, v3

    #@20a
    const/4 v3, 0x1

    #@20b
    aput-object v23, v7, v3

    #@20d
    .line 871
    .end local v23    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@20f
    move-object/from16 v0, p0

    #@211
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@213
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@216
    return-object v3

    #@217
    .line 788
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_10
    if-eqz v30, :cond_11

    #@219
    .line 790
    move-object/from16 v31, v28

    #@21b
    .local v31, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v25

    #@21d
    .local v19, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v27

    #@21f
    .line 800
    .local v17, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@222
    move-result v34

    #@223
    .line 802
    .restart local v34    # "Z2IsOne":Z
    if-eqz v34, :cond_12

    #@225
    .line 804
    move-object/from16 v35, v32

    #@227
    .local v35, "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v24

    #@229
    .local v18, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v26

    #@22b
    .line 814
    .local v16, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_8
    invoke-virtual/range {v18 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22e
    move-result-object v13

    #@22f
    .line 815
    .local v13, "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@232
    move-result-object v15

    #@233
    .line 818
    .local v15, "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@236
    move-result v3

    #@237
    if-eqz v3, :cond_14

    #@239
    .line 820
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@23c
    move-result v3

    #@23d
    if-eqz v3, :cond_13

    #@23f
    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@242
    move-result-object v3

    #@243
    return-object v3

    #@244
    .line 794
    .end local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_11
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@247
    move-result-object v31

    #@248
    .line 795
    .restart local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    #@24a
    move-object/from16 v1, v25

    #@24c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24f
    move-result-object v19

    #@250
    .line 796
    .restart local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    #@252
    move-object/from16 v1, v28

    #@254
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@257
    move-result-object v29

    #@258
    .line 797
    .local v29, "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    #@25a
    move-object/from16 v1, v27

    #@25c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25f
    move-result-object v17

    #@260
    .restart local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_7

    #@261
    .line 808
    .end local v29    # "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v34    # "Z2IsOne":Z
    :cond_12
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@264
    move-result-object v35

    #@265
    .line 809
    .restart local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    #@267
    move-object/from16 v1, v24

    #@269
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26c
    move-result-object v18

    #@26d
    .line 810
    .restart local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    #@26f
    move-object/from16 v1, v32

    #@271
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@274
    move-result-object v33

    #@275
    .line 811
    .local v33, "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v33

    #@277
    move-object/from16 v1, v26

    #@279
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27c
    move-result-object v16

    #@27d
    .restart local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_8

    #@27e
    .line 827
    .end local v33    # "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_13
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@281
    move-result-object v3

    #@282
    return-object v3

    #@283
    .line 830
    :cond_14
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@286
    move-result-object v14

    #@287
    .line 831
    .local v14, "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@28a
    move-result-object v12

    #@28b
    .line 832
    .local v12, "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    #@28d
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@290
    move-result-object v20

    #@291
    .line 834
    .local v20, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@294
    move-result-object v3

    #@295
    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@298
    move-result-object v3

    #@299
    move-object/from16 v0, p0

    #@29b
    move-object/from16 v1, v20

    #@29d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a0
    move-result-object v8

    #@2a1
    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a4
    move-result-object v5

    #@2a5
    .line 835
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    #@2a7
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2aa
    move-result-object v3

    #@2ab
    move-object/from16 v0, v16

    #@2ad
    invoke-virtual {v3, v15, v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b0
    move-result-object v6

    #@2b1
    .line 837
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v13

    #@2b3
    .line 838
    .restart local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_15

    #@2b5
    .line 840
    move-object/from16 v0, v36

    #@2b7
    move-object/from16 v1, v28

    #@2b9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2bc
    move-result-object v36

    #@2bd
    .line 842
    :cond_15
    if-nez v34, :cond_16

    #@2bf
    .line 844
    move-object/from16 v0, v36

    #@2c1
    move-object/from16 v1, v32

    #@2c3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c6
    move-result-object v36

    #@2c7
    .line 852
    :cond_16
    move-object/from16 v0, v36

    #@2c9
    if-ne v0, v13, :cond_f

    #@2cb
    .line 854
    move-object/from16 v37, v14

    #@2cd
    .local v37, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_5

    #@2cf
    .line 868
    .end local v12    # "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_17
    const/4 v3, 0x1

    #@2d0
    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2d2
    const/4 v3, 0x0

    #@2d3
    aput-object v36, v7, v3

    #@2d5
    .restart local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_6

    #@2d7
    .line 684
    nop

    #@2d8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "Z"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    .line 1288
    .local v1, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 1290
    :cond_0
    return-object v1

    #@15
    .line 1293
    :cond_1
    if-nez p2, :cond_2

    #@17
    .line 1295
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object p2

    #@1b
    .line 1298
    :cond_2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v0

    #@1f
    .line 1299
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v2

    #@23
    .line 1300
    .local v2, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    #@26
    move-result v3

    #@27
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    #@2a
    move-result v4

    #@2b
    if-ge v3, v4, :cond_3

    #@2d
    .line 1302
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v0

    #@35
    .line 1308
    :goto_0
    return-object v0

    #@36
    .line 1306
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@39
    move-result-object v0

    #@3a
    goto :goto_0
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    #@0
    .prologue
    .line 649
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@e
    return-object v0
.end method

.method protected doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1264
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1313
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    aget-object v0, v1, v4

    #@6
    .line 1314
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_0

    #@8
    .line 1317
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    const/4 v3, 0x0

    #@d
    aget-object v2, v2, v3

    #@f
    invoke-virtual {p0, v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v0

    #@13
    aput-object v0, v1, v4

    #@15
    .line 1319
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 654
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x4

    #@8
    if-ne v1, v0, :cond_0

    #@a
    .line 656
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 659
    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7

    #@0
    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1271
    return-object p0

    #@7
    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v1

    #@b
    .line 1275
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@e
    move-result v6

    #@f
    .line 1277
    .local v6, "coord":I
    if-eqz v6, :cond_1

    #@11
    .line 1279
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@13
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@15
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    move-result-object v3

    #@1b
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@1f
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@22
    return-object v0

    #@23
    .line 1282
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@25
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c
    move-result-object v3

    #@2d
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@2f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@32
    return-object v0
.end method

.method protected three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1244
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 19

    #@0
    .prologue
    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    #@3
    move-result v17

    #@4
    if-eqz v17, :cond_0

    #@6
    .line 1095
    return-object p0

    #@7
    .line 1098
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b
    .line 1099
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@e
    move-result v17

    #@f
    if-eqz v17, :cond_1

    #@11
    .line 1101
    return-object p0

    #@12
    .line 1104
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@15
    move-result-object v15

    #@16
    .line 1105
    .local v15, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@19
    move-result v14

    #@1a
    .line 1107
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_0

    #@1d
    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@20
    move-result-object v17

    #@21
    move-object/from16 v0, v17

    #@23
    move-object/from16 v1, p0

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@28
    move-result-object v17

    #@29
    return-object v17

    #@2a
    .line 1111
    :sswitch_0
    move-object/from16 v0, p0

    #@2c
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2e
    .line 1113
    .local v7, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v13

    #@34
    .line 1114
    .local v13, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@37
    move-result-object v6

    #@38
    .line 1115
    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3b
    move-result-object v17

    #@3c
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v1, v17

    #@40
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@43
    move-result-object v17

    #@44
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@47
    move-result-object v18

    #@48
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4b
    move-result-object v18

    #@4c
    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4f
    move-result-object v12

    #@50
    .line 1116
    .local v12, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v9

    #@54
    .line 1118
    .local v9, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@56
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@59
    move-result-object v17

    #@5a
    move-object/from16 v0, v17

    #@5c
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5f
    move-result-object v17

    #@60
    move-object/from16 v0, v17

    #@62
    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@65
    move-result-object v16

    #@66
    .line 1119
    .local v16, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@69
    move-result v17

    #@6a
    if-eqz v17, :cond_2

    #@6c
    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@6f
    move-result-object v17

    #@70
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@73
    move-result-object v17

    #@74
    return-object v17

    #@75
    .line 1124
    :cond_2
    move-object/from16 v0, v16

    #@77
    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7a
    move-result-object v2

    #@7b
    .line 1125
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7e
    move-result-object v3

    #@7f
    .line 1126
    .local v3, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    #@81
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@84
    move-result-object v17

    #@85
    move-object/from16 v0, v17

    #@87
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8a
    move-result-object v4

    #@8b
    .line 1127
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8e
    move-result-object v17

    #@8f
    move-object/from16 v0, v17

    #@91
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@94
    move-result-object v17

    #@95
    move-object/from16 v0, v17

    #@97
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9a
    move-result-object v5

    #@9b
    .line 1129
    .local v5, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9e
    move-result-object v17

    #@9f
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a2
    move-result-object v18

    #@a3
    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a6
    move-result-object v17

    #@a7
    move-object/from16 v0, v17

    #@a9
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v8

    #@ad
    .line 1130
    .local v8, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b0
    move-result-object v17

    #@b1
    move-object/from16 v0, v17

    #@b3
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b6
    move-result-object v17

    #@b7
    move-object/from16 v0, v17

    #@b9
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bc
    move-result-object v11

    #@bd
    .line 1131
    .local v11, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v17, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@c3
    move/from16 v18, v0

    #@c5
    move-object/from16 v0, v17

    #@c7
    move/from16 v1, v18

    #@c9
    invoke-direct {v0, v15, v8, v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@cc
    return-object v17

    #@cd
    .line 1135
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    const/16 v17, 0x0

    #@cf
    move-object/from16 v0, p0

    #@d1
    move/from16 v1, v17

    #@d3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@d6
    move-result-object v17

    #@d7
    move-object/from16 v0, v17

    #@d9
    move-object/from16 v1, p0

    #@db
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@de
    move-result-object v17

    #@df
    return-object v17

    #@e0
    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 24
    .param p1, "e"    # I

    #@0
    .prologue
    .line 1147
    if-gez p1, :cond_0

    #@2
    .line 1149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v6, "\'e\' cannot be negative"

    #@7
    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1151
    :cond_0
    if-eqz p1, :cond_1

    #@d
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 1153
    :cond_1
    return-object p0

    #@14
    .line 1155
    :cond_2
    const/4 v2, 0x1

    #@15
    move/from16 v0, p1

    #@17
    if-ne v0, v2, :cond_3

    #@19
    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 1160
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@21
    move-result-object v3

    #@22
    .line 1162
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@24
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    .line 1163
    .local v5, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_4

    #@2c
    .line 1165
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 1168
    :cond_4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@34
    move-result v18

    #@35
    .line 1170
    .local v18, "coord":I
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@38
    move-result-object v10

    #@39
    .line 1171
    .local v10, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@3b
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3d
    .line 1172
    .local v4, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@41
    array-length v2, v2

    #@42
    const/4 v6, 0x1

    #@43
    if-ge v2, v6, :cond_6

    #@45
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    #@47
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    move-result-object v12

    #@4b
    .line 1174
    .local v12, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_5

    #@51
    .line 1176
    packed-switch v18, :pswitch_data_0

    #@54
    .line 1193
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v19, 0x0

    #@56
    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    #@58
    move/from16 v1, p1

    #@5a
    if-ge v0, v1, :cond_a

    #@5c
    .line 1195
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_7

    #@62
    .line 1197
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@65
    move-result-object v2

    #@66
    return-object v2

    #@67
    .line 1172
    .end local v12    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "i":I
    :cond_6
    move-object/from16 v0, p0

    #@69
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6b
    const/4 v6, 0x0

    #@6c
    aget-object v12, v2, v6

    #@6e
    .restart local v12    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@6f
    .line 1179
    :pswitch_1
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@72
    move-result-object v13

    #@73
    .line 1180
    .local v13, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@76
    move-result-object v4

    #@77
    .line 1181
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7a
    move-result-object v5

    #@7b
    .line 1182
    move-object/from16 v0, p0

    #@7d
    invoke-virtual {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    move-result-object v10

    #@81
    goto :goto_1

    #@82
    .line 1185
    .end local v13    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    const/4 v2, 0x0

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v12, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@88
    move-result-object v10

    #@89
    goto :goto_1

    #@8a
    .line 1188
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8d
    move-result-object v10

    #@8e
    goto :goto_1

    #@8f
    .line 1200
    .restart local v19    # "i":I
    :cond_7
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@92
    move-result-object v11

    #@93
    .line 1201
    .local v11, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@98
    move-result-object v8

    #@99
    .line 1202
    .local v8, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@9b
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9e
    move-result-object v14

    #@9f
    .line 1203
    .local v14, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a2
    move-result-object v15

    #@a3
    .line 1204
    .local v15, "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a6
    move-result-object v2

    #@a7
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v9

    #@ad
    .line 1205
    .local v9, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b0
    move-result-object v16

    #@b1
    .line 1206
    .local v16, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@b3
    move-object/from16 v1, v16

    #@b5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b8
    move-result-object v17

    #@b9
    .line 1208
    .local v17, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@bc
    move-result v2

    #@bd
    if-nez v2, :cond_8

    #@bf
    .line 1210
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c2
    move-result-object v8

    #@c3
    .line 1211
    move-object/from16 v0, v17

    #@c5
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c8
    move-result-object v2

    #@c9
    move-object/from16 v0, p0

    #@cb
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ce
    move-result-object v10

    #@cf
    .line 1214
    :cond_8
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d2
    move-result-object v2

    #@d3
    move-object/from16 v0, p0

    #@d5
    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@dc
    move-result-object v4

    #@dd
    .line 1215
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e0
    move-result-object v2

    #@e1
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e4
    move-result-object v2

    #@e5
    move-object/from16 v0, v17

    #@e7
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ea
    move-result-object v5

    #@eb
    .line 1216
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@ee
    move-result v2

    #@ef
    if-eqz v2, :cond_9

    #@f1
    move-object v12, v14

    #@f2
    .line 1193
    :goto_3
    add-int/lit8 v19, v19, 0x1

    #@f4
    goto/16 :goto_2

    #@f6
    .line 1216
    :cond_9
    invoke-virtual {v14, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f9
    move-result-object v12

    #@fa
    goto :goto_3

    #@fb
    .line 1219
    .end local v8    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    packed-switch v18, :pswitch_data_1

    #@fe
    .line 1233
    :pswitch_4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@100
    const-string/jumbo v6, "unsupported coordinate system"

    #@103
    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@106
    throw v2

    #@107
    .line 1222
    :pswitch_5
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10a
    move-result-object v20

    #@10b
    .local v20, "zInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10e
    move-result-object v21

    #@10f
    .local v21, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    #@111
    move-object/from16 v1, v20

    #@113
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@116
    move-result-object v22

    #@117
    .line 1223
    .local v22, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@119
    move-object/from16 v0, v21

    #@11b
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11e
    move-result-object v6

    #@11f
    move-object/from16 v0, v22

    #@121
    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@124
    move-result-object v7

    #@125
    move-object/from16 v0, p0

    #@127
    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@129
    move/from16 v23, v0

    #@12b
    move/from16 v0, v23

    #@12d
    invoke-direct {v2, v3, v6, v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@130
    return-object v2

    #@131
    .line 1225
    .end local v20    # "zInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_6
    invoke-virtual {v4, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@134
    move-result-object v4

    #@135
    .line 1226
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@138
    move-result-object v2

    #@139
    invoke-virtual {v12, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13c
    move-result-object v12

    #@13d
    .line 1227
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@13f
    const/4 v6, 0x1

    #@140
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@142
    const/4 v7, 0x0

    #@143
    aput-object v12, v6, v7

    #@145
    move-object/from16 v0, p0

    #@147
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@149
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@14c
    return-object v2

    #@14d
    .line 1229
    :pswitch_7
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@14f
    const/4 v6, 0x1

    #@150
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@152
    const/4 v7, 0x0

    #@153
    aput-object v12, v6, v7

    #@155
    move-object/from16 v0, p0

    #@157
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@159
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@15c
    return-object v2

    #@15d
    .line 1231
    :pswitch_8
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@15f
    const/4 v6, 0x2

    #@160
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@162
    const/4 v7, 0x0

    #@163
    aput-object v12, v6, v7

    #@165
    const/4 v7, 0x1

    #@166
    aput-object v10, v6, v7

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@16c
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@16f
    return-object v2

    #@170
    .line 1176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@17c
    .line 1219
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 33

    #@0
    .prologue
    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 886
    return-object p0

    #@7
    .line 889
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@a
    move-result-object v3

    #@b
    .line 891
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    #@d
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    .line 892
    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 894
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 897
    :cond_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@1d
    move-result v27

    #@1e
    .line 899
    .local v27, "coord":I
    move-object/from16 v0, p0

    #@20
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    .line 901
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v27, :pswitch_data_0

    #@25
    .line 1009
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@27
    const-string/jumbo v6, "unsupported coordinate system"

    #@2a
    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 905
    :pswitch_1
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@31
    move-result-object v13

    #@32
    .line 906
    .local v13, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@37
    move-result-object v2

    #@38
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@43
    move-result-object v2

    #@44
    move-object/from16 v0, p0

    #@46
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4d
    move-result-object v28

    #@4e
    .line 907
    .local v28, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@51
    move-result-object v2

    #@52
    move-object/from16 v0, p0

    #@54
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5b
    move-result-object v4

    #@5c
    .line 908
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5f
    move-result-object v2

    #@60
    move-object/from16 v0, v28

    #@62
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@69
    move-result-object v5

    #@6a
    .line 910
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@70
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@73
    return-object v2

    #@74
    .line 915
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@78
    const/4 v6, 0x0

    #@79
    aget-object v16, v2, v6

    #@7b
    .line 917
    .local v16, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@7e
    move-result v17

    #@7f
    .line 920
    .local v17, "Z1IsOne":Z
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@82
    move-result-object v32

    #@83
    .line 921
    .local v32, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@86
    move-result v2

    #@87
    if-nez v2, :cond_2

    #@89
    if-eqz v17, :cond_3

    #@8b
    .line 925
    :cond_2
    :goto_0
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8e
    move-result-object v2

    #@8f
    move-object/from16 v0, p0

    #@91
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@94
    move-result-object v2

    #@95
    move-object/from16 v0, v32

    #@97
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9a
    move-result-object v32

    #@9b
    .line 927
    if-eqz v17, :cond_4

    #@9d
    move-object/from16 v30, v14

    #@9f
    .line 928
    .local v30, "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v17, :cond_5

    #@a1
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a4
    move-result-object v31

    #@a5
    .line 929
    .local v31, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    move-object/from16 v0, v31

    #@a7
    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@aa
    move-result-object v8

    #@ab
    .line 930
    .local v8, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@ad
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b0
    move-result-object v23

    #@b1
    .line 931
    .local v23, "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b4
    move-result-object v2

    #@b5
    move-object/from16 v0, p0

    #@b7
    move-object/from16 v1, v23

    #@b9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@bc
    move-result-object v6

    #@bd
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c0
    move-result-object v29

    #@c1
    .line 933
    .local v29, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, v30

    #@c5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c8
    move-result-object v21

    #@c9
    .line 934
    .local v21, "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    #@cb
    move-object/from16 v1, v21

    #@cd
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d0
    move-result-object v4

    #@d1
    .line 935
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@d3
    move-object/from16 v1, v31

    #@d5
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d8
    move-result-object v22

    #@d9
    .line 936
    .local v22, "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v23

    #@db
    move-object/from16 v1, v29

    #@dd
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e0
    move-result-object v2

    #@e1
    move-object/from16 v0, v32

    #@e3
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e6
    move-result-object v2

    #@e7
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ea
    move-result-object v6

    #@eb
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f0
    move-result-object v6

    #@f1
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f4
    move-result-object v5

    #@f5
    .line 937
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_6

    #@f7
    move-object/from16 v0, p0

    #@f9
    move-object/from16 v1, v22

    #@fb
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@fe
    move-result-object v24

    #@ff
    .line 938
    .local v24, "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, v24

    #@103
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@106
    move-result-object v2

    #@107
    move-object/from16 v0, v30

    #@109
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10c
    move-result-object v20

    #@10d
    .line 940
    .local v20, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@10f
    const/4 v6, 0x1

    #@110
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@112
    const/4 v7, 0x0

    #@113
    aput-object v20, v6, v7

    #@115
    move-object/from16 v0, p0

    #@117
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@119
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@11c
    return-object v2

    #@11d
    .line 923
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@120
    move-result-object v2

    #@121
    move-object/from16 v0, v32

    #@123
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@126
    move-result-object v32

    #@127
    goto/16 :goto_0

    #@129
    .line 927
    :cond_4
    move-object/from16 v0, v16

    #@12b
    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12e
    move-result-object v30

    #@12f
    .restart local v30    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_1

    #@131
    .line 928
    :cond_5
    move-object/from16 v0, v30

    #@133
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@136
    move-result-object v31

    #@137
    .restart local v31    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_2

    #@139
    .line 937
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13c
    move-result-object v24

    #@13d
    .restart local v24    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_3

    #@13e
    .line 945
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v21    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    #@140
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@142
    const/4 v6, 0x0

    #@143
    aget-object v16, v2, v6

    #@145
    .line 947
    .restart local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@148
    move-result v17

    #@149
    .line 949
    .restart local v17    # "Z1IsOne":Z
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14c
    move-result-object v15

    #@14d
    .line 950
    .local v15, "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@150
    move-result-object v11

    #@151
    .line 952
    .local v11, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@154
    move-result-object v25

    #@155
    .line 953
    .local v25, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@158
    move-result-object v26

    #@159
    .line 956
    .local v26, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@15c
    move-result-object v2

    #@15d
    const-wide/16 v6, 0x3

    #@15f
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@162
    move-result-object v6

    #@163
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v2

    #@167
    if-eqz v2, :cond_9

    #@169
    .line 958
    if-eqz v17, :cond_8

    #@16b
    move-object/from16 v19, v16

    #@16d
    .line 959
    .local v19, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v0, v19

    #@16f
    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@172
    move-result-object v2

    #@173
    move-object/from16 v0, v19

    #@175
    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@178
    move-result-object v6

    #@179
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17c
    move-result-object v2

    #@17d
    move-object/from16 v0, p0

    #@17f
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@182
    move-result-object v9

    #@183
    .line 960
    .local v9, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@186
    move-result-object v2

    #@187
    move-object/from16 v0, p0

    #@189
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18c
    move-result-object v10

    #@18d
    .line 987
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@190
    move-result-object v2

    #@191
    move-object/from16 v0, p0

    #@193
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@196
    move-result-object v6

    #@197
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19a
    move-result-object v4

    #@19b
    .line 988
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19e
    move-result-object v2

    #@19f
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a2
    move-result-object v2

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a8
    move-result-object v6

    #@1a9
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ac
    move-result-object v5

    #@1ad
    .line 990
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@1af
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1b2
    move-result-object v20

    #@1b3
    .line 991
    .restart local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_7

    #@1b5
    .line 993
    move-object/from16 v0, v20

    #@1b7
    move-object/from16 v1, v16

    #@1b9
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1bc
    move-result-object v20

    #@1bd
    .line 999
    :cond_7
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@1bf
    const/4 v6, 0x1

    #@1c0
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c2
    const/4 v7, 0x0

    #@1c3
    aput-object v20, v6, v7

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@1c9
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@1cc
    return-object v2

    #@1cd
    .line 958
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d0
    move-result-object v19

    #@1d1
    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    #@1d2
    .line 964
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d5
    move-result-object v13

    #@1d6
    .line 965
    .restart local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@1d8
    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1db
    move-result-object v9

    #@1dc
    .line 966
    .restart local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_b

    #@1de
    .line 968
    move-object/from16 v0, v25

    #@1e0
    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e3
    move-result-object v9

    #@1e4
    .line 984
    :cond_a
    :goto_6
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e7
    move-result-object v2

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1ed
    move-result-object v10

    #@1ee
    .restart local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_5

    #@1ef
    .line 970
    .end local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@1f2
    move-result v2

    #@1f3
    if-nez v2, :cond_a

    #@1f5
    .line 972
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f8
    move-result-object v19

    #@1f9
    .line 973
    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1fc
    move-result-object v18

    #@1fd
    .line 974
    .local v18, "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    #@200
    move-result v2

    #@201
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    #@204
    move-result v6

    #@205
    if-ge v2, v6, :cond_c

    #@207
    .line 976
    move-object/from16 v0, v18

    #@209
    move-object/from16 v1, v26

    #@20b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20e
    move-result-object v2

    #@20f
    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@212
    move-result-object v9

    #@213
    goto :goto_6

    #@214
    .line 980
    :cond_c
    move-object/from16 v0, v18

    #@216
    move-object/from16 v1, v25

    #@218
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21b
    move-result-object v2

    #@21c
    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21f
    move-result-object v9

    #@220
    goto :goto_6

    #@221
    .line 1004
    .end local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v18    # "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_4
    const/4 v2, 0x1

    #@222
    move-object/from16 v0, p0

    #@224
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@227
    move-result-object v2

    #@228
    return-object v2

    #@229
    .line 901
    nop

    #@22a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    .locals 21
    .param p1, "calculateW"    # Z

    #@0
    .prologue
    .line 1324
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@6
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    const/4 v3, 0x0

    #@d
    aget-object v15, v2, v3

    #@f
    .local v15, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v10

    #@13
    .line 1326
    .local v10, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v13

    #@17
    .line 1327
    .local v13, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    move-result-object v8

    #@21
    .line 1328
    .local v8, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    move-result-object v17

    #@27
    .line 1329
    .local v17, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    #@29
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c
    move-result-object v18

    #@2d
    .line 1330
    .local v18, "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    #@2f
    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@38
    move-result-object v9

    #@39
    .line 1331
    .local v9, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3c
    move-result-object v2

    #@3d
    move-object/from16 v0, p0

    #@3f
    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v4

    #@47
    .line 1332
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    move-result-object v19

    #@4b
    .line 1333
    .local v19, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@4d
    move-object/from16 v1, v19

    #@4f
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@52
    move-result-object v20

    #@53
    .line 1334
    .local v20, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5a
    move-result-object v2

    #@5b
    move-object/from16 v0, v20

    #@5d
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@60
    move-result-object v5

    #@61
    .line 1335
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_0

    #@63
    move-object/from16 v0, v20

    #@65
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@68
    move-result-object v2

    #@69
    move-object/from16 v0, p0

    #@6b
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6e
    move-result-object v11

    #@6f
    .line 1336
    :goto_0
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_1

    #@75
    move-object/from16 v16, v17

    #@77
    .line 1338
    .local v16, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@79
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7c
    move-result-object v3

    #@7d
    const/4 v6, 0x2

    #@7e
    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@80
    const/4 v7, 0x0

    #@81
    aput-object v16, v6, v7

    #@83
    const/4 v7, 0x1

    #@84
    aput-object v11, v6, v7

    #@86
    move-object/from16 v0, p0

    #@88
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@8a
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@8d
    return-object v2

    #@8e
    .line 1335
    .end local v16    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    const/4 v11, 0x0

    #@8f
    .local v11, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@90
    .line 1336
    .end local v11    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    move-object/from16 v0, v17

    #@92
    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@95
    move-result-object v16

    #@96
    .restart local v16    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 21
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 1016
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9
    move-result-object v19

    #@a
    return-object v19

    #@b
    .line 1020
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    #@e
    move-result v19

    #@f
    if-eqz v19, :cond_1

    #@11
    .line 1022
    return-object p1

    #@12
    .line 1024
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@15
    move-result v19

    #@16
    if-eqz v19, :cond_2

    #@18
    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1b
    move-result-object v19

    #@1c
    return-object v19

    #@1d
    .line 1029
    :cond_2
    move-object/from16 v0, p0

    #@1f
    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    .line 1030
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@24
    move-result v19

    #@25
    if-eqz v19, :cond_3

    #@27
    .line 1032
    return-object p1

    #@28
    .line 1035
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@2b
    move-result-object v15

    #@2c
    .line 1036
    .local v15, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@2f
    move-result v14

    #@30
    .line 1038
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_0

    #@33
    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@36
    move-result-object v19

    #@37
    move-object/from16 v0, v19

    #@39
    move-object/from16 v1, p1

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3e
    move-result-object v19

    #@3f
    return-object v19

    #@40
    .line 1042
    :sswitch_0
    move-object/from16 v0, p0

    #@42
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@44
    .line 1043
    .local v7, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@46
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@48
    .local v8, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    #@4a
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4c
    .line 1045
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4f
    move-result-object v17

    #@50
    .local v17, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@53
    move-result-object v18

    #@54
    .line 1047
    .local v18, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@57
    move-result v19

    #@58
    if-eqz v19, :cond_5

    #@5a
    .line 1049
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@5d
    move-result v19

    #@5e
    if-eqz v19, :cond_4

    #@60
    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@63
    move-result-object v19

    #@64
    return-object v19

    #@65
    .line 1056
    :cond_4
    return-object p0

    #@66
    .line 1064
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@69
    move-result-object v6

    #@6a
    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6d
    move-result-object v10

    #@6e
    .line 1065
    .local v10, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@73
    move-result-object v19

    #@74
    move-object/from16 v0, v19

    #@76
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@79
    move-result-object v19

    #@7a
    move-object/from16 v0, v19

    #@7c
    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7f
    move-result-object v19

    #@80
    move-object/from16 v0, v19

    #@82
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@85
    move-result-object v16

    #@86
    .line 1066
    .local v16, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@89
    move-result v19

    #@8a
    if-eqz v19, :cond_6

    #@8c
    .line 1068
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@8f
    move-result-object v19

    #@90
    return-object v19

    #@91
    .line 1071
    :cond_6
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@94
    move-result-object v2

    #@95
    .line 1072
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@98
    move-result-object v3

    #@99
    .line 1073
    .local v3, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    #@9b
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9e
    move-result-object v19

    #@9f
    move-object/from16 v0, v19

    #@a1
    move-object/from16 v1, v18

    #@a3
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a6
    move-result-object v4

    #@a7
    .line 1074
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ac
    move-result-object v19

    #@ad
    move-object/from16 v0, v19

    #@af
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@b2
    move-result-object v19

    #@b3
    move-object/from16 v0, v19

    #@b5
    move-object/from16 v1, v17

    #@b7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ba
    move-result-object v19

    #@bb
    move-object/from16 v0, v19

    #@bd
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c0
    move-result-object v19

    #@c1
    move-object/from16 v0, v19

    #@c3
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c6
    move-result-object v5

    #@c7
    .line 1075
    .local v5, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ca
    move-result-object v19

    #@cb
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ce
    move-result-object v20

    #@cf
    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d2
    move-result-object v19

    #@d3
    move-object/from16 v0, v19

    #@d5
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d8
    move-result-object v9

    #@d9
    .line 1076
    .local v9, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@dc
    move-result-object v19

    #@dd
    move-object/from16 v0, v19

    #@df
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e2
    move-result-object v19

    #@e3
    move-object/from16 v0, v19

    #@e5
    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e8
    move-result-object v13

    #@e9
    .line 1078
    .local v13, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v19, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    #@ef
    move/from16 v20, v0

    #@f1
    move-object/from16 v0, v19

    #@f3
    move/from16 v1, v20

    #@f5
    invoke-direct {v0, v15, v9, v13, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@f8
    return-object v19

    #@f9
    .line 1082
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1
    const/16 v19, 0x0

    #@fb
    move-object/from16 v0, p0

    #@fd
    move/from16 v1, v19

    #@ff
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@102
    move-result-object v19

    #@103
    move-object/from16 v0, v19

    #@105
    move-object/from16 v1, p1

    #@107
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@10a
    move-result-object v19

    #@10b
    return-object v19

    #@10c
    .line 1038
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1239
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
