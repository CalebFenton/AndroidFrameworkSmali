.class Lsun/security/provider/certpath/ForwardState;
.super Ljava/lang/Object;
.source "ForwardState.java"

# interfaces
.implements Lsun/security/provider/certpath/State;


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field blacklist cert:Lsun/security/x509/X509CertImpl;

.field blacklist forwardCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist init:Z

.field blacklist issuerDN:Ljavax/security/auth/x500/X500Principal;

.field blacklist keyParamsNeededFlag:Z

.field blacklist subjectNamesTraversed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field blacklist traversedCACerts:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 234
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/ForwardState;

    .line 237
    .local v0, "clonedState":Lsun/security/provider/certpath/ForwardState;
    iget-object v1, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 239
    iget-object v1, v0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 241
    .local v1, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 242
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXCertPathChecker;

    .line 243
    .local v2, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v3, v2, Ljava/lang/Cloneable;

    if-eqz v3, :cond_2f

    .line 244
    invoke-virtual {v2}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 246
    .end local v2    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_2f
    goto :goto_16

    .line 253
    :cond_30
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 254
    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;
    :try_end_3a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 255
    return-object v0

    .line 256
    .end local v0    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .end local v1    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :catch_3b
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist initState(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 138
    .local p1, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    .line 147
    .local v1, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v1}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 148
    invoke-virtual {v1, v2}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 149
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_30
    goto :goto_15

    .line 153
    :cond_31
    iput-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 154
    return-void
.end method

.method public blacklist isInitial()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    return v0
.end method

.method public blacklist keyParamsNeeded()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "State ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\n  issuerDN of last cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\n  traversedCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\n  init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\n  keyParamsNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    .line 123
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\n  subjectNamesTraversed: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateState(Ljava/security/cert/X509Certificate;)V
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 165
    if-nez p1, :cond_3

    .line 166
    return-void

    .line 168
    :cond_3
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    .line 171
    .local v0, "icert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 172
    iput-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    .line 176
    :cond_14
    iput-object v0, p0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    .line 179
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    .line 181
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 187
    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    if-nez v1, :cond_32

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_32

    .line 188
    iget v1, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    add-int/2addr v1, v2

    iput v1, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    .line 194
    :cond_32
    iget-boolean v1, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    if-nez v1, :cond_3c

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 195
    :cond_3c
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 196
    .local v1, "subjName":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-static {v1}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    nop

    .line 200
    :try_start_4a
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v2

    .line 201
    .local v2, "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v2, :cond_75

    .line 202
    const-string v3, "subject_name"

    invoke-virtual {v2, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v3

    .line 204
    .local v3, "gNames":Lsun/security/x509/GeneralNames;
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/GeneralName;

    .line 205
    .local v5, "gName":Lsun/security/x509/GeneralName;
    iget-object v6, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_73} :catch_7a

    .line 206
    nop

    .end local v5    # "gName":Lsun/security/x509/GeneralName;
    goto :goto_5e

    .line 215
    .end local v2    # "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v3    # "gNames":Lsun/security/x509/GeneralNames;
    :cond_75
    nop

    .line 218
    .end local v1    # "subjName":Ljavax/security/auth/x500/X500Principal;
    :cond_76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 219
    return-void

    .line 208
    .restart local v1    # "subjName":Ljavax/security/auth/x500/X500Principal;
    :catch_7a
    move-exception v2

    .line 209
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_89

    .line 210
    sget-object v3, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    const-string v4, "ForwardState.updateState() unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    :cond_89
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
