.class public Landroid/net/connectivity/org/chromium/net/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;,
        Landroid/net/connectivity/org/chromium/net/X509Util$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist OID_ANY_EKU:Ljava/lang/String; = "2.5.29.37.0"

.field private static final blacklist OID_SERVER_GATED_MICROSOFT:Ljava/lang/String; = "1.3.6.1.4.1.311.10.3.3"

.field private static final blacklist OID_SERVER_GATED_NETSCAPE:Ljava/lang/String; = "2.16.840.1.113730.4.1"

.field private static final blacklist OID_TLS_SERVER_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final blacklist TAG:Ljava/lang/String; = "X509Util"

.field private static blacklist sCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private static blacklist sDefaultTrustManager:Landroid/net/http/X509TrustManagerExtensions;

.field private static blacklist sLoadedSystemKeyStore:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sSystemCertificateDirectory:Ljava/io/File;

.field private static blacklist sSystemKeyStore:Ljava/security/KeyStore;

.field private static blacklist sSystemTrustAnchorCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sTestKeyStore:Ljava/security/KeyStore;

.field private static blacklist sTestRoot:Ljava/security/cert/X509Certificate;

.field private static blacklist sTestTrustManager:Landroid/net/http/X509TrustManagerExtensions;

.field private static blacklist sTrustStorageListener:Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreloadDefaultTrustManager()V
    .registers 0

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->reloadDefaultTrustManager()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    nop

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    .line 355
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->HEX_DIGITS:[C

    return-void

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addTestRootCertificate([B)V
    .registers 6
    .param p0, "rootCertBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 317
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 318
    .local v0, "rootCert":Ljava/security/cert/X509Certificate;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureTestInitializedLocked()V

    .line 321
    sget-object v2, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "root_cert_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 322
    invoke-virtual {v4}, Ljava/security/KeyStore;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 323
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->reloadTestTrustManager()V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v2
.end method

.method private static blacklist checkServerTrustedIgnoringRuntimeException(Landroid/net/http/X509TrustManagerExtensions;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "tm"    # Landroid/net/http/X509TrustManagerExtensions;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/X509TrustManagerExtensions;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/http/X509TrustManagerExtensions;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 100
    :catch_5
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "X509Util"

    const-string v2, "checkServerTrusted() unexpectedly threw: %s"

    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist clearTestRootCertificates()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 330
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureTestInitializedLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 333
    :try_start_6
    sget-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 334
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->reloadTestTrustManager()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_10
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    .line 337
    goto :goto_11

    .line 335
    :catch_10
    move-exception v1

    .line 338
    :goto_11
    :try_start_11
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static blacklist createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;
    .registers 3
    .param p0, "derBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 309
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureInitialized()V

    .line 310
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 311
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 310
    return-object v0
.end method

.method private static blacklist createTrustManager(Ljava/security/KeyStore;)Landroid/net/http/X509TrustManagerExtensions;
    .registers 12
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 256
    const-string v0, "X509Util"

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 258
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v2, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 260
    const/4 v3, 0x0

    .line 262
    .local v3, "trustManagers":[Ljavax/net/ssl/TrustManager;
    :try_start_e
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_59

    .line 268
    .end local v3    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    nop

    .line 270
    array-length v3, v4

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_52

    aget-object v6, v4, v5

    .line 271
    .local v6, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_4f

    .line 273
    :try_start_1d
    new-instance v7, Landroid/net/http/X509TrustManagerExtensions;

    move-object v8, v6

    check-cast v8, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v7, v8}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_25} :catch_26

    return-object v7

    .line 274
    :catch_26
    move-exception v7

    .line 275
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, "className":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating trust manager ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "className":Ljava/lang/String;
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 280
    :cond_52
    const-string v3, "Could not find suitable trust manager"

    invoke-static {v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 263
    .end local v4    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .restart local v3    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_59
    move-exception v4

    .line 266
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "TrustManagerFactory.getTrustManagers() unexpectedly threw: %s"

    invoke-static {v0, v5, v4}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    new-instance v0, Ljava/security/KeyStoreException;

    invoke-direct {v0, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist ensureInitialized()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 171
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureInitializedLocked()V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static blacklist ensureInitializedLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 184
    nop

    .line 186
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_d

    .line 187
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 189
    :cond_d
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sDefaultTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 190
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/X509Util;->createTrustManager(Ljava/security/KeyStore;)Landroid/net/http/X509TrustManagerExtensions;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sDefaultTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    .line 192
    :cond_18
    sget-boolean v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sLoadedSystemKeyStore:Z

    if-nez v0, :cond_50

    .line 194
    :try_start_1c
    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;
    :try_end_24
    .catch Ljava/security/KeyStoreException; {:try_start_1c .. :try_end_24} :catch_4c

    .line 196
    :try_start_24
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_2a
    .catch Ljava/security/KeyStoreException; {:try_start_24 .. :try_end_29} :catch_4c

    .line 199
    goto :goto_2b

    .line 197
    :catch_2a
    move-exception v0

    .line 200
    :goto_2b
    :try_start_2b
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_ROOT"

    .line 201
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/etc/security/cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemCertificateDirectory:Ljava/io/File;
    :try_end_4b
    .catch Ljava/security/KeyStoreException; {:try_start_2b .. :try_end_4b} :catch_4c

    .line 205
    goto :goto_4d

    .line 202
    :catch_4c
    move-exception v0

    .line 206
    :goto_4d
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sLoadedSystemKeyStore:Z

    .line 208
    :cond_50
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    if-nez v0, :cond_5b

    .line 209
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 211
    :cond_5b
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTrustStorageListener:Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;

    if-nez v0, :cond_84

    .line 212
    new-instance v0, Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;-><init>(Landroid/net/connectivity/org/chromium/net/X509Util-IA;)V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTrustStorageListener:Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, "filter":Landroid/content/IntentFilter;
    nop

    .line 215
    const-string v1, "android.security.action.KEYCHAIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.security.action.KEY_ACCESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/net/connectivity/org/chromium/net/X509Util;->sTrustStorageListener:Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;

    .line 223
    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_84
    return-void
.end method

.method private static blacklist ensureTestInitializedLocked()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 234
    nop

    .line 235
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_17

    .line 236
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    .line 238
    :try_start_f
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_16

    .line 241
    goto :goto_17

    .line 239
    :catch_16
    move-exception v0

    .line 243
    :cond_17
    :goto_17
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    if-nez v0, :cond_23

    .line 244
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/X509Util;->createTrustManager(Ljava/security/KeyStore;)Landroid/net/http/X509TrustManagerExtensions;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    .line 246
    :cond_23
    return-void
.end method

.method public static blacklist getUserAddedRoots()[[B
    .registers 9

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v0, "userRootBytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    const/4 v2, 0x0

    :try_start_9
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureInitialized()V
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_c} :catch_a5
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_c} :catch_a5
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_c} :catch_a5
    .catchall {:try_start_9 .. :try_end_c} :catchall_a3

    .line 473
    nop

    .line 475
    :try_start_d
    sget-object v3, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    if-nez v3, :cond_15

    .line 476
    new-array v2, v2, [[B

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_a3

    return-object v2

    .line 480
    :cond_15
    :try_start_15
    sget-object v3, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .line 481
    .local v3, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 482
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 495
    .local v4, "alias":Ljava/lang/String;
    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_2d} :catch_97
    .catchall {:try_start_15 .. :try_end_2d} :catchall_a3

    if-eqz v5, :cond_75

    .line 497
    :try_start_2f
    sget-object v5, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 498
    .local v5, "anchor":Ljava/security/cert/Certificate;
    instance-of v6, v5, Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_58

    .line 499
    const-string v6, "X509Util"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a X509 Cert, skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    goto :goto_1b

    .line 502
    :cond_58
    move-object v6, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 503
    .local v6, "anchorX509":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/security/KeyStoreException; {:try_start_2f .. :try_end_62} :catch_6c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2f .. :try_end_62} :catch_63
    .catchall {:try_start_2f .. :try_end_62} :catchall_a3

    goto :goto_74

    .line 506
    .end local v5    # "anchor":Ljava/security/cert/Certificate;
    .end local v6    # "anchorX509":Ljava/security/cert/X509Certificate;
    :catch_63
    move-exception v5

    .line 507
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    :try_start_64
    const-string v6, "X509Util"

    const-string v7, "Error encoding cert with alias %s, error: %s"

    invoke-static {v6, v7, v4, v5}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_75

    .line 504
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_6c
    move-exception v5

    .line 505
    .local v5, "e":Ljava/security/KeyStoreException;
    const-string v6, "X509Util"

    const-string v7, "Error reading cert with alias %s, error: %s"

    invoke-static {v6, v7, v4, v5}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_74
    .catch Ljava/security/KeyStoreException; {:try_start_64 .. :try_end_74} :catch_97
    .catchall {:try_start_64 .. :try_end_74} :catchall_a3

    .line 508
    .end local v5    # "e":Ljava/security/KeyStoreException;
    :goto_74
    nop

    .line 510
    .end local v4    # "alias":Ljava/lang/String;
    :cond_75
    :goto_75
    goto :goto_1b

    .line 514
    .end local v3    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_76
    nop

    .line 516
    :try_start_77
    sget-object v3, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestRoot:Ljava/security/cert/X509Certificate;
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_a3

    if-eqz v3, :cond_8d

    .line 518
    :try_start_7b
    sget-object v3, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestRoot:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7b .. :try_end_84} :catch_85
    .catchall {:try_start_7b .. :try_end_84} :catchall_a3

    .line 521
    goto :goto_8d

    .line 519
    :catch_85
    move-exception v3

    .line 520
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    :try_start_86
    const-string v4, "X509Util"

    const-string v5, "Error encoding test root cert, error %s"

    invoke-static {v4, v5, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_8d
    :goto_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_a3

    .line 525
    new-array v1, v2, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    return-object v1

    .line 511
    :catch_97
    move-exception v3

    .line 512
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_98
    const-string v4, "X509Util"

    const-string v5, "Error reading cert aliases: %s"

    invoke-static {v4, v5, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    new-array v2, v2, [[B

    monitor-exit v1

    return-object v2

    .line 523
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catchall_a3
    move-exception v2

    goto :goto_aa

    .line 471
    :catch_a5
    move-exception v3

    .line 472
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-array v2, v2, [[B

    monitor-exit v1

    return-object v2

    .line 523
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :goto_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_98 .. :try_end_ab} :catchall_a3

    throw v2
.end method

.method private static blacklist hashPrincipal(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 8
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 362
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 363
    .local v0, "digest":[B
    const/16 v1, 0x8

    new-array v1, v1, [C

    .line 364
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    const/4 v3, 0x4

    if-ge v2, v3, :cond_39

    .line 365
    mul-int/lit8 v4, v2, 0x2

    sget-object v5, Landroid/net/connectivity/org/chromium/net/X509Util;->HEX_DIGITS:[C

    rsub-int/lit8 v6, v2, 0x3

    aget-byte v6, v0, v6

    shr-int/lit8 v3, v6, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    .line 366
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Landroid/net/connectivity/org/chromium/net/X509Util;->HEX_DIGITS:[C

    rsub-int/lit8 v5, v2, 0x3

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 368
    .end local v2    # "i":I
    :cond_39
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private static blacklist isKnownRoot(Ljava/security/cert/X509Certificate;)Z
    .registers 11
    .param p0, "root"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 373
    nop

    .line 376
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    return v1

    .line 380
    :cond_7
    new-instance v0, Landroid/util/Pair;

    .line 382
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;>;"
    sget-object v2, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    return v3

    .line 396
    :cond_1e
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/X509Util;->hashPrincipal(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "hash":Ljava/lang/String;
    const/4 v4, 0x0

    .line 398
    .local v4, "i":I
    :goto_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "alias":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    sget-object v7, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemCertificateDirectory:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 424
    .end local v4    # "i":I
    .end local v5    # "alias":Ljava/lang/String;
    return v1

    .line 401
    .restart local v4    # "i":I
    .restart local v5    # "alias":Ljava/lang/String;
    :cond_4c
    sget-object v6, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemKeyStore:Ljava/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "system:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 406
    .local v6, "anchor":Ljava/security/cert/Certificate;
    if-nez v6, :cond_68

    goto :goto_bc

    .line 408
    :cond_68
    instance-of v7, v6, Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_97

    .line 410
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "className":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Anchor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not an X509Certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "X509Util"

    invoke-static {v9, v8}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    goto :goto_bc

    .line 416
    .end local v7    # "className":Ljava/lang/String;
    :cond_97
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 417
    .local v7, "anchorX509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 418
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 419
    sget-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    return v3

    .line 397
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "anchor":Ljava/security/cert/Certificate;
    .end local v7    # "anchorX509":Ljava/security/cert/X509Certificate;
    :cond_bc
    :goto_bc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_27
.end method

.method private static blacklist reloadDefaultTrustManager()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 298
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sDefaultTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    .line 300
    sput-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sSystemTrustAnchorCache:Ljava/util/Set;

    .line 301
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureInitializedLocked()V

    .line 302
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_14

    .line 303
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509UtilJni;->get()Landroid/net/connectivity/org/chromium/net/X509Util$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/net/X509Util$Natives;->notifyTrustStoreChanged()V

    .line 304
    return-void

    .line 302
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static blacklist reloadTestTrustManager()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 287
    nop

    .line 288
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureTestInitializedLocked()V

    .line 290
    sget-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/X509Util;->createTrustManager(Ljava/security/KeyStore;)Landroid/net/http/X509TrustManagerExtensions;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    .line 291
    return-void
.end method

.method public static blacklist setTestRootCertificateForBuiltin([B)V
    .registers 4
    .param p0, "rootCertBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 344
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 345
    .local v0, "rootCert":Ljava/security/cert/X509Certificate;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_7
    sput-object v0, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestRoot:Ljava/security/cert/X509Certificate;

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_b
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v2
.end method

.method static blacklist verifyKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_3e

    .line 446
    .local v1, "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 447
    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    .line 449
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 450
    .local v4, "ekuOid":Ljava/lang/String;
    const-string v5, "1.3.6.1.5.5.7.3.1"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 451
    const-string v5, "2.5.29.37.0"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 452
    const-string v5, "2.16.840.1.113730.4.1"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 453
    const-string v5, "1.3.6.1.4.1.311.10.3.3"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_3c

    .line 456
    .end local v4    # "ekuOid":Ljava/lang/String;
    :cond_3b
    goto :goto_e

    .line 454
    .restart local v4    # "ekuOid":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return v2

    .line 458
    .end local v4    # "ekuOid":Ljava/lang/String;
    :cond_3d
    return v0

    .line 441
    .end local v1    # "ekuOids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3e
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method public static blacklist verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;
    .registers 11
    .param p0, "certChain"    # [[B
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 531
    if-eqz p0, :cond_103

    array-length v0, p0

    if-eqz v0, :cond_103

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_103

    .line 539
    const/4 v1, -0x1

    :try_start_b
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->ensureInitialized()V
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_e} :catch_fc

    .line 542
    nop

    .line 544
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v2, "serverCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_14
    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/security/cert/CertificateException; {:try_start_14 .. :try_end_1d} :catch_f4

    .line 549
    nop

    .line 550
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1f
    array-length v4, p0

    if-ge v3, v4, :cond_4e

    .line 552
    :try_start_22
    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/X509Util;->createCertificateFromBytes([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 555
    goto :goto_4b

    .line 553
    :catch_2c
    move-exception v4

    .line 554
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string v5, "X509Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intermediate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed parsing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 557
    .end local v3    # "i":I
    :cond_4e
    nop

    .line 558
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    .line 565
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_5b
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 566
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/net/X509Util;->verifyKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 567
    new-instance v0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    const/4 v4, -0x6

    invoke-direct {v0, v4}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V
    :try_end_6e
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_5b .. :try_end_6e} :catch_ec
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_5b .. :try_end_6e} :catch_e4
    .catch Ljava/security/cert/CertificateException; {:try_start_5b .. :try_end_6e} :catch_dd

    return-object v0

    .line 575
    :cond_6f
    nop

    .line 577
    sget-object v4, Landroid/net/connectivity/org/chromium/net/X509Util;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 579
    :try_start_73
    sget-object v5, Landroid/net/connectivity/org/chromium/net/X509Util;->sDefaultTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    if-nez v5, :cond_7e

    .line 580
    new-instance v0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_da

    return-object v0

    .line 583
    :cond_7e
    const/4 v1, 0x0

    .line 585
    .local v1, "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_7f
    sget-object v5, Landroid/net/connectivity/org/chromium/net/X509Util;->sDefaultTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    .line 586
    invoke-static {v5, v3, p1, p2}, Landroid/net/connectivity/org/chromium/net/X509Util;->checkServerTrustedIgnoringRuntimeException(Landroid/net/http/X509TrustManagerExtensions;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5
    :try_end_85
    .catch Ljava/security/cert/CertificateException; {:try_start_7f .. :try_end_85} :catch_86
    .catchall {:try_start_7f .. :try_end_85} :catchall_da

    .line 608
    .end local v1    # "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_bb

    .line 588
    .end local v5    # "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v1    # "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_86
    move-exception v5

    .line 589
    .local v5, "eDefaultManager":Ljava/security/cert/CertificateException;
    :try_start_87
    sget-object v6, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestTrustManager:Landroid/net/http/X509TrustManagerExtensions;
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_da

    if-eqz v6, :cond_94

    .line 591
    :try_start_8b
    sget-object v6, Landroid/net/connectivity/org/chromium/net/X509Util;->sTestTrustManager:Landroid/net/http/X509TrustManagerExtensions;

    .line 592
    invoke-static {v6, v3, p1, p2}, Landroid/net/connectivity/org/chromium/net/X509Util;->checkServerTrustedIgnoringRuntimeException(Landroid/net/http/X509TrustManagerExtensions;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6
    :try_end_91
    .catch Ljava/security/cert/CertificateException; {:try_start_8b .. :try_end_91} :catch_93
    .catchall {:try_start_8b .. :try_end_91} :catchall_da

    move-object v1, v6

    .line 596
    goto :goto_94

    .line 594
    :catch_93
    move-exception v6

    .line 599
    :cond_94
    :goto_94
    if-nez v1, :cond_ba

    .line 602
    :try_start_96
    const-string v0, "X509Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to validate the certificate chain, error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 605
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 602
    invoke-static {v0, v6}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v0, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    const/4 v6, -0x2

    invoke-direct {v0, v6}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    monitor-exit v4

    return-object v0

    .line 599
    :cond_ba
    move-object v5, v1

    .line 610
    .end local v1    # "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_bb
    const/4 v1, 0x0

    .line 611
    .local v1, "isIssuedByKnownRoot":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d3

    .line 612
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 613
    .local v6, "root":Ljava/security/cert/X509Certificate;
    invoke-static {v6}, Landroid/net/connectivity/org/chromium/net/X509Util;->isKnownRoot(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    move v1, v7

    .line 616
    .end local v6    # "root":Ljava/security/cert/X509Certificate;
    :cond_d3
    new-instance v6, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v6, v0, v1, v5}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(IZLjava/util/List;)V

    monitor-exit v4

    return-object v6

    .line 618
    .end local v1    # "isIssuedByKnownRoot":Z
    .end local v5    # "verifiedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_da
    move-exception v0

    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_96 .. :try_end_dc} :catchall_da

    throw v0

    .line 573
    :catch_dd
    move-exception v0

    .line 574
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v4, v1}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v4

    .line 571
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_e4
    move-exception v0

    .line 572
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    const/4 v4, -0x4

    invoke-direct {v1, v4}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v1

    .line 569
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_ec
    move-exception v0

    .line 570
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    const/4 v4, -0x3

    invoke-direct {v1, v4}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v1

    .line 547
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    .end local v3    # "serverCertificates":[Ljava/security/cert/X509Certificate;
    :catch_f4
    move-exception v0

    .line 548
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    const/4 v3, -0x5

    invoke-direct {v1, v3}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v1

    .line 540
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v2    # "serverCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_fc
    move-exception v0

    .line 541
    .restart local v0    # "e":Ljava/security/cert/CertificateException;
    new-instance v2, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v2, v1}, Landroid/net/connectivity/org/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    return-object v2

    .line 532
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected non-null and non-empty certificate chain passed as |certChain|. |certChain|="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
