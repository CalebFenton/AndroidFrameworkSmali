.class Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP224K1Curve.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;I[I)V
    .registers 4

    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 153
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    new-instance p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->-$$Nest$sfgetSECP224K1_AFFINE_ZS()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    return p0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 111
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 114
    :goto_b
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    if-ge v3, v5, :cond_38

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    :goto_16
    const/4 v7, 0x7

    if-ge v6, v7, :cond_33

    .line 120
    aget v7, v0, v6

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    .line 121
    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x7

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_33
    add-int/lit8 v4, v4, 0xe

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 127
    :cond_38
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 132
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 135
    :goto_b
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    if-ge v3, v5, :cond_38

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    :goto_16
    const/4 v7, 0x7

    if-ge v6, v7, :cond_33

    .line 141
    aget v7, v0, v6

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    .line 142
    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x7

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_33
    add-int/lit8 v4, v4, 0xe

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 148
    :cond_38
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
