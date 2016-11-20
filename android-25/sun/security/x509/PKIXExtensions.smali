.class public Lsun/security/x509/PKIXExtensions;
.super Ljava/lang/Object;
.source "PKIXExtensions.java"


# static fields
.field public static final AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final AuthInfoAccess_data:[I

.field public static final AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final AuthorityKey_data:[I

.field public static final BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final BasicConstraints_data:[I

.field public static final CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CRLDistributionPoints_data:[I

.field public static final CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CRLNumber_data:[I

.field public static final CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CertificateIssuer_data:[I

.field public static final CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CertificatePolicies_data:[I

.field public static final DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

.field private static final DeltaCRLIndicator_data:[I

.field public static final ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final ExtendedKeyUsage_data:[I

.field public static final FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

.field private static final FreshestCRL_data:[I

.field public static final HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final HoldInstructionCode_data:[I

.field public static final InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

.field private static final InhibitAnyPolicy_data:[I

.field public static final InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

.field private static final InvalidityDate_data:[I

.field public static final IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final IssuerAlternativeName_data:[I

.field public static final IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

.field private static final IssuingDistributionPoint_data:[I

.field public static final KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final KeyUsage_data:[I

.field public static final NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final NameConstraints_data:[I

.field public static final OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

.field private static final OCSPNoCheck_data:[I

.field public static final PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final PolicyConstraints_data:[I

.field public static final PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

.field private static final PolicyMappings_data:[I

.field public static final PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final PrivateKeyUsage_data:[I

.field public static final ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final ReasonCode_data:[I

.field public static final SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectAlternativeName_data:[I

.field public static final SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectDirectoryAttributes_data:[I

.field public static final SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectInfoAccess_data:[I

.field public static final SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectKey_data:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x9

    #@2
    const/4 v3, 0x5

    #@3
    const/4 v2, 0x2

    #@4
    const/16 v1, 0x1d

    #@6
    .line 52
    const/16 v0, 0x23

    #@8
    filled-new-array {v2, v3, v1, v0}, [I

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    #@e
    .line 53
    const/16 v0, 0xe

    #@10
    filled-new-array {v2, v3, v1, v0}, [I

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    #@16
    .line 54
    const/16 v0, 0xf

    #@18
    filled-new-array {v2, v3, v1, v0}, [I

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    #@1e
    .line 55
    const/16 v0, 0x10

    #@20
    filled-new-array {v2, v3, v1, v0}, [I

    #@23
    move-result-object v0

    #@24
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    #@26
    .line 56
    const/16 v0, 0x20

    #@28
    filled-new-array {v2, v3, v1, v0}, [I

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    #@2e
    .line 57
    const/16 v0, 0x21

    #@30
    filled-new-array {v2, v3, v1, v0}, [I

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    #@36
    .line 58
    const/16 v0, 0x11

    #@38
    filled-new-array {v2, v3, v1, v0}, [I

    #@3b
    move-result-object v0

    #@3c
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    #@3e
    .line 59
    const/16 v0, 0x12

    #@40
    filled-new-array {v2, v3, v1, v0}, [I

    #@43
    move-result-object v0

    #@44
    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    #@46
    .line 60
    filled-new-array {v2, v3, v1, v4}, [I

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    #@4c
    .line 61
    const/16 v0, 0x13

    #@4e
    filled-new-array {v2, v3, v1, v0}, [I

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    #@54
    .line 62
    const/16 v0, 0x1e

    #@56
    filled-new-array {v2, v3, v1, v0}, [I

    #@59
    move-result-object v0

    #@5a
    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    #@5c
    .line 63
    const/16 v0, 0x24

    #@5e
    filled-new-array {v2, v3, v1, v0}, [I

    #@61
    move-result-object v0

    #@62
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    #@64
    .line 64
    const/16 v0, 0x1f

    #@66
    filled-new-array {v2, v3, v1, v0}, [I

    #@69
    move-result-object v0

    #@6a
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    #@6c
    .line 65
    const/16 v0, 0x14

    #@6e
    filled-new-array {v2, v3, v1, v0}, [I

    #@71
    move-result-object v0

    #@72
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    #@74
    .line 66
    const/16 v0, 0x1c

    #@76
    filled-new-array {v2, v3, v1, v0}, [I

    #@79
    move-result-object v0

    #@7a
    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    #@7c
    .line 67
    const/16 v0, 0x1b

    #@7e
    filled-new-array {v2, v3, v1, v0}, [I

    #@81
    move-result-object v0

    #@82
    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    #@84
    .line 68
    const/16 v0, 0x15

    #@86
    filled-new-array {v2, v3, v1, v0}, [I

    #@89
    move-result-object v0

    #@8a
    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    #@8c
    .line 69
    const/16 v0, 0x17

    #@8e
    filled-new-array {v2, v3, v1, v0}, [I

    #@91
    move-result-object v0

    #@92
    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    #@94
    .line 70
    const/16 v0, 0x18

    #@96
    filled-new-array {v2, v3, v1, v0}, [I

    #@99
    move-result-object v0

    #@9a
    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    #@9c
    .line 71
    const/16 v0, 0x25

    #@9e
    filled-new-array {v2, v3, v1, v0}, [I

    #@a1
    move-result-object v0

    #@a2
    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    #@a4
    .line 72
    const/16 v0, 0x36

    #@a6
    filled-new-array {v2, v3, v1, v0}, [I

    #@a9
    move-result-object v0

    #@aa
    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    #@ac
    .line 73
    filled-new-array {v2, v3, v1, v1}, [I

    #@af
    move-result-object v0

    #@b0
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    #@b2
    .line 74
    new-array v0, v4, [I

    #@b4
    fill-array-data v0, :array_0

    #@b7
    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    #@b9
    .line 75
    new-array v0, v4, [I

    #@bb
    fill-array-data v0, :array_1

    #@be
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    #@c0
    .line 76
    const/16 v0, 0x2e

    #@c2
    filled-new-array {v2, v3, v1, v0}, [I

    #@c5
    move-result-object v0

    #@c6
    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    #@c8
    .line 77
    const/16 v0, 0xa

    #@ca
    new-array v0, v0, [I

    #@cc
    fill-array-data v0, :array_2

    #@cf
    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    #@d1
    .line 228
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    #@d3
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@d6
    move-result-object v0

    #@d7
    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@d9
    .line 229
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    #@db
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@de
    move-result-object v0

    #@df
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    #@e1
    .line 230
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    #@e3
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@e6
    move-result-object v0

    #@e7
    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@e9
    .line 231
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    #@eb
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@ee
    move-result-object v0

    #@ef
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@f1
    .line 233
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    #@f3
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@f6
    move-result-object v0

    #@f7
    .line 232
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@f9
    .line 234
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    #@fb
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@fe
    move-result-object v0

    #@ff
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@101
    .line 236
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    #@103
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@106
    move-result-object v0

    #@107
    .line 235
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@109
    .line 238
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    #@10b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@10e
    move-result-object v0

    #@10f
    .line 237
    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@111
    .line 239
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    #@113
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@116
    move-result-object v0

    #@117
    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@119
    .line 240
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    #@11b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@11e
    move-result-object v0

    #@11f
    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@121
    .line 242
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    #@123
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@126
    move-result-object v0

    #@127
    .line 241
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

    #@129
    .line 244
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    #@12b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@12e
    move-result-object v0

    #@12f
    .line 243
    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@131
    .line 245
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    #@133
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@136
    move-result-object v0

    #@137
    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@139
    .line 247
    sget-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    #@13b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@13e
    move-result-object v0

    #@13f
    .line 246
    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

    #@141
    .line 248
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    #@143
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@146
    move-result-object v0

    #@147
    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    #@149
    .line 250
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    #@14b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@14e
    move-result-object v0

    #@14f
    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@151
    .line 252
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    #@153
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@156
    move-result-object v0

    #@157
    .line 251
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@159
    .line 254
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    #@15b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@15e
    move-result-object v0

    #@15f
    .line 253
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    #@161
    .line 256
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    #@163
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@166
    move-result-object v0

    #@167
    .line 255
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    #@169
    .line 258
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    #@16b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@16e
    move-result-object v0

    #@16f
    .line 257
    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@171
    .line 260
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    #@173
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@176
    move-result-object v0

    #@177
    .line 259
    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@179
    .line 262
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    #@17b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@17e
    move-result-object v0

    #@17f
    .line 261
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@181
    .line 264
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    #@183
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@186
    move-result-object v0

    #@187
    .line 263
    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@189
    .line 266
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    #@18b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@18e
    move-result-object v0

    #@18f
    .line 265
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@191
    .line 267
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    #@193
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@196
    move-result-object v0

    #@197
    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    #@199
    .line 268
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    #@19b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@19e
    move-result-object v0

    #@19f
    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    #@1a1
    .line 50
    return-void

    #@1a2
    .line 74
    :array_0
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

    #@1b8
    .line 75
    :array_1
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

    #@1ce
    .line 77
    :array_2
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

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
