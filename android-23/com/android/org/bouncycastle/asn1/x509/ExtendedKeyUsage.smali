.class public Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "ExtendedKeyUsage.java"


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field usageTable:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 25
    new-instance v2, Ljava/util/Hashtable;

    #@5
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@a
    .line 90
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@c
    .line 92
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@f
    move-result-object v0

    #@10
    .line 94
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 96
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1c
    .line 97
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f
    move-result-object v2

    #@20
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    if-nez v2, :cond_0

    #@24
    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v3, "Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."

    #@29
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@2f
    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 88
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;)V
    .locals 1
    .param p1, "usage"    # Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@a
    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@c
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@11
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@13
    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 4
    .param p1, "usages"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 25
    new-instance v3, Ljava/util/Hashtable;

    #@5
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@a
    .line 130
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@c
    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@f
    .line 131
    .local v2, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@12
    move-result-object v0

    #@13
    .line 133
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 135
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@20
    move-result-object v1

    #@21
    .line 137
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@24
    .line 138
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@26
    invoke-virtual {v3, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    goto :goto_0

    #@2a
    .line 141
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    :cond_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2c
    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2f
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@31
    .line 128
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;)V
    .locals 5
    .param p1, "usages"    # [Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 25
    new-instance v2, Ljava/util/Hashtable;

    #@5
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@a
    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@c
    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@f
    .line 115
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@11
    if-eq v0, v2, :cond_0

    #@13
    .line 117
    aget-object v2, p1, v0

    #@15
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    .line 118
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@1a
    aget-object v3, p1, v0

    #@1c
    aget-object v4, p1, v0

    #@1e
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 115
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 121
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@26
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@29
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2b
    .line 111
    return-void
.end method

.method public static fromExtensions(Lcom/android/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .locals 1
    .param p0, "extensions"    # Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@0
    .prologue
    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 53
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 55
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 60
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getUsages()[Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    .locals 5

    #@0
    .prologue
    .line 163
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5
    move-result v4

    #@6
    new-array v3, v4, [Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@8
    .line 165
    .local v3, "temp":[Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    const/4 v0, 0x0

    #@9
    .line 166
    .local v0, "i":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@e
    move-result-object v2

    #@f
    .local v2, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 168
    add-int/lit8 v1, v0, 0x1

    #@17
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@1e
    move-result-object v4

    #@1f
    aput-object v4, v3, v0

    #@21
    move v0, v1

    #@22
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@23
    .line 170
    :cond_0
    return-object v3
.end method

.method public hasKeyPurposeId(Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;)Z
    .locals 1
    .param p1, "keyPurposeId"    # Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method
