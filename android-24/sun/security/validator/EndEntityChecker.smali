.class Lsun/security/validator/EndEntityChecker;
.super Ljava/lang/Object;
.source "EndEntityChecker.java"


# static fields
.field private static final KU_KEY_AGREEMENT:I = 0x4

.field private static final KU_KEY_ENCIPHERMENT:I = 0x2

.field private static final KU_SERVER_ENCRYPTION:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SERVER_SIGNATURE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KU_SIGNATURE:I = 0x0

.field private static final NSCT_CODE_SIGNING:Ljava/lang/String; = "object_signing"

.field private static final NSCT_SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field private static final NSCT_SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field private static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field private static final OID_EKU_CODE_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.3"

.field private static final OID_EKU_MS_SGC:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final OID_EKU_NS_SGC:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final OID_EKU_TIME_STAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"

.field private static final OID_EKU_TLS_CLIENT:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final OID_EKU_TLS_SERVER:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field private static final OID_SUBJECT_ALT_NAME:Ljava/lang/String; = "2.5.29.17"


# instance fields
.field private final type:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 109
    const/4 v0, 0x6

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    const-string/jumbo v1, "DHE_DSS"

    #@b
    aput-object v1, v0, v3

    #@d
    const-string/jumbo v1, "DHE_RSA"

    #@10
    aput-object v1, v0, v4

    #@12
    const-string/jumbo v1, "ECDHE_ECDSA"

    #@15
    aput-object v1, v0, v5

    #@17
    const-string/jumbo v1, "ECDHE_RSA"

    #@1a
    aput-object v1, v0, v6

    #@1c
    .line 110
    const-string/jumbo v1, "RSA_EXPORT"

    #@1f
    aput-object v1, v0, v7

    #@21
    const-string/jumbo v1, "UNKNOWN"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 109
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2a
    move-result-object v0

    #@2b
    .line 108
    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    #@2d
    .line 114
    new-array v0, v4, [Ljava/lang/String;

    #@2f
    const-string/jumbo v1, "RSA"

    #@32
    aput-object v1, v0, v3

    #@34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@37
    move-result-object v0

    #@38
    .line 113
    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    #@3a
    .line 118
    new-array v0, v7, [Ljava/lang/String;

    #@3c
    const-string/jumbo v1, "DH_DSS"

    #@3f
    aput-object v1, v0, v3

    #@41
    const-string/jumbo v1, "DH_RSA"

    #@44
    aput-object v1, v0, v4

    #@46
    const-string/jumbo v1, "ECDH_ECDSA"

    #@49
    aput-object v1, v0, v5

    #@4b
    const-string/jumbo v1, "ECDH_RSA"

    #@4e
    aput-object v1, v0, v6

    #@50
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@53
    move-result-object v0

    #@54
    .line 117
    sput-object v0, Lsun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    #@56
    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 127
    iput-object p1, p0, Lsun/security/validator/EndEntityChecker;->type:Ljava/lang/String;

    #@5
    .line 128
    iput-object p2, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@7
    .line 126
    return-void
.end method

.method private checkCodeSigning(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 316
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 318
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 319
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@d
    .line 320
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    #@10
    .line 321
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@12
    .line 319
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@15
    throw v1

    #@16
    .line 324
    :cond_0
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.3"

    #@19
    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 325
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@21
    .line 326
    const-string/jumbo v2, "Extended key usage does not permit use for code signing"

    #@24
    .line 327
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@26
    .line 325
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@29
    throw v1

    #@2a
    .line 332
    :cond_1
    iget-object v1, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@2c
    const-string/jumbo v2, "jce signing"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_3

    #@35
    .line 333
    const-string/jumbo v1, "object_signing"

    #@38
    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_2

    #@3e
    .line 334
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@40
    .line 335
    const-string/jumbo v2, "Netscape cert type does not permit use for code signing"

    #@43
    .line 336
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@45
    .line 334
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@48
    throw v1

    #@49
    .line 338
    :cond_2
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@4f
    .line 342
    :cond_3
    const-string/jumbo v1, "2.5.29.15"

    #@52
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@55
    .line 343
    const-string/jumbo v1, "2.5.29.37"

    #@58
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5b
    .line 345
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    #@5e
    .line 315
    return-void
.end method

.method private checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "expectedEKU"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    #@1
    .line 196
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 197
    .local v0, "eku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@7
    .line 198
    return v1

    #@8
    .line 200
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    const-string/jumbo v1, "2.5.29.37.0"

    #@11
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    :cond_1
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "bit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@3
    move-result-object v0

    #@4
    .line 211
    .local v0, "keyUsage":[Z
    if-nez v0, :cond_0

    #@6
    .line 212
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 214
    :cond_0
    array-length v1, v0

    #@9
    if-le v1, p2, :cond_1

    #@b
    aget-boolean v1, v0, p2

    #@d
    :goto_0
    return v1

    #@e
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method private checkRemainingExtensions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p1, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "2.5.29.19"

    #@3
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@6
    .line 182
    const-string/jumbo v0, "2.5.29.17"

    #@9
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@c
    .line 184
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 185
    new-instance v0, Ljava/security/cert/CertificateException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Certificate contains unsupported critical extensions: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 174
    :cond_0
    return-void
.end method

.method private checkTLSClient(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 226
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 227
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@d
    .line 228
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    #@10
    .line 229
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@12
    .line 227
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@15
    throw v1

    #@16
    .line 232
    :cond_0
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.2"

    #@19
    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 233
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@21
    const-string/jumbo v2, "Extended key usage does not permit use for TLS client authentication"

    #@24
    .line 235
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@26
    .line 233
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@29
    throw v1

    #@2a
    .line 238
    :cond_1
    const-string/jumbo v1, "ssl_client"

    #@2d
    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_2

    #@33
    .line 239
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@35
    .line 240
    const-string/jumbo v2, "Netscape cert type does not permit use for SSL client"

    #@38
    .line 241
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@3a
    .line 239
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@3d
    throw v1

    #@3e
    .line 245
    :cond_2
    const-string/jumbo v1, "2.5.29.15"

    #@41
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@44
    .line 246
    const-string/jumbo v1, "2.5.29.37"

    #@47
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@4a
    .line 247
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    #@4d
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@50
    .line 249
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    #@53
    .line 223
    return-void
.end method

.method private checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 262
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_ENCRYPTION:Ljava/util/Collection;

    #@6
    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 263
    const/4 v1, 0x2

    #@d
    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_3

    #@13
    .line 264
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@15
    .line 265
    const-string/jumbo v2, "KeyUsage does not allow key encipherment"

    #@18
    .line 266
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@1a
    .line 264
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@1d
    throw v1

    #@1e
    .line 268
    :cond_0
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_SIGNATURE:Ljava/util/Collection;

    #@20
    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 269
    const/4 v1, 0x0

    #@27
    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_3

    #@2d
    .line 270
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@2f
    .line 271
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    #@32
    .line 272
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@34
    .line 270
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@37
    throw v1

    #@38
    .line 274
    :cond_1
    sget-object v1, Lsun/security/validator/EndEntityChecker;->KU_SERVER_KEY_AGREEMENT:Ljava/util/Collection;

    #@3a
    invoke-interface {v1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_2

    #@40
    .line 275
    const/4 v1, 0x4

    #@41
    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_3

    #@47
    .line 276
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@49
    .line 277
    const-string/jumbo v2, "KeyUsage does not allow key agreement"

    #@4c
    .line 278
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@4e
    .line 276
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@51
    throw v1

    #@52
    .line 281
    :cond_2
    new-instance v1, Ljava/security/cert/CertificateException;

    #@54
    new-instance v2, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v3, "Unknown authType: "

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v1

    #@6c
    .line 284
    :cond_3
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.1"

    #@6f
    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    #@72
    move-result v1

    #@73
    if-nez v1, :cond_4

    #@75
    .line 287
    const-string/jumbo v1, "1.3.6.1.4.1.311.10.3.3"

    #@78
    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    #@7b
    move-result v1

    #@7c
    if-nez v1, :cond_4

    #@7e
    .line 288
    const-string/jumbo v1, "2.16.840.1.113730.4.1"

    #@81
    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    #@84
    move-result v1

    #@85
    if-nez v1, :cond_4

    #@87
    .line 289
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@89
    .line 290
    const-string/jumbo v2, "Extended key usage does not permit use for TLS server authentication"

    #@8c
    .line 292
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@8e
    .line 289
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@91
    throw v1

    #@92
    .line 296
    :cond_4
    const-string/jumbo v1, "ssl_server"

    #@95
    invoke-static {p1, v1}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@98
    move-result v1

    #@99
    if-nez v1, :cond_5

    #@9b
    .line 297
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@9d
    .line 298
    const-string/jumbo v2, "Netscape cert type does not permit use for SSL server"

    #@a0
    .line 299
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@a2
    .line 297
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@a5
    throw v1

    #@a6
    .line 303
    :cond_5
    const-string/jumbo v1, "2.5.29.15"

    #@a9
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@ac
    .line 304
    const-string/jumbo v1, "2.5.29.37"

    #@af
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@b2
    .line 305
    const-string/jumbo v1, "2.16.840.1.113730.1.1"

    #@b5
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@b8
    .line 307
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    #@bb
    .line 259
    return-void
.end method

.method private checkTSAServer(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 357
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1}, Lsun/security/validator/EndEntityChecker;->checkKeyUsage(Ljava/security/cert/X509Certificate;I)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 358
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@d
    .line 359
    const-string/jumbo v2, "KeyUsage does not allow digital signatures"

    #@10
    .line 360
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@12
    .line 358
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@15
    throw v1

    #@16
    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    #@19
    move-result-object v1

    #@1a
    if-nez v1, :cond_1

    #@1c
    .line 364
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@1e
    .line 365
    const-string/jumbo v2, "Certificate does not contain an extended key usage extension required for a TSA server"

    #@21
    .line 367
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@23
    .line 364
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@26
    throw v1

    #@27
    .line 370
    :cond_1
    const-string/jumbo v1, "1.3.6.1.5.5.7.3.8"

    #@2a
    invoke-direct {p0, p1, v0, v1}, Lsun/security/validator/EndEntityChecker;->checkEKU(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_2

    #@30
    .line 371
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@32
    .line 372
    const-string/jumbo v2, "Extended key usage does not permit use for TSA server"

    #@35
    .line 373
    sget-object v3, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    #@37
    .line 371
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@3a
    throw v1

    #@3b
    .line 377
    :cond_2
    const-string/jumbo v1, "2.5.29.15"

    #@3e
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@41
    .line 378
    const-string/jumbo v1, "2.5.29.37"

    #@44
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@47
    .line 380
    invoke-direct {p0, v0}, Lsun/security/validator/EndEntityChecker;->checkRemainingExtensions(Ljava/util/Set;)V

    #@4a
    .line 354
    return-void
.end method

.method private getCriticalExtensions(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 163
    .local v0, "exts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@6
    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    .line 166
    :cond_0
    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/validator/EndEntityChecker;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    new-instance v0, Lsun/security/validator/EndEntityChecker;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/security/validator/EndEntityChecker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method


# virtual methods
.method check(Ljava/security/cert/X509Certificate;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "generic"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 139
    return-void

    #@c
    .line 140
    :cond_0
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@e
    const-string/jumbo v1, "tls server"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 141
    check-cast p2, Ljava/lang/String;

    #@19
    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lsun/security/validator/EndEntityChecker;->checkTLSServer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    #@1c
    .line 136
    :goto_0
    return-void

    #@1d
    .line 142
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@1f
    const-string/jumbo v1, "tls client"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 143
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkTLSClient(Ljava/security/cert/X509Certificate;)V

    #@2b
    goto :goto_0

    #@2c
    .line 144
    :cond_2
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@2e
    const-string/jumbo v1, "code signing"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 145
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    #@3a
    goto :goto_0

    #@3b
    .line 146
    :cond_3
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@3d
    const-string/jumbo v1, "jce signing"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4

    #@46
    .line 147
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    #@49
    goto :goto_0

    #@4a
    .line 148
    :cond_4
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@4c
    const-string/jumbo v1, "plugin code signing"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_5

    #@55
    .line 149
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkCodeSigning(Ljava/security/cert/X509Certificate;)V

    #@58
    goto :goto_0

    #@59
    .line 150
    :cond_5
    iget-object v0, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@5b
    const-string/jumbo v1, "tsa server"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_6

    #@64
    .line 151
    invoke-direct {p0, p1}, Lsun/security/validator/EndEntityChecker;->checkTSAServer(Ljava/security/cert/X509Certificate;)V

    #@67
    goto :goto_0

    #@68
    .line 153
    :cond_6
    new-instance v0, Ljava/security/cert/CertificateException;

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, "Unknown variant: "

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    iget-object v2, p0, Lsun/security/validator/EndEntityChecker;->variant:Ljava/lang/String;

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@83
    throw v0
.end method
