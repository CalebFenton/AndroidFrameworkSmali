.class public Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v2, Ljava/util/Hashtable;

    #@5
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@a
    .line 29
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    #@e
    move-result v2

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 31
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@18
    move-result-object v0

    #@19
    .line 33
    .local v0, "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {p0, v2, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    #@20
    .line 29
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 27
    .end local v0    # "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 3
    .param p1, "s"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v2, Ljava/util/Hashtable;

    #@5
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@a
    .line 40
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@e
    move-result v2

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 42
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@18
    move-result-object v0

    #@19
    .line 44
    .local v0, "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {p0, v2, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    #@20
    .line 40
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 38
    .end local v0    # "a":Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@a
    .line 51
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d
    move-result-object v0

    #@e
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    #@11
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/Attributes;)V
    .locals 1
    .param p1, "attrs"    # Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    #@0
    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@b
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attrs"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@a
    .line 23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@10
    .line 21
    return-void
.end method

.method private addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "a"    # Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@0
    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 66
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@8
    .line 68
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 62
    :goto_0
    return-void

    #@e
    .line 74
    :cond_0
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 76
    new-instance v0, Ljava/util/Vector;

    #@14
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@17
    .line 78
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1a
    .line 79
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 88
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@1f
    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    goto :goto_0

    #@23
    .end local v0    # "v":Ljava/util/Vector;
    :cond_1
    move-object v0, v1

    #@24
    .line 83
    check-cast v0, Ljava/util/Vector;

    #@26
    .line 85
    .restart local v0    # "v":Ljava/util/Vector;
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@29
    goto :goto_1
.end method

.method private copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "in"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 203
    new-instance v2, Ljava/util/Hashtable;

    #@2
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 204
    .local v2, "out":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 206
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 208
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 210
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    goto :goto_0

    #@1b
    .line 213
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 3
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attrValue"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 225
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    #@7
    .line 227
    .local v0, "newTable":Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@9
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@b
    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    invoke-direct {v1, p1, v2}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@11
    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attribute;)V

    #@14
    .line 229
    return-object v0
.end method

.method public get(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 103
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Vector;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 105
    check-cast v0, Ljava/util/Vector;

    #@c
    .end local v0    # "value":Ljava/lang/Object;
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@13
    return-object v1

    #@14
    .line 108
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@16
    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getAll(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 121
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 123
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    .line 125
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Vector;

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 127
    check-cast v2, Ljava/util/Vector;

    #@11
    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v0

    #@15
    .line 129
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 131
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@21
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@24
    goto :goto_0

    #@25
    .line 134
    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_1

    #@27
    .line 136
    check-cast v2, Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@29
    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 139
    :cond_1
    return-object v1
.end method

.method public remove(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    .locals 2
    .param p1, "attrType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 234
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@4
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;-><init>(Ljava/util/Hashtable;)V

    #@7
    .line 236
    .local v0, "newTable":Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;
    iget-object v1, v0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 238
    return-object v0
.end method

.method public size()I
    .locals 4

    #@0
    .prologue
    .line 144
    const/4 v2, 0x0

    #@1
    .line 146
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .line 150
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Vector;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 152
    check-cast v1, Ljava/util/Vector;

    #@17
    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@1a
    move-result v3

    #@1b
    add-int/2addr v2, v3

    #@1c
    goto :goto_0

    #@1d
    .line 156
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 160
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public toASN1EncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .locals 5

    #@0
    .prologue
    .line 170
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 171
    .local v2, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@a
    move-result-object v0

    #@b
    .line 173
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 175
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .line 177
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Vector;

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 179
    check-cast v3, Ljava/util/Vector;

    #@1b
    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@1e
    move-result-object v1

    #@1f
    .line 181
    .local v1, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 183
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@30
    goto :goto_1

    #@31
    .line 188
    .end local v1    # "en":Ljava/util/Enumeration;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/Attribute;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@38
    goto :goto_0

    #@39
    .line 192
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public toASN1Structure()Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .locals 2

    #@0
    .prologue
    .line 197
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    #@2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@9
    return-object v0
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
