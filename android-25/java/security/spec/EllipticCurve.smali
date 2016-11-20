.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;

.field private final field:Ljava/security/spec/ECField;

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@4
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "seed"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 103
    if-nez p1, :cond_0

    #@6
    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "field is null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 106
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "first coefficient is null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 109
    :cond_1
    if-nez p3, :cond_2

    #@1c
    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "second coefficient is null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 112
    :cond_2
    const-string/jumbo v0, "first coefficient"

    #@28
    invoke-static {p1, p2, v0}, Ljava/security/spec/EllipticCurve;->checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V

    #@2b
    .line 113
    const-string/jumbo v0, "second coefficient"

    #@2e
    invoke-static {p1, p3, v0}, Ljava/security/spec/EllipticCurve;->checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V

    #@31
    .line 114
    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@33
    .line 115
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@35
    .line 116
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@37
    .line 117
    if-eqz p4, :cond_3

    #@39
    .line 118
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, [B

    #@3f
    iput-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@41
    .line 102
    :goto_0
    return-void

    #@42
    .line 120
    :cond_3
    iput-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@44
    goto :goto_0
.end method

.method private static checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 5
    .param p0, "field"    # Ljava/security/spec/ECField;
    .param p1, "c"    # Ljava/math/BigInteger;
    .param p2, "cName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    instance-of v2, p0, Ljava/security/spec/ECFieldFp;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 55
    check-cast p0, Ljava/security/spec/ECFieldFp;

    #@6
    .end local p0    # "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    #@9
    move-result-object v1

    #@a
    .line 56
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x1

    #@f
    if-eq v2, v3, :cond_0

    #@11
    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, " is too large"

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@2e
    move-result v2

    #@2f
    if-gez v2, :cond_2

    #@31
    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, " is negative"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 61
    .end local v1    # "p":Ljava/math/BigInteger;
    .restart local p0    # "field":Ljava/security/spec/ECField;
    :cond_1
    instance-of v2, p0, Ljava/security/spec/ECFieldF2m;

    #@4d
    if-eqz v2, :cond_2

    #@4f
    .line 62
    check-cast p0, Ljava/security/spec/ECFieldF2m;

    #@51
    .end local p0    # "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/ECFieldF2m;->getM()I

    #@54
    move-result v0

    #@55
    .line 63
    .local v0, "m":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@58
    move-result v2

    #@59
    if-le v2, v0, :cond_2

    #@5b
    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    const-string/jumbo v4, " is too large"

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v2

    #@75
    .line 52
    .end local v0    # "m":I
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 171
    if-ne p0, p1, :cond_0

    #@3
    return v3

    #@4
    .line 172
    :cond_0
    instance-of v1, p1, Ljava/security/spec/EllipticCurve;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 173
    check-cast v0, Ljava/security/spec/EllipticCurve;

    #@b
    .line 174
    .local v0, "curve":Ljava/security/spec/EllipticCurve;
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@d
    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 175
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@17
    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@19
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 174
    if-eqz v1, :cond_1

    #@1f
    .line 176
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@21
    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@23
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 174
    if-eqz v1, :cond_1

    #@29
    .line 177
    return v3

    #@2a
    .line 180
    .end local v0    # "curve":Ljava/security/spec/EllipticCurve;
    :cond_1
    const/4 v1, 0x0

    #@2b
    return v1
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getField()Ljava/security/spec/ECField;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@2
    return-object v0
.end method

.method public getSeed()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 160
    :cond_0
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [B

    #@e
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 193
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@8
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@b
    move-result v1

    #@c
    shl-int/lit8 v1, v1, 0x4

    #@e
    .line 192
    add-int/lit8 v1, v1, 0x6

    #@10
    .line 194
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@12
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    #@15
    move-result v2

    #@16
    shl-int/lit8 v2, v2, 0x2

    #@18
    .line 192
    add-int/2addr v1, v2

    #@19
    shl-int/2addr v0, v1

    #@1a
    return v0
.end method
