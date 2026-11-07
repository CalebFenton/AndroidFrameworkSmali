.class public abstract Ljava/security/KeyPairGeneratorSpi;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api generateKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract whitelist test-api initialize(ILjava/security/SecureRandom;)V
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
