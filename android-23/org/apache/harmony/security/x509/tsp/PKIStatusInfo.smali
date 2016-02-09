.class public Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
.super Ljava/lang/Object;
.source "PKIStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field private final status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field private final statusString:Ljava/util/List;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 94
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 95
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    .line 96
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@e
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@10
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    .line 97
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x2

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 94
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@20
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@22
    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V
    .locals 0
    .param p1, "pKIStatus"    # Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .param p2, "statusString"    # Ljava/util/List;
    .param p3, "failInfo"    # Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput-object p1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@5
    .line 56
    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    #@7
    .line 57
    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@9
    .line 54
    return-void
.end method


# virtual methods
.method public getFailInfo()Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@2
    return-object v0
.end method

.method public getStatus()Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@2
    return-object v0
.end method

.method public getStatusString()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 62
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "-- PKIStatusInfo:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 63
    const-string/jumbo v1, "\nPKIStatus : "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 64
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    .line 65
    const-string/jumbo v1, "\nstatusString:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 66
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 67
    const-string/jumbo v1, "\nfailInfo:  "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 68
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 69
    const-string/jumbo v1, "\n-- PKIStatusInfo End\n"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method
