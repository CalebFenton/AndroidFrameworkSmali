.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat384;
.super Ljava/lang/Object;
.source "Nat384.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 17
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 8
    invoke-static/range {p0 .. p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    #@3
    .line 9
    const/4 v3, 0x6

    #@4
    const/4 v5, 0x6

    #@5
    const/16 v7, 0xc

    #@7
    move-object/from16 v2, p0

    #@9
    move-object/from16 v4, p1

    #@b
    move-object/from16 v6, p2

    #@d
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([II[II[II)V

    #@10
    .line 11
    const/4 v2, 0x6

    #@11
    const/16 v3, 0xc

    #@13
    move-object/from16 v0, p2

    #@15
    move-object/from16 v1, p2

    #@17
    invoke-static {v0, v2, v1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    #@1a
    move-result v14

    #@1b
    .line 12
    .local v14, "c18":I
    const/4 v2, 0x0

    #@1c
    const/4 v3, 0x6

    #@1d
    const/4 v4, 0x0

    #@1e
    move-object/from16 v0, p2

    #@20
    move-object/from16 v1, p2

    #@22
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    #@25
    move-result v2

    #@26
    add-int v13, v14, v2

    #@28
    .line 13
    .local v13, "c12":I
    const/16 v2, 0x12

    #@2a
    const/16 v3, 0xc

    #@2c
    move-object/from16 v0, p2

    #@2e
    move-object/from16 v1, p2

    #@30
    invoke-static {v0, v2, v1, v3, v13}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    #@33
    move-result v2

    #@34
    add-int/2addr v14, v2

    #@35
    .line 15
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@38
    move-result-object v6

    #@39
    .local v6, "dx":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@3c
    move-result-object v11

    #@3d
    .line 16
    .local v11, "dy":[I
    const/4 v3, 0x6

    #@3e
    const/4 v5, 0x0

    #@3f
    const/4 v7, 0x0

    #@40
    move-object/from16 v2, p0

    #@42
    move-object/from16 v4, p0

    #@44
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    #@47
    move-result v2

    #@48
    const/4 v8, 0x6

    #@49
    const/4 v10, 0x0

    #@4a
    const/4 v12, 0x0

    #@4b
    move-object/from16 v7, p1

    #@4d
    move-object/from16 v9, p1

    #@4f
    invoke-static/range {v7 .. v12}, Lcom/android/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    #@52
    move-result v3

    #@53
    if-eq v2, v3, :cond_0

    #@55
    const/4 v15, 0x1

    #@56
    .line 18
    .local v15, "neg":Z
    :goto_0
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@59
    move-result-object v16

    #@5a
    .line 19
    .local v16, "tt":[I
    move-object/from16 v0, v16

    #@5c
    invoke-static {v6, v11, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    #@5f
    .line 21
    if-eqz v15, :cond_1

    #@61
    const/16 v2, 0xc

    #@63
    const/4 v3, 0x0

    #@64
    const/4 v4, 0x6

    #@65
    move-object/from16 v0, v16

    #@67
    move-object/from16 v1, p2

    #@69
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    #@6c
    move-result v2

    #@6d
    :goto_1
    add-int/2addr v14, v2

    #@6e
    .line 22
    const/16 v2, 0x18

    #@70
    const/16 v3, 0x12

    #@72
    move-object/from16 v0, p2

    #@74
    invoke-static {v2, v14, v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    #@77
    .line 6
    return-void

    #@78
    .line 16
    .end local v15    # "neg":Z
    .end local v16    # "tt":[I
    :cond_0
    const/4 v15, 0x0

    #@79
    .restart local v15    # "neg":Z
    goto :goto_0

    #@7a
    .line 21
    .restart local v16    # "tt":[I
    :cond_1
    const/16 v2, 0xc

    #@7c
    const/4 v3, 0x0

    #@7d
    const/4 v4, 0x6

    #@7e
    move-object/from16 v0, v16

    #@80
    move-object/from16 v1, p2

    #@82
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    #@85
    move-result v2

    #@86
    goto :goto_1
.end method

.method public static square([I[I)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    #@0
    .prologue
    const/16 v10, 0x12

    #@2
    const/16 v9, 0xc

    #@4
    const/4 v1, 0x6

    #@5
    const/4 v3, 0x0

    #@6
    .line 27
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@9
    .line 28
    invoke-static {p0, v1, p1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([II[II)V

    #@c
    .line 30
    invoke-static {p1, v1, p1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    #@f
    move-result v7

    #@10
    .line 31
    .local v7, "c18":I
    invoke-static {p1, v3, p1, v1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    #@13
    move-result v0

    #@14
    add-int v6, v7, v0

    #@16
    .line 32
    .local v6, "c12":I
    invoke-static {p1, v10, p1, v9, v6}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    #@19
    move-result v0

    #@1a
    add-int/2addr v7, v0

    #@1b
    .line 34
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@1e
    move-result-object v4

    #@1f
    .local v4, "dx":[I
    move-object v0, p0

    #@20
    move-object v2, p0

    #@21
    move v5, v3

    #@22
    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    #@25
    .line 37
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    #@28
    move-result-object v8

    #@29
    .line 38
    .local v8, "tt":[I
    invoke-static {v4, v8}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    #@2c
    .line 40
    invoke-static {v9, v8, v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    #@2f
    move-result v0

    #@30
    add-int/2addr v7, v0

    #@31
    .line 41
    const/16 v0, 0x18

    #@33
    invoke-static {v0, v7, p1, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    #@36
    .line 25
    return-void
.end method
