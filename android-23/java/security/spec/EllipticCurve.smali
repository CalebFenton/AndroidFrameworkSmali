.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;

.field private final field:Ljava/security/spec/ECField;

.field private volatile hash:I

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@4
    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 5
    .param p1, "field"    # Ljava/security/spec/ECField;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "seed"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 60
    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@7
    .line 61
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@9
    if-nez v2, :cond_0

    #@b
    .line 62
    new-instance v2, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v3, "field == null"

    #@10
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v2

    #@14
    .line 64
    :cond_0
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@16
    .line 65
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 66
    new-instance v2, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v3, "a == null"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 68
    :cond_1
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@25
    .line 69
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@27
    if-nez v2, :cond_2

    #@29
    .line 70
    new-instance v2, Ljava/lang/NullPointerException;

    #@2b
    const-string/jumbo v3, "b == null"

    #@2e
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 73
    :cond_2
    if-nez p4, :cond_4

    #@34
    .line 74
    iput-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@36
    .line 82
    :goto_0
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@38
    instance-of v2, v2, Ljava/security/spec/ECFieldFp;

    #@3a
    if-eqz v2, :cond_7

    #@3c
    .line 83
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@3e
    check-cast v2, Ljava/security/spec/ECFieldFp;

    #@40
    invoke-virtual {v2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    #@43
    move-result-object v1

    #@44
    .line 84
    .local v1, "p":Ljava/math/BigInteger;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@46
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    #@49
    move-result v2

    #@4a
    if-ltz v2, :cond_3

    #@4c
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@4e
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@51
    move-result v2

    #@52
    if-ltz v2, :cond_5

    #@54
    .line 85
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@56
    const-string/jumbo v3, "the a is not in the field"

    #@59
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 76
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_4
    array-length v2, p4

    #@5e
    new-array v2, v2, [B

    #@60
    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@62
    .line 77
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@64
    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@66
    array-length v3, v3

    #@67
    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6a
    goto :goto_0

    #@6b
    .line 87
    .restart local v1    # "p":Ljava/math/BigInteger;
    :cond_5
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@6d
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    #@70
    move-result v2

    #@71
    if-ltz v2, :cond_6

    #@73
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@75
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@78
    move-result v2

    #@79
    if-ltz v2, :cond_9

    #@7b
    .line 88
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7d
    const-string/jumbo v3, "the b is not in the field"

    #@80
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2

    #@84
    .line 90
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_7
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@86
    instance-of v2, v2, Ljava/security/spec/ECFieldF2m;

    #@88
    if-eqz v2, :cond_9

    #@8a
    .line 91
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@8c
    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    #@8f
    move-result v0

    #@90
    .line 92
    .local v0, "fieldSizeInBits":I
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@92
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    #@95
    move-result v2

    #@96
    if-le v2, v0, :cond_8

    #@98
    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9a
    const-string/jumbo v3, "the a is not in the field"

    #@9d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v2

    #@a1
    .line 95
    :cond_8
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@a3
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    #@a6
    move-result v2

    #@a7
    if-le v2, v0, :cond_9

    #@a9
    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@ab
    const-string/jumbo v3, "the b is not in the field"

    #@ae
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v2

    #@b2
    .line 59
    .end local v0    # "fieldSizeInBits":I
    :cond_9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 171
    if-ne p0, p1, :cond_0

    #@3
    .line 172
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 174
    :cond_0
    instance-of v2, p1, Ljava/security/spec/EllipticCurve;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 175
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 177
    check-cast v0, Ljava/security/spec/EllipticCurve;

    #@d
    .line 178
    .local v0, "otherEc":Ljava/security/spec/EllipticCurve;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@f
    iget-object v3, v0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@19
    iget-object v3, v0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@1b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 179
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@23
    iget-object v3, v0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@25
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    .line 178
    if-eqz v2, :cond_2

    #@2b
    .line 180
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@2d
    iget-object v2, v0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@2f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@32
    move-result v1

    #@33
    .line 178
    :cond_2
    return v1
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getField()Ljava/security/spec/ECField;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@2
    return-object v0
.end method

.method public getSeed()[B
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 152
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@4
    if-nez v1, :cond_0

    #@6
    .line 153
    return-object v2

    #@7
    .line 156
    :cond_0
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@9
    array-length v1, v1

    #@a
    new-array v0, v1, [B

    #@c
    .line 157
    .local v0, "ret":[B
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@e
    array-length v2, v0

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 158
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 190
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    #@2
    if-nez v2, :cond_2

    #@4
    .line 192
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    #@6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@9
    move-result v2

    #@a
    add-int/lit16 v0, v2, 0x155

    #@c
    .line 193
    .local v0, "hash0":I
    mul-int/lit8 v2, v0, 0x1f

    #@e
    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    #@10
    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    #@13
    move-result v3

    #@14
    add-int v0, v2, v3

    #@16
    .line 194
    mul-int/lit8 v2, v0, 0x1f

    #@18
    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    #@1a
    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    #@1d
    move-result v3

    #@1e
    add-int v0, v2, v3

    #@20
    .line 195
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 196
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@27
    array-length v2, v2

    #@28
    if-ge v1, v2, :cond_1

    #@2a
    .line 197
    mul-int/lit8 v2, v0, 0x1f

    #@2c
    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    #@2e
    aget-byte v3, v3, v1

    #@30
    add-int v0, v2, v3

    #@32
    .line 196
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 200
    .end local v1    # "i":I
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    #@37
    .line 202
    :cond_1
    iput v0, p0, Ljava/security/spec/EllipticCurve;->hash:I

    #@39
    .line 204
    .end local v0    # "hash0":I
    :cond_2
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    #@3b
    return v2
.end method
