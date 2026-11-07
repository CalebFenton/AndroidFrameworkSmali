.class public Ljava/security/spec/DSAParameterSpec;
.super Ljava/lang/Object;
.source "DSAParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljava/security/interfaces/DSAParams;


# instance fields
.field greylist-max-o g:Ljava/math/BigInteger;

.field greylist-max-o p:Ljava/math/BigInteger;

.field greylist-max-o q:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljava/security/spec/DSAParameterSpec;->p:Ljava/math/BigInteger;

    .line 59
    iput-object p2, p0, Ljava/security/spec/DSAParameterSpec;->q:Ljava/math/BigInteger;

    .line 60
    iput-object p3, p0, Ljava/security/spec/DSAParameterSpec;->g:Ljava/math/BigInteger;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist test-api getG()Ljava/math/BigInteger;
    .registers 2

    .line 87
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getP()Ljava/math/BigInteger;
    .registers 2

    .line 69
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getQ()Ljava/math/BigInteger;
    .registers 2

    .line 78
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method
