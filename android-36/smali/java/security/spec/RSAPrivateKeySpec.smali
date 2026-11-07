.class public Ljava/security/spec/RSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "RSAPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final greylist-max-o modulus:Ljava/math/BigInteger;

.field private final blacklist params:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o privateExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "privateExponent"    # Ljava/math/BigInteger;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "privateExponent"    # Ljava/math/BigInteger;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ljava/security/spec/RSAPrivateKeySpec;->modulus:Ljava/math/BigInteger;

    .line 72
    iput-object p2, p0, Ljava/security/spec/RSAPrivateKeySpec;->privateExponent:Ljava/math/BigInteger;

    .line 73
    iput-object p3, p0, Ljava/security/spec/RSAPrivateKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 82
    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 102
    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getPrivateExponent()Ljava/math/BigInteger;
    .registers 2

    .line 91
    iget-object v0, p0, Ljava/security/spec/RSAPrivateKeySpec;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method
