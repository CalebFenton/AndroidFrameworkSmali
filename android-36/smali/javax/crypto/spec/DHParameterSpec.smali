.class public Ljavax/crypto/spec/DHParameterSpec;
.super Ljava/lang/Object;
.source "DHParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private greylist-max-o g:Ljava/math/BigInteger;

.field private greylist-max-o l:I

.field private greylist-max-o p:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 75
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 77
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "l"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    .line 91
    iput-object p2, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    .line 92
    iput p3, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist test-api getG()Ljava/math/BigInteger;
    .registers 2

    .line 110
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getL()I
    .registers 2

    .line 121
    iget v0, p0, Ljavax/crypto/spec/DHParameterSpec;->l:I

    return v0
.end method

.method public whitelist test-api getP()Ljava/math/BigInteger;
    .registers 2

    .line 101
    iget-object v0, p0, Ljavax/crypto/spec/DHParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method
