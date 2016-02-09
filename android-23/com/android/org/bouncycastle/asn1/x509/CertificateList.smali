.class public Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificateList.java"


# instance fields
.field hashCodeValue:I

.field isHashCodeSet:Z

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 63
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 34
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    #@6
    .line 66
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x3

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 68
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@17
    .line 69
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    .line 70
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2d
    .line 64
    return-void

    #@2e
    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v1, "sequence wrong size for CertificateList"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 49
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 51
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 56
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    return-object v0
.end method

.method public getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getVersionNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 138
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    #@a
    .line 139
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    #@d
    .line 142
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    #@f
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 127
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 128
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    .line 129
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@14
    .line 131
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@16
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@19
    return-object v1
.end method
