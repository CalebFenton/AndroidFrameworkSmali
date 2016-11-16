.class public final Lcom/android/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 12
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .locals 6
    .param p0, "length"    # I
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 45
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@4
    move-result-object v0

    #@5
    .line 46
    .local v0, "bytes":[B
    array-length v4, v0

    #@6
    if-ne v4, p0, :cond_0

    #@8
    .line 48
    return-object v0

    #@9
    .line 51
    :cond_0
    aget-byte v4, v0, v5

    #@b
    if-nez v4, :cond_1

    #@d
    const/4 v2, 0x1

    #@e
    .line 52
    .local v2, "start":I
    :goto_0
    array-length v4, v0

    #@f
    sub-int v1, v4, v2

    #@11
    .line 54
    .local v1, "count":I
    if-le v1, p0, :cond_2

    #@13
    .line 56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v5, "standard length exceeded for value"

    #@18
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 51
    .end local v1    # "count":I
    .end local v2    # "start":I
    :cond_1
    const/4 v2, 0x0

    #@1d
    .restart local v2    # "start":I
    goto :goto_0

    #@1e
    .line 59
    .restart local v1    # "count":I
    :cond_2
    new-array v3, p0, [B

    #@20
    .line 60
    .local v3, "tmp":[B
    array-length v4, v3

    #@21
    sub-int/2addr v4, v1

    #@22
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@25
    .line 61
    return-object v3
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 23
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    #@4
    move-result-object v0

    #@5
    .line 25
    .local v0, "bytes":[B
    aget-byte v2, v0, v4

    #@7
    if-nez v2, :cond_0

    #@9
    .line 27
    array-length v2, v0

    #@a
    add-int/lit8 v2, v2, -0x1

    #@c
    new-array v1, v2, [B

    #@e
    .line 29
    .local v1, "tmp":[B
    array-length v2, v1

    #@f
    const/4 v3, 0x1

    #@10
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 31
    return-object v1

    #@14
    .line 34
    .end local v1    # "tmp":[B
    :cond_0
    return-object v0
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "min"    # Ljava/math/BigInteger;
    .param p1, "max"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@3
    move-result v0

    #@4
    .line 78
    .local v0, "cmp":I
    if-ltz v0, :cond_1

    #@6
    .line 80
    if-lez v0, :cond_0

    #@8
    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "\'min\' may not be greater than \'max\'"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 85
    :cond_0
    return-object p0

    #@12
    .line 88
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@15
    move-result v3

    #@16
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@19
    move-result v4

    #@1a
    div-int/lit8 v4, v4, 0x2

    #@1c
    if-le v3, v4, :cond_2

    #@1e
    .line 90
    sget-object v3, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    #@20
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 93
    :cond_2
    const/4 v1, 0x0

    #@2e
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x3e8

    #@30
    if-ge v1, v3, :cond_4

    #@32
    .line 95
    new-instance v2, Ljava/math/BigInteger;

    #@34
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@37
    move-result v3

    #@38
    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@3b
    .line 96
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@3e
    move-result v3

    #@3f
    if-ltz v3, :cond_3

    #@41
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@44
    move-result v3

    #@45
    if-gtz v3, :cond_3

    #@47
    .line 98
    return-object v2

    #@48
    .line 93
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 103
    .end local v2    # "x":Ljava/math/BigInteger;
    :cond_4
    new-instance v3, Ljava/math/BigInteger;

    #@4d
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    #@54
    move-result v4

    #@55
    add-int/lit8 v4, v4, -0x1

    #@57
    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@5a
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5d
    move-result-object v3

    #@5e
    return-object v3
.end method

.method public static fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .locals 2
    .param p0, "buf"    # [B

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/math/BigInteger;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@6
    return-object v0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 113
    move-object v0, p0

    #@2
    .line 114
    .local v0, "mag":[B
    if-nez p1, :cond_0

    #@4
    array-length v1, p0

    #@5
    if-eq p2, v1, :cond_1

    #@7
    .line 116
    :cond_0
    new-array v0, p2, [B

    #@9
    .line 117
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 119
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    #@e
    const/4 v2, 0x1

    #@f
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@12
    return-object v1
.end method
