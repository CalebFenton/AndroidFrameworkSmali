.class Lsun/security/provider/certpath/ForwardState;
.super Ljava/lang/Object;
.source "ForwardState.java"

# interfaces
.implements Lsun/security/provider/certpath/State;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field cert:Lsun/security/x509/X509CertImpl;

.field forwardCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private init:Z

.field issuerDN:Ljavax/security/auth/x500/X500Principal;

.field keyParamsNeededFlag:Z

.field subjectNamesTraversed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field traversedCACerts:I

.field untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    #@9
    .line 54
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@6
    .line 86
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    #@9
    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 233
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lsun/security/provider/certpath/ForwardState;

    #@6
    .line 237
    .local v1, "clonedState":Lsun/security/provider/certpath/ForwardState;
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    .line 236
    check-cast v4, Ljava/util/ArrayList;

    #@e
    iput-object v4, v1, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    #@10
    .line 239
    iget-object v4, v1, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    #@15
    move-result-object v3

    #@16
    .line 240
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 241
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@22
    .line 242
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v0, Ljava/lang/Cloneable;

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 243
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@2c
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 255
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :catch_0
    move-exception v2

    #@31
    .line 256
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    #@33
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-direct {v4, v5, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    throw v4

    #@3b
    .line 253
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    #@3d
    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, Ljava/util/HashSet;

    #@43
    .line 252
    iput-object v4, v1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    #@45
    .line 254
    return-object v1
.end method

.method public initState(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    const/4 v3, 0x1

    #@1
    .line 137
    new-instance v2, Ljava/util/HashSet;

    #@3
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@6
    iput-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    #@8
    .line 138
    const/4 v2, 0x0

    #@9
    iput v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    #@b
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    #@12
    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "checker$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@22
    .line 146
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 147
    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@2b
    .line 148
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 152
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_1
    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@33
    .line 135
    return-void
.end method

.method public isInitial()Z
    .locals 1

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@2
    return v0
.end method

.method public keyParamsNeeded()Z
    .locals 1

    #@0
    .prologue
    .line 108
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 118
    const-string/jumbo v1, "\n  issuerDN of last cert: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 119
    const-string/jumbo v1, "\n  traversedCACerts: "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 120
    const-string/jumbo v1, "\n  init: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@2c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 121
    const-string/jumbo v1, "\n  keyParamsNeeded: "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 122
    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    #@3c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 123
    const-string/jumbo v1, "\n  subjectNamesTraversed: \n"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 124
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    #@4c
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    .line 125
    const-string/jumbo v1, "]\n"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    return-object v1
.end method

.method public updateState(Ljava/security/cert/X509Certificate;)V
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    if-nez p1, :cond_0

    #@2
    .line 165
    return-void

    #@3
    .line 167
    :cond_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@6
    move-result-object v4

    #@7
    .line 170
    .local v4, "icert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@a
    move-result-object v7

    #@b
    invoke-static {v7}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_1

    #@11
    .line 171
    const/4 v7, 0x1

    #@12
    iput-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    #@14
    .line 175
    :cond_1
    iput-object v4, p0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    #@16
    .line 178
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@19
    move-result-object v7

    #@1a
    iput-object v7, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    #@1c
    .line 180
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_2

    #@22
    .line 186
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@24
    if-nez v7, :cond_2

    #@26
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@29
    move-result v7

    #@2a
    const/4 v8, -0x1

    #@2b
    if-eq v7, v8, :cond_2

    #@2d
    .line 187
    iget v7, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    #@2f
    add-int/lit8 v7, v7, 0x1

    #@31
    iput v7, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    #@33
    .line 193
    :cond_2
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@35
    if-nez v7, :cond_4

    #@37
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_4

    #@3d
    .line 217
    :cond_3
    const/4 v7, 0x0

    #@3e
    iput-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    #@40
    .line 162
    return-void

    #@41
    .line 194
    :cond_4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@44
    move-result-object v6

    #@45
    .line 195
    .local v6, "subjName":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    #@47
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 199
    :try_start_0
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    #@51
    move-result-object v5

    #@52
    .line 200
    .local v5, "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v5, :cond_3

    #@54
    .line 202
    const-string/jumbo v7, "subject_name"

    #@57
    .line 201
    invoke-virtual {v5, v7}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    #@5a
    move-result-object v3

    #@5b
    .line 203
    .local v3, "gNames":Lsun/security/x509/GeneralNames;
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    #@5e
    move-result-object v7

    #@5f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v2

    #@63
    .local v2, "gName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v7

    #@67
    if-eqz v7, :cond_3

    #@69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v1

    #@6d
    check-cast v1, Lsun/security/x509/GeneralName;

    #@6f
    .line 204
    .local v1, "gName":Lsun/security/x509/GeneralName;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    #@71
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    goto :goto_0

    #@79
    .line 207
    .end local v1    # "gName":Lsun/security/x509/GeneralName;
    .end local v2    # "gName$iterator":Ljava/util/Iterator;
    .end local v3    # "gNames":Lsun/security/x509/GeneralNames;
    .end local v5    # "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catch_0
    move-exception v0

    #@7a
    .line 208
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    #@7c
    if-eqz v7, :cond_5

    #@7e
    .line 209
    sget-object v7, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    #@80
    const-string/jumbo v8, "ForwardState.updateState() unexpected exception"

    #@83
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@86
    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@89
    .line 213
    :cond_5
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    #@8b
    invoke-direct {v7, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@8e
    throw v7
.end method
