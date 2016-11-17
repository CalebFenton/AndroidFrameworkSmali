.class public Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@0
    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    #@3
    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@5
    .line 10
    return-void
.end method


# virtual methods
.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@2
    return-object v0
.end method
