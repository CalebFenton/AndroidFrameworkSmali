.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CertificationRequestInfo.java"


# instance fields
.field attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 105
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@6
    .line 36
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    const-wide/16 v2, 0x0

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@d
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    .line 39
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@11
    .line 108
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@17
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@19
    .line 110
    const/4 v1, 0x1

    #@1a
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@24
    .line 111
    const/4 v1, 0x2

    #@25
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@28
    move-result-object v1

    #@29
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2f
    .line 117
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@32
    move-result v1

    #@33
    if-le v1, v6, :cond_0

    #@35
    .line 119
    invoke-virtual {p1, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@3b
    .line 120
    .local v0, "tagobj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    invoke-static {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@41
    .line 123
    .end local v0    # "tagobj":Lcom/android/org/bouncycastle/asn1/DERTaggedObject;
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@43
    if-eqz v1, :cond_1

    #@45
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@47
    if-nez v1, :cond_2

    #@49
    .line 125
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4b
    const-string/jumbo v2, "Not all mandatory fields set in CertificationRequestInfo generator."

    #@4e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1

    #@52
    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@54
    if-eqz v1, :cond_1

    #@56
    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    .line 39
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@f
    .line 74
    if-eqz p1, :cond_0

    #@11
    if-nez p2, :cond_1

    #@13
    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 79
    :cond_1
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@1e
    .line 80
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@20
    .line 81
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@22
    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "subject"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .param p2, "pkInfo"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6
    const-wide/16 v2, 0x0

    #@8
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    .line 39
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@f
    .line 92
    if-eqz p1, :cond_0

    #@11
    if-nez p2, :cond_1

    #@13
    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@26
    .line 98
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@28
    .line 99
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2a
    .line 90
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 46
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 53
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getSubject()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 153
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10
    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 157
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 159
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1d
    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 162
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@25
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@28
    return-object v1
.end method
