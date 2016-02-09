.class public abstract Ljava/security/AlgorithmParameterGeneratorSpi;
.super Ljava/lang/Object;
.source "AlgorithmParameterGeneratorSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract engineGenerateParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/SecureRandom;)V
.end method

.method protected abstract engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
