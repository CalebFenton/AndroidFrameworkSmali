.class public Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
.super Ljava/lang/Object;
.source "DHParametersGenerator.java"


# static fields
.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 14
    const-wide/16 v0, 0x2

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@8
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .locals 7

    #@0
    .prologue
    .line 44
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    #@2
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    #@4
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    #@6
    invoke-static {v0, v4, v5}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    #@9
    move-result-object v6

    #@a
    .line 46
    .local v6, "safePrimes":[Ljava/math/BigInteger;
    const/4 v0, 0x0

    #@b
    aget-object v1, v6, v0

    #@d
    .line 47
    .local v1, "p":Ljava/math/BigInteger;
    const/4 v0, 0x1

    #@e
    aget-object v3, v6, v0

    #@10
    .line 48
    .local v3, "q":Ljava/math/BigInteger;
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    #@12
    invoke-static {v1, v3, v0}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    .line 50
    .local v2, "g":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@18
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    #@1e
    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 28
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    #@2
    .line 29
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    #@4
    .line 30
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    #@6
    .line 26
    return-void
.end method
