.class public final Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
.super Ljava/lang/Object;
.source "PrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;
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

.field private final privateKey:[B

.field private final privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 101
    new-instance v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 103
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v1, v5

    #@c
    .line 104
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 105
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x2

    #@16
    aput-object v2, v1, v3

    #@18
    .line 107
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@1a
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@1c
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1e
    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@21
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@24
    const/4 v3, 0x3

    #@25
    aput-object v2, v1, v3

    #@27
    .line 101
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@2a
    sput-object v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2c
    .line 50
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "privateKeyAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "privateKey"    # [B
    .param p4, "attributes"    # Ljava/util/List;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput p1, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    #@5
    .line 60
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@7
    .line 61
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    #@9
    .line 62
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    #@b
    .line 58
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "privateKeyAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "privateKey"    # [B
    .param p4, "attributes"    # Ljava/util/List;
    .param p5, "encoding"    # [B

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    #@3
    .line 69
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    #@5
    .line 67
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[BLorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "privateKeyAlgorithm"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "privateKey"    # [B
    .param p4, "attributes"    # Ljava/util/List;
    .param p5, "encoding"    # [B

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 96
    sget-object v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    #@c
    .line 98
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    #@e
    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    #@2
    return v0
.end method
