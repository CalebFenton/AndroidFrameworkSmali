.class Lsun/security/provider/certpath/PKIXMasterCertPathValidator;
.super Ljava/lang/Object;
.source "PKIXMasterCertPathValidator.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V
    .registers 25
    .param p0, "cpOriginal"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPath;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 74
    .local p1, "reversedCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 76
    .local v1, "cpSize":I
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string v2, "--------------------------------------------------------------"

    if-eqz v0, :cond_16

    .line 77
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string v3, "Executing PKIX certification path validation algorithm."

    invoke-virtual {v0, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 83
    :cond_16
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_17d

    .line 92
    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 94
    .local v5, "currCert":Ljava/security/cert/X509Certificate;
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_4f

    .line 95
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking cert"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - Subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 96
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {v0, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 99
    :cond_4f
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 100
    .local v0, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_5b

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_5c

    .line 100
    :cond_5b
    move-object v6, v0

    .line 104
    .end local v0    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v6, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_5c
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_a1

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 105
    new-instance v0, Ljava/util/StringJoiner;

    const-string v7, "{"

    const-string v8, "}"

    const-string v9, ", "

    invoke-direct {v0, v9, v7, v8}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 106
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_75
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 107
    .local v8, "oid":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 108
    .end local v8    # "oid":Ljava/lang/String;
    goto :goto_75

    .line 109
    :cond_85
    sget-object v7, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set of critical extensions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 110
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 113
    .end local v0    # "joiner":Ljava/util/StringJoiner;
    :cond_a1
    const/4 v0, 0x0

    move v7, v0

    .local v7, "j":I
    :goto_a3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_13b

    .line 115
    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/security/cert/PKIXCertPathChecker;

    .line 116
    .local v9, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_e8

    .line 117
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-Using checker"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ... ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 118
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 117
    invoke-virtual {v0, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 121
    :cond_e8
    if-nez v3, :cond_ee

    .line 122
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 125
    :cond_ee
    :try_start_ee
    invoke-virtual {v9, v5, v6}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 127
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_115

    .line 128
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-checker"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " validation succeeded"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_ee .. :try_end_115} :catch_119

    .line 136
    :cond_115
    nop

    .line 113
    .end local v9    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    .line 132
    .restart local v9    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :catch_119
    move-exception v0

    .line 133
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_12c

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    move-object v12, v2

    goto :goto_12d

    :cond_12c
    move-object v12, v0

    :goto_12d
    add-int/lit8 v2, v3, 0x1

    sub-int v14, v1, v2

    .line 135
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v15

    move-object/from16 v13, p0

    invoke-direct/range {v10 .. v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v10

    .line 113
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_13b
    move-object/from16 v8, p2

    .line 139
    .end local v7    # "j":I
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 145
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_167

    .line 146
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\ncert"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " validation succeeded.\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 83
    .end local v5    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_167
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    .line 140
    .restart local v5    # "currCert":Ljava/security/cert/X509Certificate;
    .restart local v6    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16b
    new-instance v16, Ljava/security/cert/CertPathValidatorException;

    add-int/lit8 v0, v3, 0x1

    sub-int v20, v1, v0

    sget-object v21, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    const-string v17, "unrecognized critical extension(s)"

    const/16 v18, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v16 .. v21}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v16

    .line 83
    .end local v5    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_17d
    move-object/from16 v4, p1

    move-object/from16 v8, p2

    .line 149
    .end local v3    # "i":I
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_191

    .line 150
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string v3, "Cert path validation succeeded. (PKIX validation algorithm)"

    invoke-virtual {v0, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 155
    :cond_191
    return-void
.end method
