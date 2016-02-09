.class public Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509CertificateStructure.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5
    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 64
    const/4 v0, 0x0

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@17
    .line 65
    const/4 v0, 0x1

    #@18
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    .line 67
    const/4 v0, 0x2

    #@23
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@26
    move-result-object v0

    #@27
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2d
    .line 55
    return-void

    #@2e
    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v1, "sequence wrong size for a certificate"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 46
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 51
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;->getVersion()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method
