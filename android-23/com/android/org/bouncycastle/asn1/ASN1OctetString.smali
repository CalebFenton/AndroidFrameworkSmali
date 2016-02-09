.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1OctetString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field string:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "string"    # [B

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 174
    if-nez p1, :cond_0

    #@5
    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "string cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 178
    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@10
    .line 172
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    .line 121
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    #@6
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 123
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 127
    :cond_1
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 140
    if-eqz p0, :cond_0

    #@2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 142
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 144
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, [B

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 148
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 151
    :catch_0
    move-exception v0

    #@19
    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "failed to construct OCTET STRING from byte[]: "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@39
    if-eqz v2, :cond_3

    #@3b
    move-object v2, p0

    #@3c
    .line 157
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3e
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@41
    move-result-object v1

    #@42
    .line 159
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@44
    if-eqz v2, :cond_3

    #@46
    .line 161
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@48
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    return-object v1

    #@49
    .line 165
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4b
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "illegal object in getInstance: "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 219
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 221
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 224
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    .line 226
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@d
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 188
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@4
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    return-object v0
.end method

.method public getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    .locals 0

    #@0
    .prologue
    .line 198
    return-object p0
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 236
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@7
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 241
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "#"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    new-instance v1, Ljava/lang/String;

    #@e
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    #@10
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
