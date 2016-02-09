.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "tagNo"    # I

    #@0
    .prologue
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v1, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@9
    .line 43
    return-void
.end method

.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 22
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4
    .line 20
    return-void
.end method

.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3
    .line 33
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 6
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 99
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    #@3
    const/16 v4, 0xa0

    #@5
    invoke-virtual {p1, v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    #@8
    .line 100
    const/16 v3, 0x80

    #@a
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@d
    .line 102
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    #@f
    if-nez v3, :cond_5

    #@11
    .line 104
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    #@13
    if-nez v3, :cond_4

    #@15
    .line 107
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 109
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 111
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@23
    check-cast v3, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@25
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    #@28
    move-result-object v1

    #@29
    .line 133
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_5

    #@2f
    .line 135
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@38
    goto :goto_0

    #@39
    .line 115
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3b
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3d
    .line 116
    .local v2, "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@3f
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@42
    move-result-object v3

    #@43
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@46
    .line 117
    .local v0, "berO":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    #@49
    move-result-object v1

    #@4a
    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_0

    #@4b
    .line 120
    .end local v0    # "berO":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "octs":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4d
    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4f
    if-eqz v3, :cond_2

    #@51
    .line 122
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@53
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@55
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@58
    move-result-object v1

    #@59
    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_0

    #@5a
    .line 124
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5c
    instance-of v3, v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5e
    if-eqz v3, :cond_3

    #@60
    .line 126
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@62
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@64
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@67
    move-result-object v1

    #@68
    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_0

    #@69
    .line 130
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    #@6b
    new-instance v4, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v5, "not implemented: "

    #@73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v3

    #@8d
    .line 140
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8f
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@92
    .line 144
    :cond_5
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@95
    .line 145
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    #@98
    .line 97
    return-void
.end method

.method encodedLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    #@2
    if-nez v2, :cond_1

    #@4
    .line 74
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v1

    #@a
    .line 75
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    #@d
    move-result v0

    #@e
    .line 77
    .local v0, "length":I
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 79
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    #@14
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@17
    move-result v2

    #@18
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    #@1b
    move-result v3

    #@1c
    add-int/2addr v2, v3

    #@1d
    add-int/2addr v2, v0

    #@1e
    return v2

    #@1f
    .line 84
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@21
    .line 86
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    #@23
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@26
    move-result v2

    #@27
    add-int/2addr v2, v0

    #@28
    return v2

    #@29
    .line 91
    .end local v0    # "length":I
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    #@2b
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateTagLength(I)I

    #@2e
    move-result v2

    #@2f
    add-int/lit8 v2, v2, 0x1

    #@31
    return v2
.end method

.method isConstructed()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 50
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 52
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 54
    return v2

    #@a
    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@13
    move-result-object v0

    #@14
    .line 60
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->isConstructed()Z

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 65
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    return v2
.end method
