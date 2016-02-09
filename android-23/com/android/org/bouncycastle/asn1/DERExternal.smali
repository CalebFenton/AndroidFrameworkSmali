.class public Lcom/android/org/bouncycastle/asn1/DERExternal;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERExternal.java"


# instance fields
.field private dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field private directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private encoding:I

.field private externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field private indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 5
    .param p1, "vector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 20
    const/4 v2, 0x0

    #@4
    .line 22
    .local v2, "offset":I
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v0

    #@8
    .line 23
    .local v0, "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 25
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    .end local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    .line 26
    const/4 v2, 0x1

    #@11
    .line 27
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v0

    #@15
    .line 29
    .restart local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 31
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1b
    .end local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1d
    .line 32
    add-int/lit8 v2, v2, 0x1

    #@1f
    .line 33
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@22
    move-result-object v0

    #@23
    .line 35
    .restart local v0    # "enc":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@25
    if-nez v3, :cond_2

    #@27
    .line 37
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@29
    .line 38
    add-int/lit8 v2, v2, 0x1

    #@2b
    .line 39
    invoke-direct {p0, p1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2e
    move-result-object v0

    #@2f
    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@32
    move-result v3

    #@33
    add-int/lit8 v4, v2, 0x1

    #@35
    if-eq v3, v4, :cond_3

    #@37
    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v4, "input vector too large"

    #@3c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v3

    #@40
    .line 47
    :cond_3
    instance-of v3, v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@42
    if-nez v3, :cond_4

    #@44
    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@46
    const-string/jumbo v4, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    #@49
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    :cond_4
    move-object v1, v0

    #@4e
    .line 51
    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@50
    .line 52
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    #@53
    move-result v3

    #@54
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    #@57
    .line 53
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5d
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "encoding"    # I
    .param p5, "externalData"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 89
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDirectReference(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@6
    .line 90
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setIndirectReference(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    #@9
    .line 91
    invoke-direct {p0, p3}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@c
    .line 92
    invoke-direct {p0, p4}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setEncoding(I)V

    #@f
    .line 93
    invoke-virtual {p5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERExternal;->setExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@16
    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/org/bouncycastle/asn1/DERTaggedObject;)V
    .locals 6
    .param p1, "directReference"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "externalData"    # Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@0
    .prologue
    .line 75
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@7
    move-result-object v5

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    #@f
    .line 73
    return-void
.end method

.method private getObjFromVector(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@3
    move-result v0

    #@4
    if-gt v0, p2, :cond_0

    #@6
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "too few objects in input vector"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private setDataValueDescriptor(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0
    .param p1, "dataValueDescriptor"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    .line 245
    return-void
.end method

.method private setDirectReference(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "directReferemce"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    .line 254
    return-void
.end method

.method private setEncoding(I)V
    .locals 3
    .param p1, "encoding"    # I

    #@0
    .prologue
    .line 270
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "invalid encoding value: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 274
    :cond_1
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    #@21
    .line 268
    return-void
.end method

.method private setExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .locals 0
    .param p1, "externalContent"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    .line 281
    return-void
.end method

.method private setIndirectReference(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "indirectReference"    # Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@0
    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    .line 290
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 158
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 160
    return v3

    #@6
    .line 162
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    .line 164
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 166
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERExternal;

    #@d
    .line 167
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/DERExternal;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 169
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13
    if-eqz v1, :cond_5

    #@15
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_5

    #@1f
    .line 174
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 176
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@25
    if-eqz v1, :cond_6

    #@27
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_6

    #@31
    .line 181
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@33
    if-eqz v1, :cond_4

    #@35
    .line 183
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@37
    if-eqz v1, :cond_7

    #@39
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3d
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_7

    #@43
    .line 188
    :cond_4
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@45
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@47
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    return v1

    #@4c
    .line 171
    :cond_5
    return v3

    #@4d
    .line 178
    :cond_6
    return v3

    #@4e
    .line 185
    :cond_7
    return v3
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 136
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 138
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    const-string/jumbo v3, "DER"

    #@e
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded(Ljava/lang/String;)[B

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@15
    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 142
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1b
    const-string/jumbo v3, "DER"

    #@1e
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getEncoded(Ljava/lang/String;)[B

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@25
    .line 144
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 146
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2b
    const-string/jumbo v3, "DER"

    #@2e
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@35
    .line 148
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@37
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    #@39
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3b
    const/4 v4, 0x1

    #@3c
    invoke-direct {v1, v4, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3f
    .line 149
    .local v1, "obj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    const-string/jumbo v2, "DER"

    #@42
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getEncoded(Ljava/lang/String;)[B

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@49
    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@4c
    move-result-object v2

    #@4d
    const/16 v3, 0x20

    #@4f
    const/16 v4, 0x8

    #@51
    invoke-virtual {p1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    #@54
    .line 133
    return-void
.end method

.method encodedLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERExternal;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    return v0
.end method

.method public getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method

.method public getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    #@0
    .prologue
    .line 220
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->encoding:I

    #@2
    return v0
.end method

.method public getExternalContent()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2
    return-object v0
.end method

.method public getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    .line 102
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    #@a
    move-result v0

    #@b
    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 108
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hashCode()I

    #@14
    move-result v1

    #@15
    xor-int/2addr v0, v1

    #@16
    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 112
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    #@1f
    move-result v1

    #@20
    xor-int/2addr v0, v1

    #@21
    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERExternal;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@23
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    #@26
    move-result v1

    #@27
    xor-int/2addr v0, v1

    #@28
    .line 115
    return v0
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    return v0
.end method
