.class public interface abstract Ljava/security/interfaces/RSAKey;
.super Ljava/lang/Object;
.source "RSAKey.java"


# virtual methods
.method public abstract whitelist test-api getModulus()Ljava/math/BigInteger;
.end method

.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
