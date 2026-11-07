.class public Lsun/security/x509/PKIXExtensions;
.super Ljava/lang/Object;
.source "PKIXExtensions.java"


# static fields
.field public static final blacklist AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist AuthInfoAccess_data:[I

.field public static final blacklist AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist AuthorityKey_data:[I

.field public static final blacklist BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist BasicConstraints_data:[I

.field public static final blacklist CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CRLDistributionPoints_data:[I

.field public static final blacklist CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CRLNumber_data:[I

.field public static final greylist CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CertificateIssuer_data:[I

.field public static final blacklist CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CertificatePolicies_data:[I

.field public static final blacklist DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist DeltaCRLIndicator_data:[I

.field public static final blacklist ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist ExtendedKeyUsage_data:[I

.field public static final blacklist FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist FreshestCRL_data:[I

.field public static final blacklist HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist HoldInstructionCode_data:[I

.field public static final blacklist InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist InhibitAnyPolicy_data:[I

.field public static final blacklist InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist InvalidityDate_data:[I

.field public static final blacklist IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist IssuerAlternativeName_data:[I

.field public static final blacklist IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist IssuingDistributionPoint_data:[I

.field public static final blacklist KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist KeyUsage_data:[I

.field public static final blacklist NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist NameConstraints_data:[I

.field public static final blacklist OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist OCSPNoCheck_data:[I

.field public static final blacklist PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist PolicyConstraints_data:[I

.field public static final blacklist PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist PolicyMappings_data:[I

.field public static final blacklist PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist PrivateKeyUsage_data:[I

.field public static final blacklist ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist ReasonCode_data:[I

.field public static final blacklist SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectAlternativeName_data:[I

.field public static final blacklist SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectDirectoryAttributes_data:[I

.field public static final blacklist SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectInfoAccess_data:[I

.field public static final blacklist SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectKey_data:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 52
    const/16 v0, 0x23

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0x1d

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    .line 53
    const/16 v0, 0xe

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    .line 54
    const/16 v0, 0xf

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    .line 55
    const/16 v0, 0x10

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    .line 56
    const/16 v0, 0x20

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    .line 57
    const/16 v0, 0x21

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    .line 58
    const/16 v0, 0x11

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    .line 59
    const/16 v0, 0x12

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    .line 60
    const/16 v0, 0x9

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    .line 61
    const/16 v4, 0x13

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    .line 62
    const/16 v4, 0x1e

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    .line 63
    const/16 v4, 0x24

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    .line 64
    const/16 v4, 0x1f

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    .line 65
    const/16 v4, 0x14

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    .line 66
    const/16 v4, 0x1c

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    .line 67
    const/16 v4, 0x1b

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    .line 68
    const/16 v4, 0x15

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    .line 69
    const/16 v4, 0x17

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    .line 70
    const/16 v4, 0x18

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    .line 71
    const/16 v4, 0x25

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    .line 72
    const/16 v4, 0x36

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    .line 73
    filled-new-array {v1, v2, v3, v3}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    .line 74
    new-array v4, v0, [I

    fill-array-data v4, :array_1a2

    sput-object v4, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    .line 75
    new-array v0, v0, [I

    fill-array-data v0, :array_1b8

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    .line 76
    const/16 v0, 0x2e

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1ce

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    .line 228
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 229
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 230
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 231
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 232
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    .line 233
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    .line 234
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    .line 235
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    .line 236
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 237
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    .line 238
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 239
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 240
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    .line 241
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    .line 242
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

    .line 243
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    .line 244
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 245
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 246
    sget-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    .line 247
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 248
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    .line 250
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 251
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    .line 252
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 253
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    .line 254
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 255
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    .line 256
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    .line 257
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    .line 258
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    .line 259
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    .line 260
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    .line 261
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    .line 262
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    .line 263
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    .line 264
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 265
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    .line 266
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 267
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    .line 268
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 269
    return-void

    :array_1a2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0x1
    .end array-data

    :array_1b8
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0xb
    .end array-data

    :array_1ce
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x5
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
