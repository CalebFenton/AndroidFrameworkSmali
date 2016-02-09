.class public Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 145
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@6
    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 80
    int-to-long v0, p1

    #@4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@e
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 91
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@9
    .line 89
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 102
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@5
    .line 100
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 5
    .param p0, "enc"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 149
    array-length v2, p0

    #@2
    const/4 v3, 0x1

    #@3
    if-le v2, v3, :cond_0

    #@5
    .line 151
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@7
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    #@e
    return-object v2

    #@f
    .line 154
    :cond_0
    array-length v2, p0

    #@10
    if-nez v2, :cond_1

    #@12
    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v3, "ENUMERATED has zero length"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 158
    :cond_1
    aget-byte v2, p0, v4

    #@1d
    and-int/lit16 v1, v2, 0xff

    #@1f
    .line 160
    .local v1, "value":I
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@21
    array-length v2, v2

    #@22
    if-lt v1, v2, :cond_2

    #@24
    .line 162
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@26
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    #@2d
    return-object v2

    #@2e
    .line 165
    :cond_2
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@30
    aget-object v0, v2, v1

    #@32
    .line 167
    .local v0, "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    if-nez v0, :cond_3

    #@34
    .line 169
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@36
    .end local v0    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@39
    move-result-object v2

    #@3a
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    #@3d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@3f
    aput-object v0, v2, v1

    #@41
    .line 172
    .restart local v0    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_3
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 2
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
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 64
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 68
    :cond_1
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@11
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 26
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 28
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

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
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
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
    .line 130
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 132
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 135
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@9
    .line 137
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@2
    const/16 v1, 0xa

    #@4
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@7
    .line 122
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@b
    array-length v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@4
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@7
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
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
