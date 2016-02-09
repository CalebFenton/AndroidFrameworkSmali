.class public final Lorg/apache/harmony/security/pkcs7/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs7/SignerInfo$1;,
        Lorg/apache/harmony/security/pkcs7/SignerInfo$2;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final ISSUER_AND_SERIAL_NUMBER:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

.field private final digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final encryptedDigest:[B

.field private final issuer:Ljavax/security/auth/x500/X500Principal;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final unauthenticatedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/pkcs7/SignerInfo;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->encryptedDigest:[B

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lorg/apache/harmony/security/pkcs7/SignerInfo;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lorg/apache/harmony/security/pkcs7/SignerInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 159
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignerInfo$1;

    #@5
    new-array v1, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 160
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@9
    aput-object v2, v1, v4

    #@b
    .line 161
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v1, v5

    #@11
    .line 159
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@14
    .line 158
    sput-object v0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->ISSUER_AND_SERIAL_NUMBER:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@16
    .line 173
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;

    #@18
    const/4 v1, 0x7

    #@19
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@1b
    .line 174
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v1, v4

    #@21
    .line 175
    sget-object v2, Lorg/apache/harmony/security/pkcs7/SignerInfo;->ISSUER_AND_SERIAL_NUMBER:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@23
    aput-object v2, v1, v5

    #@25
    .line 176
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@27
    aput-object v2, v1, v3

    #@29
    .line 177
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@2b
    sget-object v3, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@2d
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@30
    const/4 v3, 0x3

    #@31
    aput-object v2, v1, v3

    #@33
    .line 178
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@35
    const/4 v3, 0x4

    #@36
    aput-object v2, v1, v3

    #@38
    .line 179
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@3b
    move-result-object v2

    #@3c
    const/4 v3, 0x5

    #@3d
    aput-object v2, v1, v3

    #@3f
    .line 180
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@41
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@43
    .line 181
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@45
    .line 180
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@48
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@4b
    const/4 v3, 0x6

    #@4c
    aput-object v2, v1, v3

    #@4e
    .line 173
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/SignerInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@51
    .line 172
    sput-object v0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@53
    .line 57
    return-void
.end method

.method private constructor <init>(I[Ljava/lang/Object;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "issuerAndSerialNumber"    # [Ljava/lang/Object;
    .param p3, "digestAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "authenticatedAttributes"    # Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
    .param p5, "digestEncryptionAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p6, "encryptedDigest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/security/x509/AlgorithmIdentifier;",
            "Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;",
            "Lorg/apache/harmony/security/x509/AlgorithmIdentifier;",
            "[B",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p7, "unauthenticatedAttributes":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput p1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->version:I

    #@5
    .line 75
    const/4 v0, 0x0

    #@6
    aget-object v0, p2, v0

    #@8
    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    #@a
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@10
    .line 76
    const/4 v0, 0x1

    #@11
    aget-object v0, p2, v0

    #@13
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toBigIntegerValue(Ljava/lang/Object;)Ljava/math/BigInteger;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    #@19
    .line 77
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@1b
    .line 78
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@1d
    .line 79
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@1f
    .line 80
    iput-object p6, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->encryptedDigest:[B

    #@21
    .line 81
    iput-object p7, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    #@23
    .line 73
    return-void
.end method

.method synthetic constructor <init>(I[Ljava/lang/Object;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;Lorg/apache/harmony/security/pkcs7/SignerInfo;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "issuerAndSerialNumber"    # [Ljava/lang/Object;
    .param p3, "digestAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p4, "authenticatedAttributes"    # Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
    .param p5, "digestEncryptionAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/security/pkcs7/SignerInfo;-><init>(I[Ljava/lang/Object;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    #@3
    return-void
.end method


# virtual methods
.method public getAuthenticatedAttributes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 110
    return-object v1

    #@6
    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@8
    invoke-virtual {v0}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->getAttributes()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDigestAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDigestEncryptionAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncodedAuthenticatedAttributes()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 122
    return-object v1

    #@6
    .line 124
    :cond_0
    sget-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@8
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@a
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->getAttributes()Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->encode(Ljava/lang/Object;)[B

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getEncryptedDigest()[B
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->encryptedDigest:[B

    #@2
    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 134
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "-- SignerInfo:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 135
    const-string/jumbo v1, "\n version : "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 136
    iget v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->version:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 137
    const-string/jumbo v1, "\nissuerAndSerialNumber:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 138
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 139
    const-string/jumbo v1, "   "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 140
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->serialNumber:Ljava/math/BigInteger;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 141
    const-string/jumbo v1, "\ndigestAlgorithm:  "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 142
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@34
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 143
    const-string/jumbo v1, "\nauthenticatedAttributes:  "

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 144
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 145
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->authenticatedAttributes:Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    #@47
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 147
    :cond_0
    const-string/jumbo v1, "\ndigestEncryptionAlgorithm: "

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 148
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->digestEncryptionAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@56
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 149
    const-string/jumbo v1, "\nunauthenticatedAttributes: "

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 150
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    #@65
    if-eqz v1, :cond_1

    #@67
    .line 151
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignerInfo;->unauthenticatedAttributes:Ljava/util/List;

    #@69
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 153
    :cond_1
    const-string/jumbo v1, "\n-- SignerInfo End\n"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    return-object v1
.end method
