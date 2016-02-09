.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field private x:Lcom/android/org/bouncycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 544
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@7
    .line 551
    if-nez p3, :cond_0

    #@9
    if-nez p4, :cond_0

    #@b
    .line 553
    iput v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@d
    .line 554
    new-array v0, v2, [I

    #@f
    aput p2, v0, v1

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@13
    .line 572
    :goto_0
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@15
    .line 573
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@17
    invoke-direct {v0, p5}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@1c
    .line 549
    return-void

    #@1d
    .line 558
    :cond_0
    if-lt p3, p4, :cond_1

    #@1f
    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    .line 561
    const-string/jumbo v1, "k2 must be smaller than k3"

    #@24
    .line 560
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 563
    :cond_1
    if-gtz p3, :cond_2

    #@2a
    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    .line 566
    const-string/jumbo v1, "k2 must be larger than 0"

    #@2f
    .line 565
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 568
    :cond_2
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@35
    .line 569
    new-array v0, v0, [I

    #@37
    aput p2, v0, v1

    #@39
    aput p3, v0, v2

    #@3b
    aput p4, v0, v3

    #@3d
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@3f
    goto :goto_0
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v4, v3

    #@5
    move-object v5, p3

    #@6
    .line 589
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    #@9
    .line 586
    return-void
.end method

.method private constructor <init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@0
    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 594
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@5
    .line 595
    array-length v0, p2

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x2

    #@a
    :goto_0
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@c
    .line 596
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@e
    .line 597
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@10
    .line 592
    return-void

    #@11
    .line 595
    :cond_0
    const/4 v0, 0x3

    #@12
    goto :goto_0
.end method

.method public static checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 4
    .param p0, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 650
    instance-of v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    if-eqz v2, :cond_0

    #@4
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@6
    if-eqz v2, :cond_0

    #@8
    move-object v0, p0

    #@9
    .line 656
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@b
    .local v0, "aF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    #@c
    .line 657
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@e
    .line 659
    .local v1, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@10
    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@12
    if-eq v2, v3, :cond_1

    #@14
    .line 662
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "One of the F2m field elements has incorrect representation"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 652
    .end local v0    # "aF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    .end local v1    # "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Field elements are not both instances of ECFieldElement.F2m"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 665
    .restart local v0    # "aF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    .restart local v1    # "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_1
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@28
    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2a
    if-ne v2, v3, :cond_2

    #@2c
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2e
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@30
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 648
    return-void

    #@37
    .line 667
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v3, "Field elements are not elements of the same field F2m"

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 676
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@8
    .local v1, "iarrClone":Lcom/android/org/bouncycastle/math/ec/LongArray;
    move-object v0, p1

    #@9
    .line 677
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@b
    .line 678
    .local v0, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    #@11
    .line 679
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@13
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@15
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@17
    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@1a
    return-object v2
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    #@0
    .prologue
    .line 684
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@8
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@f
    return-object v0
.end method

.method public bitLength()I
    .locals 1

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->degree()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 731
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    .line 732
    .local v0, "bInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "anObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 845
    if-ne p1, p0, :cond_0

    #@3
    .line 847
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 850
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 852
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 855
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@d
    .line 857
    .local v0, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@f
    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 858
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@15
    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 859
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@1b
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@1d
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    #@20
    move-result v2

    #@21
    .line 857
    if-eqz v2, :cond_2

    #@23
    .line 860
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@25
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@27
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 857
    :cond_2
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 627
    const-string/jumbo v0, "F2m"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 632
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2
    return v0
.end method

.method public getK1()I
    .locals 2

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method public getK2()I
    .locals 2

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2
    array-length v0, v0

    #@3
    const/4 v1, 0x2

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@8
    const/4 v1, 0x1

    #@9
    aget v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getK3()I
    .locals 2

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2
    array-length v0, v0

    #@3
    const/4 v1, 0x3

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@8
    const/4 v1, 0x2

    #@9
    aget v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getM()I
    .locals 1

    #@0
    .prologue
    .line 805
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2
    return v0
.end method

.method public getRepresentation()I
    .locals 1

    #@0
    .prologue
    .line 796
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@8
    xor-int/2addr v0, v1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@b
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    #@e
    move-result v1

    #@f
    xor-int/2addr v0, v1

    #@10
    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    #@0
    .prologue
    .line 771
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@8
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@a
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@c
    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@13
    return-object v0
.end method

.method public isOne()Z
    .locals 1

    #@0
    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isZero()Z
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 702
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@a
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@c
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@e
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@10
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@17
    return-object v0
.end method

.method public multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 707
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 712
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    .local v1, "ax":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@4
    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@6
    .local v2, "bx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@8
    .end local p2    # "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@a
    .local v3, "xx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@c
    .end local p3    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@e
    .line 714
    .local v5, "yx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@10
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@12
    invoke-virtual {v1, v2, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@15
    move-result-object v0

    #@16
    .line 715
    .local v0, "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@18
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@1a
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@1d
    move-result-object v4

    #@1e
    .line 717
    .local v4, "xy":Lcom/android/org/bouncycastle/math/ec/LongArray;
    if-eq v0, v1, :cond_0

    #@20
    if-ne v0, v2, :cond_1

    #@22
    .line 719
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    .end local v0    # "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@28
    .line 722
    .restart local v0    # "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    :cond_1
    const/4 v6, 0x0

    #@29
    invoke-virtual {v0, v4, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    #@2c
    .line 723
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2e
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@30
    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    #@33
    .line 725
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@35
    iget v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@37
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@39
    invoke-direct {v6, v7, v8, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@3c
    return-object v6
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    #@0
    .prologue
    .line 738
    return-object p0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    .line 777
    .local v0, "x1":Lcom/android/org/bouncycastle/math/ec/LongArray;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 779
    :cond_0
    return-object p0

    #@f
    .line 782
    :cond_1
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@15
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@17
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@1a
    move-result-object v1

    #@1b
    .line 783
    .local v1, "x2":Lcom/android/org/bouncycastle/math/ec/LongArray;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@1d
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@1f
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@21
    invoke-direct {v2, v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@24
    return-object v2
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    #@0
    .prologue
    .line 743
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@8
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@a
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@c
    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@13
    return-object v0
.end method

.method public squareMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 8
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    .local v1, "ax":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@4
    .end local p1    # "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@6
    .local v2, "xx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@8
    .end local p2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@a
    .line 755
    .local v4, "yx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@c
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@e
    invoke-virtual {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@11
    move-result-object v0

    #@12
    .line 756
    .local v0, "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@14
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@16
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@19
    move-result-object v3

    #@1a
    .line 758
    .local v3, "xy":Lcom/android/org/bouncycastle/math/ec/LongArray;
    if-ne v0, v1, :cond_0

    #@1c
    .line 760
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .end local v0    # "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@22
    .line 763
    .restart local v0    # "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    :cond_0
    const/4 v5, 0x0

    #@23
    invoke-virtual {v0, v3, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    #@26
    .line 764
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@28
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2a
    invoke-virtual {v0, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    #@2d
    .line 766
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2f
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@31
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@33
    invoke-direct {v5, v6, v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@36
    return-object v5
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public testBitZero()Z
    .locals 1

    #@0
    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
