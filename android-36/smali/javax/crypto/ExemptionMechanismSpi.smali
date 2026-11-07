.class public abstract Ljavax/crypto/ExemptionMechanismSpi;
.super Ljava/lang/Object;
.source "ExemptionMechanismSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api engineGenExemptionBlob([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineGenExemptionBlob()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineGetOutputSize(I)I
.end method

.method protected abstract whitelist test-api engineInit(Ljava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation
.end method
