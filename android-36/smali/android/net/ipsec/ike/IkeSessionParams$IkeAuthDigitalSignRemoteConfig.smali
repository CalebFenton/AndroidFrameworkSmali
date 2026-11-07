.class public Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
.super Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeAuthDigitalSignRemoteConfig"
.end annotation


# static fields
.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# instance fields
.field public final blacklist mTrustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method constructor blacklist <init>(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;

    .line 1225
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;-><init>(II)V

    .line 1226
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 1227
    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    goto :goto_11

    .line 1232
    :cond_a
    new-instance v1, Ljava/security/cert/TrustAnchor;

    invoke-direct {v1, p1, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    iput-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1236
    :goto_11
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1246
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1248
    const-string v0, "TRUST_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1250
    .local v0, "trustCertBundle":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 1251
    .local v1, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_16

    .line 1252
    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 1253
    .local v2, "encodedCert":[B
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/utils/IkeCertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 1256
    .end local v2    # "encodedCert":[B
    :cond_16
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    invoke-direct {v2, v1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;-><init>(Ljava/security/cert/X509Certificate;)V

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1301
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    if-nez v0, :cond_c

    goto :goto_37

    .line 1305
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    .line 1307
    .local v0, "other":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    const/4 v3, 0x1

    if-nez v2, :cond_19

    iget-object v2, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v2, :cond_19

    .line 1308
    return v3

    .line 1312
    :cond_19
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-eqz v2, :cond_35

    iget-object v2, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1315
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1314
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v1, v3

    goto :goto_36

    :cond_35
    nop

    .line 1312
    :goto_36
    return v1

    .line 1302
    .end local v0    # "other":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    :cond_37
    :goto_37
    return v1
.end method

.method public whitelist getRemoteCaCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 1287
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1288
    :cond_6
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1294
    nop

    .line 1295
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1296
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_15

    :cond_f
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    :goto_15
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1294
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 5

    .line 1267
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1270
    .local v0, "result":Landroid/os/PersistableBundle;
    :try_start_4
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_1b

    .line 1271
    const-string v1, "TRUST_CERT_KEY"

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->mTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1274
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 1273
    invoke-static {v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1271
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_1b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_1b} :catch_1d

    .line 1279
    :cond_1b
    nop

    .line 1281
    return-object v0

    .line 1277
    :catch_1d
    move-exception v1

    .line 1278
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Fail to encode the certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
