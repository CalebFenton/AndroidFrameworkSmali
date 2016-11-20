.class Lsun/security/provider/certpath/BasicChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "BasicChecker.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final caName:Ljavax/security/auth/x500/X500Principal;

.field private final date:Ljava/util/Date;

.field private prevPubKey:Ljava/security/PublicKey;

.field private prevSubject:Ljavax/security/auth/x500/X500Principal;

.field private final sigOnly:Z

.field private final sigProvider:Ljava/lang/String;

.field private final trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@9
    .line 60
    return-void
.end method

.method constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "sigProvider"    # Ljava/lang/String;
    .param p4, "sigOnly"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 83
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 84
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@13
    .line 85
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    #@1d
    .line 90
    :goto_0
    iput-object p2, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    #@1f
    .line 91
    iput-object p3, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    #@21
    .line 92
    iput-boolean p4, p0, Lsun/security/provider/certpath/BasicChecker;->sigOnly:Z

    #@23
    .line 93
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@25
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@27
    .line 82
    return-void

    #@28
    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@2e
    .line 88
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    #@34
    goto :goto_0
.end method

.method static makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "keyValueKey"    # Ljava/security/PublicKey;
    .param p1, "keyParamsKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    instance-of v5, p0, Ljava/security/interfaces/DSAPublicKey;

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 276
    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 280
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    #@a
    .end local p1    # "keyParamsKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@d
    move-result-object v3

    #@e
    .line 281
    .local v3, "params":Ljava/security/interfaces/DSAParams;
    if-nez v3, :cond_1

    #@10
    .line 282
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@12
    const-string/jumbo v6, "Key parameters missing"

    #@15
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@18
    throw v5

    #@19
    .line 277
    .end local v3    # "params":Ljava/security/interfaces/DSAParams;
    .restart local p1    # "keyParamsKey":Ljava/security/PublicKey;
    :cond_0
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@1b
    const-string/jumbo v6, "Input key is not appropriate type for inheriting parameters"

    #@1e
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@21
    throw v5

    #@22
    .line 284
    .end local p1    # "keyParamsKey":Ljava/security/PublicKey;
    .restart local v3    # "params":Ljava/security/interfaces/DSAParams;
    :cond_1
    :try_start_0
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    #@24
    .end local p0    # "keyValueKey":Ljava/security/PublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    #@27
    move-result-object v4

    #@28
    .line 285
    .local v4, "y":Ljava/math/BigInteger;
    const-string/jumbo v5, "DSA"

    #@2b
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@2e
    move-result-object v1

    #@2f
    .line 286
    .local v1, "kf":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/DSAPublicKeySpec;

    #@31
    .line 287
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    #@34
    move-result-object v5

    #@35
    .line 288
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    #@38
    move-result-object v6

    #@39
    .line 289
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    #@3c
    move-result-object v7

    #@3d
    .line 286
    invoke-direct {v2, v4, v5, v6, v7}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@40
    .line 290
    .local v2, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result-object v5

    #@44
    return-object v5

    #@45
    .line 291
    .end local v1    # "kf":Ljava/security/KeyFactory;
    .end local v2    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    .end local v4    # "y":Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@46
    .line 292
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@48
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v7, "Unable to generate key with inherited parameters: "

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 294
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-direct {v5, v6, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw v5
.end method

.method private updateState(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    .line 247
    .local v0, "cKey":Ljava/security/PublicKey;
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 248
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "BasicChecker.updateState issuer: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 249
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 249
    const-string/jumbo v3, "; subject: "

    #@25
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 250
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@2c
    move-result-object v3

    #@2d
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 250
    const-string/jumbo v3, "; serial#: "

    #@34
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 251
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4b
    .line 253
    :cond_0
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 255
    iget-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@53
    invoke-static {v0, v1}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    #@56
    move-result-object v0

    #@57
    .line 256
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@59
    if-eqz v1, :cond_1

    #@5b
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@5d
    const-string/jumbo v2, "BasicChecker.updateState Made key with inherited params"

    #@60
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@63
    .line 259
    :cond_1
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@65
    .line 260
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@68
    move-result-object v1

    #@69
    iput-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    #@6b
    .line 244
    return-void
.end method

.method private verifyNameChaining(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 213
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    #@4
    if-eqz v0, :cond_3

    #@6
    .line 215
    const-string/jumbo v7, "subject/issuer name chaining"

    #@9
    .line 216
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 217
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "---checking "

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v3, "..."

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2d
    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@30
    move-result-object v6

    #@31
    .line 222
    .local v6, "currIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->isEmpty()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_1

    #@3b
    .line 223
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@3d
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string/jumbo v3, " check failed: "

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 225
    const-string/jumbo v3, "empty/null issuer DN in certificate is invalid"

    #@50
    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    .line 226
    sget-object v5, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    #@5a
    move-object v3, v2

    #@5b
    .line 223
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@5e
    throw v0

    #@5f
    .line 229
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    #@61
    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_2

    #@67
    .line 230
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@69
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    const-string/jumbo v3, " check failed"

    #@75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    .line 232
    sget-object v5, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    #@7f
    move-object v3, v2

    #@80
    .line 230
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@83
    throw v0

    #@84
    .line 235
    :cond_2
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@86
    if-eqz v0, :cond_3

    #@88
    .line 236
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@8a
    new-instance v1, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    const-string/jumbo v2, " verified."

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a1
    .line 211
    .end local v6    # "currIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v7    # "msg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 161
    const-string/jumbo v7, "signature"

    #@4
    .line 162
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 163
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "---checking "

    #@12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v4, "..."

    #@1d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@28
    .line 166
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 167
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@2e
    iget-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    #@30
    invoke-virtual {p1, v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@33
    .line 179
    :goto_0
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 180
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v3, " verified."

    #@45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@50
    .line 159
    :cond_1
    return-void

    #@51
    .line 169
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@53
    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@56
    goto :goto_0

    #@57
    .line 171
    :catch_0
    move-exception v2

    #@58
    .line 172
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@5a
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    const-string/jumbo v4, " check failed"

    #@66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    .line 174
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@70
    .line 173
    const/4 v4, -0x1

    #@71
    .line 172
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@74
    throw v0

    #@75
    .line 175
    .end local v2    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v6

    #@76
    .line 176
    .local v6, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@78
    new-instance v1, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    const-string/jumbo v3, " check failed"

    #@84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    invoke-direct {v0, v1, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8f
    throw v0
.end method

.method private verifyTimestamp(Ljava/security/cert/X509Certificate;)V
    .locals 12
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 189
    const-string/jumbo v11, "timestamp"

    #@5
    .line 190
    .local v11, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 191
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "---checking "

    #@13
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v5, ":"

    #@1e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v5, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    #@24
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v5, "..."

    #@2f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3a
    .line 194
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    #@3c
    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 203
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@41
    if-eqz v0, :cond_1

    #@43
    .line 204
    sget-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v3, " verified."

    #@51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5c
    .line 187
    :cond_1
    return-void

    #@5d
    .line 198
    :catch_0
    move-exception v2

    #@5e
    .line 199
    .local v2, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@60
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    const-string/jumbo v5, " check failed"

    #@6c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@76
    .line 199
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@79
    throw v0

    #@7a
    .line 195
    .end local v2    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v7

    #@7b
    .line 196
    .local v7, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@7d
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    const-string/jumbo v1, " check failed"

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v6

    #@91
    sget-object v10, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@93
    move-object v8, v3

    #@94
    move v9, v4

    #@95
    .line 196
    invoke-direct/range {v5 .. v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@98
    throw v5
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 2
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
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    #@1
    .line 141
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@3
    .line 143
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget-boolean v1, p0, Lsun/security/provider/certpath/BasicChecker;->sigOnly:Z

    #@5
    if-nez v1, :cond_0

    #@7
    .line 144
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifyTimestamp(Ljava/security/cert/X509Certificate;)V

    #@a
    .line 145
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifyNameChaining(Ljava/security/cert/X509Certificate;)V

    #@d
    .line 147
    :cond_0
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifySignature(Ljava/security/cert/X509Certificate;)V

    #@10
    .line 149
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    #@13
    .line 139
    return-void
.end method

.method getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@2
    return-object v0
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
    .line 124
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
    .line 102
    if-nez p1, :cond_1

    #@2
    .line 103
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    #@4
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@6
    .line 104
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    #@8
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 108
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@10
    const-string/jumbo v1, "Key parameters missing"

    #@13
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 110
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    #@19
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    #@1b
    .line 101
    return-void

    #@1c
    .line 112
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@1e
    .line 113
    const-string/jumbo v1, "forward checking not supported"

    #@21
    .line 112
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method
