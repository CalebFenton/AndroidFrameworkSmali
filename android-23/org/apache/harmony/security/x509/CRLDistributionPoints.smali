.class public final Lorg/apache/harmony/security/x509/CRLDistributionPoints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CRLDistributionPoints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private distributionPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/DistributionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/CRLDistributionPoints;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 103
    new-instance v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;

    #@2
    sget-object v1, Lorg/apache/harmony/security/x509/DistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@9
    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 2
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/DistributionPoint;",
            ">;[B)V"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p1, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/DistributionPoint;>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 72
    if-eqz p1, :cond_0

    #@5
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "distributionPoints are empty"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 75
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    #@16
    .line 76
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    #@18
    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CRLDistributionPoints;)V
    .locals 0
    .param p1, "distributionPoints"    # Ljava/util/List;
    .param p2, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;-><init>(Ljava/util/List;[B)V

    #@3
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    .locals 1
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    sget-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    #@8
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v3

    #@4
    const-string/jumbo v4, "CRL Distribution Points: [\n"

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 92
    const/4 v2, 0x0

    #@b
    .line 93
    .local v2, "number":I
    iget-object v3, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "distributionPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPoint;

    #@1d
    .line 94
    .local v0, "distributionPoint":Lorg/apache/harmony/security/x509/DistributionPoint;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "  ["

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    add-int/lit8 v2, v2, 0x1

    #@2a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, "]\n"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, "  "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v0, p1, v3}, Lorg/apache/harmony/security/x509/DistributionPoint;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@4b
    goto :goto_0

    #@4c
    .line 97
    .end local v0    # "distributionPoint":Lorg/apache/harmony/security/x509/DistributionPoint;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string/jumbo v4, "]\n"

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 90
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 81
    sget-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    #@c
    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    #@e
    return-object v0
.end method
