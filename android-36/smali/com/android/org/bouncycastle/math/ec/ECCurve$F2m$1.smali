.class Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic blacklist val$FE_LONGS:I

.field final synthetic blacklist val$ks:[I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .registers 6

    .line 1392
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([J[J)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 1435
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    .line 1436
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {p1, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    .line 1437
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 1

    .line 1395
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return p0
.end method

.method public blacklist lookup(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 16

    .line 1400
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1403
    :goto_f
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v3, v5, :cond_3f

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    move v7, v2

    .line 1407
    :goto_1b
    iget v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v7, v8, :cond_39

    .line 1409
    aget-wide v9, v0, v7

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v12, v4, v7

    aget-wide v12, v11, v12

    and-long/2addr v12, v5

    xor-long/2addr v9, v12

    aput-wide v9, v0, v7

    .line 1410
    aget-wide v9, v1, v7

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    aget-wide v11, v11, v8

    and-long/2addr v11, v5

    xor-long v8, v9, v11

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_39
    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1416
    :cond_3f
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist lookupVar(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9

    .line 1421
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1422
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    const/4 v2, 0x0

    .line 1424
    :goto_12
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v2, v3, :cond_27

    .line 1426
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v5, p1, v2

    aget-wide v5, v4, v5

    aput-wide v5, v0, v2

    add-int/2addr v3, p1

    add-int/2addr v3, v2

    .line 1427
    aget-wide v3, v4, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1430
    :cond_27
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
