.class public Lcom/android/org/bouncycastle/asn1/ASN1Integer;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 75
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@d
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 81
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@9
    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 87
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    #@4
    .line 85
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "clone"    # Z

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 92
    if-eqz p2, :cond_0

    #@5
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@8
    move-result-object p1

    #@9
    .end local p1    # "bytes":[B
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@b
    .line 90
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 62
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 64
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 68
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    #@20
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 26
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 28
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 35
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v1

    #@16
    .line 38
    :catch_0
    move-exception v0

    #@17
    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "encoding error in getInstance: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "illegal object in getInstance: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 142
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 144
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 147
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    .line 149
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@d
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@6
    .line 122
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@b
    array-length v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getPositiveValue()Ljava/math/BigInteger;
    .locals 3

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    #@8
    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@4
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@7
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 129
    const/4 v1, 0x0

    #@1
    .line 131
    .local v1, "value":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@4
    array-length v2, v2

    #@5
    if-eq v0, v2, :cond_0

    #@7
    .line 133
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    and-int/lit16 v2, v2, 0xff

    #@d
    rem-int/lit8 v3, v0, 0x4

    #@f
    shl-int/2addr v2, v3

    #@10
    xor-int/2addr v1, v2

    #@11
    .line 131
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 136
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
