.class Lsun/security/provider/certpath/PKIXMasterCertPathValidator;
.super Ljava/lang/Object;
.source "PKIXMasterCertPathValidator.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@9
    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p0, "cpOriginal"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPath;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p1, "reversedCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@3
    move-result v7

    #@4
    .line 75
    .local v7, "cpSize":I
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 76
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@a
    const-string/jumbo v2, "--------------------------------------------------------------"

    #@d
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@10
    .line 78
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@12
    const-string/jumbo v2, "Executing PKIX certification path validation algorithm."

    #@15
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@18
    .line 82
    :cond_0
    const/4 v11, 0x0

    #@19
    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_b

    #@1b
    .line 91
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 92
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Checking cert"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    add-int/lit8 v3, v11, 0x1

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, " ..."

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@41
    .line 94
    :cond_1
    move-object/from16 v0, p1

    #@43
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v9

    #@47
    check-cast v9, Ljava/security/cert/X509Certificate;

    #@49
    .line 95
    .local v9, "currCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@4c
    move-result-object v15

    #@4d
    .line 96
    .local v15, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v15, :cond_2

    #@4f
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@52
    move-result-object v15

    #@53
    .line 100
    :cond_2
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@55
    if-eqz v1, :cond_3

    #@57
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_7

    #@5d
    .line 107
    :cond_3
    const/4 v12, 0x0

    #@5e
    .local v12, "j":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@61
    move-result v1

    #@62
    if-ge v12, v1, :cond_8

    #@64
    .line 109
    move-object/from16 v0, p2

    #@66
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v10

    #@6a
    check-cast v10, Ljava/security/cert/PKIXCertPathChecker;

    #@6c
    .line 110
    .local v10, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@6e
    if-eqz v1, :cond_4

    #@70
    .line 111
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@72
    new-instance v2, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v3, "-Using checker"

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    add-int/lit8 v3, v12, 0x1

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    const-string/jumbo v3, " ... ["

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    .line 112
    invoke-virtual {v10}, Ljava/security/cert/PKIXCertPathChecker;->getClass()Ljava/lang/Class;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    .line 112
    const-string/jumbo v3, "]"

    #@9a
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a5
    .line 115
    :cond_4
    if-nez v11, :cond_5

    #@a7
    .line 116
    const/4 v1, 0x0

    #@a8
    invoke-virtual {v10, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@ab
    .line 119
    :cond_5
    :try_start_0
    invoke-virtual {v10, v9, v15}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@ae
    .line 121
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@b0
    if-eqz v1, :cond_6

    #@b2
    .line 122
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@b4
    new-instance v2, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v3, "-checker"

    #@bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v2

    #@c0
    add-int/lit8 v3, v12, 0x1

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    .line 123
    const-string/jumbo v3, " validation succeeded"

    #@c9
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v2

    #@cd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v2

    #@d1
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    #@d4
    .line 107
    :cond_6
    add-int/lit8 v12, v12, 0x1

    #@d6
    goto :goto_1

    #@d7
    .line 101
    .end local v10    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v12    # "j":I
    :cond_7
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@d9
    const-string/jumbo v2, "Set of critical extensions:"

    #@dc
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@df
    .line 102
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e2
    move-result-object v14

    #@e3
    .local v14, "oid$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@e6
    move-result v1

    #@e7
    if-eqz v1, :cond_3

    #@e9
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ec
    move-result-object v13

    #@ed
    check-cast v13, Ljava/lang/String;

    #@ef
    .line 103
    .local v13, "oid":Ljava/lang/String;
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@f1
    invoke-virtual {v1, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@f4
    goto :goto_2

    #@f5
    .line 126
    .end local v13    # "oid":Ljava/lang/String;
    .end local v14    # "oid$iterator":Ljava/util/Iterator;
    .restart local v10    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v12    # "j":I
    :catch_0
    move-exception v8

    #@f6
    .line 127
    .local v8, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@f8
    invoke-virtual {v8}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    #@fb
    move-result-object v2

    #@fc
    .line 128
    invoke-virtual {v8}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    #@ff
    move-result-object v3

    #@100
    add-int/lit8 v4, v11, 0x1

    #@102
    sub-int v5, v7, v4

    #@104
    .line 129
    invoke-virtual {v8}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    #@107
    move-result-object v6

    #@108
    move-object/from16 v4, p0

    #@10a
    .line 127
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@10d
    throw v1

    #@10e
    .line 133
    .end local v8    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v10    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_8
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    #@111
    move-result v1

    #@112
    if-nez v1, :cond_9

    #@114
    .line 134
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@116
    const-string/jumbo v2, "unrecognized critical extension(s)"

    #@119
    .line 135
    add-int/lit8 v3, v11, 0x1

    #@11b
    sub-int v5, v7, v3

    #@11d
    .line 136
    sget-object v6, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    #@11f
    .line 135
    const/4 v3, 0x0

    #@120
    move-object/from16 v4, p0

    #@122
    .line 134
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@125
    throw v1

    #@126
    .line 139
    :cond_9
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@128
    if-eqz v1, :cond_a

    #@12a
    .line 140
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@12c
    new-instance v2, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v3, "\ncert"

    #@134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v2

    #@138
    add-int/lit8 v3, v11, 0x1

    #@13a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v2

    #@13e
    const-string/jumbo v3, " validation succeeded.\n"

    #@141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v2

    #@145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v2

    #@149
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@14c
    .line 82
    :cond_a
    add-int/lit8 v11, v11, 0x1

    #@14e
    goto/16 :goto_0

    #@150
    .line 143
    .end local v9    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "j":I
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@152
    if-eqz v1, :cond_c

    #@154
    .line 144
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@156
    const-string/jumbo v2, "Cert path validation succeeded. (PKIX validation algorithm)"

    #@159
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@15c
    .line 146
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    #@15e
    const-string/jumbo v2, "--------------------------------------------------------------"

    #@161
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@164
    .line 66
    :cond_c
    return-void
.end method
