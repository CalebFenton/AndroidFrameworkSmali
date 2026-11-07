.class Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP521R1Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;I[I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;
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

    .line 106
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->-$$Nest$sfgetSECP521R1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "index"    # I

    .line 114
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 115
    .local v2, "y":[I
    const/4 v3, 0x0

    .line 117
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$len:I

    if-ge v4, v5, :cond_3b

    .line 119
    xor-int v5, v4, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 121
    .local v5, "MASK":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_17
    if-ge v6, v0, :cond_35

    .line 123
    aget v7, v1, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    add-int v9, v3, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    .line 124
    aget v7, v2, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    add-int/lit8 v9, v3, 0x11

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v2, v6

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 127
    .end local v6    # "j":I
    :cond_35
    nop

    .end local v5    # "MASK":I
    add-int/lit8 v3, v3, 0x22

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 130
    .end local v4    # "i":I
    :cond_3b
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 10
    .param p1, "index"    # I

    .line 135
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 136
    .local v2, "y":[I
    mul-int/lit8 v3, p1, 0x11

    mul-int/lit8 v3, v3, 0x2

    .line 138
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_f
    if-ge v4, v0, :cond_2b

    .line 140
    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    add-int v7, v3, v4

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v1, v4

    .line 141
    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->val$table:[I

    add-int/lit8 v7, v3, 0x11

    add-int/2addr v7, v4

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v2, v4

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 144
    .end local v4    # "j":I
    :cond_2b
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
