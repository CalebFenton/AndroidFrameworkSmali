.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;
.super Ljava/lang/Object;
.source "X509ExtensionsGenerator.java"


# instance fields
.field private blacklist extOrdering:Ljava/util/Vector;

.field private blacklist extensions:Ljava/util/Hashtable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 8
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 47
    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    .line 52
    nop

    .line 53
    return-void

    .line 49
    :catch_f
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error encoding value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist addExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 7
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void

    .line 70
    :cond_1d
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
.end method

.method public blacklist generate()Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 4

    .line 94
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    .line 30
    return-void
.end method
