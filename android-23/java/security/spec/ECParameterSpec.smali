.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final cofactor:I

.field private final curve:Ljava/security/spec/EllipticCurve;

.field private curveName:Ljava/lang/String;

.field private final generator:Ljava/security/spec/ECPoint;

.field private final order:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "generator"    # Ljava/security/spec/ECPoint;
    .param p3, "order"    # Ljava/math/BigInteger;
    .param p4, "cofactor"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    #@5
    .line 56
    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    #@7
    .line 57
    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    #@9
    .line 58
    iput p4, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    #@b
    .line 60
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "curve == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 63
    :cond_0
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "generator == null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 66
    :cond_1
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    #@27
    if-nez v0, :cond_2

    #@29
    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    #@2b
    const-string/jumbo v1, "order == null"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 70
    :cond_2
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    #@34
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@36
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@39
    move-result v0

    #@3a
    if-gtz v0, :cond_3

    #@3c
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v1, "order <= 0"

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 73
    :cond_3
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    #@47
    if-gtz v0, :cond_4

    #@49
    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4b
    const-string/jumbo v1, "cofactor <= 0"

    #@4e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 54
    :cond_4
    return-void
.end method


# virtual methods
.method public getCofactor()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->cofactor:I

    #@2
    return v0
.end method

.method public getCurve()Ljava/security/spec/EllipticCurve;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    #@2
    return-object v0
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGenerator()Ljava/security/spec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->generator:Ljava/security/spec/ECPoint;

    #@2
    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->order:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public setCurveName(Ljava/lang/String;)V
    .locals 0
    .param p1, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    #@2
    .line 119
    return-void
.end method
