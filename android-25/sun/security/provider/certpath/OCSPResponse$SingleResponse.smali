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
.field private final certId:Lsun/security/provider/certpath/CertId;

.field private final certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

.field private final nextUpdate:Ljava/util/Date;

.field private final revocationReason:Ljava/security/cert/CRLReason;

.field private final revocationTime:Ljava/util/Date;

.field private final singleExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final thisUpdate:Ljava/util/Date;


# direct methods
.method static synthetic -get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;
    .locals 1

    #@0
    invoke-direct {p0}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertId()Lsun/security/provider/certpath/CertId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Lsun/security/util/DerValue;)V
    .locals 13
    .param p1, "der"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 686
    iget-byte v8, p1, Lsun/security/util/DerValue;->tag:B

    #@7
    const/16 v9, 0x30

    #@9
    if-eq v8, v9, :cond_0

    #@b
    .line 687
    new-instance v8, Ljava/io/IOException;

    #@d
    const-string/jumbo v9, "Bad ASN.1 encoding in SingleResponse"

    #@10
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v8

    #@14
    .line 689
    :cond_0
    iget-object v7, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@16
    .line 691
    .local v7, "tmp":Lsun/security/util/DerInputStream;
    new-instance v8, Lsun/security/provider/certpath/CertId;

    #@18
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1b
    move-result-object v9

    #@1c
    iget-object v9, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1e
    invoke-direct {v8, v9}, Lsun/security/provider/certpath/CertId;-><init>(Lsun/security/util/DerInputStream;)V

    #@21
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    #@23
    .line 692
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@26
    move-result-object v0

    #@27
    .line 693
    .local v0, "derVal":Lsun/security/util/DerValue;
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    #@29
    and-int/lit8 v8, v8, 0x1f

    #@2b
    int-to-byte v8, v8

    #@2c
    int-to-short v6, v8

    #@2d
    .line 694
    .local v6, "tag":S
    if-ne v6, v12, :cond_7

    #@2f
    .line 695
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@31
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@33
    .line 696
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@35
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@38
    move-result-object v8

    #@39
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    #@3b
    .line 697
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3d
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_6

    #@43
    .line 698
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@45
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@48
    move-result-object v1

    #@49
    .line 699
    .local v1, "dv":Lsun/security/util/DerValue;
    iget-byte v8, v1, Lsun/security/util/DerValue;->tag:B

    #@4b
    and-int/lit8 v8, v8, 0x1f

    #@4d
    int-to-byte v8, v8

    #@4e
    int-to-short v6, v8

    #@4f
    .line 700
    if-nez v6, :cond_5

    #@51
    .line 701
    iget-object v8, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@53
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    #@56
    move-result v4

    #@57
    .line 703
    .local v4, "reason":I
    if-ltz v4, :cond_4

    #@59
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    #@5c
    move-result-object v8

    #@5d
    array-length v8, v8

    #@5e
    if-ge v4, v8, :cond_4

    #@60
    .line 704
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get1()[Ljava/security/cert/CRLReason;

    #@63
    move-result-object v8

    #@64
    aget-object v8, v8, v4

    #@66
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@68
    .line 715
    .end local v1    # "dv":Lsun/security/util/DerValue;
    .end local v4    # "reason":I
    :goto_0
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    #@6b
    move-result-object v8

    #@6c
    if-eqz v8, :cond_1

    #@6e
    .line 716
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    #@71
    move-result-object v8

    #@72
    new-instance v9, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v10, "Revocation time: "

    #@7a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    iget-object v10, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    #@80
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@8b
    .line 717
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    #@8e
    move-result-object v8

    #@8f
    new-instance v9, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v10, "Revocation reason: "

    #@97
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v9

    #@9b
    iget-object v10, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@9d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v9

    #@a1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a8
    .line 731
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@ab
    move-result-object v8

    #@ac
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    #@ae
    .line 733
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    #@b1
    move-result v8

    #@b2
    if-nez v8, :cond_a

    #@b4
    .line 735
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    #@b6
    .line 754
    :cond_2
    :goto_2
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    #@b9
    move-result v8

    #@ba
    if-lez v8, :cond_f

    #@bc
    .line 755
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@bf
    move-result-object v0

    #@c0
    .line 756
    invoke-virtual {v0, v12}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@c3
    move-result v8

    #@c4
    if-eqz v8, :cond_d

    #@c6
    .line 757
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@c8
    const/4 v9, 0x3

    #@c9
    invoke-virtual {v8, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@cc
    move-result-object v5

    #@cd
    .line 759
    .local v5, "singleExtDer":[Lsun/security/util/DerValue;
    new-instance v8, Ljava/util/HashMap;

    #@cf
    .line 760
    array-length v9, v5

    #@d0
    .line 759
    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    #@d3
    .line 758
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    #@d5
    .line 761
    const/4 v3, 0x0

    #@d6
    .local v3, "i":I
    :goto_3
    array-length v8, v5

    #@d7
    if-ge v3, v8, :cond_e

    #@d9
    .line 762
    new-instance v2, Lsun/security/x509/Extension;

    #@db
    aget-object v8, v5, v3

    #@dd
    invoke-direct {v2, v8}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    #@e0
    .line 763
    .local v2, "ext":Lsun/security/x509/Extension;
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    #@e3
    move-result-object v8

    #@e4
    if-eqz v8, :cond_3

    #@e6
    .line 764
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-get0()Lsun/security/util/Debug;

    #@e9
    move-result-object v8

    #@ea
    new-instance v9, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v10, "OCSP single extension: "

    #@f2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v9

    #@f6
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@101
    .line 769
    :cond_3
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    #@104
    move-result v8

    #@105
    if-eqz v8, :cond_c

    #@107
    .line 770
    new-instance v8, Ljava/io/IOException;

    #@109
    .line 771
    new-instance v9, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v10, "Unsupported OCSP critical extension: "

    #@111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v9

    #@115
    .line 772
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@118
    move-result-object v10

    #@119
    .line 771
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v9

    #@11d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v9

    #@121
    .line 770
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@124
    throw v8

    #@125
    .line 706
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v3    # "i":I
    .end local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    .restart local v1    # "dv":Lsun/security/util/DerValue;
    .restart local v4    # "reason":I
    :cond_4
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@127
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@129
    goto/16 :goto_0

    #@12b
    .line 709
    .end local v4    # "reason":I
    :cond_5
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@12d
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@12f
    goto/16 :goto_0

    #@131
    .line 712
    .end local v1    # "dv":Lsun/security/util/DerValue;
    :cond_6
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@133
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@135
    goto/16 :goto_0

    #@137
    .line 720
    :cond_7
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    #@139
    .line 721
    sget-object v8, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    #@13b
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@13d
    .line 722
    if-nez v6, :cond_8

    #@13f
    .line 723
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->GOOD:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@141
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@143
    goto/16 :goto_1

    #@145
    .line 724
    :cond_8
    const/4 v8, 0x2

    #@146
    if-ne v6, v8, :cond_9

    #@148
    .line 725
    sget-object v8, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@14a
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@14c
    goto/16 :goto_1

    #@14e
    .line 727
    :cond_9
    new-instance v8, Ljava/io/IOException;

    #@150
    const-string/jumbo v9, "Invalid certificate status"

    #@153
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@156
    throw v8

    #@157
    .line 737
    :cond_a
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@15a
    move-result-object v0

    #@15b
    .line 738
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    #@15d
    and-int/lit8 v8, v8, 0x1f

    #@15f
    int-to-byte v8, v8

    #@160
    int-to-short v6, v8

    #@161
    .line 739
    if-nez v6, :cond_b

    #@163
    .line 741
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@165
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@168
    move-result-object v8

    #@169
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    #@16b
    .line 743
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->available()I

    #@16e
    move-result v8

    #@16f
    if-eqz v8, :cond_2

    #@171
    .line 746
    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@174
    move-result-object v0

    #@175
    .line 747
    iget-byte v8, v0, Lsun/security/util/DerValue;->tag:B

    #@177
    and-int/lit8 v8, v8, 0x1f

    #@179
    int-to-byte v8, v8

    #@17a
    int-to-short v6, v8

    #@17b
    goto/16 :goto_2

    #@17d
    .line 750
    :cond_b
    iput-object v11, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    #@17f
    goto/16 :goto_2

    #@181
    .line 774
    .restart local v2    # "ext":Lsun/security/x509/Extension;
    .restart local v3    # "i":I
    .restart local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    :cond_c
    iget-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    #@183
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    #@186
    move-result-object v9

    #@187
    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18a
    .line 761
    add-int/lit8 v3, v3, 0x1

    #@18c
    goto/16 :goto_3

    #@18e
    .line 777
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v3    # "i":I
    .end local v5    # "singleExtDer":[Lsun/security/util/DerValue;
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@191
    move-result-object v8

    #@192
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    #@194
    .line 685
    :cond_e
    :goto_4
    return-void

    #@195
    .line 780
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@198
    move-result-object v8

    #@199
    iput-object v8, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    #@19b
    goto :goto_4
.end method

.method synthetic constructor <init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V
    .locals 0
    .param p1, "der"    # Lsun/security/util/DerValue;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;)V

    #@3
    return-void
.end method

.method private getCertId()Lsun/security/provider/certpath/CertId;
    .locals 1

    #@0
    .prologue
    .line 792
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    #@2
    return-object v0
.end method


# virtual methods
.method public getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .locals 1

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@2
    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@2
    return-object v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 796
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    #@2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Date;

    #@8
    return-object v0
.end method

.method public getSingleExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 805
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->singleExtensions:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 813
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SingleResponse:  \n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 814
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certId:Lsun/security/provider/certpath/CertId;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    .line 815
    const-string/jumbo v1, "\nCertStatus: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "\n"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 816
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->certStatus:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@25
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@27
    if-ne v1, v2, :cond_0

    #@29
    .line 817
    const-string/jumbo v1, "revocationTime is "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationTime:Ljava/util/Date;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "\n"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 818
    const-string/jumbo v1, "revocationReason is "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->revocationReason:Ljava/security/cert/CRLReason;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, "\n"

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 820
    :cond_0
    const-string/jumbo v1, "thisUpdate is "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    const-string/jumbo v2, "\n"

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 821
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    #@64
    if-eqz v1, :cond_1

    #@66
    .line 822
    const-string/jumbo v1, "nextUpdate is "

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v2, "\n"

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 824
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    return-object v1
.end method
