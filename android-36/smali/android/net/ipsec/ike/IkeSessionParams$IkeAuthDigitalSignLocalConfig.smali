.class public Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
.super Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeAuthDigitalSignLocalConfig"
.end annotation


# static fields
.field private static final blacklist END_CERT_KEY:Ljava/lang/String; = "mEndCert"

.field private static final blacklist INTERMEDIATE_CERTS_KEY:Ljava/lang/String; = "mIntermediateCerts"

.field private static final blacklist PRIVATE_KEY_KEY:Ljava/lang/String; = "mPrivateKey"


# instance fields
.field public final blacklist mEndCert:Ljava/security/cert/X509Certificate;

.field public final blacklist mIntermediateCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)V
    .registers 6
    .param p1, "clientEndCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            ")V"
        }
    .end annotation

    .line 1342
    .local p2, "clientIntermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;-><init>(II)V

    .line 1343
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mEndCert:Ljava/security/cert/X509Certificate;

    .line 1344
    iput-object p2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    .line 1345
    iput-object p3, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    .line 1346
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    .registers 10
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1356
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1358
    const-string v0, "mEndCert"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1359
    .local v0, "endCertBundle":Landroid/os/PersistableBundle;
    const-string v1, "End cert not provided"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1360
    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v1

    .line 1361
    .local v1, "encodedCert":[B
    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeCertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 1363
    .local v2, "endCert":Ljava/security/cert/X509Certificate;
    const-string v3, "mIntermediateCerts"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1364
    .local v3, "certsBundle":Landroid/os/PersistableBundle;
    const-string v4, "Intermediate certs not provided"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    new-instance v4, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 1366
    invoke-static {v3, v4}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v4

    .line 1367
    .local v4, "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1368
    .local v5, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1369
    .local v7, "encoded":[B
    invoke-static {v7}, Lcom/android/internal/net/ipsec/ike/utils/IkeCertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    .end local v7    # "encoded":[B
    goto :goto_39

    .line 1372
    :cond_4d
    const-string v6, "mPrivateKey"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 1373
    .local v6, "privateKeyBundle":Landroid/os/PersistableBundle;
    const-string v7, "PrivateKey bundle is null"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1374
    nop

    .line 1375
    invoke-static {v6}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/net/ipsec/ike/utils/IkeCertUtils;->privateKeyFromByteArray([B)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v7

    .line 1376
    .local v7, "privateKey":Ljava/security/PrivateKey;
    const-string v8, "PrivateKey is null"

    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1378
    new-instance v8, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    invoke-direct {v8, v2, v5, v7}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;-><init>(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)V

    return-object v8
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1440
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    if-nez v0, :cond_c

    goto :goto_31

    .line 1444
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    .line 1446
    .local v0, "other":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mEndCert:Ljava/security/cert/X509Certificate;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mEndCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    .line 1447
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    .line 1448
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 1446
    :goto_30
    return v1

    .line 1441
    .end local v0    # "other":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist getClientEndCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 1418
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mEndCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public whitelist getIntermediateCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 1430
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1435
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mEndCert:Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    iget-object v3, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 6

    .line 1389
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1392
    .local v0, "result":Landroid/os/PersistableBundle;
    :try_start_4
    const-string v1, "mEndCert"

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mEndCert:Ljava/security/cert/X509Certificate;

    .line 1393
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1392
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1395
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1396
    .local v1, "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mIntermediateCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1397
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1398
    nop

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_24

    .line 1399
    :cond_39
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 1400
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1402
    .local v2, "certsBundle":Landroid/os/PersistableBundle;
    const-string v3, "mIntermediateCerts"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_47
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_47} :catch_58

    .line 1405
    .end local v1    # "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "certsBundle":Landroid/os/PersistableBundle;
    nop

    .line 1408
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->mPrivateKey:Ljava/security/PrivateKey;

    .line 1410
    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1408
    const-string v2, "mPrivateKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1412
    return-object v0

    .line 1403
    :catch_58
    move-exception v1

    .line 1404
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Fail to encode certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
