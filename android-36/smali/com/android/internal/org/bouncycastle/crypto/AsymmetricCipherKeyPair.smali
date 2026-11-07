.class public Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private blacklist privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private blacklist publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .param p1, "publicParam"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .param p2, "privateParam"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 41
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .registers 3
    .param p1, "publicParam"    # Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "privateParam"    # Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 26
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getPrivate()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public blacklist getPublic()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method
