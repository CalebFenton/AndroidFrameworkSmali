.class public interface abstract Ljava/security/interfaces/RSAPrivateCrtKey;
.super Ljava/lang/Object;
.source "RSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;


# static fields
.field public static final whitelist test-api serialVersionUID:J = -0x4edb47c2072e1390L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getPrimeExponentP()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getPrimeExponentQ()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getPrimeP()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getPrimeQ()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getPublicExponent()Ljava/math/BigInteger;
.end method
