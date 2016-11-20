.class public final Lsun/security/provider/certpath/AlgorithmChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AlgorithmChecker.java"


# static fields
.field private static final SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;


# instance fields
.field private final constraints:Ljava/security/AlgorithmConstraints;

.field private prevPubKey:Ljava/security/PublicKey;

.field private final trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 78
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    #@2
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    #@5
    move-result-object v0

    #@6
    .line 77
    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    #@8
    .line 81
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    #@a
    .line 82
    const-string/jumbo v1, "jdk.certpath.disabledAlgorithms"

    #@d
    .line 81
    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    #@12
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .locals 1
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 106
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@4
    .line 107
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@6
    .line 108
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@8
    .line 109
    iput-object p1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    #@a
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .locals 1
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 93
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    #@2
    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    #@5
    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V
    .locals 2
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 125
    if-nez p1, :cond_0

    #@5
    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 127
    const-string/jumbo v1, "The trust anchor cannot be null"

    #@a
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 131
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@1e
    .line 136
    :goto_0
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@20
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@22
    .line 137
    iput-object p2, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    #@24
    .line 123
    return-void

    #@25
    .line 133
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@2b
    goto :goto_0
.end method

.method static check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    const/4 v2, 0x0

    #@1
    .line 337
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v2

    #@5
    .line 342
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v2}, Lsun/security/x509/X509CRLImpl;->getSigAlgId()Lsun/security/x509/AlgorithmId;

    #@8
    move-result-object v0

    #@9
    .line 343
    .local v0, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-static {p0, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    #@c
    .line 333
    return-void

    #@d
    .line 338
    .end local v0    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :catch_0
    move-exception v1

    #@e
    .line 339
    .local v1, "ce":Ljava/security/cert/CRLException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@10
    invoke-direct {v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v3
.end method

.method static check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "algorithmId"    # Lsun/security/x509/AlgorithmId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 354
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@4
    move-result-object v6

    #@5
    .line 355
    .local v6, "sigAlgName":Ljava/lang/String;
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    #@8
    move-result-object v7

    #@9
    .line 357
    .local v7, "sigAlgParams":Ljava/security/AlgorithmParameters;
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    #@b
    .line 358
    sget-object v1, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    #@d
    .line 357
    invoke-virtual {v0, v1, v6, p0, v7}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 359
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@15
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "algorithm check failed: "

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v3, " is disabled"

    #@28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 361
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@32
    const/4 v4, -0x1

    #@33
    move-object v3, v2

    #@34
    .line 359
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@37
    throw v0

    #@38
    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 20
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
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
    .line 172
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@2
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 174
    :cond_0
    return-void

    #@d
    .line 177
    :cond_1
    const/16 v18, 0x0

    #@f
    .line 179
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    :try_start_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    #@11
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v18

    #@15
    .line 184
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@18
    move-result-object v9

    #@19
    .line 185
    .local v9, "currPubKey":Ljava/security/PublicKey;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    #@1c
    move-result-object v10

    #@1d
    .line 187
    .local v10, "currSigAlg":Ljava/lang/String;
    const/4 v7, 0x0

    #@1e
    .line 189
    .local v7, "algorithmId":Lsun/security/x509/AlgorithmId;
    :try_start_1
    const-string/jumbo v1, "x509.algorithm"

    #@21
    move-object/from16 v0, v18

    #@23
    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v7

    #@27
    .end local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    check-cast v7, Lsun/security/x509/AlgorithmId;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 194
    .local v7, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v7}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    #@2c
    move-result-object v11

    #@2d
    .line 197
    .local v11, "currSigAlgParams":Ljava/security/AlgorithmParameters;
    move-object/from16 v0, p0

    #@2f
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    #@31
    .line 198
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    #@33
    .line 197
    invoke-interface {v1, v2, v10, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_2

    #@39
    .line 200
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@3b
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "Algorithm constraints check failed: "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 202
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@51
    const/4 v3, 0x0

    #@52
    const/4 v4, 0x0

    #@53
    const/4 v5, -0x1

    #@54
    .line 200
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@57
    throw v1

    #@58
    .line 180
    .end local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    .end local v10    # "currSigAlg":Ljava/lang/String;
    .end local v11    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v8

    #@59
    .line 181
    .local v8, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@5b
    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    throw v1

    #@5f
    .line 190
    .end local v8    # "ce":Ljava/security/cert/CertificateException;
    .restart local v9    # "currPubKey":Ljava/security/PublicKey;
    .restart local v10    # "currSigAlg":Ljava/lang/String;
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_1
    move-exception v8

    #@60
    .line 191
    .restart local v8    # "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@62
    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@65
    throw v1

    #@66
    .line 206
    .end local v8    # "ce":Ljava/security/cert/CertificateException;
    .restart local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .restart local v11    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    #@69
    move-result-object v13

    #@6a
    .line 207
    .local v13, "keyUsage":[Z
    if-eqz v13, :cond_3

    #@6c
    array-length v1, v13

    #@6d
    const/16 v2, 0x9

    #@6f
    if-ge v1, v2, :cond_3

    #@71
    .line 208
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@73
    .line 209
    const-string/jumbo v2, "incorrect KeyUsage extension"

    #@76
    .line 210
    sget-object v6, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    #@78
    const/4 v3, 0x0

    #@79
    const/4 v4, 0x0

    #@7a
    const/4 v5, -0x1

    #@7b
    .line 208
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@7e
    throw v1

    #@7f
    .line 213
    :cond_3
    if-eqz v13, :cond_9

    #@81
    .line 215
    const-class v1, Ljava/security/CryptoPrimitive;

    #@83
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@86
    move-result-object v17

    #@87
    .line 217
    .local v17, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v1, 0x0

    #@88
    aget-boolean v1, v13, v1

    #@8a
    if-nez v1, :cond_4

    #@8c
    const/4 v1, 0x1

    #@8d
    aget-boolean v1, v13, v1

    #@8f
    if-nez v1, :cond_4

    #@91
    const/4 v1, 0x5

    #@92
    aget-boolean v1, v13, v1

    #@94
    if-nez v1, :cond_4

    #@96
    const/4 v1, 0x6

    #@97
    aget-boolean v1, v13, v1

    #@99
    if-eqz v1, :cond_5

    #@9b
    .line 222
    :cond_4
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    #@9d
    move-object/from16 v0, v17

    #@9f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a2
    .line 225
    :cond_5
    const/4 v1, 0x2

    #@a3
    aget-boolean v1, v13, v1

    #@a5
    if-eqz v1, :cond_6

    #@a7
    .line 226
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    #@a9
    move-object/from16 v0, v17

    #@ab
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ae
    .line 229
    :cond_6
    const/4 v1, 0x3

    #@af
    aget-boolean v1, v13, v1

    #@b1
    if-eqz v1, :cond_7

    #@b3
    .line 230
    sget-object v1, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    #@b5
    move-object/from16 v0, v17

    #@b7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ba
    .line 233
    :cond_7
    const/4 v1, 0x4

    #@bb
    aget-boolean v1, v13, v1

    #@bd
    if-eqz v1, :cond_8

    #@bf
    .line 234
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    #@c1
    move-object/from16 v0, v17

    #@c3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c6
    .line 240
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    #@c9
    move-result v1

    #@ca
    if-nez v1, :cond_9

    #@cc
    .line 241
    move-object/from16 v0, p0

    #@ce
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    #@d0
    move-object/from16 v0, v17

    #@d2
    invoke-interface {v1, v0, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    #@d5
    move-result v1

    #@d6
    if-nez v1, :cond_9

    #@d8
    .line 242
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@da
    .line 243
    const-string/jumbo v2, "algorithm constraints check failed"

    #@dd
    .line 244
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@df
    const/4 v3, 0x0

    #@e0
    const/4 v4, 0x0

    #@e1
    const/4 v5, -0x1

    #@e2
    .line 242
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@e5
    throw v1

    #@e6
    .line 250
    .end local v17    # "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    :cond_9
    move-object/from16 v0, p0

    #@e8
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@ea
    if-eqz v1, :cond_d

    #@ec
    .line 251
    if-eqz v10, :cond_a

    #@ee
    .line 252
    move-object/from16 v0, p0

    #@f0
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    #@f2
    .line 253
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    #@f4
    .line 254
    move-object/from16 v0, p0

    #@f6
    iget-object v3, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@f8
    .line 252
    invoke-interface {v1, v2, v10, v3, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@fb
    move-result v1

    #@fc
    if-nez v1, :cond_a

    #@fe
    .line 255
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@100
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v3, "Algorithm constraints check failed: "

    #@108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v2

    #@10c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v2

    #@110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v2

    #@114
    .line 257
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@116
    const/4 v3, 0x0

    #@117
    const/4 v4, 0x0

    #@118
    const/4 v5, -0x1

    #@119
    .line 255
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@11c
    throw v1

    #@11d
    .line 262
    :cond_a
    invoke-static {v9}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@120
    move-result v1

    #@121
    if-eqz v1, :cond_d

    #@123
    .line 264
    move-object/from16 v0, p0

    #@125
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@127
    instance-of v1, v1, Ljava/security/interfaces/DSAPublicKey;

    #@129
    if-nez v1, :cond_b

    #@12b
    .line 265
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@12d
    const-string/jumbo v2, "Input key is not of a appropriate type for inheriting parameters"

    #@130
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@133
    throw v1

    #@134
    .line 269
    :cond_b
    move-object/from16 v0, p0

    #@136
    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@138
    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    #@13a
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@13d
    move-result-object v16

    #@13e
    .line 270
    .local v16, "params":Ljava/security/interfaces/DSAParams;
    if-nez v16, :cond_c

    #@140
    .line 271
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@142
    .line 272
    const-string/jumbo v2, "Key parameters missing"

    #@145
    .line 271
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@148
    throw v1

    #@149
    .line 276
    :cond_c
    :try_start_2
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    #@14b
    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    #@14e
    move-result-object v19

    #@14f
    .line 277
    .local v19, "y":Ljava/math/BigInteger;
    const-string/jumbo v1, "DSA"

    #@152
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@155
    move-result-object v14

    #@156
    .line 278
    .local v14, "kf":Ljava/security/KeyFactory;
    new-instance v15, Ljava/security/spec/DSAPublicKeySpec;

    #@158
    .line 279
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@15b
    move-result-object v1

    #@15c
    .line 280
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@15f
    move-result-object v2

    #@160
    .line 281
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@163
    move-result-object v3

    #@164
    .line 278
    move-object/from16 v0, v19

    #@166
    invoke-direct {v15, v0, v1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@169
    .line 282
    .local v15, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v14, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    #@16c
    move-result-object v9

    #@16d
    .line 291
    .end local v14    # "kf":Ljava/security/KeyFactory;
    .end local v15    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    .end local v16    # "params":Ljava/security/interfaces/DSAParams;
    .end local v19    # "y":Ljava/math/BigInteger;
    .restart local v9    # "currPubKey":Ljava/security/PublicKey;
    :cond_d
    move-object/from16 v0, p0

    #@16f
    iput-object v9, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@171
    .line 170
    return-void

    #@172
    .line 283
    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    .restart local v16    # "params":Ljava/security/interfaces/DSAParams;
    :catch_2
    move-exception v12

    #@173
    .line 284
    .local v12, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@175
    new-instance v2, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v3, "Unable to generate key with inherited parameters: "

    #@17d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v2

    #@181
    .line 285
    invoke-virtual {v12}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    #@184
    move-result-object v3

    #@185
    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v2

    #@189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v2

    #@18d
    invoke-direct {v1, v2, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@190
    throw v1
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 143
    if-nez p1, :cond_1

    #@3
    .line 144
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 145
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@9
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@b
    .line 141
    :goto_0
    return-void

    #@c
    .line 147
    :cond_0
    iput-object v1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@e
    goto :goto_0

    #@f
    .line 150
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@11
    .line 151
    const-string/jumbo v1, "forward checking not supported"

    #@14
    .line 150
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V
    .locals 2
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 312
    if-nez p1, :cond_0

    #@6
    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 314
    const-string/jumbo v1, "The trust anchor cannot be null"

    #@b
    .line 313
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 318
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 319
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@1f
    .line 308
    :cond_1
    :goto_0
    return-void

    #@20
    .line 321
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    #@26
    goto :goto_0
.end method
