.class public Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private blacklist privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private blacklist publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method


# virtual methods
.method public blacklist getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object p0
.end method

.method public blacklist getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-object p0
.end method
