.class public Lcom/android/org/bouncycastle/asn1/DERT61String;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERT61String.java"

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
    .line 93
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    #@7
    .line 91
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 82
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

    #@5
    .line 80
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERT61String;
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
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 66
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERT61String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 70
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    #@1c
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERT61String;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 28
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 30
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERT61String;

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
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERT61String;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERT61String;
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
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERT61String;

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

    #@8
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERT61String;

    #@a
    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

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
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

    #@2
    const/16 v1, 0x14

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

    #@2
    array-length v0, v0

    #@3
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

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
    .line 133
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

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
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

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
    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERT61String;->string:[B

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

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
