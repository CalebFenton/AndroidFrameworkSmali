.class Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP521R1Curve.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;I[I)V
    .registers 4

    .line 106
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 149
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    new-instance p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->-$$Nest$sfgetSECP521R1_AFFINE_ZS()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$len:I

    return p0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13

    const/16 v0, 0x11

    .line 114
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 117
    :goto_d
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$len:I

    if-ge v4, v6, :cond_39

    xor-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    move v7, v3

    :goto_18
    if-ge v7, v0, :cond_34

    .line 123
    aget v8, v1, v7

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    add-int v10, v5, v7

    aget v10, v9, v10

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    aput v8, v1, v7

    .line 124
    aget v8, v2, v7

    add-int/lit8 v10, v5, 0x11

    add-int/2addr v10, v7

    aget v9, v9, v10

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_34
    add-int/lit8 v5, v5, 0x22

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 130
    :cond_39
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9

    const/16 v0, 0x11

    .line 135
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    mul-int/lit8 p1, p1, 0x22

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_27

    .line 140
    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    add-int v6, p1, v3

    aget v6, v5, v6

    xor-int/2addr v4, v6

    aput v4, v1, v3

    .line 141
    aget v4, v2, v3

    add-int/lit8 v6, p1, 0x11

    add-int/2addr v6, v3

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 144
    :cond_27
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->createPoint([I[I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
