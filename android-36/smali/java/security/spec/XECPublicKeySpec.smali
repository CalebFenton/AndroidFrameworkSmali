.class public Ljava/security/spec/XECPublicKeySpec;
.super Ljava/lang/Object;
.source "XECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final blacklist params:Ljava/security/spec/AlgorithmParameterSpec;

.field private final blacklist u:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/AlgorithmParameterSpec;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "u"    # Ljava/math/BigInteger;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    const-string v0, "u must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Ljava/security/spec/XECPublicKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    .line 62
    iput-object p2, p0, Ljava/security/spec/XECPublicKeySpec;->u:Ljava/math/BigInteger;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 71
    iget-object v0, p0, Ljava/security/spec/XECPublicKeySpec;->params:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist test-api getU()Ljava/math/BigInteger;
    .registers 2

    .line 81
    iget-object v0, p0, Ljava/security/spec/XECPublicKeySpec;->u:Ljava/math/BigInteger;

    return-object v0
.end method
