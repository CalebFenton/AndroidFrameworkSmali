.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat512;
.super Ljava/lang/Object;
.source "Nat512.java"


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
    invoke-static/range {p0 .. p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    #@3
    .line 9
    const/16 v3, 0x8

    #@5
    const/16 v5, 0x8

    #@7
    const/16 v7, 0x10

    #@9
    move-object/from16 v2, p0

    #@b
    move-object/from16 v4, p1

    #@d
    move-object/from16 v6, p2

    #@f
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([II[II[II)V

    #@12
    .line 11
    const/16 v2, 0x8

    #@14
    const/16 v3, 0x10

    #@16
    move-object/from16 v0, p2

    #@18
    move-object/from16 v1, p2

    #@1a
    invoke-static {v0, v2, v1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    #@1d
    move-result v14

    #@1e
    .line 12
    .local v14, "c24":I
    const/4 v2, 0x0

    #@1f
    const/16 v3, 0x8

    #@21
    const/4 v4, 0x0

    #@22
    move-object/from16 v0, p2

    #@24
    move-object/from16 v1, p2

    #@26
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    #@29
    move-result v2

    #@2a
    add-int v13, v14, v2

    #@2c
    .line 13
    .local v13, "c16":I
    const/16 v2, 0x18

    #@2e
    const/16 v3, 0x10

    #@30
    move-object/from16 v0, p2

    #@32
    move-object/from16 v1, p2

    #@34
    invoke-static {v0, v2, v1, v3, v13}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    #@37
    move-result v2

    #@38
    add-int/2addr v14, v2

    #@39
    .line 15
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@3c
    move-result-object v6

    #@3d
    .local v6, "dx":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@40
    move-result-object v11

    #@41
    .line 16
    .local v11, "dy":[I
    const/16 v3, 0x8

    #@43
    const/4 v5, 0x0

    #@44
    const/4 v7, 0x0

    #@45
    move-object/from16 v2, p0

    #@47
    move-object/from16 v4, p0

    #@49
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    #@4c
    move-result v2

    #@4d
    const/16 v8, 0x8

    #@4f
    const/4 v10, 0x0

    #@50
    const/4 v12, 0x0

    #@51
    move-object/from16 v7, p1

    #@53
    move-object/from16 v9, p1

    #@55
    invoke-static/range {v7 .. v12}, Lcom/android/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    #@58
    move-result v3

    #@59
    if-eq v2, v3, :cond_0

    #@5b
    const/4 v15, 0x1

    #@5c
    .line 18
    .local v15, "neg":Z
    :goto_0
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@5f
    move-result-object v16

    #@60
    .line 19
    .local v16, "tt":[I
    move-object/from16 v0, v16

    #@62
    invoke-static {v6, v11, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    #@65
    .line 21
    if-eqz v15, :cond_1

    #@67
    const/16 v2, 0x10

    #@69
    const/4 v3, 0x0

    #@6a
    const/16 v4, 0x8

    #@6c
    move-object/from16 v0, v16

    #@6e
    move-object/from16 v1, p2

    #@70
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    #@73
    move-result v2

    #@74
    :goto_1
    add-int/2addr v14, v2

    #@75
    .line 22
    const/16 v2, 0x20

    #@77
    const/16 v3, 0x18

    #@79
    move-object/from16 v0, p2

    #@7b
    invoke-static {v2, v14, v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    #@7e
    .line 6
    return-void

    #@7f
    .line 16
    .end local v15    # "neg":Z
    .end local v16    # "tt":[I
    :cond_0
    const/4 v15, 0x0

    #@80
    .restart local v15    # "neg":Z
    goto :goto_0

    #@81
    .line 21
    .restart local v16    # "tt":[I
    :cond_1
    const/16 v2, 0x10

    #@83
    const/4 v3, 0x0

    #@84
    const/16 v4, 0x8

    #@86
    move-object/from16 v0, v16

    #@88
    move-object/from16 v1, p2

    #@8a
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    #@8d
    move-result v2

    #@8e
    goto :goto_1
.end method

.method public static square([I[I)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    #@0
    .prologue
    const/16 v10, 0x18

    #@2
    const/16 v9, 0x10

    #@4
    const/16 v1, 0x8

    #@6
    const/4 v3, 0x0

    #@7
    .line 27
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@a
    .line 28
    invoke-static {p0, v1, p1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([II[II)V

    #@d
    .line 30
    invoke-static {p1, v1, p1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    #@10
    move-result v7

    #@11
    .line 31
    .local v7, "c24":I
    invoke-static {p1, v3, p1, v1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    #@14
    move-result v0

    #@15
    add-int v6, v7, v0

    #@17
    .line 32
    .local v6, "c16":I
    invoke-static {p1, v10, p1, v9, v6}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    #@1a
    move-result v0

    #@1b
    add-int/2addr v7, v0

    #@1c
    .line 34
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@1f
    move-result-object v4

    #@20
    .local v4, "dx":[I
    move-object v0, p0

    #@21
    move-object v2, p0

    #@22
    move v5, v3

    #@23
    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    #@26
    .line 37
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    #@29
    move-result-object v8

    #@2a
    .line 38
    .local v8, "tt":[I
    invoke-static {v4, v8}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    #@2d
    .line 40
    invoke-static {v9, v8, v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    #@30
    move-result v0

    #@31
    add-int/2addr v7, v0

    #@32
    .line 41
    const/16 v0, 0x20

    #@34
    invoke-static {v0, v7, p1, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    #@37
    .line 25
    return-void
.end method
