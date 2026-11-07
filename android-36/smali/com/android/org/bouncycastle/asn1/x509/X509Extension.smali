.class public Lcom/android/org/bouncycastle/asn1/x509/X509Extension;
.super Ljava/lang/Object;
.source "X509Extension.java"


# static fields
.field public static final blacklist auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field blacklist critical:Z

.field blacklist value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 157
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 167
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 190
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static blacklist convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/X509Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 221
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 226
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;

    .line 228
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 229
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result p0

    if-ne p1, p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method public blacklist getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 212
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result p0

    return p0

    .line 215
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->getValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public blacklist isCritical()Z
    .registers 1

    .line 195
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Extension;->critical:Z

    return p0
.end method
