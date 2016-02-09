.class public Lcom/android/org/bouncycastle/asn1/DERBMPString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERBMPString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@9
    .line 99
    return-void
.end method

.method constructor <init>([B)V
    .locals 4
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 79
    array-length v2, p1

    #@4
    div-int/lit8 v2, v2, 0x2

    #@6
    new-array v0, v2, [C

    #@8
    .line 81
    .local v0, "cs":[C
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 83
    mul-int/lit8 v2, v1, 0x2

    #@e
    aget-byte v2, p1, v2

    #@10
    shl-int/lit8 v2, v2, 0x8

    #@12
    mul-int/lit8 v3, v1, 0x2

    #@14
    add-int/lit8 v3, v3, 0x1

    #@16
    aget-byte v3, p1, v3

    #@18
    and-int/lit16 v3, v3, 0xff

    #@1a
    or-int/2addr v2, v3

    #@1b
    int-to-char v2, v2

    #@1c
    aput-char v2, v0, v1

    #@1e
    .line 81
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 86
    :cond_0
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@23
    .line 77
    return-void
.end method

.method constructor <init>([C)V
    .locals 0
    .param p1, "string"    # [C

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@5
    .line 89
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBMPString;
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
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 64
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 68
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    #@1c
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 26
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 28
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

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
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERBMPString;
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
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 122
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 124
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 127
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@9
    .line 129
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@d
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([C[C)Z

    #@10
    move-result v1

    #@11
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
    .line 146
    const/16 v2, 0x1e

    #@2
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@5
    .line 147
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@7
    array-length v2, v2

    #@8
    mul-int/lit8 v2, v2, 0x2

    #@a
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    #@d
    .line 149
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@10
    array-length v2, v2

    #@11
    if-eq v1, v2, :cond_0

    #@13
    .line 151
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@15
    aget-char v0, v2, v1

    #@17
    .line 153
    .local v0, "c":C
    shr-int/lit8 v2, v0, 0x8

    #@19
    int-to-byte v2, v2

    #@1a
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@1d
    .line 154
    int-to-byte v2, v0

    #@1e
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@21
    .line 149
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 144
    .end local v0    # "c":C
    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@2
    array-length v0, v0

    #@3
    mul-int/lit8 v0, v0, 0x2

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@d
    array-length v1, v1

    #@e
    mul-int/lit8 v1, v1, 0x2

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@7
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERBMPString;->string:[C

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([C)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
