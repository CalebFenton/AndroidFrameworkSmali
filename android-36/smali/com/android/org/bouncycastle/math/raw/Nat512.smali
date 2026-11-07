.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat512;
.super Ljava/lang/Object;
.source "Nat512.java"


# direct methods
.method public static blacklist mul([I[I[I)V
    .registers 20

    .line 12
    invoke-static/range {p0 .. p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    const/16 v3, 0x8

    const/16 v5, 0x10

    const/16 v1, 0x8

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([II[II[II)V

    move-object v12, v4

    const/16 v13, 0x8

    const/16 v14, 0x10

    .line 15
    invoke-static {v12, v13, v12, v14}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v0

    const/4 v15, 0x0

    .line 16
    invoke-static {v12, v15, v12, v13, v15}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x18

    .line 17
    invoke-static {v12, v2, v12, v14, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v1

    add-int v16, v0, v1

    .line 19
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object/from16 v8, p0

    move-object/from16 v6, p0

    .line 20
    invoke-static/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x8

    move v0, v2

    move-object/from16 v2, p1

    move v7, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    move-result v0

    if-eq v6, v0, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    move v0, v15

    .line 22
    :goto_50
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v1

    .line 23
    invoke-static {v10, v4, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    if-eqz v0, :cond_5e

    .line 25
    invoke-static {v14, v1, v15, v12, v13}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v0

    goto :goto_62

    :cond_5e
    invoke-static {v14, v1, v15, v12, v13}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    :goto_62
    add-int v0, v16, v0

    const/16 v1, 0x20

    .line 26
    invoke-static {v1, v0, v12, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 14

    .line 31
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    const/16 v0, 0x8

    const/16 v1, 0x10

    .line 32
    invoke-static {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([II[II)V

    .line 34
    invoke-static {p1, v0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addToEachOther([II[II)I

    move-result v2

    const/4 v3, 0x0

    .line 35
    invoke-static {p1, v3, p1, v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x18

    .line 36
    invoke-static {p1, v5, p1, v1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    move-result v4

    add-int/2addr v2, v4

    .line 38
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x8

    move-object v8, p0

    move-object v6, p0

    .line 39
    invoke-static/range {v6 .. v11}, Lcom/android/org/bouncycastle/math/raw/Nat256;->diff([II[II[II)Z

    .line 41
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object p0

    .line 42
    invoke-static {v10, p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 44
    invoke-static {v1, p0, v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result p0

    add-int/2addr v2, p0

    const/16 p0, 0x20

    .line 45
    invoke-static {p0, v2, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void
.end method
