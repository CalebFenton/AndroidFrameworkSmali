.class public Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
.super Ljava/lang/Object;
.source "ScalarSplitParameters.java"


# instance fields
.field protected final blacklist bits:I

.field protected final blacklist g1:Ljava/math/BigInteger;

.field protected final blacklist g2:Ljava/math/BigInteger;

.field protected final blacklist v1A:Ljava/math/BigInteger;

.field protected final blacklist v1B:Ljava/math/BigInteger;

.field protected final blacklist v2A:Ljava/math/BigInteger;

.field protected final blacklist v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "v1"

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 27
    const-string v0, "v2"

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1A:Ljava/math/BigInteger;

    const/4 v1, 0x1

    .line 30
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1B:Ljava/math/BigInteger;

    .line 31
    aget-object p1, p2, v0

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2A:Ljava/math/BigInteger;

    .line 32
    aget-object p1, p2, v1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2B:Ljava/math/BigInteger;

    .line 33
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g1:Ljava/math/BigInteger;

    .line 34
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g2:Ljava/math/BigInteger;

    .line 35
    iput p5, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->bits:I

    return-void
.end method

.method private static blacklist checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_11

    .line 13
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-eqz p0, :cond_11

    return-void

    .line 15
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getBits()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->bits:I

    return p0
.end method

.method public blacklist getG1()Ljava/math/BigInteger;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g1:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getG2()Ljava/math/BigInteger;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->g2:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getV1A()Ljava/math/BigInteger;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1A:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getV1B()Ljava/math/BigInteger;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1B:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getV2A()Ljava/math/BigInteger;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2A:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getV2B()Ljava/math/BigInteger;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2B:Ljava/math/BigInteger;

    return-object p0
.end method
