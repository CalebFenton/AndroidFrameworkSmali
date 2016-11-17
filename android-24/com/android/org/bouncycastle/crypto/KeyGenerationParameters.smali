.class public Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private strength:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "strength"    # I

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    #@5
    .line 25
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    #@7
    .line 22
    return-void
.end method


# virtual methods
.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method public getStrength()I
    .locals 1

    #@0
    .prologue
    .line 46
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    #@2
    return v0
.end method
