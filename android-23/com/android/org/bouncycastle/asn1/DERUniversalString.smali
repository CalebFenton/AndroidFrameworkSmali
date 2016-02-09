.class public Lcom/android/org/bouncycastle/asn1/DERUniversalString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERUniversalString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# static fields
.field private static final table:[C


# instance fields
.field private string:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 15
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->table:[C

    #@9
    .line 11
    return-void

    #@a
    .line 15
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 80
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

    #@5
    .line 78
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERUniversalString;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 64
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 66
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 70
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@13
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    #@1a
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERUniversalString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 28
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 30
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 37
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERUniversalString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v1

    #@16
    .line 40
    :catch_0
    move-exception v0

    #@17
    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "encoding error getInstance: "

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
    .line 45
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
    .locals 2
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 139
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 141
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@a
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

    #@c
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@f
    move-result v0

    #@10
    return v0
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
    .line 133
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->getOctets()[B

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x1c

    #@6
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@9
    .line 131
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

    #@b
    array-length v1, v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

    #@2
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v6, "#"

    #@5
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 86
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    .line 87
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    .line 91
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 98
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@18
    move-result-object v5

    #@19
    .line 100
    .local v5, "string":[B
    const/4 v4, 0x0

    #@1a
    .local v4, "i":I
    :goto_0
    array-length v6, v5

    #@1b
    if-eq v4, v6, :cond_0

    #@1d
    .line 102
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->table:[C

    #@1f
    aget-byte v7, v5, v4

    #@21
    ushr-int/lit8 v7, v7, 0x4

    #@23
    and-int/lit8 v7, v7, 0xf

    #@25
    aget-char v6, v6, v7

    #@27
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 103
    sget-object v6, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->table:[C

    #@2c
    aget-byte v7, v5, v4

    #@2e
    and-int/lit8 v7, v7, 0xf

    #@30
    aget-char v6, v6, v7

    #@32
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@35
    .line 100
    add-int/lit8 v4, v4, 0x1

    #@37
    goto :goto_0

    #@38
    .line 94
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_0
    move-exception v3

    #@39
    .line 95
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v7, "internal error encoding BitString"

    #@3e
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6

    #@42
    .line 106
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    return-object v6
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->string:[B

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
    .line 121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
