.class public Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final blacklist GNB:I = 0x1

.field public static final blacklist PPB:I = 0x3

.field public static final blacklist TPB:I = 0x2


# instance fields
.field private blacklist ks:[I

.field private blacklist m:I

.field private blacklist representation:I

.field blacklist x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;


# direct methods
.method constructor blacklist <init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V
    .registers 6
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 617
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 618
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 619
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x2

    goto :goto_c

    :cond_b
    const/4 v0, 0x3

    :goto_c
    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 620
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 621
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 622
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 664
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 665
    .local v0, "iarrClone":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 666
    .local v1, "bF2m":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 667
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 672
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist bitLength()I
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 719
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 720
    .local v0, "bInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "anObject"    # Ljava/lang/Object;

    .line 831
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 833
    return v0

    .line 836
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 838
    return v2

    .line 841
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 843
    .local v1, "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 845
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 846
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 843
    :goto_2f
    return v0
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 651
    const-string v0, "F2m"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 656
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getK1()I
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getK2()I
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist getK3()I
    .registers 3

    .line 826
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist getM()I
    .registers 2

    .line 791
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getRepresentation()I
    .registers 2

    .line 782
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 764
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 636
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 9
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 690
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v4, p1

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 695
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 13
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 700
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v0, "ax":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v1, "bx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v2, "xx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v3, p3

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 702
    .local v3, "yx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 703
    .local v4, "ab":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v5

    .line 705
    .local v5, "xy":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-eq v4, v0, :cond_25

    if-ne v4, v1, :cond_2c

    .line 707
    :cond_25
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 710
    :cond_2c
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 711
    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 713
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 726
    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    :cond_11
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move-object v0, p0

    :goto_1b
    return-object v0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 731
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 11
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 741
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v0, "ax":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v1, "xx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 743
    .local v2, "yx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    .line 744
    .local v3, "aa":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 746
    .local v4, "xy":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-ne v3, v0, :cond_25

    .line 748
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 751
    :cond_25
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 752
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 754
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public blacklist squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .param p1, "pow"    # I

    .line 759
    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    move-object v0, p0

    goto :goto_18

    :cond_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    :goto_18
    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist testBitZero()Z
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
