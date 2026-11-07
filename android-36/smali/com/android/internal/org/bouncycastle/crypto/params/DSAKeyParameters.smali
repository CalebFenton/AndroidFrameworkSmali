.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor blacklist <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .registers 3
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    return-object v0
.end method
