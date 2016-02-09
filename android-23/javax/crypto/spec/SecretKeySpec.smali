.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Ljava/security/spec/KeySpec;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final key:[B


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 94
    if-nez p1, :cond_0

    #@6
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "key == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 97
    :cond_0
    array-length v0, p1

    #@10
    if-nez v0, :cond_1

    #@12
    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "key.length == 0"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 100
    :cond_1
    if-ltz p3, :cond_2

    #@1d
    if-gez p2, :cond_3

    #@1f
    .line 101
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@21
    const-string/jumbo v1, "len < 0 || offset < 0"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 103
    :cond_3
    array-length v0, p1

    #@29
    sub-int/2addr v0, p2

    #@2a
    if-ge v0, p3, :cond_4

    #@2c
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "key too short"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 106
    :cond_4
    if-nez p4, :cond_5

    #@37
    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v1, "algorithm == null"

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 109
    :cond_5
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@42
    .line 110
    new-array v0, p3, [B

    #@44
    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@46
    .line 111
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@48
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4b
    .line 93
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    if-nez p1, :cond_0

    #@6
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "key == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 61
    :cond_0
    array-length v0, p1

    #@10
    if-nez v0, :cond_1

    #@12
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "key.length == 0"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 64
    :cond_1
    if-nez p2, :cond_2

    #@1d
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "algorithm == null"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 68
    :cond_2
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@28
    .line 69
    array-length v0, p1

    #@29
    new-array v0, v0, [B

    #@2b
    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@2d
    .line 70
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@2f
    array-length v1, p1

    #@30
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 168
    if-ne p1, p0, :cond_0

    #@3
    .line 169
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 171
    :cond_0
    instance-of v2, p1, Ljavax/crypto/spec/SecretKeySpec;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 172
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 174
    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    #@d
    .line 175
    .local v0, "ks":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@f
    iget-object v3, v0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 176
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@19
    iget-object v2, v0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@1b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@1e
    move-result v1

    #@1f
    .line 175
    :cond_2
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 138
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 139
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@8
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 140
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    const-string/jumbo v0, "RAW"

    #@3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 150
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 151
    .local v1, "result":I
    iget-object v3, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@8
    const/4 v2, 0x0

    #@9
    array-length v4, v3

    #@a
    :goto_0
    if-ge v2, v4, :cond_0

    #@c
    aget-byte v0, v3, v2

    #@e
    .line 152
    .local v0, "element":B
    add-int/2addr v1, v0

    #@f
    .line 151
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 154
    .end local v0    # "element":B
    :cond_0
    return v1
.end method
