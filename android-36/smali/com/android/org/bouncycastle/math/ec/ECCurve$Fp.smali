.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "ECCurve.java"


# static fields
.field private static final blacklist knownQs:Ljava/util/Set;

.field private static final blacklist validatedQs:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;


# instance fields
.field blacklist infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

.field blacklist q:Ljava/math/BigInteger;

.field blacklist r:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 686
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    .line 687
    new-instance v0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 7

    .line 752
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 754
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 755
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 756
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 758
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 759
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 760
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    .line 761
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 p1, 0x4

    .line 762
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 697
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 702
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 10

    .line 707
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    if-eqz p6, :cond_d

    .line 711
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 712
    sget-object p6, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 714
    :cond_d
    sget-object p6, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_5e

    sget-object p6, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p6, p1}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_5e

    .line 720
    :cond_1e
    const-string v0, "com.android.org.bouncycastle.ec.fp_max_size"

    const/16 v1, 0x412

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v0

    .line 721
    const-string v1, "com.android.org.bouncycastle.ec.fp_certainty"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v1

    .line 723
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v0, v2, :cond_56

    .line 729
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 730
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->-$$Nest$smgetNumberOfIterations(II)I

    move-result v1

    .line 729
    invoke-static {p1, v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 735
    invoke-virtual {p6, p1}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    .line 737
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    goto :goto_60

    .line 732
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fp q value not prime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fp q value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 716
    :cond_5e
    :goto_5e
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 740
    :goto_60
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 741
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 p6, 0x0

    invoke-direct {p1, p0, p6, p6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 743
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 744
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 745
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    .line 746
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 p1, 0x4

    .line 747
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 8

    .line 767
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 806
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 811
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    if-eqz p1, :cond_1a

    .line 796
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 801
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 798
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for Fp field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 791
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public blacklist getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 837
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    return-object p0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 1

    .line 786
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 816
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 818
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    goto :goto_4f

    .line 823
    :cond_24
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 824
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 825
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    .line 826
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    filled-new-array {p1}, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0

    .line 832
    :cond_4f
    :goto_4f
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_c

    if-eq p1, p0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 p0, 0x0

    :cond_c
    return p0
.end method
