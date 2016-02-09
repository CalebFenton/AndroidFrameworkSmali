.class public final Lorg/apache/harmony/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Ljava/security/cert/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/Extension$1;,
        Lorg/apache/harmony/security/x509/Extension$2;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field static final AUTHORITY_INFO_ACCESS:[I

.field static final AUTH_KEY_ID:[I

.field static final BASIC_CONSTRAINTS:[I

.field static final CERTIFICATE_ISSUER:[I

.field static final CERTIFICATE_POLICIES:[I

.field public static final CRITICAL:Z = true

.field static final CRL_DISTR_POINTS:[I

.field static final CRL_NUMBER:[I

.field static final EXTENDED_KEY_USAGE:[I

.field static final FRESHEST_CRL:[I

.field static final INHIBIT_ANY_POLICY:[I

.field static final INVALIDITY_DATE:[I

.field static final ISSUER_ALTERNATIVE_NAME:[I

.field static final ISSUING_DISTR_POINT:[I

.field static final ISSUING_DISTR_POINTS:[I

.field static final KEY_USAGE:[I

.field static final NAME_CONSTRAINTS:[I

.field public static final NON_CRITICAL:Z

.field static final POLICY_CONSTRAINTS:[I

.field static final POLICY_MAPPINGS:[I

.field static final PRIVATE_KEY_USAGE_PERIOD:[I

.field static final REASON_CODE:[I

.field static final SUBJECT_ALT_NAME:[I

.field static final SUBJECT_INFO_ACCESS:[I

.field static final SUBJ_DIRECTORY_ATTRS:[I

.field static final SUBJ_KEY_ID:[I


# instance fields
.field private final critical:Z

.field private encoding:[B

.field private final extnID:[I

.field private extnID_str:Ljava/lang/String;

.field private final extnValue:[B

.field protected extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

.field private rawExtnValue:[B

.field private volatile valueDecoded:Z


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/Extension;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/Extension;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/Extension;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x1c

    #@2
    const/16 v3, 0x9

    #@4
    const/4 v2, 0x5

    #@5
    const/16 v1, 0x1d

    #@7
    const/4 v4, 0x2

    #@8
    .line 60
    filled-new-array {v4, v2, v1, v3}, [I

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    #@e
    .line 61
    const/16 v0, 0xe

    #@10
    filled-new-array {v4, v2, v1, v0}, [I

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    #@16
    .line 62
    const/16 v0, 0xf

    #@18
    filled-new-array {v4, v2, v1, v0}, [I

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    #@1e
    .line 63
    const/16 v0, 0x10

    #@20
    filled-new-array {v4, v2, v1, v0}, [I

    #@23
    move-result-object v0

    #@24
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    #@26
    .line 64
    const/16 v0, 0x11

    #@28
    filled-new-array {v4, v2, v1, v0}, [I

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    #@2e
    .line 65
    const/16 v0, 0x12

    #@30
    filled-new-array {v4, v2, v1, v0}, [I

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    #@36
    .line 66
    const/16 v0, 0x13

    #@38
    filled-new-array {v4, v2, v1, v0}, [I

    #@3b
    move-result-object v0

    #@3c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    #@3e
    .line 67
    const/16 v0, 0x1e

    #@40
    filled-new-array {v4, v2, v1, v0}, [I

    #@43
    move-result-object v0

    #@44
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    #@46
    .line 68
    const/16 v0, 0x1f

    #@48
    filled-new-array {v4, v2, v1, v0}, [I

    #@4b
    move-result-object v0

    #@4c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    #@4e
    .line 69
    const/16 v0, 0x20

    #@50
    filled-new-array {v4, v2, v1, v0}, [I

    #@53
    move-result-object v0

    #@54
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    #@56
    .line 70
    const/16 v0, 0x21

    #@58
    filled-new-array {v4, v2, v1, v0}, [I

    #@5b
    move-result-object v0

    #@5c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    #@5e
    .line 71
    const/16 v0, 0x23

    #@60
    filled-new-array {v4, v2, v1, v0}, [I

    #@63
    move-result-object v0

    #@64
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    #@66
    .line 72
    const/16 v0, 0x24

    #@68
    filled-new-array {v4, v2, v1, v0}, [I

    #@6b
    move-result-object v0

    #@6c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    #@6e
    .line 73
    const/16 v0, 0x25

    #@70
    filled-new-array {v4, v2, v1, v0}, [I

    #@73
    move-result-object v0

    #@74
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    #@76
    .line 74
    const/16 v0, 0x2e

    #@78
    filled-new-array {v4, v2, v1, v0}, [I

    #@7b
    move-result-object v0

    #@7c
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->FRESHEST_CRL:[I

    #@7e
    .line 75
    const/16 v0, 0x36

    #@80
    filled-new-array {v4, v2, v1, v0}, [I

    #@83
    move-result-object v0

    #@84
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    #@86
    .line 77
    new-array v0, v3, [I

    #@88
    fill-array-data v0, :array_0

    #@8b
    .line 76
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    #@8d
    .line 79
    new-array v0, v3, [I

    #@8f
    fill-array-data v0, :array_1

    #@92
    .line 78
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    #@94
    .line 81
    filled-new-array {v4, v2, v1, v5}, [I

    #@97
    move-result-object v0

    #@98
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINT:[I

    #@9a
    .line 83
    const/16 v0, 0x14

    #@9c
    filled-new-array {v4, v2, v1, v0}, [I

    #@9f
    move-result-object v0

    #@a0
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    #@a2
    .line 84
    filled-new-array {v4, v2, v1, v1}, [I

    #@a5
    move-result-object v0

    #@a6
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    #@a8
    .line 85
    const/16 v0, 0x18

    #@aa
    filled-new-array {v4, v2, v1, v0}, [I

    #@ad
    move-result-object v0

    #@ae
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    #@b0
    .line 86
    const/16 v0, 0x15

    #@b2
    filled-new-array {v4, v2, v1, v0}, [I

    #@b5
    move-result-object v0

    #@b6
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    #@b8
    .line 87
    filled-new-array {v4, v2, v1, v5}, [I

    #@bb
    move-result-object v0

    #@bc
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    #@be
    .line 363
    new-instance v0, Lorg/apache/harmony/security/x509/Extension$2;

    #@c0
    const/4 v1, 0x3

    #@c1
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@c3
    .line 364
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@c6
    move-result-object v2

    #@c7
    const/4 v3, 0x0

    #@c8
    aput-object v2, v1, v3

    #@ca
    .line 365
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@cd
    move-result-object v2

    #@ce
    const/4 v3, 0x1

    #@cf
    aput-object v2, v1, v3

    #@d1
    .line 366
    new-instance v2, Lorg/apache/harmony/security/x509/Extension$1;

    #@d3
    invoke-direct {v2}, Lorg/apache/harmony/security/x509/Extension$1;-><init>()V

    #@d6
    aput-object v2, v1, v4

    #@d8
    .line 363
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@db
    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@dd
    .line 53
    return-void

    #@de
    .line 77
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

    #@f4
    .line 79
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
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "extnValueObject"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@6
    .line 107
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    #@8
    .line 108
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@e
    .line 109
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@10
    .line 110
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@12
    .line 111
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@15
    .line 112
    invoke-virtual {p3}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@1b
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@6
    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    #@8
    .line 117
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@e
    .line 118
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@10
    .line 119
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@12
    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "extnID"    # Ljava/lang/String;
    .param p2, "extnValue"    # [B

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    #@4
    .line 128
    return-void
.end method

.method public constructor <init>([IZ[B)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@6
    .line 123
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@8
    .line 124
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@a
    .line 125
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@c
    .line 122
    return-void
.end method

.method private constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B
    .param p4, "rawExtnValue"    # [B
    .param p5, "encoding"    # [B
    .param p6, "decodedExtValue"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    #@0
    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    #@3
    .line 140
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    #@5
    .line 141
    iput-object p5, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    #@7
    .line 142
    iput-object p6, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@9
    .line 143
    if-eqz p6, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@e
    .line 138
    return-void

    #@f
    .line 143
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method synthetic constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension;)V
    .locals 0
    .param p1, "extnID"    # [I
    .param p2, "critical"    # Z
    .param p3, "extnValue"    # [B
    .param p4, "rawExtnValue"    # [B
    .param p5, "encoding"    # [B
    .param p6, "decodedExtValue"    # Lorg/apache/harmony/security/x509/ExtensionValue;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V

    #@3
    return-void
.end method

.method public constructor <init>([I[B)V
    .locals 1
    .param p1, "extnID"    # [I
    .param p2, "extnValue"    # [B

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    #@4
    .line 132
    return-void
.end method

.method private decodeExtensionValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 249
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 250
    return-void

    #@6
    .line 252
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@8
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    #@a
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 253
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@12
    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@18
    .line 295
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@1a
    .line 248
    return-void

    #@1b
    .line 254
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@1d
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    #@1f
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 255
    new-instance v0, Lorg/apache/harmony/security/x509/KeyUsage;

    #@27
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@29
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    #@2c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@2e
    goto :goto_0

    #@2f
    .line 256
    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@31
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    #@33
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 257
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    #@3b
    .line 258
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@3d
    .line 257
    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    #@40
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@42
    goto :goto_0

    #@43
    .line 259
    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@45
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    #@47
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_5

    #@4d
    .line 260
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    #@4f
    .line 261
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@51
    .line 260
    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    #@54
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@56
    goto :goto_0

    #@57
    .line 262
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@59
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    #@5b
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_6

    #@61
    .line 263
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    #@63
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@65
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    #@68
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@6a
    goto :goto_0

    #@6b
    .line 264
    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@6d
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    #@6f
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_7

    #@75
    .line 265
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@77
    invoke-static {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->decode([B)Lorg/apache/harmony/security/x509/NameConstraints;

    #@7a
    move-result-object v0

    #@7b
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@7d
    goto :goto_0

    #@7e
    .line 266
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@80
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    #@82
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@85
    move-result v0

    #@86
    if-eqz v0, :cond_8

    #@88
    .line 267
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@8a
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;

    #@8d
    move-result-object v0

    #@8e
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@90
    goto :goto_0

    #@91
    .line 268
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@93
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    #@95
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@98
    move-result v0

    #@99
    if-eqz v0, :cond_9

    #@9b
    .line 269
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@9d
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    #@a0
    move-result-object v0

    #@a1
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@a3
    goto/16 :goto_0

    #@a5
    .line 270
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@a7
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    #@a9
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_a

    #@af
    .line 271
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    #@b1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@b3
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>([B)V

    #@b6
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@b8
    goto/16 :goto_0

    #@ba
    .line 272
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@bc
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    #@be
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@c1
    move-result v0

    #@c2
    if-eqz v0, :cond_b

    #@c4
    .line 273
    new-instance v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    #@c6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@c8
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;-><init>([B)V

    #@cb
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 274
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@d1
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    #@d3
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@d6
    move-result v0

    #@d7
    if-eqz v0, :cond_c

    #@d9
    .line 275
    new-instance v0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;

    #@db
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@dd
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;-><init>([B)V

    #@e0
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@e2
    goto/16 :goto_0

    #@e4
    .line 276
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@e6
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    #@e8
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@eb
    move-result v0

    #@ec
    if-eqz v0, :cond_d

    #@ee
    .line 277
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer;

    #@f0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@f2
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;-><init>([B)V

    #@f5
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@f7
    goto/16 :goto_0

    #@f9
    .line 278
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@fb
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    #@fd
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@100
    move-result v0

    #@101
    if-eqz v0, :cond_e

    #@103
    .line 279
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@105
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    #@108
    move-result-object v0

    #@109
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@10b
    goto/16 :goto_0

    #@10d
    .line 280
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@10f
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    #@111
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@114
    move-result v0

    #@115
    if-eqz v0, :cond_f

    #@117
    .line 281
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    #@119
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@11b
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    #@11e
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@120
    goto/16 :goto_0

    #@122
    .line 282
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@124
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    #@126
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@129
    move-result v0

    #@12a
    if-eqz v0, :cond_10

    #@12c
    .line 283
    new-instance v0, Lorg/apache/harmony/security/x509/InvalidityDate;

    #@12e
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@130
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    #@133
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@135
    goto/16 :goto_0

    #@137
    .line 284
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@139
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    #@13b
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@13e
    move-result v0

    #@13f
    if-eqz v0, :cond_11

    #@141
    .line 285
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    #@143
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@145
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    #@148
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@14a
    goto/16 :goto_0

    #@14c
    .line 286
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@14e
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    #@150
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@153
    move-result v0

    #@154
    if-eqz v0, :cond_12

    #@156
    .line 287
    new-instance v0, Lorg/apache/harmony/security/x509/CRLNumber;

    #@158
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@15a
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLNumber;-><init>([B)V

    #@15d
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@15f
    goto/16 :goto_0

    #@161
    .line 288
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@163
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    #@165
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@168
    move-result v0

    #@169
    if-eqz v0, :cond_13

    #@16b
    .line 289
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@16d
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    #@170
    move-result-object v0

    #@171
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@173
    goto/16 :goto_0

    #@175
    .line 290
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@177
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    #@179
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@17c
    move-result v0

    #@17d
    if-eqz v0, :cond_14

    #@17f
    .line 291
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@181
    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    #@184
    move-result-object v0

    #@185
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@187
    goto/16 :goto_0

    #@189
    .line 292
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@18b
    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    #@18d
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@190
    move-result v0

    #@191
    if-eqz v0, :cond_1

    #@193
    .line 293
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@195
    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    #@198
    move-result-object v0

    #@199
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@19b
    goto/16 :goto_0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 299
    const-string/jumbo v1, "OID: "

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getId()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ", Critical: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 300
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@23
    if-nez v1, :cond_0

    #@25
    .line 302
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 306
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 307
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@2e
    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@31
    .line 308
    return-void

    #@32
    .line 303
    :catch_0
    move-exception v0

    #@33
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0

    #@34
    .line 311
    .end local v0    # "ignored":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 312
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@39
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    #@3b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 313
    const-string/jumbo v1, "Subject Directory Attributes Extension"

    #@44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 355
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, "Unparsed Extension Value:\n"

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 356
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@57
    invoke-static {v1, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 298
    return-void

    #@5f
    .line 314
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@61
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    #@63
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@66
    move-result v1

    #@67
    if-eqz v1, :cond_3

    #@69
    .line 315
    const-string/jumbo v1, "Subject Key Identifier Extension"

    #@6c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    goto :goto_1

    #@70
    .line 316
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@72
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    #@74
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_4

    #@7a
    .line 317
    const-string/jumbo v1, "Key Usage Extension"

    #@7d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    goto :goto_1

    #@81
    .line 318
    :cond_4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@83
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    #@85
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_5

    #@8b
    .line 319
    const-string/jumbo v1, "Private Key Usage Period Extension"

    #@8e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    goto :goto_1

    #@92
    .line 320
    :cond_5
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@94
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    #@96
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_6

    #@9c
    .line 321
    const-string/jumbo v1, "Subject Alternative Name Extension"

    #@9f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    goto :goto_1

    #@a3
    .line 322
    :cond_6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@a5
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    #@a7
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_7

    #@ad
    .line 323
    const-string/jumbo v1, "Issuer Alternative Name Extension"

    #@b0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    goto :goto_1

    #@b4
    .line 324
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@b6
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    #@b8
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@bb
    move-result v1

    #@bc
    if-eqz v1, :cond_8

    #@be
    .line 325
    const-string/jumbo v1, "Basic Constraints Extension"

    #@c1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    goto :goto_1

    #@c5
    .line 326
    :cond_8
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@c7
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    #@c9
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@cc
    move-result v1

    #@cd
    if-eqz v1, :cond_9

    #@cf
    .line 327
    const-string/jumbo v1, "Name Constraints Extension"

    #@d2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    goto/16 :goto_1

    #@d7
    .line 328
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@d9
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    #@db
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@de
    move-result v1

    #@df
    if-eqz v1, :cond_a

    #@e1
    .line 329
    const-string/jumbo v1, "CRL Distribution Points Extension"

    #@e4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    goto/16 :goto_1

    #@e9
    .line 330
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@eb
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    #@ed
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@f0
    move-result v1

    #@f1
    if-eqz v1, :cond_b

    #@f3
    .line 331
    const-string/jumbo v1, "Certificate Policies Extension"

    #@f6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    goto/16 :goto_1

    #@fb
    .line 332
    :cond_b
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@fd
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    #@ff
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@102
    move-result v1

    #@103
    if-eqz v1, :cond_c

    #@105
    .line 333
    const-string/jumbo v1, "Policy Mappings Extension"

    #@108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    goto/16 :goto_1

    #@10d
    .line 334
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@10f
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    #@111
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@114
    move-result v1

    #@115
    if-eqz v1, :cond_d

    #@117
    .line 335
    const-string/jumbo v1, "Authority Key Identifier Extension"

    #@11a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    goto/16 :goto_1

    #@11f
    .line 336
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@121
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    #@123
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@126
    move-result v1

    #@127
    if-eqz v1, :cond_e

    #@129
    .line 337
    const-string/jumbo v1, "Policy Constraints Extension"

    #@12c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    goto/16 :goto_1

    #@131
    .line 338
    :cond_e
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@133
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    #@135
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@138
    move-result v1

    #@139
    if-eqz v1, :cond_f

    #@13b
    .line 339
    const-string/jumbo v1, "Extended Key Usage Extension"

    #@13e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    goto/16 :goto_1

    #@143
    .line 340
    :cond_f
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@145
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    #@147
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@14a
    move-result v1

    #@14b
    if-eqz v1, :cond_10

    #@14d
    .line 341
    const-string/jumbo v1, "Inhibit Any-Policy Extension"

    #@150
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    goto/16 :goto_1

    #@155
    .line 342
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@157
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    #@159
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@15c
    move-result v1

    #@15d
    if-eqz v1, :cond_11

    #@15f
    .line 343
    const-string/jumbo v1, "Authority Information Access Extension"

    #@162
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    goto/16 :goto_1

    #@167
    .line 344
    :cond_11
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@169
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    #@16b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@16e
    move-result v1

    #@16f
    if-eqz v1, :cond_12

    #@171
    .line 345
    const-string/jumbo v1, "Subject Information Access Extension"

    #@174
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    goto/16 :goto_1

    #@179
    .line 346
    :cond_12
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@17b
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    #@17d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@180
    move-result v1

    #@181
    if-eqz v1, :cond_13

    #@183
    .line 347
    const-string/jumbo v1, "Invalidity Date Extension"

    #@186
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    goto/16 :goto_1

    #@18b
    .line 348
    :cond_13
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@18d
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    #@18f
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@192
    move-result v1

    #@193
    if-eqz v1, :cond_14

    #@195
    .line 349
    const-string/jumbo v1, "CRL Number Extension"

    #@198
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    goto/16 :goto_1

    #@19d
    .line 350
    :cond_14
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@19f
    sget-object v2, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    #@1a1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@1a4
    move-result v1

    #@1a5
    if-eqz v1, :cond_15

    #@1a7
    .line 351
    const-string/jumbo v1, "Reason Code Extension"

    #@1aa
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    goto/16 :goto_1

    #@1af
    .line 353
    :cond_15
    const-string/jumbo v1, "Unknown Extension"

    #@1b2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b5
    goto/16 :goto_1
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@7
    .line 195
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ext"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extension;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 201
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 203
    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    #@9
    .line 204
    .local v0, "extension":Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@b
    iget-object v3, v0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 205
    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@15
    iget-boolean v3, v0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@17
    if-ne v2, v3, :cond_1

    #@19
    .line 206
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@1b
    iget-object v2, v0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@1d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@20
    move-result v1

    #@21
    .line 204
    :cond_1
    return v1
.end method

.method public getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;
    .locals 2

    #@0
    .prologue
    .line 235
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 237
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 241
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@9
    instance-of v1, v1, Lorg/apache/harmony/security/x509/BasicConstraints;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 242
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@f
    check-cast v1, Lorg/apache/harmony/security/x509/BasicConstraints;

    #@11
    return-object v1

    #@12
    .line 238
    :catch_0
    move-exception v0

    #@13
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0

    #@14
    .line 244
    .end local v0    # "ignored":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method public getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 215
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V

    #@7
    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@9
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 189
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    #@c
    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    #@e
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 152
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@6
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    #@c
    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;
    .locals 2

    #@0
    .prologue
    .line 221
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 223
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 227
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@9
    instance-of v1, v1, Lorg/apache/harmony/security/x509/KeyUsage;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 228
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    #@f
    check-cast v1, Lorg/apache/harmony/security/x509/KeyUsage;

    #@11
    return-object v1

    #@12
    .line 224
    :catch_0
    move-exception v0

    #@13
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0

    #@14
    .line 230
    .end local v0    # "ignored":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method public getRawExtnValue()[B
    .locals 2

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 179
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    #@10
    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    #@12
    return-object v0
.end method

.method public getValue()[B
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v1, v0, 0x25

    #@8
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    add-int/2addr v0, v1

    #@e
    mul-int/lit8 v0, v0, 0x25

    #@10
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    #@12
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@15
    move-result v1

    #@16
    add-int/2addr v0, v1

    #@17
    return v0

    #@18
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method public isCritical()Z
    .locals 1

    #@0
    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    #@2
    return v0
.end method
