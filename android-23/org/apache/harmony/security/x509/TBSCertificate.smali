.class public final Lorg/apache/harmony/security/x509/TBSCertificate;
.super Ljava/lang/Object;
.source "TBSCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertificate$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final issuerUniqueID:[Z

.field private final serialNumber:Ljava/math/BigInteger;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final subjectUniqueID:[Z

.field private final validity:Lorg/apache/harmony/security/x509/Validity;

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lorg/apache/harmony/security/x509/TBSCertificate;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 232
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate$1;

    #@6
    const/16 v1, 0xa

    #@8
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@a
    .line 233
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@c
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@13
    aput-object v2, v1, v4

    #@15
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@18
    move-result-object v2

    #@19
    aput-object v2, v1, v5

    #@1b
    .line 234
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1d
    aput-object v2, v1, v6

    #@1f
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@21
    aput-object v2, v1, v7

    #@23
    .line 235
    sget-object v2, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@25
    const/4 v3, 0x4

    #@26
    aput-object v2, v1, v3

    #@28
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@2a
    const/4 v3, 0x5

    #@2b
    aput-object v2, v1, v3

    #@2d
    sget-object v2, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2f
    const/4 v3, 0x6

    #@30
    aput-object v2, v1, v3

    #@32
    .line 236
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@34
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3b
    const/4 v3, 0x7

    #@3c
    aput-object v2, v1, v3

    #@3e
    .line 237
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@40
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@43
    move-result-object v3

    #@44
    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@47
    const/16 v3, 0x8

    #@49
    aput-object v2, v1, v3

    #@4b
    .line 238
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@4d
    sget-object v3, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@4f
    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@52
    const/16 v3, 0x9

    #@54
    aput-object v2, v1, v3

    #@56
    .line 232
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@59
    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@5b
    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p5, "validity"    # Lorg/apache/harmony/security/x509/Validity;
    .param p6, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p7, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p8, "issuerUniqueID"    # [Z
    .param p9, "subjectUniqueID"    # [Z
    .param p10, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    #@5
    .line 95
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    #@7
    .line 96
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@9
    .line 97
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@b
    .line 98
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    #@d
    .line 99
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    #@f
    .line 100
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@11
    .line 101
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    #@13
    .line 102
    iput-object p9, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    #@15
    .line 103
    iput-object p10, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@17
    .line 93
    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p5, "validity"    # Lorg/apache/harmony/security/x509/Validity;
    .param p6, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p7, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p8, "issuerUniqueID"    # [Z
    .param p9, "subjectUniqueID"    # [Z
    .param p10, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p11, "encoding"    # [B

    #@0
    .prologue
    .line 112
    invoke-direct/range {p0 .. p10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    #@3
    .line 114
    iput-object p11, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    #@5
    .line 111
    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .param p3, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p5, "validity"    # Lorg/apache/harmony/security/x509/Validity;
    .param p6, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p7, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p8, "issuerUniqueID"    # [Z
    .param p9, "subjectUniqueID"    # [Z
    .param p10, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p11, "encoding"    # [B

    #@0
    .prologue
    invoke-direct/range {p0 .. p11}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v2, 0x31

    #@2
    const/16 v3, 0x30

    #@4
    const/4 v4, 0x0

    #@5
    .line 198
    const/16 v1, 0x5b

    #@7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 199
    const-string/jumbo v1, "\n  Version: V"

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    #@13
    add-int/lit8 v5, v5, 0x1

    #@15
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    .line 200
    const-string/jumbo v1, "\n  Subject: "

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    #@21
    const-string/jumbo v6, "RFC2253"

    #@24
    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 201
    const-string/jumbo v1, "\n  Signature Algorithm: "

    #@2e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 202
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@33
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    #@36
    .line 203
    const-string/jumbo v1, "\n  Key: "

    #@39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@3f
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 204
    const-string/jumbo v1, "\n  Validity: [From: "

    #@4d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    #@53
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    .line 205
    const-string/jumbo v1, "\n               To: "

    #@5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    #@63
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    const/16 v5, 0x5d

    #@6d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    .line 206
    const-string/jumbo v1, "\n  Issuer: "

    #@73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@79
    const-string/jumbo v6, "RFC2253"

    #@7c
    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 207
    const-string/jumbo v1, "\n  Serial Number: "

    #@86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    #@8c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    .line 208
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    #@91
    if-eqz v1, :cond_1

    #@93
    .line 209
    const-string/jumbo v1, "\n  Issuer Id: "

    #@96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    .line 210
    iget-object v6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    #@9b
    array-length v7, v6

    #@9c
    move v5, v4

    #@9d
    :goto_0
    if-ge v5, v7, :cond_1

    #@9f
    aget-boolean v0, v6, v5

    #@a1
    .line 211
    .local v0, "b":Z
    if-eqz v0, :cond_0

    #@a3
    move v1, v2

    #@a4
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a7
    .line 210
    add-int/lit8 v1, v5, 0x1

    #@a9
    move v5, v1

    #@aa
    goto :goto_0

    #@ab
    :cond_0
    move v1, v3

    #@ac
    .line 211
    goto :goto_1

    #@ad
    .line 214
    .end local v0    # "b":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    #@af
    if-eqz v1, :cond_3

    #@b1
    .line 215
    const-string/jumbo v1, "\n  Subject Id: "

    #@b4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 216
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    #@b9
    array-length v6, v5

    #@ba
    :goto_2
    if-ge v4, v6, :cond_3

    #@bc
    aget-boolean v0, v5, v4

    #@be
    .line 217
    .restart local v0    # "b":Z
    if-eqz v0, :cond_2

    #@c0
    move v1, v2

    #@c1
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c4
    .line 216
    add-int/lit8 v1, v4, 0x1

    #@c6
    move v4, v1

    #@c7
    goto :goto_2

    #@c8
    :cond_2
    move v1, v3

    #@c9
    .line 217
    goto :goto_3

    #@ca
    .line 220
    .end local v0    # "b":Z
    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@cc
    if-eqz v1, :cond_4

    #@ce
    .line 221
    const-string/jumbo v1, "\n\n  Extensions: "

    #@d1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    .line 222
    const-string/jumbo v1, "[\n"

    #@d7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    .line 223
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@dc
    const-string/jumbo v2, "    "

    #@df
    invoke-virtual {v1, p1, v2}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@e2
    .line 224
    const-string/jumbo v1, "  ]"

    #@e5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    .line 226
    :cond_4
    const-string/jumbo v1, "\n]"

    #@eb
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 197
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 192
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    #@c
    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    #@e
    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@2
    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    #@2
    return-object v0
.end method

.method public getValidity()Lorg/apache/harmony/security/x509/Validity;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    #@2
    return v0
.end method
