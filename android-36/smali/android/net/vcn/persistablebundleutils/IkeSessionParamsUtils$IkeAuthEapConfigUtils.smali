.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthEapConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IkeAuthEapConfigUtils"
.end annotation


# static fields
.field private static final blacklist EAP_CONFIG_KEY:Ljava/lang/String; = "EAP_CONFIG_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .registers 8
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 499
    nop

    .line 500
    const-string v0, "EAP_CONFIG_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 501
    .local v0, "eapBundle":Landroid/os/PersistableBundle;
    const-string v1, "EAP Config was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    nop

    .line 503
    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    .line 506
    .local v1, "eapConfig":Landroid/net/eap/EapSessionConfig;
    nop

    .line 507
    const-string v2, "TRUST_CERT_KEY"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 510
    .local v2, "trustCertBundle":Landroid/os/PersistableBundle;
    const/4 v3, 0x0

    .line 511
    .local v3, "serverCaCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_23

    .line 512
    invoke-static {v2}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v4

    .line 513
    .local v4, "encodedCaCert":[B
    invoke-static {v4}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 515
    .end local v4    # "encodedCaCert":[B
    :cond_23
    invoke-virtual {p2, v3, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 516
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 488
    nop

    .line 490
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;->getEapConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 488
    const-string v1, "EAP_CONFIG_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 491
    return-object p1
.end method
