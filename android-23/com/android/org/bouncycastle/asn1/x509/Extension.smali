.class public Lcom/android/org/bouncycastle/asn1/x509/Extension;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Extension.java"


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
.field private critical:Z

.field private extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.29.9"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.29.14"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.29.15"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "2.5.29.16"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.29.17"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.29.18"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.29.19"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.29.20"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52
    const-string/jumbo v1, "2.5.29.21"

    #@55
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    const-string/jumbo v1, "2.5.29.23"

    #@5f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@66
    const-string/jumbo v1, "2.5.29.24"

    #@69
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    const-string/jumbo v1, "2.5.29.27"

    #@73
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "2.5.29.28"

    #@7d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "2.5.29.29"

    #@87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8c
    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v1, "2.5.29.30"

    #@91
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@94
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    const-string/jumbo v1, "2.5.29.31"

    #@9b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@9e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a0
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a2
    const-string/jumbo v1, "2.5.29.32"

    #@a5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    const-string/jumbo v1, "2.5.29.33"

    #@af
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    .line 115
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b6
    const-string/jumbo v1, "2.5.29.35"

    #@b9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@bc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    .line 120
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    const-string/jumbo v1, "2.5.29.36"

    #@c3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c8
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    const-string/jumbo v1, "2.5.29.37"

    #@cd
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    const-string/jumbo v1, "2.5.29.46"

    #@d7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@da
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dc
    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    const-string/jumbo v1, "2.5.29.54"

    #@e1
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 140
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.1"

    #@eb
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ee
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f0
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.11"

    #@f5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fa
    .line 150
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.12"

    #@ff
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@102
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@106
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.2"

    #@109
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@10c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    .line 160
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.3"

    #@113
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 165
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    const-string/jumbo v1, "1.3.6.1.5.5.7.1.4"

    #@11d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@120
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@122
    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@124
    const-string/jumbo v1, "2.5.29.56"

    #@127
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    .line 175
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12e
    const-string/jumbo v1, "2.5.29.55"

    #@131
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@134
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@136
    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Boolean;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1
    .param p1, "extnId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 186
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@7
    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "extnId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 202
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    .line 203
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    #@7
    .line 204
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 1
    .param p1, "extnId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 194
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@2
    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    #@8
    .line 192
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 207
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@6
    .line 209
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@9
    move-result v0

    #@a
    if-ne v0, v4, :cond_0

    #@c
    .line 211
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    .line 212
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    #@18
    .line 213
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@22
    .line 207
    :goto_0
    return-void

    #@23
    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@26
    move-result v0

    #@27
    const/4 v1, 0x3

    #@28
    if-ne v0, v1, :cond_1

    #@2a
    .line 217
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    .line 218
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    #@3f
    move-result v0

    #@40
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    #@42
    .line 219
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@4c
    goto :goto_0

    #@4d
    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "Bad sequence size: "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@5e
    move-result v2

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v0
.end method

.method private static convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "ext"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

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
    .line 317
    :catch_0
    move-exception v0

    #@e
    .line 318
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

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 229
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 231
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 233
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 235
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 238
    :cond_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 274
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 276
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 279
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    #@9
    .line 281
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 282
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 281
    if-eqz v2, :cond_1

    #@25
    .line 283
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@28
    move-result v2

    #@29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@2c
    move-result v3

    #@2d
    if-ne v2, v3, :cond_1

    #@2f
    const/4 v1, 0x1

    #@30
    .line 281
    :cond_1
    return v1
.end method

.method public getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    return-object v0
.end method

.method public getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 258
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 265
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    #@15
    move-result v1

    #@16
    xor-int/2addr v0, v1

    #@17
    return v0

    #@18
    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    #@27
    move-result v1

    #@28
    xor-int/2addr v0, v1

    #@29
    not-int v0, v0

    #@2a
    return v0
.end method

.method public isCritical()Z
    .locals 1

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    #@0
    .prologue
    .line 288
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 290
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@a
    .line 292
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 294
    const/4 v1, 0x1

    #@f
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@18
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1b
    .line 299
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@1d
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@20
    return-object v1
.end method
