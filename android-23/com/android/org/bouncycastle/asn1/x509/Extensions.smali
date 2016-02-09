.class public Lcom/android/org/bouncycastle/asn1/x509/Extensions;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Extensions.java"


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    new-instance v2, Ljava/util/Hashtable;

    #@5
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@a
    .line 20
    new-instance v2, Ljava/util/Vector;

    #@c
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@11
    .line 53
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@14
    move-result-object v0

    #@15
    .line 55
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 57
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@22
    move-result-object v1

    #@23
    .line 59
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@25
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 60
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@2e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    goto :goto_0

    #@36
    .line 51
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .locals 2
    .param p1, "extension"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@a
    .line 20
    new-instance v0, Ljava/util/Vector;

    #@c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@11
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1a
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@1c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 70
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/Extension;)V
    .locals 4
    .param p1, "extensions"    # [Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 19
    new-instance v2, Ljava/util/Hashtable;

    #@5
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@a
    .line 20
    new-instance v2, Ljava/util/Vector;

    #@c
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@11
    .line 84
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 86
    aget-object v0, p1, v1

    #@17
    .line 88
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@19
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@20
    .line 89
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 84
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 82
    .end local v0    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    return-void
.end method

.method private getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p1, "isCritical"    # Z

    #@0
    .prologue
    .line 197
    new-instance v2, Ljava/util/Vector;

    #@2
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@5
    .line 199
    .local v2, "oidVec":Ljava/util/Vector;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@8
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@b
    move-result v3

    #@c
    if-eq v0, v3, :cond_1

    #@e
    .line 201
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 203
    .local v1, "oid":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@1c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@1f
    move-result v3

    #@20
    if-ne v3, p1, :cond_0

    #@22
    .line 205
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@25
    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 209
    .end local v1    # "oid":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 34
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 41
    :cond_1
    return-object v1
.end method

.method private toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p1, "oidVec"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 214
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    .line 216
    .local v1, "oids":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 218
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    aput-object v2, v1, v0

    #@12
    .line 216
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 220
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equivalent(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Z
    .locals 5
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 160
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    #@6
    move-result v2

    #@7
    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    #@c
    move-result v3

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 162
    return v4

    #@10
    .line 165
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@15
    move-result-object v0

    #@16
    .line 167
    .local v0, "e1":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 169
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .line 171
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_1

    #@32
    .line 173
    return v4

    #@33
    .line 177
    .end local v1    # "key":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    #@34
    return v2
.end method

.method public getCriticalExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 192
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@8
    return-object v0
.end method

.method public getExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 121
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@4
    move-result-object v0

    #@5
    .line 123
    .local v0, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    if-eqz v0, :cond_0

    #@7
    .line 125
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 128
    :cond_0
    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    .line 143
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 144
    .local v3, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    #@7
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@a
    move-result-object v0

    #@b
    .line 146
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    .line 149
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@1f
    .line 151
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@22
    goto :goto_0

    #@23
    .line 154
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@25
    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@28
    return-object v4
.end method
