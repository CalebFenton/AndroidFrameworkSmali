.class public final Lorg/apache/harmony/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/DistributionPoint$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

.field private final distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

.field private final reasons:Lorg/apache/harmony/security/x509/ReasonFlags;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/GeneralNames;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 105
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPoint$1;

    #@5
    const/4 v1, 0x3

    #@6
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@8
    .line 106
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@a
    sget-object v3, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@c
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@f
    aput-object v2, v1, v4

    #@11
    .line 107
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@13
    sget-object v3, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@15
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@18
    aput-object v2, v1, v5

    #@1a
    .line 108
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@1c
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@1e
    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@21
    aput-object v2, v1, v6

    #@23
    .line 105
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPoint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@26
    sput-object v0, Lorg/apache/harmony/security/x509/DistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@28
    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;Lorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 2
    .param p1, "distributionPoint"    # Lorg/apache/harmony/security/x509/DistributionPointName;
    .param p2, "reasons"    # Lorg/apache/harmony/security/x509/ReasonFlags;
    .param p3, "cRLIssuer"    # Lorg/apache/harmony/security/x509/GeneralNames;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    if-eqz p2, :cond_0

    #@5
    if-nez p1, :cond_0

    #@7
    if-nez p3, :cond_0

    #@9
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "DistributionPoint MUST NOT consist of only the reasons field"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 77
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@14
    .line 78
    iput-object p2, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@16
    .line 79
    iput-object p3, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@18
    .line 73
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    .line 84
    const-string/jumbo v0, "Distribution Point: [\n"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "  "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@26
    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "  "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/ReasonFlags;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@43
    .line 91
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 93
    const-string/jumbo v0, "  CRL Issuer: [\n"

    #@4d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, "    "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@69
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 96
    const-string/jumbo v0, "  ]\n"

    #@6f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 98
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 99
    const-string/jumbo v0, "]\n"

    #@78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 82
    return-void
.end method
