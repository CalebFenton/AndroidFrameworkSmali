.class public Ljava/security/spec/RSAPublicKeySpec;
.super Ljava/lang/Object;
.source "RSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final greylist-max-o modulus:Ljava/math/BigInteger;

.field private final blacklist params:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ljava/security/spec/RSAPublicKeySpec;->modulus:Ljava/math/BigInteger;

    .line 72
    iput-object p2, p0, Ljava/security/spec/RSAPublicKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 73
    iput-object p3, p0, Ljava/security/spec/RSAPublicKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist test-api getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 83
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 103
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 92
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
