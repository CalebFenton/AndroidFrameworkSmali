.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;
.super Ljava/lang/Object;
.source "PKCS12BagAttributeCarrierImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private pkcs12Attributes:Ljava/util/Hashtable;

.field private pkcs12Ordering:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 31
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    new-instance v1, Ljava/util/Vector;

    #@7
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@a
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>(Ljava/util/Hashtable;Ljava/util/Vector;)V

    #@d
    .line 29
    return-void
.end method

.method constructor <init>(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 0
    .param p1, "attributes"    # Ljava/util/Hashtable;
    .param p2, "ordering"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@5
    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@7
    .line 23
    return-void
.end method


# virtual methods
.method getAttributes()Ljava/util/Hashtable;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getOrdering()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 107
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Hashtable;

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 109
    check-cast v1, Ljava/util/Hashtable;

    #@a
    .end local v1    # "obj":Ljava/lang/Object;
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@c
    .line 110
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/util/Vector;

    #@12
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@14
    .line 103
    :cond_0
    return-void

    #@15
    .line 114
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@17
    check-cast v1, [B

    #@19
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@1c
    .line 118
    .local v0, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :goto_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v2, :cond_0

    #@24
    .line 120
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2b
    goto :goto_0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 36
    :goto_0
    return-void

    #@e
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@10
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@18
    goto :goto_0
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    #@2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 80
    new-instance v4, Ljava/util/Hashtable;

    #@a
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@d
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@10
    .line 81
    new-instance v4, Ljava/util/Vector;

    #@12
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@15
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@18
    .line 76
    :goto_0
    return-void

    #@19
    .line 85
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@1b
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1e
    .line 86
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    #@20
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    #@23
    .line 88
    .local v0, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@26
    move-result-object v2

    #@27
    .line 90
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 92
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33
    .line 94
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@36
    .line 95
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    #@38
    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3e
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@41
    goto :goto_1

    #@42
    .line 98
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@45
    move-result-object v4

    #@46
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@49
    goto :goto_0
.end method
