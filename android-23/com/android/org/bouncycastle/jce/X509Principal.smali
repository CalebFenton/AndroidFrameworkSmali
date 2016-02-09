.class public Lcom/android/org/bouncycastle/jce/X509Principal;
.super Lcom/android/org/bouncycastle/asn1/x509/X509Name;
.source "X509Principal.java"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    #@3
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "attributes"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Hashtable;)V

    #@3
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    #@3
    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    #@3
    .line 99
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/lang/String;)V

    #@3
    .line 123
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 0
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    #@3
    .line 141
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@2
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/X509Principal;->readSequence(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@c
    .line 47
    return-void
.end method

.method private static readSequence(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .locals 4
    .param p0, "aIn"    # Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 37
    :catch_0
    move-exception v0

    #@a
    .line 38
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "not an ASN.1 Sequence: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    #@0
    .prologue
    .line 158
    :try_start_0
    const-string/jumbo v1, "DER"

    #@3
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 161
    :catch_0
    move-exception v0

    #@9
    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/X509Principal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
