.class public Lcom/android/org/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final DEFAULT_MINIMUM_LENGTH:I = 0xa0


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:Ljava/math/BigInteger;

.field private l:I

.field private m:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 36
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@5
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@4
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "l"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 53
    invoke-static {p4}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    #@4
    move-result v4

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move v5, p4

    #@a
    move-object v7, v6

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    #@e
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v7, v6

    #@8
    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    #@b
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I
    .param p6, "j"    # Ljava/math/BigInteger;
    .param p7, "validation"    # Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    if-eqz p5, :cond_1

    #@5
    .line 87
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@8
    move-result v0

    #@9
    if-le p5, v0, :cond_0

    #@b
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "when l value specified, it must satisfy 2^(l-1) <= p"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 91
    :cond_0
    if-ge p5, p4, :cond_1

    #@16
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "when l value specified, it may not be less than m value"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 97
    :cond_1
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    #@21
    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    #@23
    .line 99
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    #@25
    .line 100
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    #@27
    .line 101
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    #@29
    .line 102
    iput-object p6, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    #@2b
    .line 103
    iput-object p7, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@2d
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .locals 8
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validation"    # Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@0
    .prologue
    .line 73
    const/16 v4, 0xa0

    #@2
    const/4 v5, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v6, p4

    #@8
    move-object v7, p5

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    #@c
    .line 71
    return-void
.end method

.method private static getDefaultMParam(I)I
    .locals 1
    .param p0, "lParam"    # I

    #@0
    .prologue
    const/16 v0, 0xa0

    #@2
    .line 24
    if-nez p0, :cond_0

    #@4
    .line 26
    return v0

    #@5
    .line 29
    :cond_0
    if-ge p0, v0, :cond_1

    #@7
    .end local p0    # "lParam":I
    :goto_0
    return p0

    #@8
    .restart local p0    # "lParam":I
    :cond_1
    move p0, v0

    #@9
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 161
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 164
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@9
    .line 166
    .local v0, "pm":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 170
    return v1

    #@1e
    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@21
    move-result-object v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 177
    return v1

    #@25
    .line 181
    :cond_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@28
    move-result-object v2

    #@29
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    #@2b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    #@37
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    :cond_3
    return v1
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getJ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getL()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    #@2
    return v0
.end method

.method public getM()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    #@2
    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v1, v0

    #@11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@1e
    move-result v0

    #@1f
    :goto_0
    xor-int/2addr v0, v1

    #@20
    return v0

    #@21
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method
