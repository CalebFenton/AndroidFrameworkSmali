.class public Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
.super Landroid/net/eap/EapSessionConfig$EapMethodConfig;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapTtlsConfig"
.end annotation


# static fields
.field private static final blacklist EAP_SESSION_CONFIG_KEY:Ljava/lang/String; = "EAP_SESSION_CONFIG_KEY"

.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# instance fields
.field private final blacklist mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

.field private final blacklist mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)V
    .registers 5
    .param p1, "serverCaCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "innerEapSessionConfig"    # Landroid/net/eap/EapSessionConfig;

    .line 902
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;-><init>(I)V

    .line 903
    nop

    .line 904
    const-string v1, "innerEapSessionConfig must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/eap/EapSessionConfig;

    iput-object v1, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    .line 906
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig;->getEapConfigs()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 910
    nop

    .line 911
    const/4 v0, 0x0

    if-nez p1, :cond_25

    .line 912
    goto :goto_2b

    .line 913
    :cond_25
    new-instance v1, Ljava/security/cert/TrustAnchor;

    invoke-direct {v1, p1, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v1

    :goto_2b
    iput-object v0, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 914
    return-void

    .line 907
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recursive EAP-TTLS method configs not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 923
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 925
    const-string v0, "TRUST_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 926
    .local v0, "trustCertBundle":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 927
    .local v1, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_16

    .line 928
    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 929
    .local v2, "encodedCert":[B
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/utils/IkeCertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 932
    .end local v2    # "encodedCert":[B
    :cond_16
    nop

    .line 933
    const-string v2, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 934
    .local v2, "eapSessionConfigBundle":Landroid/os/PersistableBundle;
    const-string v3, "eapSessionConfigBundle is null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 935
    nop

    .line 936
    invoke-static {v2}, Landroid/net/eap/EapSessionConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object v3

    .line 938
    .local v3, "eapSessionConfig":Landroid/net/eap/EapSessionConfig;
    new-instance v4, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    invoke-direct {v4, v1, v3}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;-><init>(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)V

    return-object v4
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1009
    invoke-super {p0, p1}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    instance-of v0, p1, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    if-nez v0, :cond_c

    goto :goto_42

    .line 1013
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    .line 1015
    .local v0, "other":Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    iget-object v3, v0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1016
    return v1

    .line 1019
    :cond_1a
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    const/4 v3, 0x1

    if-nez v2, :cond_24

    iget-object v2, v0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v2, :cond_24

    .line 1020
    return v3

    .line 1023
    :cond_24
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-eqz v2, :cond_40

    iget-object v2, v0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1026
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    iget-object v4, v0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1027
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1025
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    move v1, v3

    goto :goto_41

    :cond_40
    nop

    .line 1023
    :goto_41
    return v1

    .line 1010
    .end local v0    # "other":Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    :cond_42
    :goto_42
    return v1
.end method

.method public whitelist getInnerEapSessionConfig()Landroid/net/eap/EapSessionConfig;
    .registers 2

    .line 992
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    return-object v0
.end method

.method public whitelist getServerCaCert()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 982
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1000
    nop

    .line 1001
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    .line 1003
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_17

    :cond_11
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    :goto_17
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEapOnlySafeMethod()Z
    .registers 2

    .line 971
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 5

    .line 949
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 952
    .local v0, "result":Landroid/os/PersistableBundle;
    :try_start_4
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    if-eqz v1, :cond_1b

    .line 953
    const-string v1, "TRUST_CERT_KEY"

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mOverrideTrustAnchor:Ljava/security/cert/TrustAnchor;

    .line 956
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 955
    invoke-static {v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 953
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 959
    :cond_1b
    const-string v1, "EAP_SESSION_CONFIG_KEY"

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->mInnerEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    .line 960
    invoke-virtual {v2}, Landroid/net/eap/EapSessionConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 959
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_26
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_26} :catch_28

    .line 963
    nop

    .line 965
    return-object v0

    .line 961
    :catch_28
    move-exception v1

    .line 962
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Fail to encode the certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
