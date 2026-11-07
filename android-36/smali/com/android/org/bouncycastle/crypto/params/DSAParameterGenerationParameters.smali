.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
.super Ljava/lang/Object;
.source "DSAParameterGenerationParameters.java"


# instance fields
.field private final blacklist certainty:I

.field private final blacklist l:I

.field private final blacklist n:I

.field private final blacklist random:Ljava/security/SecureRandom;

.field private final blacklist usageIndex:I


# direct methods
.method public constructor blacklist <init>(IIILjava/security/SecureRandom;)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;I)V

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/security/SecureRandom;I)V
    .registers 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    .line 55
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    .line 56
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    .line 57
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public blacklist getCertainty()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    return p0
.end method

.method public blacklist getL()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    return p0
.end method

.method public blacklist getN()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    return p0
.end method

.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public blacklist getUsageIndex()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    return p0
.end method
