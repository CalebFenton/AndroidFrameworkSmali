.class public Lcom/android/org/bouncycastle/math/Primes$STOutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STOutput"
.end annotation


# instance fields
.field private prime:Ljava/math/BigInteger;

.field private primeGenCounter:I

.field private primeSeed:[B


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BI)V
    .locals 0
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeSeed"    # [B
    .param p3, "primeGenCounter"    # I

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    #@5
    .line 82
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    #@7
    .line 83
    iput p3, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    #@9
    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes$STOutput;)V
    .locals 0
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeSeed"    # [B
    .param p3, "primeGenCounter"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BI)V

    #@3
    return-void
.end method


# virtual methods
.method public getPrime()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getPrimeGenCounter()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    #@2
    return v0
.end method

.method public getPrimeSeed()[B
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    #@2
    return-object v0
.end method
