.class public final Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
.super Ljava/lang/Object;
.source "PrivateKeyUsagePeriod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final notAfterDate:Ljava/util/Date;

.field private final notBeforeDate:Ljava/util/Date;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 92
    new-instance v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 93
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@9
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@c
    move-result-object v3

    #@d
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@10
    aput-object v2, v1, v4

    #@12
    .line 94
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@14
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1b
    aput-object v2, v1, v5

    #@1d
    .line 92
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@20
    sput-object v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@22
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "notBeforeDate"    # Ljava/util/Date;
    .param p2, "notAfterDate"    # Ljava/util/Date;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;-><init>(Ljava/util/Date;Ljava/util/Date;[B)V

    #@4
    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;[B)V
    .locals 0
    .param p1, "notBeforeDate"    # Ljava/util/Date;
    .param p2, "notAfterDate"    # Ljava/util/Date;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;

    #@5
    .line 61
    iput-object p2, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;

    #@7
    .line 62
    iput-object p3, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    #@9
    .line 59
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;[BLorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;)V
    .locals 0
    .param p1, "notBeforeDate"    # Ljava/util/Date;
    .param p2, "notAfterDate"    # Ljava/util/Date;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;-><init>(Ljava/util/Date;Ljava/util/Date;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 84
    sget-object v0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    #@c
    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->encoding:[B

    #@e
    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notAfterDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->notBeforeDate:Ljava/util/Date;

    #@2
    return-object v0
.end method
