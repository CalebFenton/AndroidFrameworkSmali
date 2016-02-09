.class public final Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 127
    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;

    #@7
    .line 128
    const/4 v1, 0x6

    #@8
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@a
    .line 130
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@c
    sget-object v3, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@e
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@11
    aput-object v2, v1, v4

    #@13
    .line 131
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@15
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1c
    aput-object v2, v1, v5

    #@1e
    .line 132
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@20
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@27
    aput-object v2, v1, v6

    #@29
    .line 133
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@2b
    sget-object v3, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    #@2d
    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@30
    aput-object v2, v1, v7

    #@32
    .line 134
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@34
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3b
    aput-object v2, v1, v8

    #@3d
    .line 135
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@3f
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@42
    move-result-object v3

    #@43
    const/4 v4, 0x5

    #@44
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@47
    const/4 v3, 0x5

    #@48
    aput-object v2, v1, v3

    #@4a
    .line 127
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@4d
    sput-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@4f
    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V
    .locals 1
    .param p1, "distributionPoint"    # Lorg/apache/harmony/security/x509/DistributionPointName;
    .param p2, "onlySomeReasons"    # Lorg/apache/harmony/security/x509/ReasonFlags;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@4
    .line 47
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@6
    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@8
    .line 50
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@a
    .line 51
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@c
    .line 59
    iput-object p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@e
    .line 60
    iput-object p2, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@10
    .line 58
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    .locals 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    sget-object v1, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    #@8
    .line 70
    .local v0, "idp":Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    #@a
    .line 71
    return-object v0
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
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "Issuing Distribution Point: [\n"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 113
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "  "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@29
    .line 115
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, "  onlyContainsUserCerts: "

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    const-string/jumbo v1, "  onlyContainsCACerts: "

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@53
    if-eqz v0, :cond_1

    #@55
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    #@57
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    const-string/jumbo v2, "  "

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/ReasonFlags;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@6e
    .line 120
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    const-string/jumbo v1, "  indirectCRL: "

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    const-string/jumbo v1, "  onlyContainsAttributeCerts: "

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@96
    .line 110
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 105
    sget-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    #@c
    .line 107
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    #@e
    return-object v0
.end method

.method public setIndirectCRL(Z)V
    .locals 0
    .param p1, "indirectCRL"    # Z

    #@0
    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    #@2
    .line 91
    return-void
.end method

.method public setOnlyContainsAttributeCerts(Z)V
    .locals 0
    .param p1, "onlyContainsAttributeCerts"    # Z

    #@0
    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    #@2
    .line 99
    return-void
.end method

.method public setOnlyContainsCACerts(Z)V
    .locals 0
    .param p1, "onlyContainsCACerts"    # Z

    #@0
    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    #@2
    .line 84
    return-void
.end method

.method public setOnlyContainsUserCerts(Z)V
    .locals 0
    .param p1, "onlyContainsUserCerts"    # Z

    #@0
    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    #@2
    .line 77
    return-void
.end method
