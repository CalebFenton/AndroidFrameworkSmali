.class Lsun/security/provider/certpath/KeyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "KeyChecker.java"


# static fields
.field private static final blacklist KEY_CERT_SIGN:I = 0x5

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private final blacklist certPathLen:I

.field private blacklist remainingCerts:I

.field private blacklist supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist targetConstraints:Ljava/security/cert/CertSelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(ILjava/security/cert/CertSelector;)V
    .registers 3
    .param p1, "certPathLen"    # I
    .param p2, "targetCertSel"    # Ljava/security/cert/CertSelector;

    .line 61
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 62
    iput p1, p0, Lsun/security/provider/certpath/KeyChecker;->certPathLen:I

    .line 63
    iput-object p2, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    .line 64
    return-void
.end method

.method static blacklist verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V
    .registers 11
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 143
    const-string v0, "CA key usage"

    .line 144
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_24

    .line 145
    sget-object v1, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyChecker.verifyCAKeyUsage() ---checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 149
    :cond_24
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v1

    .line 153
    .local v1, "keyUsageBits":[Z
    if-nez v1, :cond_2b

    .line 154
    return-void

    .line 158
    :cond_2b
    const/4 v2, 0x5

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_53

    .line 164
    sget-object v2, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_52

    .line 165
    sget-object v2, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyChecker.verifyCAKeyUsage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " verified."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 168
    :cond_52
    return-void

    .line 159
    :cond_53
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " check failed: keyCertSign bit is not set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, -0x1

    sget-object v9, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v4
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 109
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 111
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    .line 114
    iget v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    if-nez v1, :cond_22

    .line 115
    iget-object v1, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    .line 116
    invoke-interface {v1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_25

    .line 117
    :cond_1a
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "target certificate constraints check failed"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_22
    invoke-static {v0}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    .line 126
    :cond_25
    :goto_25
    if-eqz p2, :cond_48

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 127
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 131
    :cond_48
    return-void
.end method

.method public whitelist test-api getSupportedExtensions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_35

    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    .line 89
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    .line 94
    :cond_35
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 72
    if-nez p1, :cond_7

    .line 73
    iget v0, p0, Lsun/security/provider/certpath/KeyChecker;->certPathLen:I

    iput v0, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    .line 78
    return-void

    .line 75
    :cond_7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method
