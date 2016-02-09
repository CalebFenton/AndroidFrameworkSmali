.class public Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;
.super Ljava/lang/Object;
.source "X509ExtensionsGenerator.java"


# instance fields
.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@a
    .line 19
    new-instance v0, Ljava/util/Vector;

    #@c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@11
    .line 16
    return-void
.end method


# virtual methods
.method public addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 45
    :try_start_0
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "DER"

    #@7
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 41
    return-void

    #@f
    .line 48
    :catch_0
    move-exception v0

    #@10
    .line 49
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "error encoding value: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1
.end method

.method public addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 68
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
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@2b
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2e
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@30
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@32
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@34
    invoke-direct {v2, p3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@37
    invoke-direct {v1, p2, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@3a
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 64
    return-void
.end method

.method public generate()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 3

    #@0
    .prologue
    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    #@9
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

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
    .line 26
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    #@7
    .line 27
    new-instance v0, Ljava/util/Vector;

    #@9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    #@e
    .line 24
    return-void
.end method
