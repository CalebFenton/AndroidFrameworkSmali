.class public Lcom/android/org/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private blacklist j:Ljava/math/BigInteger;

.field private blacklist l:I

.field private blacklist m:I

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13

    .line 58
    invoke-static {p4}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 9

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1e

    .line 92
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt p5, v0, :cond_16

    if-lt p5, p4, :cond_e

    goto :goto_1e

    .line 98
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "when l value specified, it may not be less than m value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le p4, v0, :cond_35

    const-string v0, "com.android.org.bouncycastle.dh.allow_unsafe_p_value"

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_35

    .line 104
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsafe p value so small specific l required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_35
    :goto_35
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 108
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 109
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 110
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    .line 111
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    .line 112
    iput-object p6, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 113
    iput-object p7, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 14

    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 78
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    return-void
.end method

.method private static blacklist getDefaultMParam(I)I
    .registers 2

    .line 0
    const/16 v0, 0xa0

    if-nez p0, :cond_5

    return v0

    :cond_5
    if-ge p0, v0, :cond_8

    return p0

    :cond_8
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 169
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 174
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 176
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 178
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 185
    :cond_1d
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_24

    return v1

    .line 191
    :cond_24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    return v1
.end method

.method public blacklist getG()Ljava/math/BigInteger;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getJ()Ljava/math/BigInteger;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getL()I
    .registers 1

    .line 158
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    return p0
.end method

.method public blacklist getM()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    return p0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 196
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    xor-int/2addr p0, v0

    return p0
.end method
