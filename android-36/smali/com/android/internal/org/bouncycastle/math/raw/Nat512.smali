.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat512;
.super Ljava/lang/Object;
.source "Nat512.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 20
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 12
    invoke-static/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 13
    const/16 v3, 0x8

    const/16 v5, 0x10

    const/16 v1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([II[II[II)V

    .line 15
    move-object v12, v4

    const/16 v13, 0x8

    const/16 v14, 0x10

    invoke-static {v12, v13, v12, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v0

    .line 16
    .local v0, "c24":I
    const/4 v15, 0x0

    invoke-static {v12, v15, v12, v13, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    .local v1, "c16":I
    const/16 v2, 0x18

    invoke-static {v12, v2, v12, v14, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v3

    add-int v16, v0, v3

    .line 19
    .end local v0    # "c24":I
    .local v16, "c24":I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .local v10, "dx":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 20
    .local v4, "dy":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object/from16 v8, p0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v0, v1

    .end local v1    # "c16":I
    .local v0, "c16":I
    const/16 v1, 0x8

    move v6, v2

    move-object/from16 v2, p1

    move v8, v6

    move v6, v0

    move-object/from16 v0, p1

    .end local v0    # "c16":I
    .local v6, "c16":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v1

    if-eq v7, v1, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    move v0, v15

    .line 22
    .local v0, "neg":Z
    :goto_52
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v1

    .line 23
    .local v1, "tt":[I
    invoke-static {v10, v4, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 25
    if-eqz v0, :cond_60

    invoke-static {v14, v1, v15, v12, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v2

    goto :goto_64

    :cond_60
    invoke-static {v14, v1, v15, v12, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v2

    :goto_64
    add-int v2, v16, v2

    .line 26
    .end local v16    # "c24":I
    .local v2, "c24":I
    const/16 v3, 0x20

    invoke-static {v3, v2, v12, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 27
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 14
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 31
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 32
    const/16 v0, 0x8

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([II[II)V

    .line 34
    invoke-static {p1, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v2

    .line 35
    .local v2, "c24":I
    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    .line 36
    .local v4, "c16":I
    const/16 v5, 0x18

    invoke-static {p1, v5, p1, v1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v6

    add-int/2addr v2, v6

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 39
    .local v10, "dx":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object v8, p0

    move-object v6, p0

    .end local p0    # "x":[I
    .local v6, "x":[I
    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    .line 41
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object p0

    .line 42
    .local p0, "tt":[I
    invoke-static {v10, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 44
    invoke-static {v1, p0, v3, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v2, v0

    .line 45
    const/16 v0, 0x20

    invoke-static {v0, v2, p1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 46
    return-void
.end method
