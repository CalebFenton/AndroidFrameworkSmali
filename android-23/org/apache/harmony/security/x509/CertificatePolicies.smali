.class public final Lorg/apache/harmony/security/x509/CertificatePolicies;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificatePolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/CertificatePolicies$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private policyInformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/CertificatePolicies;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 107
    new-instance v0, Lorg/apache/harmony/security/x509/CertificatePolicies$1;

    #@2
    sget-object v1, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificatePolicies$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    sput-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@9
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;[B)V"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p1, "policyInformations":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@5
    .line 64
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    #@7
    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CertificatePolicies;)V
    .locals 0
    .param p1, "policyInformations"    # Ljava/util/List;
    .param p2, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/CertificatePolicies;-><init>(Ljava/util/List;[B)V

    #@3
    return-void
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .locals 2
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    sget-object v1, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/security/x509/CertificatePolicies;

    #@8
    .line 58
    .local v0, "cps":Lorg/apache/harmony/security/x509/CertificatePolicies;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    #@a
    .line 59
    return-object v0
.end method


# virtual methods
.method public addPolicyInformation(Lorg/apache/harmony/security/x509/PolicyInformation;)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .locals 1
    .param p1, "policyInformation"    # Lorg/apache/harmony/security/x509/PolicyInformation;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 75
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    #@3
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@e
    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 80
    return-object p0
.end method

.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v2

    #@4
    const-string/jumbo v3, "CertificatePolicies [\n"

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 95
    iget-object v2, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "policyInformation$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lorg/apache/harmony/security/x509/PolicyInformation;

    #@1c
    .line 96
    .local v0, "policyInformation":Lorg/apache/harmony/security/x509/PolicyInformation;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 97
    const-string/jumbo v2, "  "

    #@22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 98
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/x509/PolicyInformation;->dumpValue(Ljava/lang/StringBuilder;)V

    #@28
    .line 99
    const/16 v2, 0xa

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_0

    #@2e
    .line 101
    .end local v0    # "policyInformation":Lorg/apache/harmony/security/x509/PolicyInformation;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, "]\n"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 93
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 88
    sget-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    #@c
    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    #@e
    return-object v0
.end method

.method public getPolicyInformations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method
