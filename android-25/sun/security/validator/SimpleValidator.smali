.class public final Lsun/security/validator/SimpleValidator;
.super Lsun/security/validator/Validator;
.source "SimpleValidator.java"


# static fields
.field private static final NSCT_CODE_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field private static final NSCT_SSL_CA:Ljava/lang/String; = "ssl_ca"

.field static final OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

.field static final OID_BASIC_CONSTRAINTS:Ljava/lang/String; = "2.5.29.19"

.field static final OID_EKU_ANY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field static final OID_EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field static final OID_KEY_USAGE:Ljava/lang/String; = "2.5.29.15"

.field static final OID_NETSCAPE_CERT_TYPE:Ljava/lang/String; = "2.16.840.1.113730.1.1"


# instance fields
.field private final trustedCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final trustedX500Principals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    .line 73
    sput-object v0, Lsun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    #@4
    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string/jumbo v4, "Simple"

    #@3
    invoke-direct {p0, v4, p1}, Lsun/security/validator/Validator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 99
    iput-object p2, p0, Lsun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    #@8
    .line 101
    new-instance v4, Ljava/util/HashMap;

    #@a
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 100
    iput-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    #@f
    .line 102
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@1f
    .line 103
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@22
    move-result-object v3

    #@23
    .line 104
    .local v3, "principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    #@25
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/util/List;

    #@2b
    .line 105
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v2, :cond_0

    #@2d
    .line 108
    new-instance v2, Ljava/util/ArrayList;

    #@2f
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x2

    #@30
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@33
    .line 109
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v4, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    #@35
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 111
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 97
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    return-void
.end method

.method private buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    new-instance v0, Ljava/util/ArrayList;

    #@2
    array-length v7, p1

    #@3
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 362
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v7, p1

    #@8
    if-ge v2, v7, :cond_1

    #@a
    .line 363
    aget-object v1, p1, v2

    #@c
    .line 364
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v1}, Lsun/security/validator/SimpleValidator;->getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    #@f
    move-result-object v6

    #@10
    .line 365
    .local v6, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_0

    #@12
    .line 366
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    .line 367
    sget-object v7, Lsun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    #@17
    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1a
    move-result-object v7

    #@1b
    check-cast v7, [Ljava/security/cert/X509Certificate;

    #@1d
    return-object v7

    #@1e
    .line 369
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 362
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 373
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_1
    array-length v7, p1

    #@25
    add-int/lit8 v7, v7, -0x1

    #@27
    aget-object v1, p1, v7

    #@29
    .line 374
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@2c
    move-result-object v5

    #@2d
    .line 375
    .local v5, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@30
    move-result-object v3

    #@31
    .line 376
    .local v3, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    #@33
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Ljava/util/List;

    #@39
    .line 377
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v4, :cond_2

    #@3b
    .line 378
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v7

    #@3f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@45
    .line 379
    .restart local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    .line 380
    sget-object v7, Lsun/security/validator/SimpleValidator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    #@4a
    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4d
    move-result-object v7

    #@4e
    check-cast v7, [Ljava/security/cert/X509Certificate;

    #@50
    return-object v7

    #@51
    .line 384
    .end local v6    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v7, Lsun/security/validator/ValidatorException;

    #@53
    sget-object v8, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    #@55
    invoke-direct {v7, v8}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;)V

    #@58
    throw v7
.end method

.method private checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "maxPathLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "2.5.29.19"

    #@3
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@6
    .line 304
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    #@9
    move-result v0

    #@a
    .line 306
    .local v0, "constraints":I
    if-gez v0, :cond_0

    #@c
    .line 307
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@e
    const-string/jumbo v2, "End user tried to act as a CA"

    #@11
    .line 308
    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@13
    .line 307
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@16
    throw v1

    #@17
    .line 313
    :cond_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 314
    if-gtz p3, :cond_1

    #@1f
    .line 315
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@21
    const-string/jumbo v2, "Violated path length constraints"

    #@24
    .line 316
    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@26
    .line 315
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@29
    throw v1

    #@2a
    .line 319
    :cond_1
    add-int/lit8 p3, p3, -0x1

    #@2c
    .line 322
    :cond_2
    if-le p3, v0, :cond_3

    #@2e
    .line 323
    move p3, v0

    #@2f
    .line 326
    :cond_3
    return p3
.end method

.method private checkExtensions(Ljava/security/cert/X509Certificate;I)I
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "maxPathLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    .line 218
    .local v0, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    #@6
    .line 219
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    .line 224
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lsun/security/validator/SimpleValidator;->checkBasicConstraints(Ljava/security/cert/X509Certificate;Ljava/util/Set;I)I

    #@d
    move-result v1

    #@e
    .line 227
    .local v1, "pathLenConstraint":I
    invoke-direct {p0, p1, v0}, Lsun/security/validator/SimpleValidator;->checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    #@11
    .line 230
    invoke-direct {p0, p1, v0}, Lsun/security/validator/SimpleValidator;->checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    #@14
    .line 232
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 233
    new-instance v2, Lsun/security/validator/ValidatorException;

    #@1c
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Certificate contains unknown critical extensions: "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 235
    sget-object v4, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@32
    .line 233
    invoke-direct {v2, v3, v4, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@35
    throw v2

    #@36
    .line 238
    :cond_1
    return v1
.end method

.method private checkKeyUsage(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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
    .line 336
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "2.5.29.15"

    #@3
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@6
    .line 338
    const-string/jumbo v1, "2.5.29.37"

    #@9
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@c
    .line 341
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@f
    move-result-object v0

    #@10
    .line 342
    .local v0, "keyUsageInfo":[Z
    if-eqz v0, :cond_1

    #@12
    .line 344
    array-length v1, v0

    #@13
    const/4 v2, 0x6

    #@14
    if-lt v1, v2, :cond_0

    #@16
    const/4 v1, 0x5

    #@17
    aget-boolean v1, v0, v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 345
    :cond_0
    new-instance v1, Lsun/security/validator/ValidatorException;

    #@1d
    .line 346
    const-string/jumbo v2, "Wrong key usage: expected keyCertSign"

    #@20
    .line 347
    sget-object v3, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@22
    .line 345
    invoke-direct {v1, v2, v3, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@25
    throw v1

    #@26
    .line 334
    :cond_1
    return-void
.end method

.method private checkNetscapeCertType(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
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
    .line 243
    .local p2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "generic"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 242
    :goto_0
    return-void

    #@c
    .line 245
    :cond_0
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@e
    const-string/jumbo v1, "tls client"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 246
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@19
    const-string/jumbo v1, "tls server"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    .line 245
    if-eqz v0, :cond_3

    #@22
    .line 247
    :cond_1
    const-string/jumbo v0, "ssl_ca"

    #@25
    invoke-static {p1, v0}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 248
    new-instance v0, Lsun/security/validator/ValidatorException;

    #@2d
    .line 249
    const-string/jumbo v1, "Invalid Netscape CertType extension for SSL CA certificate"

    #@30
    .line 251
    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@32
    .line 248
    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@35
    throw v0

    #@36
    .line 253
    :cond_2
    const-string/jumbo v0, "2.16.840.1.113730.1.1"

    #@39
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 254
    :cond_3
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@3f
    const-string/jumbo v1, "code signing"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_4

    #@48
    .line 255
    iget-object v0, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@4a
    const-string/jumbo v1, "jce signing"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v0

    #@51
    .line 254
    if-eqz v0, :cond_6

    #@53
    .line 256
    :cond_4
    const-string/jumbo v0, "object_signing_ca"

    #@56
    invoke-static {p1, v0}, Lsun/security/validator/SimpleValidator;->getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    #@59
    move-result v0

    #@5a
    if-nez v0, :cond_5

    #@5c
    .line 257
    new-instance v0, Lsun/security/validator/ValidatorException;

    #@5e
    .line 258
    const-string/jumbo v1, "Invalid Netscape CertType extension for code signing CA certificate"

    #@61
    .line 260
    sget-object v2, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    #@63
    .line 257
    invoke-direct {v0, v1, v2, p1}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@66
    throw v0

    #@67
    .line 262
    :cond_5
    const-string/jumbo v0, "2.16.840.1.113730.1.1"

    #@6a
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@6d
    goto :goto_0

    #@6e
    .line 264
    :cond_6
    new-instance v0, Ljava/security/cert/CertificateException;

    #@70
    new-instance v1, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v2, "Unknown variant "

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    iget-object v2, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@89
    throw v0
.end method

.method static getNetscapeCertTypeBit(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 11
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 275
    :try_start_0
    instance-of v9, p0, Lsun/security/x509/X509CertImpl;

    #@3
    if-eqz v9, :cond_0

    #@5
    .line 276
    move-object v0, p0

    #@6
    nop

    #@7
    nop

    #@8
    move-object v1, v0

    #@9
    .line 277
    .local v1, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v7, Lsun/security/validator/SimpleValidator;->OBJID_NETSCAPE_CERT_TYPE:Lsun/security/util/ObjectIdentifier;

    #@b
    .line 278
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1, v7}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@e
    move-result-object v4

    #@f
    check-cast v4, Lsun/security/x509/NetscapeCertTypeExtension;

    #@11
    .line 279
    .local v4, "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    if-nez v4, :cond_2

    #@13
    .line 280
    return v10

    #@14
    .line 283
    .end local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v4    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    const-string/jumbo v9, "2.16.840.1.113730.1.1"

    #@17
    invoke-virtual {p0, v9}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@1a
    move-result-object v5

    #@1b
    .line 284
    .local v5, "extVal":[B
    if-nez v5, :cond_1

    #@1d
    .line 285
    return v10

    #@1e
    .line 287
    :cond_1
    new-instance v6, Lsun/security/util/DerInputStream;

    #@20
    invoke-direct {v6, v5}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@23
    .line 288
    .local v6, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@26
    move-result-object v3

    #@27
    .line 289
    .local v3, "encoded":[B
    new-instance v9, Lsun/security/util/DerValue;

    #@29
    invoke-direct {v9, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@2c
    invoke-virtual {v9}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9}, Lsun/security/util/BitArray;->toByteArray()[B

    #@33
    move-result-object v3

    #@34
    .line 291
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension;

    #@36
    invoke-direct {v4, v3}, Lsun/security/x509/NetscapeCertTypeExtension;-><init>([B)V

    #@39
    .line 293
    .end local v3    # "encoded":[B
    .end local v5    # "extVal":[B
    .end local v6    # "in":Lsun/security/util/DerInputStream;
    .restart local v4    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    :cond_2
    invoke-virtual {v4, p1}, Lsun/security/x509/NetscapeCertTypeExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3c
    move-result-object v8

    #@3d
    check-cast v8, Ljava/lang/Boolean;

    #@3f
    .line 294
    .local v8, "val":Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result v9

    #@43
    return v9

    #@44
    .line 295
    .end local v4    # "ext":Lsun/security/x509/NetscapeCertTypeExtension;
    .end local v8    # "val":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    #@45
    .line 296
    .local v2, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    #@46
    return v9
.end method

.method private getTrustedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 394
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@4
    move-result-object v2

    #@5
    .line 395
    .local v2, "certSubjectName":Ljava/security/Principal;
    iget-object v6, p0, Lsun/security/validator/SimpleValidator;->trustedX500Principals:Ljava/util/Map;

    #@7
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljava/util/List;

    #@d
    .line 396
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v3, :cond_0

    #@f
    .line 397
    return-object v7

    #@10
    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@13
    move-result-object v0

    #@14
    .line 401
    .local v0, "certIssuerName":Ljava/security/Principal;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@17
    move-result-object v1

    #@18
    .line 403
    .local v1, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v5

    #@1c
    .local v5, "mycert$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_3

    #@22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@28
    .line 404
    .local v4, "mycert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v6

    #@2c
    if-eqz v6, :cond_2

    #@2e
    .line 405
    return-object p1

    #@2f
    .line 407
    :cond_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_1

    #@39
    .line 410
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_1

    #@43
    .line 415
    return-object v4

    #@44
    .line 417
    .end local v4    # "mycert":Ljava/security/cert/X509Certificate;
    :cond_3
    return-object v7
.end method


# virtual methods
.method engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p4, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    array-length v12, v0

    #@5
    if-nez v12, :cond_1

    #@7
    .line 129
    :cond_0
    new-instance v12, Ljava/security/cert/CertificateException;

    #@9
    .line 130
    const-string/jumbo v13, "null or zero-length certificate chain"

    #@c
    .line 129
    invoke-direct {v12, v13}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v12

    #@10
    .line 134
    :cond_1
    invoke-direct/range {p0 .. p1}, Lsun/security/validator/SimpleValidator;->buildTrustedChain([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    #@13
    move-result-object p1

    #@14
    .line 136
    iget-object v5, p0, Lsun/security/validator/SimpleValidator;->validationDate:Ljava/util/Date;

    #@16
    .line 137
    .local v5, "date":Ljava/util/Date;
    if-nez v5, :cond_2

    #@18
    .line 138
    new-instance v5, Ljava/util/Date;

    #@1a
    .end local v5    # "date":Ljava/util/Date;
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    #@1d
    .line 142
    .restart local v5    # "date":Ljava/util/Date;
    :cond_2
    new-instance v11, Lsun/security/provider/certpath/UntrustedChecker;

    #@1f
    invoke-direct {v11}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    #@22
    .line 145
    .local v11, "untrustedChecker":Lsun/security/provider/certpath/UntrustedChecker;
    new-instance v1, Ljava/security/cert/TrustAnchor;

    #@24
    move-object/from16 v0, p1

    #@26
    array-length v12, v0

    #@27
    add-int/lit8 v12, v12, -0x1

    #@29
    aget-object v12, p1, v12

    #@2b
    const/4 v13, 0x0

    #@2c
    invoke-direct {v1, v12, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@2f
    .line 146
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v6, Lsun/security/provider/certpath/AlgorithmChecker;

    #@31
    invoke-direct {v6, v1}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    #@34
    .line 149
    .local v6, "defaultAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v2, 0x0

    #@35
    .line 150
    .local v2, "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    if-eqz p3, :cond_3

    #@37
    .line 151
    new-instance v2, Lsun/security/provider/certpath/AlgorithmChecker;

    #@39
    .end local v2    # "appAlgChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    move-object/from16 v0, p3

    #@3b
    invoke-direct {v2, v1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    #@3e
    .line 156
    :cond_3
    move-object/from16 v0, p1

    #@40
    array-length v12, v0

    #@41
    add-int/lit8 v10, v12, -0x1

    #@43
    .line 157
    .local v10, "maxPathLength":I
    move-object/from16 v0, p1

    #@45
    array-length v12, v0

    #@46
    add-int/lit8 v8, v12, -0x2

    #@48
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_8

    #@4a
    .line 158
    add-int/lit8 v12, v8, 0x1

    #@4c
    aget-object v9, p1, v12

    #@4e
    .line 159
    .local v9, "issuerCert":Ljava/security/cert/X509Certificate;
    aget-object v3, p1, v8

    #@50
    .line 165
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@53
    move-result-object v12

    #@54
    invoke-virtual {v11, v3, v12}, Lsun/security/provider/certpath/UntrustedChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    .line 176
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@5a
    move-result-object v12

    #@5b
    invoke-virtual {v6, v3, v12}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@5e
    .line 177
    if-eqz v2, :cond_4

    #@60
    .line 178
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@63
    move-result-object v12

    #@64
    invoke-virtual {v2, v3, v12}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    #@67
    .line 186
    :cond_4
    iget-object v12, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@69
    const-string/jumbo v13, "code signing"

    #@6c
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v12

    #@70
    if-nez v12, :cond_5

    #@72
    .line 187
    iget-object v12, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    #@74
    const-string/jumbo v13, "jce signing"

    #@77
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v12

    #@7b
    if-nez v12, :cond_5

    #@7d
    .line 188
    invoke-virtual {v3, v5}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    #@80
    .line 192
    :cond_5
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@83
    move-result-object v12

    #@84
    .line 193
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@87
    move-result-object v13

    #@88
    .line 192
    invoke-virtual {v12, v13}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v12

    #@8c
    if-nez v12, :cond_6

    #@8e
    .line 194
    new-instance v12, Lsun/security/validator/ValidatorException;

    #@90
    .line 195
    sget-object v13, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    #@92
    .line 194
    invoke-direct {v12, v13, v3}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    #@95
    throw v12

    #@96
    .line 166
    :catch_0
    move-exception v4

    #@97
    .line 167
    .local v4, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v12, Lsun/security/validator/ValidatorException;

    #@99
    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v14, "Untrusted certificate: "

    #@a1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v13

    #@a5
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@a8
    move-result-object v14

    #@a9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v13

    #@ad
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v13

    #@b1
    .line 169
    sget-object v14, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    #@b3
    .line 167
    invoke-direct {v12, v13, v14, v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    #@b6
    throw v12

    #@b7
    .line 180
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v4

    #@b8
    .line 181
    .restart local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v12, Lsun/security/validator/ValidatorException;

    #@ba
    .line 182
    sget-object v13, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    #@bc
    .line 181
    invoke-direct {v12, v13, v3, v4}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    #@bf
    throw v12

    #@c0
    .line 200
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_6
    :try_start_2
    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@c3
    move-result-object v12

    #@c4
    invoke-virtual {v3, v12}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    #@c7
    .line 207
    if-eqz v8, :cond_7

    #@c9
    .line 208
    invoke-direct {p0, v3, v10}, Lsun/security/validator/SimpleValidator;->checkExtensions(Ljava/security/cert/X509Certificate;I)I

    #@cc
    move-result v10

    #@cd
    .line 157
    :cond_7
    add-int/lit8 v8, v8, -0x1

    #@cf
    goto/16 :goto_0

    #@d1
    .line 201
    :catch_2
    move-exception v7

    #@d2
    .line 202
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v12, Lsun/security/validator/ValidatorException;

    #@d4
    .line 203
    sget-object v13, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    #@d6
    .line 202
    invoke-direct {v12, v13, v3, v7}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V

    #@d9
    throw v12

    #@da
    .line 212
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    .end local v9    # "issuerCert":Ljava/security/cert/X509Certificate;
    :cond_8
    return-object p1
.end method

.method public getTrustedCertificates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/validator/SimpleValidator;->trustedCerts:Ljava/util/Collection;

    #@2
    return-object v0
.end method
