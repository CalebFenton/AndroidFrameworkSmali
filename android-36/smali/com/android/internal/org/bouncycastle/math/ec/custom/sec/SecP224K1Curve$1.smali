.class Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP224K1Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;I[I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->-$$Nest$sfgetSECP224K1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 11
    .param p1, "index"    # I

    .line 111
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .local v0, "x":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 112
    .local v1, "y":[I
    const/4 v2, 0x0

    .line 114
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    if-ge v3, v4, :cond_3a

    .line 116
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 118
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_15
    const/4 v6, 0x7

    if-ge v5, v6, :cond_34

    .line 120
    aget v6, v0, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    add-int v8, v2, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v0, v5

    .line 121
    aget v6, v1, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    add-int/lit8 v8, v2, 0x7

    add-int/2addr v8, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v1, v5

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 124
    .end local v5    # "j":I
    :cond_34
    nop

    .end local v4    # "MASK":I
    add-int/lit8 v2, v2, 0xe

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 127
    .end local v3    # "i":I
    :cond_3a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 11
    .param p1, "index"    # I

    .line 132
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .local v0, "x":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 133
    .local v1, "y":[I
    const/4 v2, 0x0

    .line 135
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$len:I

    if-ge v3, v4, :cond_3a

    .line 137
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 139
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_15
    const/4 v6, 0x7

    if-ge v5, v6, :cond_34

    .line 141
    aget v6, v0, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    add-int v8, v2, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v0, v5

    .line 142
    aget v6, v1, v5

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->val$table:[I

    add-int/lit8 v8, v2, 0x7

    add-int/2addr v8, v5

    aget v7, v7, v8

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v1, v5

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 145
    .end local v5    # "j":I
    :cond_34
    nop

    .end local v4    # "MASK":I
    add-int/lit8 v2, v2, 0xe

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 148
    .end local v3    # "i":I
    :cond_3a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
