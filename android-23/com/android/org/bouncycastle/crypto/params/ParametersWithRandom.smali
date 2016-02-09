.class public Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    #@2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@8
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "parameters"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    #@5
    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@7
    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@2
    return-object v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method
