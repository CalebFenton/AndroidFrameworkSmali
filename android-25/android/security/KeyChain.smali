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
    .line 93
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
    .line 568
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
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 577
    if-nez p0, :cond_0

    #@4
    .line 578
    new-instance v4, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v5, "context == null"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 580
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    #@10
    .line 581
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    #@12
    invoke-direct {v3, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@15
    .line 582
    .local v3, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v2, Landroid/security/KeyChain$1;

    #@17
    invoke-direct {v2, v3}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    #@1a
    .line 596
    .local v2, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    #@1c
    const-class v4, Landroid/security/IKeyChainService;

    #@1e
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 597
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    #@2d
    move-result-object v0

    #@2e
    .line 598
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@31
    .line 599
    if-eqz v0, :cond_1

    #@33
    invoke-virtual {p0, v1, v2, v7, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 603
    new-instance v5, Landroid/security/KeyChain$KeyChainConnection;

    #@3b
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    check-cast v4, Landroid/security/IKeyChainService;

    #@41
    invoke-direct {v5, p0, v2, v4, v6}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$KeyChainConnection;)V

    #@44
    return-object v5

    #@45
    .line 601
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    #@47
    const-string/jumbo v5, "could not bind to KeyChainService"

    #@4a
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4d
    throw v4
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
    .line 328
    if-nez p0, :cond_0

    #@4
    .line 329
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "activity == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 331
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 332
    new-instance v1, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v2, "response == null"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 334
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@1a
    const-string/jumbo v1, "com.android.keychain.CHOOSER"

    #@1d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@20
    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.keychain"

    #@23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@26
    .line 336
    const-string/jumbo v1, "response"

    #@29
    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    #@2b
    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$AliasResponse;)V

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    #@31
    .line 337
    const-string/jumbo v1, "uri"

    #@34
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@37
    .line 338
    const-string/jumbo v1, "alias"

    #@3a
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3d
    .line 340
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
    .line 341
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@4f
    .line 311
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
    .line 264
    const/4 v4, 0x0

    #@1
    .line 265
    .local v4, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    #@3
    .line 266
    new-instance v1, Landroid/net/Uri$Builder;

    #@5
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    #@8
    .line 267
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
    .line 266
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
    .line 270
    invoke-static/range {v0 .. v5}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    #@40
    .line 263
    return-void

    #@41
    .line 267
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
    .line 217
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.credentials.INSTALL"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.certinstaller"

    #@b
    .line 219
    const-string/jumbo v2, "com.android.certinstaller.CertInstallerMain"

    #@e
    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 220
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 607
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    .line 608
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 609
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    .line 610
    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    #@11
    .line 609
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 606
    :cond_0
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 14
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
    const/4 v13, 0x0

    #@1
    .line 419
    if-nez p1, :cond_0

    #@3
    .line 420
    new-instance v12, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v13, "alias == null"

    #@8
    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v12

    #@c
    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object v12

    #@10
    invoke-static {v12}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    #@13
    move-result-object v8

    #@14
    .line 424
    .local v8, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@17
    move-result-object v9

    #@18
    .line 426
    .local v9, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v9, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v1

    #@1c
    .line 427
    .local v1, "certificateBytes":[B
    if-nez v1, :cond_1

    #@1e
    .line 463
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@21
    .line 428
    return-object v13

    #@22
    .line 430
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    #@25
    move-result-object v10

    #@26
    .line 431
    .local v10, "leafCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v9, p1}, Landroid/security/IKeyChainService;->getCaCertificates(Ljava/lang/String;)[B

    #@29
    move-result-object v0

    #@2a
    .line 434
    .local v0, "certChainBytes":[B
    if-eqz v0, :cond_2

    #@2c
    array-length v12, v0

    #@2d
    if-eqz v12, :cond_2

    #@2f
    .line 435
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    #@32
    move-result-object v2

    #@33
    .line 436
    .local v2, "chain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@35
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@38
    move-result v12

    #@39
    add-int/lit8 v12, v12, 0x1

    #@3b
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@3e
    .line 437
    .local v7, "fullChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 438
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@44
    .line 439
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v12

    #@48
    new-array v12, v12, [Ljava/security/cert/X509Certificate;

    #@4a
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4d
    move-result-object v12

    #@4e
    check-cast v12, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 463
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@53
    .line 439
    return-object v12

    #@54
    .line 451
    .end local v2    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "fullChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    :try_start_2
    new-instance v11, Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@56
    invoke-direct {v11}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    #@59
    .line 452
    .local v11, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v11, v10}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    #@5c
    move-result-object v3

    #@5d
    .line 453
    .local v3, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@60
    move-result v12

    #@61
    new-array v12, v12, [Ljava/security/cert/X509Certificate;

    #@63
    invoke-interface {v3, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@66
    move-result-object v12

    #@67
    check-cast v12, [Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 463
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@6c
    .line 453
    return-object v12

    #@6d
    .line 459
    .end local v0    # "certChainBytes":[B
    .end local v1    # "certificateBytes":[B
    .end local v3    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v9    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v10    # "leafCert":Ljava/security/cert/X509Certificate;
    .end local v11    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_0
    move-exception v5

    #@6e
    .line 461
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v12, Landroid/security/KeyChainException;

    #@70
    invoke-direct {v12, v5}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@73
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@74
    .line 462
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v12

    #@75
    .line 463
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@78
    .line 462
    throw v12

    #@79
    .line 457
    :catch_1
    move-exception v4

    #@7a
    .line 458
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v12, Landroid/security/KeyChainException;

    #@7c
    invoke-direct {v12, v4}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@7f
    throw v12

    #@80
    .line 455
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    #@81
    .line 456
    .local v6, "e":Ljava/security/cert/CertificateException;
    new-instance v12, Landroid/security/KeyChainException;

    #@83
    invoke-direct {v12, v6}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@86
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
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
    const/4 v7, 0x0

    #@1
    .line 372
    if-nez p1, :cond_0

    #@3
    .line 373
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v7, "alias == null"

    #@8
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v6

    #@c
    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@f
    move-result-object v6

    #@10
    invoke-static {v6}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    #@13
    move-result-object v3

    #@14
    .line 377
    .local v3, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    #@17
    move-result-object v4

    #@18
    .line 378
    .local v4, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v4, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v5

    #@1c
    .line 379
    .local v5, "keyId":Ljava/lang/String;
    if-nez v5, :cond_1

    #@1e
    .line 392
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@21
    .line 380
    return-object v7

    #@22
    .line 383
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@25
    move-result-object v6

    #@26
    const/4 v7, -0x1

    #@27
    .line 382
    invoke-static {v6, v5, v7}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v6

    #@2b
    .line 392
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@2e
    .line 382
    return-object v6

    #@2f
    .line 389
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v5    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@30
    .line 390
    .local v2, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_2
    new-instance v6, Landroid/security/KeyChainException;

    #@32
    invoke-direct {v6, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    .line 391
    .end local v2    # "e":Ljava/security/UnrecoverableKeyException;
    :catchall_0
    move-exception v6

    #@37
    .line 392
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    #@3a
    .line 391
    throw v6

    #@3b
    .line 386
    :catch_1
    move-exception v1

    #@3c
    .line 388
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v6, Landroid/security/KeyChainException;

    #@3e
    invoke-direct {v6, v1}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v6

    #@42
    .line 384
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    #@43
    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Landroid/security/KeyChainException;

    #@45
    invoke-direct {v6, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    #@48
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
    .line 501
    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 502
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 505
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
    .line 474
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 475
    .local v0, "algUpper":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 476
    const-string/jumbo v1, "RSA"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    .line 475
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
    .line 511
    if-nez p0, :cond_0

    #@2
    .line 512
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "bytes == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 515
    :cond_0
    :try_start_0
    const-string/jumbo v3, "X.509"

    #@e
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@11
    move-result-object v1

    #@12
    .line 516
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@14
    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@17
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@1a
    move-result-object v0

    #@1b
    .line 517
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    #@1e
    .line 518
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    #@1f
    .line 519
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v3
.end method

.method public static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 526
    if-nez p0, :cond_0

    #@2
    .line 527
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "bytes == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 530
    :cond_0
    :try_start_0
    const-string/jumbo v2, "X.509"

    #@e
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@11
    move-result-object v0

    #@12
    .line 532
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@14
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@17
    .line 531
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 533
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    #@1d
    .line 534
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@22
    throw v2
.end method
