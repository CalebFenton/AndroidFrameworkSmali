.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final greylist-max-o a:Ljava/math/BigInteger;

.field private final greylist-max-o b:Ljava/math/BigInteger;

.field private final greylist-max-o field:Ljava/security/spec/ECField;

.field private final greylist-max-o seed:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 84
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 7
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "seed"    # [B

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_38

    .line 106
    if-eqz p2, :cond_30

    .line 109
    if-eqz p3, :cond_28

    .line 112
    const-string v0, "first coefficient"

    invoke-static {p1, p2, v0}, Ljava/security/spec/EllipticCurve;->checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 113
    const-string v0, "second coefficient"

    invoke-static {p1, p3, v0}, Ljava/security/spec/EllipticCurve;->checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    .line 115
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    .line 116
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    .line 117
    if-eqz p4, :cond_24

    .line 118
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    goto :goto_27

    .line 120
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    .line 122
    :goto_27
    return-void

    .line 110
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "second coefficient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "first coefficient is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkValidity(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 7
    .param p0, "field"    # Ljava/security/spec/ECField;
    .param p1, "c"    # Ljava/math/BigInteger;
    .param p2, "cName"    # Ljava/lang/String;

    .line 54
    instance-of v0, p0, Ljava/security/spec/ECFieldFp;

    const-string v1, " is too large"

    if-eqz v0, :cond_4b

    .line 55
    move-object v0, p0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 56
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 58
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_1b

    .end local v0    # "p":Ljava/math/BigInteger;
    goto :goto_74

    .line 59
    .restart local v0    # "p":Ljava/math/BigInteger;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is negative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v0    # "p":Ljava/math/BigInteger;
    :cond_4b
    instance-of v0, p0, Ljava/security/spec/ECFieldF2m;

    if-eqz v0, :cond_74

    .line 62
    move-object v0, p0

    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v0

    .line 63
    .local v0, "m":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-gt v2, v0, :cond_5d

    goto :goto_75

    .line 64
    :cond_5d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v0    # "m":I
    :cond_74
    :goto_74
    nop

    .line 67
    :goto_75
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 176
    :cond_4
    instance-of v1, p1, Ljava/security/spec/EllipticCurve;

    if-eqz v1, :cond_2a

    .line 173
    move-object v1, p1

    check-cast v1, Ljava/security/spec/EllipticCurve;

    .local v1, "other":Ljava/security/spec/EllipticCurve;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    .line 175
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    .line 176
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2b

    .end local v1    # "other":Ljava/security/spec/EllipticCurve;
    :cond_2a
    const/4 v0, 0x0

    .line 173
    :goto_2b
    return v0
.end method

.method public whitelist test-api getA()Ljava/math/BigInteger;
    .registers 2

    .line 140
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getB()Ljava/math/BigInteger;
    .registers 2

    .line 149
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api getField()Ljava/security/spec/ECField;
    .registers 2

    .line 131
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    return-object v0
.end method

.method public whitelist test-api getSeed()[B
    .registers 2

    .line 159
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_6
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 188
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    .line 189
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    .line 190
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    shl-int/2addr v0, v1

    .line 188
    return v0
.end method
