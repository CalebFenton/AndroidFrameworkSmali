.class Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic blacklist val$FE_LONGS:I

.field final synthetic blacklist val$ks:[I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1392
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 8
    .param p1, "x"    # [J
    .param p2, "y"    # [J

    .line 1435
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    .line 1436
    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    .line 1437
    .local v1, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 1395
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 13
    .param p1, "index"    # I

    .line 1400
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1401
    .local v1, "y":[J
    const/4 v2, 0x0

    .line 1403
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v3, v4, :cond_43

    .line 1405
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    .line 1407
    .local v4, "MASK":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1a
    iget v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v6, v7, :cond_3b

    .line 1409
    aget-wide v7, v0, v6

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v10, v2, v6

    aget-wide v9, v9, v10

    and-long/2addr v9, v4

    xor-long/2addr v7, v9

    aput-wide v7, v0, v6

    .line 1410
    aget-wide v7, v1, v6

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v10, v2

    add-int/2addr v10, v6

    aget-wide v9, v9, v10

    and-long/2addr v9, v4

    xor-long/2addr v7, v9

    aput-wide v7, v1, v6

    .line 1407
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1413
    .end local v6    # "j":I
    :cond_3b
    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    .line 1403
    .end local v4    # "MASK":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1416
    .end local v3    # "i":I
    :cond_43
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 8
    .param p1, "index"    # I

    .line 1421
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1422
    .local v1, "y":[J
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    .line 1424
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v3, v4, :cond_2b

    .line 1426
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v5, v2, v3

    aget-wide v4, v4, v5

    aput-wide v4, v0, v3

    .line 1427
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    aget-wide v4, v4, v5

    aput-wide v4, v1, v3

    .line 1424
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1430
    .end local v3    # "j":I
    :cond_2b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
