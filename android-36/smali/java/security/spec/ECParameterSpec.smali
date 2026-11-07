.class public Ljava/security/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final greylist-max-o curve:Ljava/security/spec/EllipticCurve;

.field private greylist-max-o curveName:Ljava/lang/String;

.field private final greylist-max-o g:Ljava/security/spec/ECPoint;

.field private final greylist-max-o h:I

.field private final greylist-max-o n:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .registers 7
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p2, "g"    # Ljava/security/spec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_3b

    .line 65
    if-eqz p2, :cond_33

    .line 68
    if-eqz p3, :cond_2b

    .line 71
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 74
    if-lez p4, :cond_1b

    .line 77
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    .line 78
    iput-object p2, p0, Ljava/security/spec/ECParameterSpec;->g:Ljava/security/spec/ECPoint;

    .line 79
    iput-object p3, p0, Ljava/security/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 80
    iput p4, p0, Ljava/security/spec/ECParameterSpec;->h:I

    .line 81
    return-void

    .line 75
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "n is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "g is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCofactor()I
    .registers 2

    .line 112
    iget v0, p0, Ljava/security/spec/ECParameterSpec;->h:I

    return v0
.end method

.method public whitelist test-api getCurve()Ljava/security/spec/EllipticCurve;
    .registers 2

    .line 88
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curve:Ljava/security/spec/EllipticCurve;

    return-object v0
.end method

.method public greylist getCurveName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getGenerator()Ljava/security/spec/ECPoint;
    .registers 2

    .line 96
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->g:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public whitelist test-api getOrder()Ljava/math/BigInteger;
    .registers 2

    .line 104
    iget-object v0, p0, Ljava/security/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public greylist setCurveName(Ljava/lang/String;)V
    .registers 2
    .param p1, "curveName"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Ljava/security/spec/ECParameterSpec;->curveName:Ljava/lang/String;

    .line 126
    return-void
.end method
