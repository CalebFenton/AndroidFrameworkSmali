.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ApplicationSpecific.java"


# instance fields
.field protected final isConstructed:Z

.field protected final octets:[B

.field protected final tag:I


# direct methods
.method constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 22
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@5
    .line 23
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@7
    .line 24
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@9
    .line 20
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 35
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 37
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 39
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 43
    :try_start_0
    nop

    #@e
    nop

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 46
    :catch_0
    move-exception v0

    #@19
    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Failed to construct object from byte[]: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "unknown object in getInstance: "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1
.end method

.method protected static getLengthOfHeader([B)I
    .locals 5
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 56
    const/4 v2, 0x1

    #@2
    aget-byte v2, p0, v2

    #@4
    and-int/lit16 v0, v2, 0xff

    #@6
    .line 58
    .local v0, "length":I
    const/16 v2, 0x80

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 60
    return v3

    #@b
    .line 63
    :cond_0
    const/16 v2, 0x7f

    #@d
    if-le v0, v2, :cond_2

    #@f
    .line 65
    and-int/lit8 v1, v0, 0x7f

    #@11
    .line 68
    .local v1, "size":I
    const/4 v2, 0x4

    #@12
    if-le v1, v2, :cond_1

    #@14
    .line 70
    new-instance v2, Ljava/lang/IllegalStateException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "DER length more than 4 bytes: "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 73
    :cond_1
    add-int/lit8 v2, v1, 0x2

    #@30
    return v2

    #@31
    .line 76
    .end local v1    # "size":I
    :cond_2
    return v3
.end method

.method private replaceTagNumber(I[B)[B
    .locals 8
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 190
    aget-byte v5, p2, v6

    #@4
    and-int/lit8 v3, v5, 0x1f

    #@6
    .line 191
    .local v3, "tagNo":I
    const/4 v1, 0x1

    #@7
    .line 195
    .local v1, "index":I
    const/16 v5, 0x1f

    #@9
    if-ne v3, v5, :cond_1

    #@b
    .line 197
    const/4 v3, 0x0

    #@c
    .line 199
    const/4 v1, 0x2

    #@d
    aget-byte v5, p2, v7

    #@f
    and-int/lit16 v0, v5, 0xff

    #@11
    .line 203
    .local v0, "b":I
    and-int/lit8 v5, v0, 0x7f

    #@13
    if-nez v5, :cond_2

    #@15
    .line 205
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@17
    const-string/jumbo v6, "corrupted stream - invalid high tag number found"

    #@1a
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v5

    #@1e
    .line 208
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ltz v0, :cond_0

    #@20
    and-int/lit16 v5, v0, 0x80

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 210
    and-int/lit8 v5, v0, 0x7f

    #@26
    or-int/2addr v3, v5

    #@27
    .line 211
    shl-int/lit8 v3, v3, 0x7

    #@29
    .line 212
    add-int/lit8 v1, v2, 0x1

    #@2b
    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    #@2d
    and-int/lit16 v0, v5, 0xff

    #@2f
    move v2, v1

    #@30
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@31
    :cond_0
    move v1, v2

    #@32
    .line 218
    .end local v0    # "b":I
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    array-length v5, p2

    #@33
    sub-int/2addr v5, v1

    #@34
    add-int/lit8 v5, v5, 0x1

    #@36
    new-array v4, v5, [B

    #@38
    .line 220
    .local v4, "tmp":[B
    array-length v5, v4

    #@39
    add-int/lit8 v5, v5, -0x1

    #@3b
    invoke-static {p2, v1, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3e
    .line 222
    int-to-byte v5, p1

    #@3f
    aput-byte v5, v4, v6

    #@41
    .line 224
    return-object v4

    #@42
    .end local v4    # "tmp":[B
    .restart local v0    # "b":I
    :cond_2
    move v2, v1

    #@43
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 170
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 172
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 175
    nop

    #@8
    nop

    #@9
    .line 177
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@b
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 178
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@11
    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 179
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@17
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@19
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@1c
    move-result v1

    #@1d
    .line 177
    :cond_1
    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    const/16 v0, 0x40

    #@2
    .line 159
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 161
    const/16 v0, 0x60

    #@8
    .line 164
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@c
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    #@f
    .line 156
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@8
    array-length v1, v1

    #@9
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@10
    array-length v1, v1

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method

.method public getApplicationTag()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@2
    return v0
.end method

.method public getContents()[B
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@2
    return-object v0
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getObject(I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 131
    const/16 v2, 0x1f

    #@3
    if-lt p1, v2, :cond_0

    #@5
    .line 133
    new-instance v2, Ljava/io/IOException;

    #@7
    const-string/jumbo v3, "unsupported tag number"

    #@a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    #@11
    move-result-object v0

    #@12
    .line 137
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->replaceTagNumber(I[B)[B

    #@15
    move-result-object v1

    #@16
    .line 139
    .local v1, "tmp":[B
    aget-byte v2, v0, v3

    #@18
    and-int/lit8 v2, v2, 0x20

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 141
    aget-byte v2, v1, v3

    #@1e
    or-int/lit8 v2, v2, 0x20

    #@20
    int-to-byte v2, v2

    #@21
    aput-byte v2, v1, v3

    #@23
    .line 144
    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@25
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@28
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->tag:I

    #@7
    xor-int/2addr v0, v1

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->octets:[B

    #@a
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@d
    move-result v1

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ApplicationSpecific;->isConstructed:Z

    #@2
    return v0
.end method
