.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# instance fields
.field private blacklist ks:[I

.field private blacklist m:I

.field private blacklist representation:I

.field blacklist x:Lcom/android/org/bouncycastle/math/ec/LongArray;


# direct methods
.method constructor blacklist <init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V
    .registers 5

    .line 617
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 618
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 619
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x2

    goto :goto_c

    :cond_b
    const/4 p1, 0x3

    :goto_c
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 620
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 621
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 664
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 665
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 666
    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 667
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, v1, p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 672
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist bitLength()I
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result p0

    return p0
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 719
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 836
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 841
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 843
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v1, v3, :cond_2d

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 845
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 846
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return v0

    :cond_2d
    return v2
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 656
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 764
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist isOne()Z
    .registers 1

    .line 631
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result p0

    return p0
.end method

.method public blacklist isZero()Z
    .registers 1

    .line 636
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result p0

    return p0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 690
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 695
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8

    .line 700
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p3, p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 702
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v1

    .line 703
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p2, p3, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p2

    if-eq v1, v0, :cond_22

    if-ne v1, p1, :cond_29

    .line 707
    :cond_22
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    :cond_29
    const/4 p1, 0x0

    .line 710
    invoke-virtual {v1, p2, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 711
    iget p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 713
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 731
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 741
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    check-cast p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    .line 743
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object v1

    .line 744
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p1

    if-ne v1, v0, :cond_23

    .line 748
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    :cond_23
    const/4 p2, 0x0

    .line 751
    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    .line 752
    iget p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 754
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-object p0

    .line 759
    :cond_4
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist testBitZero()Z
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result p0

    return p0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 1

    .line 646
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
