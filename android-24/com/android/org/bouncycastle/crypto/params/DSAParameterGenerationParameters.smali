.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
.super Ljava/lang/Object;
.source "DSAParameterGenerationParameters.java"


# static fields
.field public static final DIGITAL_SIGNATURE_USAGE:I = 0x1

.field public static final KEY_ESTABLISHMENT_USAGE:I = 0x2


# instance fields
.field private final certainty:I

.field private final l:I

.field private final n:I

.field private final random:Ljava/security/SecureRandom;

.field private final usageIndex:I


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .locals 6
    .param p1, "L"    # I
    .param p2, "N"    # I
    .param p3, "certainty"    # I
    .param p4, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 30
    const/4 v5, -0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;I)V

    #@9
    .line 28
    return-void
.end method

.method public constructor <init>(IIILjava/security/SecureRandom;I)V
    .locals 0
    .param p1, "L"    # I
    .param p2, "N"    # I
    .param p3, "certainty"    # I
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "usageIndex"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    #@5
    .line 50
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    #@7
    .line 51
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    #@9
    .line 52
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    #@b
    .line 53
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    #@d
    .line 47
    return-void
.end method


# virtual methods
.method public getCertainty()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->certainty:I

    #@2
    return v0
.end method

.method public getL()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->l:I

    #@2
    return v0
.end method

.method public getN()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->n:I

    #@2
    return v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->random:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method public getUsageIndex()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->usageIndex:I

    #@2
    return v0
.end method
