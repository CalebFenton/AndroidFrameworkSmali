.class public abstract Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;
.source "X9ECParametersHolder.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    #@0
    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@a
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    #@c
    return-object v0
.end method
