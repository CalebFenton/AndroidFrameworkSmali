.class Lcom/android/org/bouncycastle/math/ec/ECCurve$1;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$FE_BYTES:I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;II[B)V
    .registers 5

    .line 491
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([B[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 534
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 1

    .line 494
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return p0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13

    .line 499
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    new-array v0, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 502
    :goto_9
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    if-ge v3, v5, :cond_39

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    .line 506
    :goto_14
    iget v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v6, v7, :cond_33

    .line 508
    aget-byte v8, v1, v6

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v10, v4, v6

    aget-byte v10, v9, v10

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    .line 509
    aget-byte v8, v0, v6

    add-int/2addr v7, v4

    add-int/2addr v7, v6

    aget-byte v7, v9, v7

    and-int/2addr v7, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_33
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 515
    :cond_39
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 520
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    new-array v2, v0, [B

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    .line 523
    :goto_a
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v0, v3, :cond_1f

    .line 525
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v5, p1, v0

    aget-byte v5, v4, v5

    aput-byte v5, v1, v0

    add-int/2addr v3, p1

    add-int/2addr v3, v0

    .line 526
    aget-byte v3, v4, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 529
    :cond_1f
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
