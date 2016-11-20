.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final curve:Ljava/security/spec/EllipticCurve;

.field private curveName:Ljava/lang/String;

.field private final g:Ljava/security/spec/ECPoint;

.field private final h:I

.field private final n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "g"    # Ljava/security/spec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    if-nez p1, :cond_0

    #@5
    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "curve is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 65
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "g is null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 68
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "n is null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 71
    :cond_2
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    #@27
    move-result v0

    #@28
    const/4 v1, 0x1

    #@29
    if-eq v0, v1, :cond_3

    #@2b
    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "n is not positive"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 74
    :cond_3
    if-gtz p4, :cond_4

    #@36
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v1, "h is not positive"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 77
    :cond_4
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    #@41
    .line 78
    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->g:Ljava/security/spec/ECPoint;

    #@43
    .line 79
    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    #@45
    .line 80
    iput p4, p0, Ljava/security/spec/ECParameterSpec;->h:I

    #@47
    .line 61
    return-void
.end method


# virtual methods
.method public getCofactor()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->h:I

    #@2
    return v0
.end method

.method public getCurve()Ljava/security/spec/EllipticCurve;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    #@2
    return-object v0
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGenerator()Ljava/security/spec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->g:Ljava/security/spec/ECPoint;

    #@2
    return-object v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public setCurveName(Ljava/lang/String;)V
    .locals 0
    .param p1, "curveName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    #@2
    .line 122
    return-void
.end method
