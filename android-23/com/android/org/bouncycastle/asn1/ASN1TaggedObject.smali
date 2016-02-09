.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@4
    .line 15
    const/4 v2, 0x0

    #@5
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    #@7
    .line 16
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@9
    .line 17
    const/4 v2, 0x0

    #@a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@c
    .line 68
    instance-of v2, p3, Lcom/android/org/bouncycastle/asn1/ASN1Choice;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 70
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@12
    .line 77
    :goto_0
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@14
    .line 79
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 81
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    .line 66
    :goto_1
    return-void

    #@1b
    .line 74
    :cond_0
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@1d
    goto :goto_0

    #@1e
    .line 85
    :cond_1
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@21
    move-result-object v0

    #@22
    .line 87
    .local v0, "prim":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 89
    const/4 v1, 0x0

    #@27
    .line 92
    :cond_2
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@29
    goto :goto_1
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 23
    if-eqz p1, :cond_0

    #@2
    .line 25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@8
    return-object v0

    #@9
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "implicitly tagged tagged object"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 34
    if-eqz p0, :cond_0

    #@2
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 36
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 42
    :try_start_0
    check-cast p0, [B

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 45
    :catch_0
    move-exception v0

    #@19
    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "failed to construct tagged object from byte[]: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

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
    .line 50
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


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 99
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 101
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 104
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@9
    .line 106
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@b
    iget v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@d
    if-ne v1, v2, :cond_1

    #@f
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    #@11
    iget-boolean v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 108
    :cond_1
    return v3

    #@16
    .line 106
    :cond_2
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@18
    iget-boolean v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@1a
    if-ne v1, v2, :cond_1

    #@1c
    .line 111
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 113
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 115
    return v3

    #@25
    .line 120
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@27
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2d
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_4

    #@37
    .line 122
    return v3

    #@38
    .line 126
    :cond_4
    const/4 v1, 0x1

    #@39
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
    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@7
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 184
    :cond_0
    return-object v1
.end method

.method public getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "isExplicit"    # Z

    #@0
    .prologue
    .line 196
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 206
    if-eqz p2, :cond_0

    #@5
    .line 208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 199
    :sswitch_0
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 201
    :sswitch_1
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 203
    :sswitch_2
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->parser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 211
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "implicit tagging not implemented for tag: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 196
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public getTagNo()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 131
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@2
    .line 138
    .local v0, "code":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 140
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    .line 143
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    #@2
    return v0
.end method

.method public isExplicit()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@2
    return v0
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 221
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@2
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 226
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    #@2
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "]"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
