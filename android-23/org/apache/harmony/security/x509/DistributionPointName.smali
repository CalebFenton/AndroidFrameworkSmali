.class public final Lorg/apache/harmony/security/x509/DistributionPointName;
.super Ljava/lang/Object;
.source "DistributionPointName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/DistributionPointName$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;


# instance fields
.field private final fullName:Lorg/apache/harmony/security/x509/GeneralNames;

.field private final nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

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
    .line 97
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName$1;

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    .line 98
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@9
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@b
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@e
    aput-object v2, v1, v4

    #@10
    .line 99
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@12
    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@14
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@17
    aput-object v2, v1, v5

    #@19
    .line 97
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1c
    sput-object v0, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@1e
    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x501/Name;)V
    .locals 1
    .param p1, "nameRelativeToCRLIssuer"    # Lorg/apache/harmony/security/x501/Name;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    #@6
    .line 80
    iput-object p1, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    #@8
    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 1
    .param p1, "fullName"    # Lorg/apache/harmony/security/x509/GeneralNames;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    #@5
    .line 75
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    #@8
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
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    .line 85
    const-string/jumbo v0, "Distribution Point Name: [\n"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 87
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

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
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@26
    .line 93
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 94
    const-string/jumbo v0, "]\n"

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 83
    return-void

    #@30
    .line 89
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 90
    const-string/jumbo v0, "  "

    #@36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    #@3b
    const-string/jumbo v1, "RFC2253"

    #@3e
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    goto :goto_0
.end method
