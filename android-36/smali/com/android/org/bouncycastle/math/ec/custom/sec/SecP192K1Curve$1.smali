.class Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP192K1Curve.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;I[I)V
    .registers 4

    .line 104
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 147
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    new-instance p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;->-$$Nest$sfgetSECP192K1_AFFINE_ZS()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->val$len:I

    return p0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 115
    :goto_b
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->val$len:I

    if-ge v3, v5, :cond_38

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    :goto_16
    const/4 v7, 0x6

    if-ge v6, v7, :cond_33

    .line 121
    aget v7, v0, v6

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->val$table:[I

    add-int v9, v4, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v0, v6

    .line 122
    aget v7, v1, v6

    add-int/lit8 v9, v4, 0x6

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_33
    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 128
    :cond_38
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 133
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    mul-int/lit8 p1, p1, 0xc

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1f

    .line 138
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->val$table:[I

    add-int v5, p1, v2

    aget v5, v4, v5

    aput v5, v0, v2

    add-int/2addr v3, p1

    add-int/2addr v3, v2

    .line 139
    aget v3, v4, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 142
    :cond_1f
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve$1;->createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
