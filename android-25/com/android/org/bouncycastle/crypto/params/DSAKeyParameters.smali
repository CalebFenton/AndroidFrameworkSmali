.class public Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DSAKeyParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;


# direct methods
.method public constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    #@3
    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@5
    .line 10
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@2
    return-object v0
.end method
