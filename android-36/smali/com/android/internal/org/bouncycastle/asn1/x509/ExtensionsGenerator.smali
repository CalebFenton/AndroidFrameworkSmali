.class public Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;
.super Ljava/lang/Object;
.source "ExtensionsGenerator.java"


# static fields
.field private static final blacklist dupsAllowed:Ljava/util/Set;


# instance fields
.field private blacklist extOrdering:Ljava/util/Vector;

.field private blacklist extensions:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 36
    .local v0, "dups":Ljava/util/Set;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->dupsAllowed:Ljava/util/Set;

    .line 41
    .end local v0    # "dups":Ljava/util/Set;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 67
    return-void
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 11
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->dupsAllowed:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 87
    .local v0, "existingExtension":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 88
    .local v1, "seq1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 90
    .local v2, "seq2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 91
    .local v3, "items":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "en":Ljava/util/Enumeration;
    :goto_3e
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 93
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3e

    .line 95
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_4e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .restart local v4    # "en":Ljava/util/Enumeration;
    :goto_52
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 97
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_52

    .line 102
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_62
    :try_start_62
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, p1, p2, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-virtual {v4, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_75} :catch_77

    .line 107
    nop

    .line 108
    .end local v0    # "existingExtension":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v1    # "seq1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "seq2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "items":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_b9

    .line 104
    .restart local v0    # "existingExtension":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .restart local v1    # "seq1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "seq2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "items":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_77
    move-exception v4

    .line 106
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 111
    .end local v0    # "existingExtension":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v1    # "seq1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "seq2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "items":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_a1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_b9
    return-void
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V
    .registers 5
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 129
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 134
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void

    .line 131
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 9
    .param p1, "extensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs()[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 256
    .local v0, "oids":[Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-eq v1, v2, :cond_24

    .line 258
    aget-object v2, v0, v1

    .line 259
    .local v2, "ident":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 260
    .local v3, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 256
    .end local v2    # "ident":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 262
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public blacklist generate()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 245
    .local v0, "exts":[Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_24

    .line 247
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    aput-object v2, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 250
    .end local v1    # "i":I
    :cond_24
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;-><init>([Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    return-object v1
.end method

.method public blacklist getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 223
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public blacklist hasExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist removeExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 5
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void

    .line 197
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 153
    return-void
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 5
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .line 168
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V

    .line 169
    return-void
.end method

.method public blacklist replaceExtension(Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;)V
    .registers 5
    .param p1, "extension"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 184
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void

    .line 181
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    .line 50
    return-void
.end method
