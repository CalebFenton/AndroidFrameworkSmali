.class public Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "publicParam"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .param p2, "privateParam"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@5
    .end local p1    # "publicParam":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@7
    .line 39
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@9
    .end local p2    # "privateParam":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@b
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0
    .param p1, "publicParam"    # Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "privateParam"    # Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@5
    .line 24
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@7
    .line 21
    return-void
.end method


# virtual methods
.method public getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@2
    return-object v0
.end method

.method public getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@2
    return-object v0
.end method
