.class public Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;
.super Ljava/lang/Object;
.source "ExtensionsGenerator.java"


# instance fields
.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@a
    .line 18
    new-instance v0, Ljava/util/Vector;

    #@c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@11
    .line 15
    return-void
.end method


# virtual methods
.method public addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "DER"

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    #@e
    .line 41
    return-void
.end method

.method public addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "extension "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " already added"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@2b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2e
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@30
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@32
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@34
    invoke-direct {v2, p3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@37
    invoke-direct {v1, p1, p2, v2}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@3a
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 57
    return-void
.end method

.method public generate()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .locals 4

    #@0
    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@8
    .line 87
    .local v0, "exts":[Lcom/android/org/bouncycastle/asn1/x509/Extension;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@b
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@e
    move-result v2

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 89
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@13
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@15
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@1f
    aput-object v2, v0, v1

    #@21
    .line 87
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 92
    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@26
    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;-><init>([Lcom/android/org/bouncycastle/asn1/x509/Extension;)V

    #@29
    return-object v2
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@7
    .line 26
    new-instance v0, Ljava/util/Vector;

    #@9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@e
    .line 23
    return-void
.end method
