.class Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IkeAuthDigitalSignConfigUtils"
.end annotation


# static fields
.field private static final blacklist END_CERT_KEY:Ljava/lang/String; = "END_CERT_KEY"

.field private static final blacklist INTERMEDIATE_CERTS_KEY:Ljava/lang/String; = "INTERMEDIATE_CERTS_KEY"

.field private static final blacklist PRIVATE_KEY_KEY:Ljava/lang/String; = "PRIVATE_KEY_KEY"

.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 14
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 441
    const-string/jumbo v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    nop

    .line 446
    const-string v0, "END_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 447
    .local v0, "endCertBundle":Landroid/os/PersistableBundle;
    const-string v1, "End cert was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v1

    .line 449
    .local v1, "encodedCert":[B
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 451
    .local v2, "endCert":Ljava/security/cert/X509Certificate;
    nop

    .line 452
    const-string v3, "INTERMEDIATE_CERTS_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 453
    .local v3, "certsBundle":Landroid/os/PersistableBundle;
    const-string v4, "Intermediate certs was null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    new-instance v4, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 455
    invoke-static {v3, v4}, Landroid/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v4

    .line 456
    .local v4, "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .local v5, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 458
    .local v7, "encoded":[B
    invoke-static {v7}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v7    # "encoded":[B
    goto :goto_42

    .line 461
    :cond_56
    nop

    .line 462
    const-string v6, "PRIVATE_KEY_KEY"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 463
    .local v6, "privateKeyBundle":Landroid/os/PersistableBundle;
    const-string v7, "PrivateKey bundle was null"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    nop

    .line 466
    invoke-static {v6}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v7

    .line 465
    invoke-static {v7}, Landroid/net/vcn/persistablebundleutils/CertUtils;->privateKeyFromByteArray([B)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v7

    .line 469
    .local v7, "privateKey":Ljava/security/PrivateKey;
    nop

    .line 470
    const-string v8, "TRUST_CERT_KEY"

    invoke-virtual {p1, v8}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 472
    .local v8, "trustCertBundle":Landroid/os/PersistableBundle;
    const/4 v9, 0x0

    .line 473
    .local v9, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_7d

    .line 474
    invoke-static {v8}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v10

    .line 475
    .local v10, "encodedCaCert":[B
    invoke-static {v10}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 478
    .end local v10    # "encodedCaCert":[B
    :cond_7d
    invoke-virtual {p2, v9, v2, v5, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 479
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 7
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 394
    :try_start_0
    const-string v0, "END_CERT_KEY"

    .line 397
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getClientEndCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 396
    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 394
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 399
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getIntermediateCertificates()Ljava/util/List;

    move-result-object v0

    .line 400
    .local v0, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    .local v1, "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 402
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    nop

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_22

    .line 405
    :cond_37
    new-instance v2, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 406
    invoke-static {v1, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 408
    .local v2, "certsBundle":Landroid/os/PersistableBundle;
    const-string v3, "INTERMEDIATE_CERTS_KEY"

    invoke-virtual {p1, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_45
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_45} :catch_59

    .line 411
    .end local v0    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "certsBundle":Landroid/os/PersistableBundle;
    nop

    .line 414
    nop

    .line 416
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 414
    const-string v1, "PRIVATE_KEY_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 417
    return-object p1

    .line 409
    :catch_59
    move-exception v0

    .line 410
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fail to encode certificate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 5
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->getRemoteCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 425
    .local v0, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_13

    .line 426
    const-string v1, "TRUST_CERT_KEY"

    .line 428
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 426
    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_13} :catch_15

    .line 432
    .end local v0    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_13
    nop

    .line 434
    return-object p1

    .line 430
    :catch_15
    move-exception v0

    .line 431
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fail to encode the certificate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
