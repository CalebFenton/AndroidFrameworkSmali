.class public Lcom/android/org/bouncycastle/math/Primes$MROutput;
.super Ljava/lang/Object;
.source "Primes.java"


# instance fields
.field private blacklist factor:Ljava/math/BigInteger;

.field private blacklist provablyComposite:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smprobablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->probablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(ZLjava/math/BigInteger;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    .line 52
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    return-void
.end method

.method private static blacklist probablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static blacklist provablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method

.method private static blacklist provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 3

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getFactor()Ljava/math/BigInteger;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist isNotPrimePower()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isProvablyComposite()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    return p0
.end method
