.class public Lcom/android/org/bouncycastle/asn1/x509/Certificate;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Certificate.java"


# instance fields
.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5
    .line 59
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 61
    const/4 v0, 0x0

    #@d
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@17
    .line 62
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    .line 64
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
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2d
    .line 52
    return-void

    #@2e
    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v1, "sequence wrong size for a certificate"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 39
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 41
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 43
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 48
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getEndDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@2
    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getStartDate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;->getVersionNumber()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    return-object v0
.end method
