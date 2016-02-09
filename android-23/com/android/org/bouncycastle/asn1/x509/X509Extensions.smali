.class public Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509Extensions.java"


# static fields
.field public static final AuditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final AuthorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final BiometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CertificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CertificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final FreshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final InstructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final InvalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final IssuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final LogoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final NameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final NoRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PolicyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PolicyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PrivateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final QCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ReasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SubjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SubjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SubjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final TargetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.29.9"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.29.14"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.29.15"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "2.5.29.16"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PrivateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.29.17"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.29.18"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.29.19"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.29.20"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52
    const-string/jumbo v1, "2.5.29.21"

    #@55
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    const-string/jumbo v1, "2.5.29.23"

    #@5f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InstructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@66
    const-string/jumbo v1, "2.5.29.24"

    #@69
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    const-string/jumbo v1, "2.5.29.27"

    #@73
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "2.5.29.28"

    #@7d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "2.5.29.29"

    #@87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8c
    .line 111
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v1, "2.5.29.30"

    #@91
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@94
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    .line 117
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    const-string/jumbo v1, "2.5.29.31"

    #@9b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@9e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a0
    .line 123
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a2
    const-string/jumbo v1, "2.5.29.32"

    #@a5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    .line 129
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    const-string/jumbo v1, "2.5.29.33"

    #@af
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b6
    const-string/jumbo v1, "2.5.29.35"

    #@b9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@bc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    const-string/jumbo v1, "2.5.29.36"

    #@c3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c8
    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    const-string/jumbo v1, "2.5.29.37"

    #@cd
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    .line 153
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    const-string/jumbo v1, "2.5.29.46"

    #@d7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@da
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dc
    .line 159
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    const-string/jumbo v1, "2.5.29.54"

    #@e1
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 165
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.1"

    #@eb
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ee
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f0
    .line 171
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.11"

    #@f5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->SubjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fa
    .line 177
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.12"

    #@ff
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@102
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->LogoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    .line 183
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@106
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.2"

    #@109
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@10c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->BiometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    .line 189
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.3"

    #@113
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 195
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.4"

    #@11d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@120
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->AuditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@122
    .line 201
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@124
    const-string/jumbo v1, "2.5.29.56"

    #@127
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    .line 207
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12e
    const-string/jumbo v1, "2.5.29.55"

    #@131
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@134
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@136
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 10
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 250
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@6
    .line 209
    new-instance v2, Ljava/util/Hashtable;

    #@8
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@b
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@d
    .line 210
    new-instance v2, Ljava/util/Vector;

    #@f
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@14
    .line 253
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@17
    move-result-object v0

    #@18
    .line 255
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 257
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@25
    move-result-object v1

    #@26
    .line 259
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@29
    move-result v2

    #@2a
    const/4 v3, 0x3

    #@2b
    if-ne v2, v3, :cond_0

    #@2d
    .line 261
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@2f
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@32
    move-result-object v3

    #@33
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@35
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@38
    move-result-object v5

    #@39
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@40
    move-result-object v6

    #@41
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@44
    move-result-object v6

    #@45
    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Boolean;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@48
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 272
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@4d
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@54
    goto :goto_0

    #@55
    .line 263
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@58
    move-result v2

    #@59
    if-ne v2, v9, :cond_1

    #@5b
    .line 265
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@5d
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@60
    move-result-object v3

    #@61
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@63
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@66
    move-result-object v5

    #@67
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@6a
    move-result-object v5

    #@6b
    invoke-direct {v4, v7, v5}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;-><init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@6e
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    goto :goto_1

    #@72
    .line 269
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@74
    new-instance v3, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v4, "Bad sequence size: "

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@83
    move-result v4

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v2

    #@90
    .line 251
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "extensions"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    #@4
    .line 282
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 5
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "extensions"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 209
    new-instance v3, Ljava/util/Hashtable;

    #@5
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@a
    .line 210
    new-instance v3, Ljava/util/Vector;

    #@c
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@11
    .line 299
    if-nez p1, :cond_0

    #@13
    .line 301
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@16
    move-result-object v0

    #@17
    .line 308
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 310
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@1f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 305
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@2e
    move-result-object v0

    #@2f
    .restart local v0    # "e":Ljava/util/Enumeration;
    goto :goto_0

    #@30
    .line 313
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@32
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@35
    move-result-object v0

    #@36
    .line 315
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 317
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    move-result-object v2

    #@44
    .line 318
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@4a
    .line 320
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@4c
    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    goto :goto_1

    #@50
    .line 295
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 6
    .param p1, "objectIDs"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 209
    new-instance v4, Ljava/util/Hashtable;

    #@5
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@a
    .line 210
    new-instance v4, Ljava/util/Vector;

    #@c
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@f
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@11
    .line 335
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v1

    #@15
    .line 337
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 339
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@1d
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@24
    goto :goto_0

    #@25
    .line 342
    :cond_0
    const/4 v0, 0x0

    #@26
    .line 344
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@28
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@2b
    move-result-object v1

    #@2c
    .line 346
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 348
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    .line 349
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@3e
    .line 351
    .local v2, "ext":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@40
    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 352
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 333
    .end local v2    # "ext":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-void
.end method

.method private getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p1, "isCritical"    # Z

    #@0
    .prologue
    .line 452
    new-instance v2, Ljava/util/Vector;

    #@2
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@5
    .line 454
    .local v2, "oidVec":Ljava/util/Vector;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@8
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@b
    move-result v3

    #@c
    if-eq v0, v3, :cond_1

    #@e
    .line 456
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    .line 458
    .local v1, "oid":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@1c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    #@1f
    move-result v3

    #@20
    if-ne v3, p1, :cond_0

    #@22
    .line 460
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@25
    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 464
    .end local v1    # "oid":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 216
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 222
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 224
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@8
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@9
    .line 227
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 229
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@f
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@11
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@14
    return-object v0

    #@15
    .line 232
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 234
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@1b
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@1d
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@23
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@26
    return-object v1

    #@27
    .line 237
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 239
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@2d
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@30
    move-result-object v0

    #@31
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 242
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "illegal object in getInstance: "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0
.end method

.method private toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p1, "oidVec"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    .line 471
    .local v1, "oids":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 473
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    aput-object v2, v1, v0

    #@12
    .line 471
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 475
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equivalent(Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;)Z
    .locals 5
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 415
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    #@6
    move-result v2

    #@7
    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    #@c
    move-result v3

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 417
    return v4

    #@10
    .line 420
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@15
    move-result-object v0

    #@16
    .line 422
    .local v0, "e1":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 424
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .line 426
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v2

    #@30
    if-nez v2, :cond_1

    #@32
    .line 428
    return v4

    #@33
    .line 432
    .end local v1    # "key":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    #@34
    return v2
.end method

.method public getCriticalExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 447
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getExtension(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@8
    return-object v0
.end method

.method public getExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->toOidArray(Ljava/util/Vector;)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 442
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->getExtensionOIDs(Z)[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    #@0
    .prologue
    .line 388
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 389
    .local v4, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    #@7
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@a
    move-result-object v0

    #@b
    .line 391
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 393
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    .line 394
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@1f
    .line 395
    .local v1, "ext":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@21
    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@24
    .line 397
    .local v3, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    .line 399
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_0

    #@2d
    .line 401
    sget-object v5, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@2f
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@32
    .line 404
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@39
    .line 406
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@3b
    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3e
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@41
    goto :goto_0

    #@42
    .line 409
    .end local v1    # "ext":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@44
    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@47
    return-object v5
.end method
