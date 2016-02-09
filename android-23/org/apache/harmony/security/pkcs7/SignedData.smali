.class public final Lorg/apache/harmony/security/pkcs7/SignedData;
.super Ljava/lang/Object;
.source "SignedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs7/SignedData$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/CertificateList;",
            ">;"
        }
    .end annotation
.end field

.field private final digestAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private final signerInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/pkcs7/SignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/pkcs7/SignedData;)Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/pkcs7/SignedData;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 108
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignedData$1;

    #@4
    const/4 v1, 0x6

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 109
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@a
    move-result-object v2

    #@b
    aput-object v2, v1, v5

    #@d
    .line 110
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@f
    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@11
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@14
    aput-object v2, v1, v6

    #@16
    .line 111
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@18
    const/4 v3, 0x2

    #@19
    aput-object v2, v1, v3

    #@1b
    .line 112
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@1d
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@1f
    sget-object v4, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@21
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@24
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 113
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@2c
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@2e
    sget-object v4, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@30
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@33
    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@36
    const/4 v3, 0x4

    #@37
    aput-object v2, v1, v3

    #@39
    .line 114
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@3b
    sget-object v3, Lorg/apache/harmony/security/pkcs7/SignerInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@3d
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@40
    const/4 v3, 0x5

    #@41
    aput-object v2, v1, v3

    #@43
    .line 108
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/SignedData$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@46
    sput-object v0, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@48
    .line 50
    return-void
.end method

.method private constructor <init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "version"    # I
    .param p3, "contentInfo"    # Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lorg/apache/harmony/security/pkcs7/ContentInfo;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/CertificateList;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/pkcs7/SignerInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p2, "digestAlgorithms":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p4, "certificates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    .local p5, "crls":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/CertificateList;>;"
    .local p6, "signerInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput p1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    #@5
    .line 62
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    #@7
    .line 63
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@9
    .line 64
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    #@b
    .line 65
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    #@d
    .line 66
    iput-object p6, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    #@f
    .line 60
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/harmony/security/pkcs7/SignedData;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "digestAlgorithms"    # Ljava/util/List;
    .param p3, "contentInfo"    # Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .param p4, "certificates"    # Ljava/util/List;
    .param p5, "crls"    # Ljava/util/List;
    .param p6, "signerInfos"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/pkcs7/SignedData;-><init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@3
    return-void
.end method


# virtual methods
.method public getCRLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/CertificateList;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getSignerInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/pkcs7/SignerInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 87
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "---- SignedData:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 88
    const-string/jumbo v1, "\nversion: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 89
    iget v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 90
    const-string/jumbo v1, "\ndigestAlgorithms: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 91
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    #@1e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 92
    const-string/jumbo v1, "\ncontentInfo: "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 93
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@2d
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 94
    const-string/jumbo v1, "\ncertificates: "

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 95
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    #@3c
    if-eqz v1, :cond_0

    #@3e
    .line 96
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    #@40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 98
    :cond_0
    const-string/jumbo v1, "\ncrls: "

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 99
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 100
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    #@53
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 102
    :cond_1
    const-string/jumbo v1, "\nsignerInfos:\n"

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 103
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    #@62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 104
    const-string/jumbo v1, "\n---- SignedData End\n]"

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    return-object v1
.end method
