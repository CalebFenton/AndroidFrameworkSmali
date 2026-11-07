.class public Lcom/android/org/bouncycastle/math/Primes$STOutput;
.super Ljava/lang/Object;
.source "Primes.java"


# instance fields
.field private blacklist prime:Ljava/math/BigInteger;

.field private blacklist primeGenCounter:I

.field private blacklist primeSeed:[B


# direct methods
.method private constructor blacklist <init>(Ljava/math/BigInteger;[BI)V
    .registers 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    .line 86
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    .line 87
    iput p3, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public blacklist getPrime()Ljava/math/BigInteger;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getPrimeGenCounter()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    return p0
.end method

.method public blacklist getPrimeSeed()[B
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    return-object p0
.end method
