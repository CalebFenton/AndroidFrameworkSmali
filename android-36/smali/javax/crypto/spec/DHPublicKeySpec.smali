.class public Ljavax/crypto/spec/DHPublicKeySpec;
.super Ljava/lang/Object;
.source "DHPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private greylist-max-o g:Ljava/math/BigInteger;

.field private greylist-max-o p:Ljava/math/BigInteger;

.field private greylist-max-o y:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljavax/crypto/spec/DHPublicKeySpec;->y:Ljava/math/BigInteger;

    .line 63
    iput-object p2, p0, Ljavax/crypto/spec/DHPublicKeySpec;->p:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Ljavax/crypto/spec/DHPublicKeySpec;->g:Ljava/math/BigInteger;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api getG()Ljava/math/BigInteger;
    .registers 2

    .line 91
    iget-object v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getP()Ljava/math/BigInteger;
    .registers 2

    .line 82
    iget-object v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getY()Ljava/math/BigInteger;
    .registers 2

    .line 73
    iget-object v0, p0, Ljavax/crypto/spec/DHPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
