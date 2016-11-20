.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private key:[B


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
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 141
    if-eqz p1, :cond_0

    #@6
    if-nez p4, :cond_1

    #@8
    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Missing argument"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 144
    :cond_1
    array-length v0, p1

    #@12
    if-nez v0, :cond_2

    #@14
    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Empty key"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 147
    :cond_2
    array-length v0, p1

    #@1e
    sub-int/2addr v0, p2

    #@1f
    if-ge v0, p3, :cond_3

    #@21
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    .line 149
    const-string/jumbo v1, "Invalid offset/length combination"

    #@26
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 151
    :cond_3
    if-gez p3, :cond_4

    #@2c
    .line 152
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2e
    const-string/jumbo v1, "len is negative"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 154
    :cond_4
    new-array v0, p3, [B

    #@37
    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@39
    .line 155
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@3b
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3e
    .line 156
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@40
    .line 140
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Missing argument"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 95
    :cond_1
    array-length v0, p1

    #@11
    if-nez v0, :cond_2

    #@13
    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Empty key"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [B

    #@22
    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@24
    .line 99
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@26
    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 214
    if-ne p0, p1, :cond_0

    #@3
    .line 215
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 217
    :cond_0
    instance-of v2, p1, Ljavax/crypto/SecretKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 218
    return v4

    #@a
    :cond_1
    move-object v2, p1

    #@b
    .line 220
    check-cast v2, Ljavax/crypto/SecretKey;

    #@d
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 221
    .local v0, "thatAlg":Ljava/lang/String;
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    .line 222
    const-string/jumbo v2, "DESede"

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 223
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@24
    const-string/jumbo v3, "TripleDES"

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_3

    #@2d
    .line 229
    :cond_2
    check-cast p1, Ljavax/crypto/SecretKey;

    #@2f
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@32
    move-result-object v1

    #@33
    .line 231
    .local v1, "thatKey":[B
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@35
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@38
    move-result v2

    #@39
    return v2

    #@3a
    .line 224
    .end local v1    # "thatKey":[B
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "TripleDES"

    #@3d
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_4

    #@43
    .line 225
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@45
    const-string/jumbo v3, "DESede"

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4b
    move-result v2

    #@4c
    if-nez v2, :cond_2

    #@4e
    .line 226
    :cond_4
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 174
    const-string/jumbo v0, "RAW"

    #@3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 192
    const/4 v1, 0x0

    #@1
    .line 193
    .local v1, "retval":I
    const/4 v0, 0x1

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 194
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    mul-int/2addr v2, v0

    #@c
    add-int/2addr v1, v2

    #@d
    .line 193
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 196
    :cond_0
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@12
    const-string/jumbo v3, "TripleDES"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 197
    const-string/jumbo v2, "desede"

    #@1e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@21
    move-result v2

    #@22
    xor-int/2addr v1, v2

    #@23
    return v1

    #@24
    .line 199
    :cond_1
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    #@26
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@2d
    move-result v2

    #@2e
    xor-int/2addr v1, v2

    #@2f
    return v1
.end method
