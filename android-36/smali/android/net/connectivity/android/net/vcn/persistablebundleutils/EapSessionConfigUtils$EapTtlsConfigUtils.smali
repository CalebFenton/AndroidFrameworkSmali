.class final Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;
.super Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EapTtlsConfigUtils"
.end annotation


# static fields
.field private static final blacklist EAP_SESSION_CONFIG_KEY:Ljava/lang/String; = "EAP_SESSION_CONFIG_KEY"

.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;-><init>(Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils-IA;)V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .param p1, "builder"    # Landroid/net/eap/EapSessionConfig$Builder;

    .line 257
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    const-string v0, "TRUST_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 260
    .local v0, "caBundle":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 261
    .local v1, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_17

    .line 262
    nop

    .line 264
    invoke-static {v0}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 263
    invoke-static {v2}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 267
    :cond_17
    nop

    .line 268
    const-string v2, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 269
    .local v2, "eapSessionConfigBundle":Landroid/os/PersistableBundle;
    const-string v3, "Inner EAP Session Config was null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    nop

    .line 271
    invoke-static {v2}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object v3

    .line 273
    .local v3, "eapSessionConfig":Landroid/net/eap/EapSessionConfig;
    invoke-virtual {p1, v1, v3}, Landroid/net/eap/EapSessionConfig$Builder;->setEapTtlsConfig(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/eap/EapSessionConfig$Builder;

    .line 274
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapTtlsConfig;)Landroid/os/PersistableBundle;
    .registers 5
    .param p0, "config"    # Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    .line 236
    invoke-static {p0}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 238
    .local v0, "result":Landroid/os/PersistableBundle;
    :try_start_4
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 239
    nop

    .line 241
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 240
    invoke-static {v1}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 242
    .local v1, "caBundle":Landroid/os/PersistableBundle;
    const-string v2, "TRUST_CERT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_1c} :catch_2c

    .line 246
    .end local v1    # "caBundle":Landroid/os/PersistableBundle;
    :cond_1c
    nop

    .line 248
    nop

    .line 250
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getInnerEapSessionConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/EapSessionConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 248
    const-string v2, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 252
    return-object v0

    .line 244
    :catch_2c
    move-exception v1

    .line 245
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Fail to encode the certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
