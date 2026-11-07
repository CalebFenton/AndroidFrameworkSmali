.class public Landroid/security/keystore/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 45
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android KeyStore security provider"

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getKeyStoreForUid(I)Ljava/security/KeyStore;
    .registers 7
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 91
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->legacyUidToNamespace(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 92
    .local v0, "loadParameter":Ljava/security/KeyStore$LoadStoreParameter;
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 94
    .local v1, "result":Ljava/security/KeyStore;
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_12} :catch_14
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_12} :catch_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    .line 98
    nop

    .line 99
    return-object v1

    .line 95
    :catch_14
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load AndroidKeyStore KeyStore for UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static greylist getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .registers 3
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    .line 65
    nop

    .line 66
    invoke-static {p0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    .line 65
    return-wide v0
.end method
