.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"


# instance fields
.field private isSorted:Z

.field private set:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 98
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@a
    .line 99
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@d
    .line 221
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 98
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@a
    .line 99
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@d
    .line 232
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@12
    .line 230
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 98
    new-instance v1, Ljava/util/Vector;

    #@5
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@a
    .line 99
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@d
    .line 244
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@11
    move-result v1

    #@12
    if-eq v0, v1, :cond_0

    #@14
    .line 246
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@16
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 244
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 249
    :cond_0
    if-eqz p2, :cond_1

    #@22
    .line 251
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    #@25
    .line 242
    :cond_1
    return-void
.end method

.method protected constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 3
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    #@0
    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 98
    new-instance v1, Ljava/util/Vector;

    #@5
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@a
    .line 99
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@d
    .line 262
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 264
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@13
    aget-object v2, p1, v0

    #@15
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@18
    .line 262
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 267
    :cond_0
    if-eqz p2, :cond_1

    #@1d
    .line 269
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    #@20
    .line 260
    :cond_1
    return-void
.end method

.method private getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 489
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "DER"

    #@7
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 492
    :catch_0
    move-exception v0

    #@d
    .line 493
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v2, "cannot encode object added to SET"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 164
    if-eqz p1, :cond_1

    #@2
    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "object implicit - explicit expected."

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@17
    return-object v1

    #@18
    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 182
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 184
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@24
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2b
    return-object v1

    #@2c
    .line 188
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSet;

    #@2e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@35
    return-object v1

    #@36
    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@39
    move-result-object v1

    #@3a
    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 195
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@44
    return-object v1

    #@45
    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@48
    move-result-object v1

    #@49
    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4b
    if-eqz v1, :cond_6

    #@4d
    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@53
    .line 206
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@55
    if-eqz v1, :cond_5

    #@57
    .line 208
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSet;

    #@59
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5c
    move-result-object v2

    #@5d
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@60
    return-object v1

    #@61
    .line 212
    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSet;

    #@63
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@66
    move-result-object v2

    #@67
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@6a
    return-object v1

    #@6b
    .line 218
    .end local v0    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v3, "unknown object in getInstance: "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getClass()Ljava/lang/Class;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 111
    if-eqz p0, :cond_0

    #@2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 113
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 115
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 117
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 119
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 123
    :try_start_0
    check-cast p0, [B

    #@1e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v2

    #@26
    return-object v2

    #@27
    .line 126
    :catch_0
    move-exception v0

    #@28
    .line 127
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "failed to construct set from byte[]: "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v2

    #@46
    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@48
    if-eqz v2, :cond_4

    #@4a
    move-object v2, p0

    #@4b
    .line 132
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4d
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@50
    move-result-object v1

    #@51
    .line 134
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@53
    if-eqz v2, :cond_4

    #@55
    .line 136
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@57
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    return-object v1

    #@58
    .line 140
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5a
    new-instance v3, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v4, "unknown object in getInstance: "

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@79
    throw v2
.end method

.method private getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "e"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 455
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    .line 458
    .local v0, "encObj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_0

    #@8
    .line 460
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@a
    return-object v1

    #@b
    .line 463
    :cond_0
    return-object v0
.end method

.method private lessThanOrEqual([B[B)Z
    .locals 6
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 473
    array-length v4, p1

    #@3
    array-length v5, p2

    #@4
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 474
    .local v1, "len":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_2

    #@b
    .line 476
    aget-byte v4, p1, v0

    #@d
    aget-byte v5, p2, v0

    #@f
    if-eq v4, v5, :cond_1

    #@11
    .line 478
    aget-byte v4, p1, v0

    #@13
    and-int/lit16 v4, v4, 0xff

    #@15
    aget-byte v5, p2, v0

    #@17
    and-int/lit16 v5, v5, 0xff

    #@19
    if-ge v4, v5, :cond_0

    #@1b
    :goto_1
    return v2

    #@1c
    :cond_0
    move v2, v3

    #@1d
    goto :goto_1

    #@1e
    .line 474
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 481
    :cond_2
    array-length v4, p1

    #@22
    if-ne v1, v4, :cond_3

    #@24
    :goto_2
    return v2

    #@25
    :cond_3
    move v2, v3

    #@26
    goto :goto_2
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 10
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 419
    instance-of v7, p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3
    if-nez v7, :cond_0

    #@5
    .line 421
    return v9

    #@6
    :cond_0
    move-object v4, p1

    #@7
    .line 424
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@9
    .line 426
    .local v4, "other":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@c
    move-result v7

    #@d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@10
    move-result v8

    #@11
    if-eq v7, v8, :cond_1

    #@13
    .line 428
    return v9

    #@14
    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@17
    move-result-object v5

    #@18
    .line 432
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@1b
    move-result-object v6

    #@1c
    .line 434
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_3

    #@22
    .line 436
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v2

    #@26
    .line 437
    .local v2, "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@29
    move-result-object v3

    #@2a
    .line 439
    .local v3, "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2d
    move-result-object v0

    #@2e
    .line 440
    .local v0, "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@31
    move-result-object v1

    #@32
    .line 442
    .local v1, "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v0, v1, :cond_2

    #@34
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v7

    #@38
    if-nez v7, :cond_2

    #@3a
    .line 447
    return v9

    #@3b
    .line 450
    .end local v0    # "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v2    # "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v3    # "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    const/4 v7, 0x1

    #@3c
    return v7
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 357
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@7
    move-result v1

    #@8
    .line 359
    .local v1, "hashCode":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 361
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    .line 362
    .local v2, "o":Ljava/lang/Object;
    mul-int/lit8 v1, v1, 0x11

    #@14
    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v3

    #@18
    xor-int/2addr v1, v3

    #@19
    goto :goto_0

    #@1a
    .line 367
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 545
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    #@0
    .prologue
    .line 314
    move-object v0, p0

    #@1
    .line 316
    .local v0, "outer":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;

    #@3
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@6
    return-object v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected sort()V
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 499
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@3
    if-nez v7, :cond_2

    #@5
    .line 501
    iput-boolean v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@7
    .line 502
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@9
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    #@c
    move-result v7

    #@d
    if-le v7, v8, :cond_2

    #@f
    .line 504
    const/4 v6, 0x1

    #@10
    .line 505
    .local v6, "swapped":Z
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@12
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    #@15
    move-result v7

    #@16
    add-int/lit8 v3, v7, -0x1

    #@18
    .line 507
    .local v3, "lastSwap":I
    :goto_0
    if-eqz v6, :cond_2

    #@1a
    .line 509
    const/4 v2, 0x0

    #@1b
    .line 510
    .local v2, "index":I
    const/4 v5, 0x0

    #@1c
    .line 511
    .local v5, "swapIndex":I
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@1e
    const/4 v8, 0x0

    #@1f
    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@28
    move-result-object v0

    #@29
    .line 513
    .local v0, "a":[B
    const/4 v6, 0x0

    #@2a
    .line 515
    :goto_1
    if-eq v2, v3, :cond_1

    #@2c
    .line 517
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@2e
    add-int/lit8 v8, v2, 0x1

    #@30
    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@33
    move-result-object v7

    #@34
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@36
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    #@39
    move-result-object v1

    #@3a
    .line 519
    .local v1, "b":[B
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_0

    #@40
    .line 521
    move-object v0, v1

    #@41
    .line 534
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 525
    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@46
    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    .line 527
    .local v4, "o":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@4c
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@4e
    add-int/lit8 v9, v2, 0x1

    #@50
    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v7, v8, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@57
    .line 528
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@59
    add-int/lit8 v8, v2, 0x1

    #@5b
    invoke-virtual {v7, v4, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@5e
    .line 530
    const/4 v6, 0x1

    #@5f
    .line 531
    move v5, v2

    #@60
    goto :goto_2

    #@61
    .line 537
    .end local v1    # "b":[B
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    move v3, v5

    #@62
    goto :goto_0

    #@63
    .line 497
    .end local v0    # "a":[B
    .end local v2    # "index":I
    .end local v3    # "lastSwap":I
    .end local v5    # "swapIndex":I
    .end local v6    # "swapped":Z
    :cond_2
    return-void
.end method

.method public toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    #@0
    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    .line 304
    .local v1, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@a
    move-result v2

    #@b
    if-eq v0, v2, :cond_0

    #@d
    .line 306
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 304
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 309
    :cond_0
    return-object v1
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 376
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 378
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@6
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    #@9
    .line 380
    .local v0, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@b
    iput-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@d
    .line 382
    return-object v0

    #@e
    .line 386
    .end local v0    # "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_0
    new-instance v2, Ljava/util/Vector;

    #@10
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@13
    .line 388
    .local v2, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@16
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@19
    move-result v3

    #@1a
    if-eq v1, v3, :cond_1

    #@1c
    .line 390
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@1e
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@25
    .line 388
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 393
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@2a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    #@2d
    .line 395
    .restart local v0    # "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iput-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@2f
    .line 397
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    #@32
    .line 399
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 409
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>()V

    #@5
    .line 411
    .local v0, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@7
    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@9
    .line 413
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
