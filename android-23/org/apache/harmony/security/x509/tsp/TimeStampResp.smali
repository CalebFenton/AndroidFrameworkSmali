.class public Lorg/apache/harmony/security/x509/tsp/TimeStampResp;
.super Ljava/lang/Object;
.source "TimeStampResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

.field private final timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 73
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 74
    sget-object v2, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    .line 75
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    .line 73
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@12
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@14
    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;Lorg/apache/harmony/security/pkcs7/ContentInfo;)V
    .locals 0
    .param p1, "status"    # Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    .param p2, "timeStampToken"    # Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    #@5
    .line 45
    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@7
    .line 43
    return-void
.end method


# virtual methods
.method public getStatus()Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    #@2
    return-object v0
.end method

.method public getTimeStampToken()Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 50
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "-- TimeStampResp:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 51
    const-string/jumbo v1, "\nstatus:  "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 52
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    .line 53
    const-string/jumbo v1, "\ntimeStampToken:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 54
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 55
    const-string/jumbo v1, "\n-- TimeStampResp End\n"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
