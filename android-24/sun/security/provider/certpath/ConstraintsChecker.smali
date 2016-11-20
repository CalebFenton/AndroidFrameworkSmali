.class Lsun/security/provider/certpath/ConstraintsChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "ConstraintsChecker.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final certPathLength:I

.field private i:I

.field private maxPathLength:I

.field private prevNC:Lsun/security/x509/NameConstraintsExtension;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@9
    .line 53
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "certPathLength"    # I

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 72
    iput p1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    #@5
    .line 71
    return-void
.end method

.method private checkBasicConstraints(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
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
    .line 225
    const-string/jumbo v6, "basic constraints"

    #@5
    .line 226
    .local v6, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 227
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "---checking "

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v3, "..."

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@29
    .line 228
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "i = "

    #@33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@44
    .line 229
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@46
    new-instance v1, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "maxPathLength = "

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5f
    .line 233
    :cond_0
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@61
    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    #@63
    if-ge v0, v1, :cond_6

    #@65
    .line 247
    const/4 v7, -0x1

    #@66
    .line 248
    .local v7, "pathLenConstraint":I
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getVersion()I

    #@69
    move-result v0

    #@6a
    const/4 v1, 0x3

    #@6b
    if-ge v0, v1, :cond_2

    #@6d
    .line 249
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@6f
    const/4 v1, 0x1

    #@70
    if-ne v0, v1, :cond_1

    #@72
    .line 250
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_1

    #@78
    .line 251
    const v7, 0x7fffffff

    #@7b
    .line 258
    :cond_1
    :goto_0
    if-ne v7, v4, :cond_3

    #@7d
    .line 259
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@7f
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    const-string/jumbo v3, " check failed: this is not a CA certificate"

    #@8b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v1

    #@93
    .line 261
    sget-object v5, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    #@95
    move-object v3, v2

    #@96
    .line 259
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@99
    throw v0

    #@9a
    .line 255
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@9d
    move-result v7

    #@9e
    goto :goto_0

    #@9f
    .line 264
    :cond_3
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@a2
    move-result v0

    #@a3
    if-nez v0, :cond_5

    #@a5
    .line 265
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@a7
    if-gtz v0, :cond_4

    #@a9
    .line 266
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@ab
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    const-string/jumbo v3, " check failed: pathLenConstraint violated - "

    #@b7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    .line 268
    const-string/jumbo v3, "this cert must be the last cert in the "

    #@be
    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    .line 269
    const-string/jumbo v3, "certification path"

    #@c5
    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    .line 270
    sget-object v5, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    #@cf
    move-object v3, v2

    #@d0
    .line 266
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@d3
    throw v0

    #@d4
    .line 272
    :cond_4
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@d6
    add-int/lit8 v0, v0, -0x1

    #@d8
    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@da
    .line 274
    :cond_5
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@dc
    if-ge v7, v0, :cond_6

    #@de
    .line 275
    iput v7, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@e0
    .line 278
    .end local v7    # "pathLenConstraint":I
    :cond_6
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@e2
    if-eqz v0, :cond_7

    #@e4
    .line 279
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@e6
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, "after processing, maxPathLength = "

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ff
    .line 280
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@101
    new-instance v1, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    const-string/jumbo v2, " verified."

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@118
    .line 223
    :cond_7
    return-void
.end method

.method static mergeBasicConstraints(Ljava/security/cert/X509Certificate;I)I
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "maxPathLength"    # I

    #@0
    .prologue
    .line 296
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@3
    move-result v0

    #@4
    .line 298
    .local v0, "pathLenConstraint":I
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 299
    add-int/lit8 p1, p1, -0x1

    #@c
    .line 302
    :cond_0
    if-ge v0, p1, :cond_1

    #@e
    .line 303
    move p1, v0

    #@f
    .line 306
    :cond_1
    return p1
.end method

.method static mergeNameConstraints(Ljava/security/cert/X509Certificate;Lsun/security/x509/NameConstraintsExtension;)Lsun/security/x509/NameConstraintsExtension;
    .locals 7
    .param p0, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "prevNC"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 184
    .local v1, "currCertImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    #@7
    move-result-object v3

    #@8
    .line 186
    .local v3, "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 187
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@e
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v6, "prevNC = "

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@25
    .line 188
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "newNC = "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@42
    .line 193
    :cond_0
    if-nez p1, :cond_3

    #@44
    .line 194
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@46
    if-eqz v4, :cond_1

    #@48
    .line 195
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "mergedNC = "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@65
    .line 197
    :cond_1
    if-nez v3, :cond_2

    #@67
    .line 198
    return-object v3

    #@68
    .line 179
    .end local v1    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v3    # "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    :catch_0
    move-exception v0

    #@69
    .line 180
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@6b
    invoke-direct {v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@6e
    throw v4

    #@6f
    .line 203
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .restart local v3    # "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    :cond_2
    invoke-virtual {v3}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    check-cast v4, Lsun/security/x509/NameConstraintsExtension;

    #@75
    return-object v4

    #@76
    .line 208
    :cond_3
    :try_start_1
    invoke-virtual {p1, v3}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@79
    .line 212
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@7b
    if-eqz v4, :cond_4

    #@7d
    .line 213
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@7f
    new-instance v5, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v6, "mergedNC = "

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@96
    .line 215
    :cond_4
    return-object p1

    #@97
    .line 209
    :catch_1
    move-exception v2

    #@98
    .line 210
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    #@9a
    invoke-direct {v4, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@9d
    throw v4
.end method

.method private verifyNameConstraints(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    const-string/jumbo v7, "name constraints"

    #@3
    .line 138
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 139
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "---checking "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "..."

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@27
    .line 145
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    #@29
    if-eqz v0, :cond_1

    #@2b
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@2d
    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    #@2f
    if-eq v0, v1, :cond_3

    #@31
    .line 146
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 163
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    #@39
    invoke-static {p1, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->mergeNameConstraints(Ljava/security/cert/X509Certificate;Lsun/security/x509/NameConstraintsExtension;)Lsun/security/x509/NameConstraintsExtension;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    #@3f
    .line 165
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 166
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, " verified."

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5c
    .line 135
    :cond_2
    return-void

    #@5d
    .line 147
    :cond_3
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@5f
    if-eqz v0, :cond_4

    #@61
    .line 148
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v2, "prevNC = "

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    iget-object v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@7c
    .line 149
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    #@7e
    new-instance v1, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v2, "currDN = "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@99
    .line 153
    :cond_4
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    #@9b
    invoke-virtual {v0, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    #@9e
    move-result v0

    #@9f
    if-nez v0, :cond_1

    #@a1
    .line 154
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@a3
    new-instance v1, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    const-string/jumbo v2, " check failed"

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    .line 155
    sget-object v5, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    #@b9
    const/4 v2, 0x0

    #@ba
    const/4 v3, 0x0

    #@bb
    const/4 v4, -0x1

    #@bc
    .line 154
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@bf
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c0
    .line 157
    :catch_0
    move-exception v6

    #@c1
    .line 158
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@c3
    invoke-direct {v0, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@c6
    throw v0
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
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    #@1
    .line 117
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@3
    .line 119
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    iput v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@9
    .line 122
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->checkBasicConstraints(Ljava/security/cert/X509Certificate;)V

    #@c
    .line 123
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->verifyNameConstraints(Ljava/security/cert/X509Certificate;)V

    #@f
    .line 125
    if-eqz p2, :cond_0

    #@11
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 115
    :cond_0
    :goto_0
    return-void

    #@18
    .line 126
    :cond_1
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@1a
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@21
    .line 127
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@23
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@2a
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
    .line 94
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 95
    new-instance v0, Ljava/util/HashSet;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@c
    .line 96
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@e
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@10
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 97
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@19
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@1b
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 98
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@2a
    .line 100
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    #@2c
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
    .line 77
    if-nez p1, :cond_0

    #@2
    .line 78
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    #@5
    .line 79
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    #@7
    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    #@9
    .line 80
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    #@c
    .line 76
    return-void

    #@d
    .line 82
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@f
    .line 83
    const-string/jumbo v1, "forward checking not supported"

    #@12
    .line 82
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    return v0
.end method
