.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Sequence.java"


# instance fields
.field protected seq:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@a
    .line 164
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@a
    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@f
    .line 173
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 57
    new-instance v1, Ljava/util/Vector;

    #@5
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@a
    .line 185
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@e
    move-result v1

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 187
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@13
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1a
    .line 185
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 183
    :cond_0
    return-void
.end method

.method protected constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    #@3
    .line 57
    new-instance v1, Ljava/util/Vector;

    #@5
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@a
    .line 197
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 199
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@10
    aget-object v2, p1, v0

    #@12
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@15
    .line 197
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 195
    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 122
    if-eqz p1, :cond_1

    #@2
    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "object implicit - explicit expected."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 140
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    #@2a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@31
    return-object v0

    #@32
    .line 146
    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    #@34
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3b
    return-object v0

    #@3c
    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3f
    move-result-object v0

    #@40
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 153
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4a
    return-object v0

    #@4b
    .line 158
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "unknown object in getInstance: "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getClass()Ljava/lang/Class;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    if-eqz p0, :cond_0

    #@2
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 71
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 73
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 75
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    #@f
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 77
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 81
    :try_start_0
    check-cast p0, [B

    #@1e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v2

    #@26
    return-object v2

    #@27
    .line 84
    :catch_0
    move-exception v0

    #@28
    .line 85
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "failed to construct sequence from byte[]: "

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
    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@48
    if-eqz v2, :cond_4

    #@4a
    move-object v2, p0

    #@4b
    .line 90
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4d
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@50
    move-result-object v1

    #@51
    .line 92
    .local v1, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@53
    if-eqz v2, :cond_4

    #@55
    .line 94
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@57
    .end local v1    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    return-object v1

    #@58
    .line 98
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
    .locals 1
    .param p1, "e"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 339
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    .line 341
    .local v0, "encObj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    return-object v0
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 10
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 303
    instance-of v7, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    if-nez v7, :cond_0

    #@5
    .line 305
    return v9

    #@6
    :cond_0
    move-object v4, p1

    #@7
    .line 308
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@9
    .line 310
    .local v4, "other":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@c
    move-result v7

    #@d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@10
    move-result v8

    #@11
    if-eq v7, v8, :cond_1

    #@13
    .line 312
    return v9

    #@14
    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@17
    move-result-object v5

    #@18
    .line 316
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@1b
    move-result-object v6

    #@1c
    .line 318
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_3

    #@22
    .line 320
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    move-result-object v2

    #@26
    .line 321
    .local v2, "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@29
    move-result-object v3

    #@2a
    .line 323
    .local v3, "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2d
    move-result-object v0

    #@2e
    .line 324
    .local v0, "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@31
    move-result-object v1

    #@32
    .line 326
    .local v1, "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v0, v1, :cond_2

    #@34
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v7

    #@38
    if-nez v7, :cond_2

    #@3a
    .line 331
    return v9

    #@3b
    .line 334
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
    .line 271
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

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
    .line 217
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

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
    .line 286
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .line 287
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@7
    move-result v1

    #@8
    .line 289
    .local v1, "hashCode":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 291
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@11
    move-result-object v2

    #@12
    .line 292
    .local v2, "o":Ljava/lang/Object;
    mul-int/lit8 v1, v1, 0x11

    #@14
    .line 294
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v3

    #@18
    xor-int/2addr v1, v3

    #@19
    goto :goto_0

    #@1a
    .line 297
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 372
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;
    .locals 2

    #@0
    .prologue
    .line 222
    move-object v0, p0

    #@1
    .line 224
    .local v0, "outer":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;

    #@3
    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@6
    return-object v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    #@0
    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6
    .line 207
    .local v1, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@a
    move-result v2

    #@b
    if-eq v0, v2, :cond_0

    #@d
    .line 209
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 207
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 212
    :cond_0
    return-object v1
.end method

.method toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 350
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    #@5
    .line 352
    .local v0, "derSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@7
    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@9
    .line 354
    return-object v0
.end method

.method toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 363
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>()V

    #@5
    .line 365
    .local v0, "dlSeq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@7
    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@9
    .line 367
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
