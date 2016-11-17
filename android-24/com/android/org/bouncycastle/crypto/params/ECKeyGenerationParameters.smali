.class public Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
.super Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
.source "ECKeyGenerationParameters.java"


# instance fields
.field private domainParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "domainParams"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    #@b
    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@d
    .line 14
    return-void
.end method


# virtual methods
.method public getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->domainParams:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@2
    return-object v0
.end method
