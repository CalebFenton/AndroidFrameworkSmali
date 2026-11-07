.class final Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"

# interfaces
.implements Lsun/security/provider/certpath/OCSP$RevocationStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SingleResponse"
.end annotation


# instance fields
.field private final blacklist certId:Lsun/security/provider/certpath/CertId;

.field private final blacklist certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field private final blacklist nextUpdate:Ljava/util/Date;

.field private final blacklist revocationReason:Ljava/security/cert/CRLReason;

.field private final blacklist revocationTime:Ljava/util/Date;

.field private final blacklist singleExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist thisUpdate:Ljava/util/Date;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetnextUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetthisUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCertId(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;
    .registers 1

    invoke-direct {p0}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertId()Lsun/security/provider/certpath/CertId;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 11
    .param p1, "der"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_188

    .line 695
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 697
    .local v0, "tmp":Lsun/security/util/DerInputStream;
    new-instance v1, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v1, v2}, Lsun/security/provider/certpath/CertId;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    .line 698
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 699
    .local v1, "derVal":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    int-to-short v2, v2

    .line 700
    .local v2, "tag":S
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ad

    .line 701
    sget-object v5, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    .line 702
    iget-object v5, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    .line 703
    iget-object v5, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->available()I

    move-result v5

    if-eqz v5, :cond_6a

    .line 704
    iget-object v5, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 705
    .local v5, "dv":Lsun/security/util/DerValue;
    iget-byte v6, v5, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v6, v6, 0x1f

    int-to-byte v6, v6

    int-to-short v2, v6

    .line 706
    if-nez v2, :cond_65

    .line 707
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v6

    .line 709
    .local v6, "reason":I
    if-ltz v6, :cond_60

    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetvalues()[Ljava/security/cert/CRLReason;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_60

    .line 710
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetvalues()[Ljava/security/cert/CRLReason;

    move-result-object v7

    aget-object v7, v7, v6

    iput-object v7, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    goto :goto_64

    .line 712
    :cond_60
    sget-object v7, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v7, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 714
    .end local v6    # "reason":I
    :goto_64
    goto :goto_69

    .line 715
    :cond_65
    sget-object v6, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v6, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 717
    .end local v5    # "dv":Lsun/security/util/DerValue;
    :goto_69
    goto :goto_6e

    .line 718
    :cond_6a
    sget-object v5, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 721
    :goto_6e
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v5

    if-eqz v5, :cond_c1

    .line 722
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Revocation time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Revocation reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_c1

    .line 726
    :cond_ad
    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    .line 727
    sget-object v5, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    .line 728
    if-nez v2, :cond_ba

    .line 729
    sget-object v5, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    goto :goto_c1

    .line 730
    :cond_ba
    const/4 v5, 0x2

    if-ne v2, v5, :cond_180

    .line 731
    sget-object v5, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    .line 737
    :cond_c1
    :goto_c1
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    .line 739
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v5

    if-nez v5, :cond_d0

    .line 741
    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    goto :goto_f8

    .line 743
    :cond_d0
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 744
    iget-byte v5, v1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    int-to-short v2, v5

    .line 745
    if-nez v2, :cond_f6

    .line 747
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    .line 749
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_eb

    goto :goto_f8

    .line 752
    :cond_eb
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 753
    iget-byte v3, v1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v3, v3, 0x1f

    int-to-byte v3, v3

    int-to-short v2, v3

    goto :goto_f8

    .line 756
    :cond_f6
    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    .line 760
    :goto_f8
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-lez v3, :cond_179

    .line 761
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 762
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_172

    .line 763
    iget-object v3, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 764
    .local v3, "singleExtDer":[Lsun/security/util/DerValue;
    new-instance v4, Ljava/util/HashMap;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    .line 767
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_118
    array-length v5, v3

    if-ge v4, v5, :cond_171

    .line 768
    new-instance v5, Lsun/security/x509/Extension;

    aget-object v6, v3, v4

    invoke-direct {v5, v6}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 769
    .local v5, "ext":Lsun/security/x509/Extension;
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v6

    if-eqz v6, :cond_142

    .line 770
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OCSP single extension: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 775
    :cond_142
    invoke-virtual {v5}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v6

    if-nez v6, :cond_154

    .line 780
    iget-object v6, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-virtual {v5}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .end local v5    # "ext":Lsun/security/x509/Extension;
    add-int/lit8 v4, v4, 0x1

    goto :goto_118

    .line 776
    .restart local v5    # "ext":Lsun/security/x509/Extension;
    :cond_154
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported OCSP critical extension: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 778
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 782
    .end local v3    # "singleExtDer":[Lsun/security/util/DerValue;
    .end local v4    # "i":I
    .end local v5    # "ext":Lsun/security/x509/Extension;
    :cond_171
    goto :goto_17f

    .line 783
    :cond_172
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    goto :goto_17f

    .line 786
    :cond_179
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    .line 788
    :goto_17f
    return-void

    .line 733
    :cond_180
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid certificate status"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 693
    .end local v0    # "tmp":Lsun/security/util/DerInputStream;
    .end local v1    # "derVal":Lsun/security/util/DerValue;
    .end local v2    # "tag":S
    :cond_188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad ASN.1 encoding in SingleResponse"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;)V

    return-void
.end method

.method private blacklist getCertId()Lsun/security/provider/certpath/CertId;
    .registers 2

    .line 798
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    return-object v0
.end method


# virtual methods
.method public blacklist getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .registers 2

    .line 794
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    return-object v0
.end method

.method public blacklist getRevocationReason()Ljava/security/cert/CRLReason;
    .registers 2

    .line 806
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public blacklist getRevocationTime()Ljava/util/Date;
    .registers 2

    .line 802
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public blacklist getSingleExtensions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SingleResponse:  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCertStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    sget-object v3, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    if-ne v1, v3, :cond_6b

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revocationTime is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revocationReason is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thisUpdate is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    if-eqz v1, :cond_a7

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextUpdate is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
