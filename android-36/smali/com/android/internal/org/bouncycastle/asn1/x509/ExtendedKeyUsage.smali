.class public Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ExtendedKeyUsage.java"


# instance fields
.field blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist usageTable:Ljava/util/Hashtable;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 91
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 92
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 94
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    .local v0, "e":Ljava/util/Enumeration;
    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 98
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 99
    .local v1, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_2a

    .line 103
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_10

    .line 101
    .restart local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v1    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_32
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;)V
    .registers 3
    .param p1, "usage"    # Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 83
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;)V
    .registers 6
    .param p1, "usages"    # Ljava/util/Vector;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 132
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 134
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 135
    .local v1, "e":Ljava/util/Enumeration;
    :goto_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 137
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object v2

    .line 139
    .local v2, "o":Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 140
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v2    # "o":Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;
    goto :goto_17

    .line 143
    :cond_2e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 144
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;)V
    .registers 7
    .param p1, "usages"    # [Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 114
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 115
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 117
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, p1

    if-eq v1, v2, :cond_25

    .line 119
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 123
    .end local v1    # "i":I
    :cond_25
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 124
    return-void
.end method

.method public static blacklist fromExtensions(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .registers 2
    .param p0, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 41
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    if-eqz v0, :cond_8

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    return-object v0

    .line 57
    :cond_8
    if-eqz p0, :cond_14

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getUsages()[Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 167
    .local v0, "temp":[Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;
    const/4 v1, 0x0

    .line 168
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "it":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 170
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_f

    .line 172
    .end local v2    # "it":Ljava/util/Enumeration;
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_23
    return-object v0
.end method

.method public blacklist hasKeyPurposeId(Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;)Z
    .registers 3
    .param p1, "keyPurposeId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 155
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
