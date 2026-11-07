.class public Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STOutput"
.end annotation


# instance fields
.field private blacklist prime:Ljava/math/BigInteger;

.field private blacklist primeGenCounter:I

.field private blacklist primeSeed:[B


# direct methods
.method private constructor blacklist <init>(Ljava/math/BigInteger;[BI)V
    .registers 4
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeSeed"    # [B
    .param p3, "primeGenCounter"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    .line 86
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    .line 87
    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public blacklist getPrime()Ljava/math/BigInteger;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrimeGenCounter()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    return v0
.end method

.method public blacklist getPrimeSeed()[B
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    return-object v0
.end method
