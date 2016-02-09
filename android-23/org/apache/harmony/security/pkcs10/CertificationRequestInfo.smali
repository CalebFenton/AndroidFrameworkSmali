.class public final Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
.super Ljava/lang/Object;
.source "CertificationRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private encoding:[B

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 107
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 108
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v1, v5

    #@c
    .line 109
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 110
    sget-object v2, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 111
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@18
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@1a
    .line 112
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1c
    .line 111
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1f
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@22
    const/4 v3, 0x3

    #@23
    aput-object v2, v1, v3

    #@25
    .line 107
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@28
    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2a
    .line 43
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p3, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p5, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/harmony/security/x501/Name;",
            "Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;",
            "Ljava/util/List",
            "<*>;[B)V"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p4, "attributes":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    #@5
    .line 61
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    #@7
    .line 62
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@9
    .line 63
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    #@b
    .line 64
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    #@d
    .line 59
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[BLorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "subject"    # Lorg/apache/harmony/security/x501/Name;
    .param p3, "subjectPublicKeyInfo"    # Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .param p4, "attributes"    # Ljava/util/List;
    .param p5, "encoding"    # [B

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 81
    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    #@c
    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    #@e
    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 88
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "-- CertificationRequestInfo:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 89
    const-string/jumbo v1, "\n version: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 90
    iget v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 91
    const-string/jumbo v1, "\n subject: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 92
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    #@1e
    const-string/jumbo v2, "CANONICAL"

    #@21
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 93
    const-string/jumbo v1, "\n subjectPublicKeyInfo: "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 94
    const-string/jumbo v1, "\n\t algorithm: "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 95
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@36
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 96
    const-string/jumbo v1, "\n\t public key: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    #@4a
    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    .line 97
    const-string/jumbo v1, "\n attributes: "

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 98
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    #@59
    if-eqz v1, :cond_0

    #@5b
    .line 99
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    #@5d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 103
    :goto_0
    const-string/jumbo v1, "\n-- CertificationRequestInfo End\n"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    return-object v1

    #@6f
    .line 101
    :cond_0
    const-string/jumbo v1, "none"

    #@72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    goto :goto_0
.end method
