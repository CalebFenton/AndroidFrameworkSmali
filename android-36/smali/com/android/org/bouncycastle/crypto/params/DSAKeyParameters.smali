.class public abstract Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private blacklist params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor blacklist <init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    return-object p0
.end method
