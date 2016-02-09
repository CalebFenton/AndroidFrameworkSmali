.class public Lcom/android/org/bouncycastle/asn1/DERGeneralString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERGeneralString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 61
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@9
    .line 59
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@5
    .line 54
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 44
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 46
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 50
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@13
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    #@1a
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 17
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 19
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 22
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 26
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v1

    #@16
    .line 29
    :catch_0
    move-exception v0

    #@17
    .line 30
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
    .line 34
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
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 34
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
    .line 102
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 104
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 106
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    #@9
    .line 108
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/DERGeneralString;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

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
    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@2
    const/16 v1, 0x1b

    #@4
    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    #@7
    .line 90
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

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
    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->string:[B

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
    .line 81
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
