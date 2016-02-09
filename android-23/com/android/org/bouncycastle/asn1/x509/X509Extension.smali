.class public Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
.super Ljava/lang/Object;
.source "X509Extension.java"


# static fields
.field public static final auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field critical:Z

.field value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.29.9"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.29.14"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.29.15"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "2.5.29.16"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.29.17"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.29.18"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.29.19"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.29.20"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52
    const-string/jumbo v1, "2.5.29.21"

    #@55
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    const-string/jumbo v1, "2.5.29.23"

    #@5f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@66
    const-string/jumbo v1, "2.5.29.24"

    #@69
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    const-string/jumbo v1, "2.5.29.27"

    #@73
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "2.5.29.28"

    #@7d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "2.5.29.29"

    #@87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8c
    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v1, "2.5.29.30"

    #@91
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@94
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    const-string/jumbo v1, "2.5.29.31"

    #@9b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@9e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a0
    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a2
    const-string/jumbo v1, "2.5.29.32"

    #@a5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    const-string/jumbo v1, "2.5.29.33"

    #@af
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b6
    const-string/jumbo v1, "2.5.29.35"

    #@b9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@bc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    .line 115
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    const-string/jumbo v1, "2.5.29.36"

    #@c3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c8
    .line 120
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    const-string/jumbo v1, "2.5.29.37"

    #@cd
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    const-string/jumbo v1, "2.5.29.46"

    #@d7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@da
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dc
    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    const-string/jumbo v1, "2.5.29.54"

    #@e1
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.1"

    #@eb
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ee
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f0
    .line 140
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.11"

    #@f5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fa
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.12"

    #@ff
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@102
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    .line 150
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@106
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.2"

    #@109
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@10c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.3"

    #@113
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 160
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.4"

    #@11d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@120
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@122
    .line 165
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@124
    const-string/jumbo v1, "2.5.29.56"

    #@127
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12e
    const-string/jumbo v1, "2.5.29.55"

    #@131
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@134
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@136
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Boolean;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "critical"    # Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 179
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@6
    move-result v0

    #@7
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    #@9
    .line 180
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@b
    .line 177
    return-void
.end method

.method public constructor <init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "critical"    # Z
    .param p2, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    #@5
    .line 188
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7
    .line 185
    return-void
.end method

.method public static convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "ext"    # Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 245
    :catch_0
    move-exception v0

    #@e
    .line 246
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "can\'t convert extension: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 219
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 221
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 224
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    #@9
    .line 226
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 227
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    #@1a
    move-result v2

    #@1b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    #@1e
    move-result v3

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    const/4 v1, 0x1

    #@22
    .line 226
    :cond_1
    return v1
.end method

.method public getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 203
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    #@16
    move-result v0

    #@17
    not-int v0, v0

    #@18
    return v0
.end method

.method public isCritical()Z
    .locals 1

    #@0
    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    #@2
    return v0
.end method
