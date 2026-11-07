.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# static fields
.field private static final blacklist FP_DEFAULT_COORDS:I = 0x4

.field private static final blacklist knownQs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist validatedQs:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;


# instance fields
.field blacklist infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

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

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    .line 687
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 9
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

    .line 752
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 754
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 755
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 756
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 758
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 759
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 760
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    .line 761
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    .line 762
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    .line 763
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    .line 697
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "q":Ljava/math/BigInteger;
    .end local p2    # "a":Ljava/math/BigInteger;
    .end local p3    # "b":Ljava/math/BigInteger;
    .local v1, "q":Ljava/math/BigInteger;
    .local v2, "a":Ljava/math/BigInteger;
    .local v3, "b":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 698
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 13
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "order"    # Ljava/math/BigInteger;
    .param p5, "cofactor"    # Ljava/math/BigInteger;

    .line 702
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "q":Ljava/math/BigInteger;
    .end local p2    # "a":Ljava/math/BigInteger;
    .end local p3    # "b":Ljava/math/BigInteger;
    .end local p4    # "order":Ljava/math/BigInteger;
    .end local p5    # "cofactor":Ljava/math/BigInteger;
    .local v1, "q":Ljava/math/BigInteger;
    .local v2, "a":Ljava/math/BigInteger;
    .local v3, "b":Ljava/math/BigInteger;
    .local v4, "order":Ljava/math/BigInteger;
    .local v5, "cofactor":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 703
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 12
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "order"    # Ljava/math/BigInteger;
    .param p5, "cofactor"    # Ljava/math/BigInteger;
    .param p6, "isInternal"    # Z

    .line 707
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 709
    if-eqz p6, :cond_d

    .line 711
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 712
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 714
    :cond_d
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->knownQs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_60

    .line 720
    :cond_1e
    const-string v0, "com.android.internal.org.bouncycastle.ec.fp_max_size"

    const/16 v1, 0x412

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v0

    .line 721
    .local v0, "maxBitLength":I
    const-string v1, "com.android.internal.org.bouncycastle.ec.fp_certainty"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v1

    .line 723
    .local v1, "certainty":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 724
    .local v2, "qBitLength":I
    if-lt v0, v2, :cond_58

    .line 729
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 730
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->-$$Nest$smgetNumberOfIterations(II)I

    move-result v4

    .line 729
    invoke-static {p1, v3, v4}, Lcom/android/internal/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 735
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->validatedQs:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    .line 737
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    goto :goto_62

    .line 732
    :cond_50
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fp q value not prime"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 726
    :cond_58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fp q value out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    .end local v0    # "maxBitLength":I
    .end local v1    # "certainty":I
    .end local v2    # "qBitLength":I
    :cond_60
    :goto_60
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 740
    :goto_62
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 741
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 743
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 744
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 745
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    .line 746
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    .line 747
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    .line 748
    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 8

    .line 767
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 806
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 811
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 796
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 801
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 798
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for Fp field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 837
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 786
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 8
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 816
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_4b

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 818
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    goto :goto_4b

    .line 823
    :pswitch_1f
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 824
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 825
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 826
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 823
    return-object v0

    .line 832
    :cond_4b
    :goto_4b
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .line 772
    packed-switch p1, :pswitch_data_8

    .line 780
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 778
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
