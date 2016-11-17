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
    .locals 5
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 554
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@7
    .line 561
    if-eqz p5, :cond_0

    #@9
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    #@c
    move-result v0

    #@d
    if-gez v0, :cond_1

    #@f
    .line 563
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "x value invalid in F2m field element"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 561
    :cond_1
    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    #@1b
    move-result v0

    #@1c
    if-gt v0, p1, :cond_0

    #@1e
    .line 566
    if-nez p3, :cond_2

    #@20
    if-nez p4, :cond_2

    #@22
    .line 568
    iput v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@24
    .line 569
    new-array v0, v2, [I

    #@26
    aput p2, v0, v1

    #@28
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2a
    .line 587
    :goto_0
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2c
    .line 588
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2e
    invoke-direct {v0, p5}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    #@31
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@33
    .line 559
    return-void

    #@34
    .line 573
    :cond_2
    if-lt p3, p4, :cond_3

    #@36
    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@38
    .line 576
    const-string/jumbo v1, "k2 must be smaller than k3"

    #@3b
    .line 575
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 578
    :cond_3
    if-gtz p3, :cond_4

    #@41
    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    .line 581
    const-string/jumbo v1, "k2 must be larger than 0"

    #@46
    .line 580
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 583
    :cond_4
    iput v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@4c
    .line 584
    new-array v0, v4, [I

    #@4e
    aput p2, v0, v1

    #@50
    aput p3, v0, v2

    #@52
    aput p4, v0, v3

    #@54
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@56
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
    .line 604
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    #@9
    .line 601
    return-void
.end method

.method private constructor <init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@0
    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    #@3
    .line 609
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@5
    .line 610
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
    .line 611
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@e
    .line 612
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@10
    .line 607
    return-void

    #@11
    .line 610
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
    .line 665
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
    .line 671
    nop

    #@a
    nop

    #@b
    .local v0, "aF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    #@c
    .line 672
    nop

    #@d
    nop

    #@e
    .line 674
    .local v1, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@10
    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@12
    if-eq v2, v3, :cond_1

    #@14
    .line 677
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "One of the F2m field elements has incorrect representation"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 667
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
    .line 680
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
    .line 663
    return-void

    #@37
    .line 682
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
    .line 691
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
    .line 692
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@b
    .line 693
    .local v0, "bF2m":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    #@11
    .line 694
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
    .line 699
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
    .line 617
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
    .line 746
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    .line 747
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
    .line 858
    if-ne p1, p0, :cond_0

    #@3
    .line 860
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 863
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 865
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 868
    nop

    #@c
    nop

    #@d
    .line 870
    .local v0, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@f
    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 871
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@15
    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 872
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@1b
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@1d
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    #@20
    move-result v2

    #@21
    .line 870
    if-eqz v2, :cond_2

    #@23
    .line 873
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@25
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@27
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 870
    :cond_2
    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 642
    const-string/jumbo v0, "F2m"

    #@3
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 647
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2
    return v0
.end method

.method public getK1()I
    .locals 2

    #@0
    .prologue
    .line 831
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
    .line 842
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
    .line 853
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
    .line 818
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2
    return v0
.end method

.method public getRepresentation()I
    .locals 1

    #@0
    .prologue
    .line 809
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 878
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
    .line 791
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
    .line 622
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
    .line 627
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
    .line 717
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
    .line 722
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
    .line 727
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
    .line 729
    .local v5, "yx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@10
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@12
    invoke-virtual {v1, v2, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@15
    move-result-object v0

    #@16
    .line 730
    .local v0, "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@18
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@1a
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@1d
    move-result-object v4

    #@1e
    .line 732
    .local v4, "xy":Lcom/android/org/bouncycastle/math/ec/LongArray;
    if-eq v0, v1, :cond_0

    #@20
    if-ne v0, v2, :cond_1

    #@22
    .line 734
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    .end local v0    # "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@28
    .line 737
    .restart local v0    # "ab":Lcom/android/org/bouncycastle/math/ec/LongArray;
    :cond_1
    const/4 v6, 0x0

    #@29
    invoke-virtual {v0, v4, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    #@2c
    .line 738
    iget v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@2e
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@30
    invoke-virtual {v0, v6, v7}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    #@33
    .line 740
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
    .line 753
    return-object p0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    #@0
    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isZero()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->isOne()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_0
    :goto_0
    return-object p0

    #@11
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@18
    move-result-object p0

    #@19
    goto :goto_0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    #@0
    .prologue
    .line 758
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
    .line 763
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
    .line 768
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
    .line 770
    .local v4, "yx":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@c
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@e
    invoke-virtual {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@11
    move-result-object v0

    #@12
    .line 771
    .local v0, "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@14
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@16
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@19
    move-result-object v3

    #@1a
    .line 773
    .local v3, "xy":Lcom/android/org/bouncycastle/math/ec/LongArray;
    if-ne v0, v1, :cond_0

    #@1c
    .line 775
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .end local v0    # "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@22
    .line 778
    .restart local v0    # "aa":Lcom/android/org/bouncycastle/math/ec/LongArray;
    :cond_0
    const/4 v5, 0x0

    #@23
    invoke-virtual {v0, v3, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/org/bouncycastle/math/ec/LongArray;I)V

    #@26
    .line 779
    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@28
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@2a
    invoke-virtual {v0, v5, v6}, Lcom/android/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    #@2d
    .line 781
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

.method public squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "pow"    # I

    #@0
    .prologue
    .line 786
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :goto_0
    return-object p0

    #@4
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@6
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@8
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@a
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@c
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    #@e
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    #@10
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    #@17
    move-object p0, v0

    #@18
    goto :goto_0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 705
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
    .line 632
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
    .line 637
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
