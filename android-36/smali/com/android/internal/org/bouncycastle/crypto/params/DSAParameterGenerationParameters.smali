.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
.super Ljava/lang/Object;
.source "DSAParameterGenerationParameters.java"


# static fields
.field public static final blacklist DIGITAL_SIGNATURE_USAGE:I = 0x1

.field public static final blacklist KEY_ESTABLISHMENT_USAGE:I = 0x2


# instance fields
.field private final blacklist certainty:I

.field private final blacklist l:I

.field private final blacklist n:I

.field private final blacklist random:Ljava/security/SecureRandom;

.field private final blacklist usageIndex:I


# direct methods
.method public constructor blacklist <init>(IIILjava/security/SecureRandom;)V
    .registers 11
    .param p1, "L"    # I
    .param p2, "N"    # I
    .param p3, "certainty"    # I
    .param p4, "random"    # Ljava/security/SecureRandom;

    .line 34
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "L":I
    .end local p2    # "N":I
    .end local p3    # "certainty":I
    .end local p4    # "random":Ljava/security/SecureRandom;
    .local v1, "L":I
    .local v2, "N":I
    .local v3, "certainty":I
    .local v4, "random":Ljava/security/SecureRandom;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;I)V

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/security/SecureRandom;I)V
    .registers 6
    .param p1, "L"    # I
    .param p2, "N"    # I
    .param p3, "certainty"    # I
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "usageIndex"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    .line 54
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    .line 55
    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    .line 56
    iput p5, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    .line 57
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist getCertainty()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    return v0
.end method

.method public blacklist getL()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    return v0
.end method

.method public blacklist getN()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    return v0
.end method

.method public blacklist getRandom()Ljava/security/SecureRandom;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public blacklist getUsageIndex()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    return v0
.end method
