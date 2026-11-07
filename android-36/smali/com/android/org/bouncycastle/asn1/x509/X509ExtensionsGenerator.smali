.class public Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;
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

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public blacklist addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 47
    :try_start_0
    invoke-interface {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error encoding value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist addExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 70
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extension "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already added"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist generate()Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .registers 3

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public blacklist reset()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extensions:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509ExtensionsGenerator;->extOrdering:Ljava/util/Vector;

    return-void
.end method
