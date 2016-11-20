.class public Lcom/android/org/bouncycastle/math/Primes$MROutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MROutput"
.end annotation


# instance fields
.field private factor:Ljava/math/BigInteger;

.field private provablyComposite:Z


# direct methods
.method static synthetic -wrap0()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->probablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 1
    .param p0, "factor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(ZLjava/math/BigInteger;)V
    .locals 0
    .param p1, "provablyComposite"    # Z
    .param p2, "factor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    #@5
    .line 49
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    #@7
    .line 46
    return-void
.end method

.method private static probablyPrime()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 3

    #@0
    .prologue
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    #@7
    return-object v0
.end method

.method private static provablyCompositeNotPrimePower()Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 3

    #@0
    .prologue
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    #@7
    return-object v0
.end method

.method private static provablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .locals 2
    .param p0, "factor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/math/Primes$MROutput;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;-><init>(ZLjava/math/BigInteger;)V

    #@6
    return-object v0
.end method


# virtual methods
.method public getFactor()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public isNotPrimePower()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 64
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->factor:Ljava/math/BigInteger;

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isProvablyComposite()Z
    .locals 1

    #@0
    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/Primes$MROutput;->provablyComposite:Z

    #@2
    return v0
.end method
