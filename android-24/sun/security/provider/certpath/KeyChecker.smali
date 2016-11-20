.class Lsun/security/provider/certpath/KeyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "KeyChecker.java"


# static fields
.field private static final KEY_CERT_SIGN:I = 0x5

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final certPathLen:I

.field private remainingCerts:I

.field private supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final targetConstraints:Ljava/security/cert/CertSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    #@9
    .line 45
    return-void
.end method

.method constructor <init>(ILjava/security/cert/CertSelector;)V
    .locals 0
    .param p1, "certPathLen"    # I
    .param p2, "targetCertSel"    # Ljava/security/cert/CertSelector;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 62
    iput p1, p0, Lsun/security/provider/certpath/KeyChecker;->certPathLen:I

    #@5
    .line 63
    iput-object p2, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    #@7
    .line 61
    return-void
.end method

.method static verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 143
    const-string/jumbo v7, "CA key usage"

    #@4
    .line 144
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 145
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "KeyChecker.verifyCAKeyUsage() ---checking "

    #@12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 146
    const-string/jumbo v3, "..."

    #@1d
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@28
    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@2b
    move-result-object v6

    #@2c
    .line 153
    .local v6, "keyUsageBits":[Z
    if-nez v6, :cond_1

    #@2e
    .line 154
    return-void

    #@2f
    .line 158
    :cond_1
    const/4 v0, 0x5

    #@30
    aget-boolean v0, v6, v0

    #@32
    if-nez v0, :cond_2

    #@34
    .line 159
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@36
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const-string/jumbo v3, " check failed: keyCertSign bit is not set"

    #@42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 161
    sget-object v5, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    #@4c
    const/4 v4, -0x1

    #@4d
    move-object v3, v2

    #@4e
    .line 159
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@51
    throw v0

    #@52
    .line 164
    :cond_2
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    #@54
    if-eqz v0, :cond_3

    #@56
    .line 165
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    #@58
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v2, "KeyChecker.verifyCAKeyUsage() "

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 166
    const-string/jumbo v2, " verified."

    #@6b
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@76
    .line 142
    :cond_3
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 3
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
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    #@1
    .line 109
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@3
    .line 111
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    iput v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    #@9
    .line 114
    iget v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    #@b
    if-nez v1, :cond_0

    #@d
    .line 115
    iget-object v1, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 116
    iget-object v1, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    #@13
    invoke-interface {v1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    .line 117
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    #@1b
    const-string/jumbo v2, "target certificate constraints check failed"

    #@1e
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 122
    :cond_0
    invoke-static {v0}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    #@25
    .line 126
    :cond_1
    if-eqz p2, :cond_2

    #@27
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 107
    :cond_2
    :goto_0
    return-void

    #@2e
    .line 127
    :cond_3
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@30
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@37
    .line 128
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@39
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@40
    .line 129
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@42
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@49
    goto :goto_0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 2
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
    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 88
    new-instance v0, Ljava/util/HashSet;

    #@6
    const/4 v1, 0x3

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@c
    .line 89
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@e
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@10
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 90
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@19
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@1b
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 91
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@24
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@26
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2d
    .line 92
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@2f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@35
    .line 94
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    #@37
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
    .line 72
    if-nez p1, :cond_0

    #@2
    .line 73
    iget v0, p0, Lsun/security/provider/certpath/KeyChecker;->certPathLen:I

    #@4
    iput v0, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    #@6
    .line 71
    return-void

    #@7
    .line 75
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@9
    .line 76
    const-string/jumbo v1, "forward checking not supported"

    #@c
    .line 75
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return v0
.end method
