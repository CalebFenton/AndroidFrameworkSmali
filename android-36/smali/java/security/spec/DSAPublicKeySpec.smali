.class public Ljava/security/spec/DSAPublicKeySpec;
.super Ljava/lang/Object;
.source "DSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private greylist-max-o g:Ljava/math/BigInteger;

.field private greylist-max-o p:Ljava/math/BigInteger;

.field private greylist-max-o q:Ljava/math/BigInteger;

.field private greylist-max-o y:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "g"    # Ljava/math/BigInteger;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/security/spec/DSAPublicKeySpec;->y:Ljava/math/BigInteger;

    .line 66
    iput-object p2, p0, Ljava/security/spec/DSAPublicKeySpec;->p:Ljava/math/BigInteger;

    .line 67
    iput-object p3, p0, Ljava/security/spec/DSAPublicKeySpec;->q:Ljava/math/BigInteger;

    .line 68
    iput-object p4, p0, Ljava/security/spec/DSAPublicKeySpec;->g:Ljava/math/BigInteger;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist test-api getG()Ljava/math/BigInteger;
    .registers 2

    .line 104
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getP()Ljava/math/BigInteger;
    .registers 2

    .line 86
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getQ()Ljava/math/BigInteger;
    .registers 2

    .line 95
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getY()Ljava/math/BigInteger;
    .registers 2

    .line 77
    iget-object v0, p0, Ljava/security/spec/DSAPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
