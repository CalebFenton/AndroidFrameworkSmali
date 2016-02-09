.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p6, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 873
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    #@4
    .line 732
    const/4 v0, 0x0

    #@5
    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    #@7
    .line 739
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    #@9
    .line 875
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@b
    .line 876
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    #@d
    .line 877
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    #@f
    .line 878
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    #@11
    .line 879
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    #@13
    .line 880
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    #@15
    .line 882
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@17
    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@1c
    .line 883
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    .line 884
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    .line 885
    const/4 v0, 0x6

    #@21
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    #@23
    .line 871
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    move-object v8, v7

    #@9
    .line 820
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@c
    .line 818
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 856
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    #@4
    .line 732
    const/4 v0, 0x0

    #@5
    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    #@7
    .line 739
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    #@9
    .line 858
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@b
    .line 859
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    #@d
    .line 860
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    #@f
    .line 861
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    #@11
    .line 862
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    #@13
    .line 863
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    #@15
    .line 865
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@17
    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@1c
    .line 866
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    .line 867
    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@28
    .line 868
    const/4 v0, 0x6

    #@29
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    #@2b
    .line 854
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v4, v3

    #@6
    move-object v5, p3

    #@7
    move-object v6, p4

    #@8
    move-object v8, v7

    #@9
    .line 761
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@c
    .line 759
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

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
    move-object v6, p4

    #@7
    move-object v7, p5

    #@8
    move-object v8, p6

    #@9
    .line 789
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@c
    .line 787
    return-void
.end method

.method private solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "beta"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 1074
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 1076
    return-object p1

    #@7
    .line 1079
    :cond_0
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@9
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    move-result-object v7

    #@d
    .line 1081
    .local v7, "zeroElement":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v6, 0x0

    #@e
    .line 1082
    .local v6, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v0, 0x0

    #@f
    .line 1084
    .local v0, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Ljava/util/Random;

    #@11
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    #@14
    .line 1087
    .end local v0    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "rand":Ljava/util/Random;
    :cond_1
    new-instance v8, Ljava/math/BigInteger;

    #@16
    iget v9, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@18
    invoke-direct {v8, v9, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@1b
    invoke-virtual {p0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v3

    #@1f
    .line 1088
    .local v3, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v7

    #@20
    .line 1089
    .local v6, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, p1

    #@21
    .line 1090
    .local v4, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    #@22
    .local v1, "i":I
    :goto_0
    iget v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@24
    add-int/lit8 v8, v8, -0x1

    #@26
    if-gt v1, v8, :cond_2

    #@28
    .line 1092
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v5

    #@2c
    .line 1093
    .local v5, "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2f
    move-result-object v8

    #@30
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@37
    move-result-object v6

    #@38
    .line 1094
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3b
    move-result-object v4

    #@3c
    .line 1090
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1096
    .end local v5    # "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@42
    move-result v8

    #@43
    if-nez v8, :cond_3

    #@45
    .line 1098
    const/4 v8, 0x0

    #@46
    return-object v8

    #@47
    .line 1100
    :cond_3
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4e
    move-result-object v0

    #@4f
    .line 1102
    .local v0, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@52
    move-result v8

    #@53
    if-nez v8, :cond_1

    #@55
    .line 1104
    return-object v6
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 9

    #@0
    .prologue
    .line 890
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    #@6
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    #@8
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    #@a
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    #@10
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    #@12
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@15
    return-object v0
.end method

.method protected createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    #@0
    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 910
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    #@b
    return-object v0

    #@c
    .line 913
    :cond_0
    invoke-super {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    .line 930
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getCoordinateSystem()I

    #@b
    move-result v2

    #@c
    packed-switch v2, :pswitch_data_0

    #@f
    .line 955
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 935
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 937
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_0

    #@28
    .line 939
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2d
    throw v2

    #@2e
    .line 945
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    move-result-object v1

    #@36
    goto :goto_0

    #@37
    .line 930
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 960
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@5
    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    #@0
    .prologue
    .line 965
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@a
    return-object v0
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1022
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    move-result-object v1

    #@5
    .local v1, "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    #@6
    .line 1023
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 1025
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11
    move-result-object v2

    #@12
    .line 1055
    .end local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    #@14
    .line 1057
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v5, "Invalid point compression"

    #@19
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v4

    #@1d
    .line 1029
    .restart local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24
    move-result-object v4

    #@25
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a
    move-result-object v4

    #@2b
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2d
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@34
    move-result-object v0

    #@35
    .line 1030
    .local v0, "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@38
    move-result-object v3

    #@39
    .line 1031
    .local v3, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v3, :cond_0

    #@3b
    .line 1033
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@3e
    move-result v6

    #@3f
    if-ne p1, v5, :cond_3

    #@41
    move v4, v5

    #@42
    :goto_1
    if-eq v6, v4, :cond_2

    #@44
    .line 1035
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@47
    move-result-object v3

    #@48
    .line 1038
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getCoordinateSystem()I

    #@4b
    move-result v4

    #@4c
    packed-switch v4, :pswitch_data_0

    #@4f
    .line 1048
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@52
    move-result-object v2

    #@53
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@54
    .line 1033
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    const/4 v4, 0x0

    #@55
    goto :goto_1

    #@56
    .line 1043
    :pswitch_0
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@59
    move-result-object v2

    #@5a
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@5b
    .line 1060
    .end local v0    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5e
    move-result-object v4

    #@5f
    return-object v4

    #@60
    .line 1038
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 923
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    #@6
    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    #@8
    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    #@a
    move-object v5, p1

    #@b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    #@e
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 918
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@2
    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    return-object v0
.end method

.method public getK1()I
    .locals 1

    #@0
    .prologue
    .line 1124
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    #@2
    return v0
.end method

.method public getK2()I
    .locals 1

    #@0
    .prologue
    .line 1129
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    #@2
    return v0
.end method

.method public getK3()I
    .locals 1

    #@0
    .prologue
    .line 1134
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    #@2
    return v0
.end method

.method public getM()I
    .locals 1

    #@0
    .prologue
    .line 1109
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    #@2
    return v0
.end method

.method declared-synchronized getMu()B
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 990
    :try_start_0
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 992
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B

    #@8
    move-result v0

    #@9
    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    #@b
    .line 994
    :cond_0
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1006
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    #@b
    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public isKoblitz()Z
    .locals 1

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1d
    move-result v0

    #@1e
    :goto_0
    return v0

    #@1f
    :cond_0
    const/4 v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_1
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method

.method public isTrinomial()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1119
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    #@3
    if-nez v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    #@0
    .prologue
    .line 895
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 902
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 900
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 895
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
