.class Lsun/security/provider/certpath/ConstraintsChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "ConstraintsChecker.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private final blacklist certPathLength:I

.field private blacklist i:I

.field private blacklist maxPathLength:I

.field private blacklist prevNC:Lsun/security/x509/NameConstraintsExtension;

.field private blacklist supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "certPathLength"    # I

    .line 71
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 72
    iput p1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    .line 73
    return-void
.end method

.method private blacklist checkBasicConstraints(Ljava/security/cert/X509Certificate;)V
    .registers 11
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 225
    const-string v0, "basic constraints"

    .line 226
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4a

    .line 227
    sget-object v1, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---checking "

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

    .line 228
    sget-object v1, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxPathLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 233
    :cond_4a
    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    if-ge v1, v2, :cond_c1

    .line 247
    const/4 v1, -0x1

    .line 248
    .local v1, "pathLenConstraint":I
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_67

    .line 249
    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    if-ne v2, v4, :cond_6b

    .line 250
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 251
    const v1, 0x7fffffff

    goto :goto_6b

    .line 255
    :cond_67
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    .line 258
    :cond_6b
    :goto_6b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_a3

    .line 264
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 265
    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    if-lez v2, :cond_7e

    .line 272
    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    sub-int/2addr v2, v4

    iput v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    goto :goto_9c

    .line 266
    :cond_7e
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " check failed: pathLenConstraint violated - this cert must be the last cert in the certification path"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3

    .line 274
    :cond_9c
    :goto_9c
    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    if-ge v1, v2, :cond_c1

    .line 275
    iput v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    goto :goto_c1

    .line 259
    :cond_a3
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " check failed: this is not a CA certificate"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3

    .line 278
    .end local v1    # "pathLenConstraint":I
    :cond_c1
    :goto_c1
    sget-object v1, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_f7

    .line 279
    sget-object v1, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after processing, maxPathLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 280
    sget-object v1, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " verified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 282
    :cond_f7
    return-void
.end method

.method static blacklist mergeBasicConstraints(Ljava/security/cert/X509Certificate;I)I
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "maxPathLength"    # I

    .line 296
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 298
    .local v0, "pathLenConstraint":I
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 299
    add-int/lit8 p1, p1, -0x1

    .line 302
    :cond_c
    if-ge v0, p1, :cond_f

    .line 303
    move p1, v0

    .line 306
    :cond_f
    return p1
.end method

.method static blacklist mergeNameConstraints(Ljava/security/cert/X509Certificate;Lsun/security/x509/NameConstraintsExtension;)Lsun/security/x509/NameConstraintsExtension;
    .registers 7
    .param p0, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "prevNC"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 178
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_4} :catch_86

    .line 181
    .local v0, "currCertImpl":Lsun/security/x509/X509CertImpl;
    nop

    .line 183
    nop

    .line 184
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v1

    .line 186
    .local v1, "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    sget-object v2, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_34

    .line 187
    sget-object v2, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevNC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 188
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 193
    :cond_34
    const-string v2, "mergedNC = "

    if-nez p1, :cond_60

    .line 194
    sget-object v3, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_56

    .line 195
    sget-object v3, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 197
    :cond_56
    if-nez v1, :cond_59

    .line 198
    return-object v1

    .line 203
    :cond_59
    invoke-virtual {v1}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    return-object v2

    .line 208
    :cond_60
    :try_start_60
    invoke-virtual {p1, v1}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_7f

    .line 211
    nop

    .line 212
    sget-object v3, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_7e

    .line 213
    sget-object v3, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 215
    :cond_7e
    return-object p1

    .line 209
    :catch_7f
    move-exception v2

    .line 210
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 179
    .end local v0    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v1    # "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_86
    move-exception v0

    .line 180
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist verifyNameConstraints(Ljava/security/cert/X509Certificate;)V
    .registers 10
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 137
    const-string v1, "name constraints"

    .line 138
    .local v1, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_24

    .line 139
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 145
    :cond_24
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v0, :cond_8e

    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    if-eq v0, v2, :cond_34

    .line 146
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 147
    :cond_34
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_60

    .line 148
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prevNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currDN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 153
    :cond_60
    :try_start_60
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v0, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 159
    goto :goto_8e

    .line 154
    :cond_69
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " check failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .end local v1    # "msg":Ljava/lang/String;
    .end local p0    # "this":Lsun/security/provider/certpath/ConstraintsChecker;
    .end local p1    # "currCert":Ljava/security/cert/X509Certificate;
    throw v2
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_87} :catch_87

    .line 157
    .restart local v1    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Lsun/security/provider/certpath/ConstraintsChecker;
    .restart local p1    # "currCert":Ljava/security/cert/X509Certificate;
    :catch_87
    move-exception v0

    .line 158
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_8e
    :goto_8e
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    invoke-static {p1, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->mergeNameConstraints(Ljava/security/cert/X509Certificate;Lsun/security/x509/NameConstraintsExtension;)Lsun/security/x509/NameConstraintsExtension;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    .line 165
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_b2

    .line 166
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " verified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 167
    :cond_b2
    return-void
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 5
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

    .line 117
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 119
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    .line 122
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->checkBasicConstraints(Ljava/security/cert/X509Certificate;)V

    .line 123
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->verifyNameConstraints(Ljava/security/cert/X509Certificate;)V

    .line 125
    if-eqz p2, :cond_29

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 126
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_29
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

    .line 94
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_2a

    .line 95
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    .line 96
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    .line 100
    :cond_2a
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

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

    .line 77
    if-nez p1, :cond_d

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    .line 79
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    .line 85
    return-void

    .line 82
    :cond_d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method
