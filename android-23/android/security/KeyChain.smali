.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$AliasResponse;,
        Landroid/security/KeyChain$KeyChainConnection;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field private static final CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 519
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 528
    if-nez p0, :cond_0

    #@4
    .line 529
    new-instance v5, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v6, "context == null"

    #@9
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 531
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    #@10
    .line 532
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    #@12
    invoke-direct {v4, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@15
    .line 533
    .local v4, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    #@17
    invoke-direct {v3, v4}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    #@1a
    .line 547
    .local v3, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    #@1c
    const-class v5, Landroid/security/IKeyChainService;

    #@1e
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 548
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v5

    #@29
    const/4 v6, 0x0

    #@2a
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@2d
    move-result-object v0

    #@2e
    .line 549
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@31
    .line 550
    invoke-virtual {p0, v1, v3, v7, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@34
    move-result v2

    #@35
    .line 554
    .local v2, "isBound":Z
    if-nez v2, :cond_1

    #@37
    .line 555
    new-instance v5, Ljava/lang/AssertionError;

    #@39
    const-string/jumbo v6, "could not bind to KeyChainService"

    #@3c
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3f
    throw v5

    #@40
    .line 557
    :cond_1
    new-instance v6, Landroid/security/KeyChain$KeyChainConnection;

    #@42
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Landroid/security/IKeyChainService;

    #@48
    invoke-direct {v6, p0, v3, v5, v8}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$KeyChainConnection;)V

    #@4b
    return-object v6
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 325
    if-nez p0, :cond_0

    #@4
    .line 326
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "activity == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 328
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 329
    new-instance v1, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v2, "response == null"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 331
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@1a
    const-string/jumbo v1, "com.android.keychain.CHOOSER"

    #@1d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.keychain"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@26
    .line 333
    const-string/jumbo v1, "response"

    #@29
    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    #@2b
    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$AliasResponse;)V

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    #@31
    .line 334
    const-string/jumbo v1, "uri"

    #@34
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@37
    .line 335
    const-string/jumbo v1, "alias"

    #@3a
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3d
    .line 337
    const-string/jumbo v1, "sender"

    #@40
    new-instance v2, Landroid/content/Intent;

    #@42
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@45
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@4c
    .line 338
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@4f
    .line 308
    return-void
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    const/4 v4, 0x0

    #@1
    .line 262
    .local v4, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    #@3
    .line 263
    new-instance v1, Landroid/net/Uri$Builder;

    #@5
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    #@8
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const/4 v0, -0x1

    #@12
    if-eq p5, v0, :cond_1

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, ":"

    #@1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 263
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@37
    move-result-object v4

    #@38
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    move-object v0, p0

    #@39
    move-object v1, p1

    #@3a
    move-object v2, p2

    #@3b
    move-object v3, p3

    #@3c
    move-object v5, p6

    #@3d
    .line 267
    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    #@40
    .line 260
    return-void

    #@41
    .line 264
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v0, ""

    #@44
    goto :goto_0
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .locals 3

    #@0
    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.credentials.INSTALL"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.certinstaller"

    #@b
    .line 216
    const-string/jumbo v2, "com.android.certinstaller.CertInstallerMain"

    #@e
    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 217
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 561
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    .line 562
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 563
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    .line 564
    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    #@11
    .line 563
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 560
    :cond_0
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 405
    if-nez p1, :cond_0

    #@3
    .line 406
    new-instance v8, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v9, "alias == null"

    #@8
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v8

    #@c
    .line 408
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    #@f
    move-result-object v5

    #@10
    .line 410
    .local v5, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@13
    move-result-object v6

    #@14
    .line 412
    .local v6, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v6, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v0

    #@18
    .line 413
    .local v0, "certificateBytes":[B
    if-nez v0, :cond_1

    #@1a
    .line 429
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@1d
    .line 414
    return-object v8

    #@1e
    .line 417
    :cond_1
    :try_start_1
    new-instance v7, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@20
    invoke-direct {v7}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@23
    .line 419
    .local v7, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    #@26
    move-result-object v8

    #@27
    .line 418
    invoke-virtual {v7, v8}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    #@2a
    move-result-object v1

    #@2b
    .line 420
    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@2e
    move-result v8

    #@2f
    new-array v8, v8, [Ljava/security/cert/X509Certificate;

    #@31
    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@34
    move-result-object v8

    #@35
    check-cast v8, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 429
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@3a
    .line 420
    return-object v8

    #@3b
    .line 425
    .end local v0    # "certificateBytes":[B
    .end local v1    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v7    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_0
    move-exception v3

    #@3c
    .line 427
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v8, Landroid/security/KeyChainException;

    #@3e
    invoke-direct {v8, v3}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    .line 428
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    #@43
    .line 429
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@46
    .line 428
    throw v8

    #@47
    .line 423
    :catch_1
    move-exception v2

    #@48
    .line 424
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v8, Landroid/security/KeyChainException;

    #@4a
    invoke-direct {v8, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@4d
    throw v8

    #@4e
    .line 421
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    #@4f
    .line 422
    .local v4, "e":Ljava/security/cert/CertificateException;
    new-instance v8, Landroid/security/KeyChainException;

    #@51
    invoke-direct {v8, v4}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 366
    if-nez p1, :cond_0

    #@2
    .line 367
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v7, "alias == null"

    #@7
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v6

    #@b
    .line 369
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    #@e
    move-result-object v3

    #@f
    .line 371
    .local v3, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@12
    move-result-object v4

    #@13
    .line 372
    .local v4, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v4, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    .line 373
    .local v5, "keyId":Ljava/lang/String;
    if-nez v5, :cond_1

    #@19
    .line 374
    new-instance v6, Landroid/security/KeyChainException;

    #@1b
    const-string/jumbo v7, "keystore had a problem"

    #@1e
    invoke-direct {v6, v7}, Landroid/security/KeyChainException;-><init>(Ljava/lang/String;)V

    #@21
    throw v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 378
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v5    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@23
    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v6, Landroid/security/KeyChainException;

    #@25
    invoke-direct {v6, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@2a
    .line 386
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@2d
    .line 385
    throw v6

    #@2e
    .line 377
    .restart local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v5    # "keyId":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@31
    move-result-object v6

    #@32
    .line 376
    invoke-static {v6, v5}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    move-result-object v6

    #@36
    .line 386
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@39
    .line 376
    return-object v6

    #@3a
    .line 383
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v5    # "keyId":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@3b
    .line 384
    .local v2, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_3
    new-instance v6, Landroid/security/KeyChainException;

    #@3d
    invoke-direct {v6, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v6

    #@41
    .line 380
    .end local v2    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_2
    move-exception v1

    #@42
    .line 382
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v6, Landroid/security/KeyChainException;

    #@44
    invoke-direct {v6, v1}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@47
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 467
    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 468
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 471
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 440
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 441
    .local v0, "algUpper":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 442
    const-string/jumbo v1, "RSA"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    .line 441
    :goto_0
    return v1

    #@17
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_0
.end method

.method public static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 477
    if-nez p0, :cond_0

    #@2
    .line 478
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "bytes == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 481
    :cond_0
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@e
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@11
    move-result-object v1

    #@12
    .line 482
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@14
    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@17
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@1a
    move-result-object v0

    #@1b
    .line 483
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    #@1e
    .line 484
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    #@1f
    .line 485
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v3
.end method
