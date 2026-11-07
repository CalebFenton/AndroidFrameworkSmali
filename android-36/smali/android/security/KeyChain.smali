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
.field public static final greylist-max-o ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final greylist-max-o ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final greylist-max-o ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final whitelist ACTION_KEYCHAIN_CHANGED:Ljava/lang/String; = "android.security.action.KEYCHAIN_CHANGED"

.field public static final whitelist ACTION_KEY_ACCESS_CHANGED:Ljava/lang/String; = "android.security.action.KEY_ACCESS_CHANGED"

.field public static final whitelist ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field public static final whitelist ACTION_TRUST_STORE_CHANGED:Ljava/lang/String; = "android.security.action.TRUST_STORE_CHANGED"

.field private static final blacklist BIND_KEY_CHAIN_SERVICE_TIMEOUT_MS:I = 0x7530

.field private static final greylist-max-o CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final greylist-max-o EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final blacklist EXTRA_AUTHENTICATION_POLICY:Ljava/lang/String; = "android.security.extra.AUTHENTICATION_POLICY"

.field public static final whitelist EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final blacklist EXTRA_ISSUERS:Ljava/lang/String; = "issuers"

.field public static final whitelist EXTRA_KEY_ACCESSIBLE:Ljava/lang/String; = "android.security.extra.KEY_ACCESSIBLE"

.field public static final whitelist EXTRA_KEY_ALIAS:Ljava/lang/String; = "android.security.extra.KEY_ALIAS"

.field public static final blacklist EXTRA_KEY_TYPES:Ljava/lang/String; = "key_types"

.field public static final whitelist EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final whitelist EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final greylist-max-o EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final greylist-max-o EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final greylist-max-o EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final blacklist GRANT_ALIAS_PREFIX:Ljava/lang/String; = "ks2_keychain_grant_id:"

.field private static final greylist-max-o KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"

.field public static final whitelist KEY_ALIAS_SELECTION_DENIED:Ljava/lang/String; = "android:alias-selection-denied"

.field public static final greylist-max-o KEY_ATTESTATION_CANNOT_ATTEST_IDS:I = 0x3

.field public static final greylist-max-o KEY_ATTESTATION_CANNOT_COLLECT_DATA:I = 0x2

.field public static final greylist-max-o KEY_ATTESTATION_FAILURE:I = 0x4

.field public static final greylist-max-o KEY_ATTESTATION_MISSING_CHALLENGE:I = 0x1

.field public static final greylist-max-o KEY_ATTESTATION_SUCCESS:I = 0x0

.field public static final greylist-max-o KEY_GEN_FAILURE:I = 0x7

.field public static final greylist-max-o KEY_GEN_INVALID_ALGORITHM_PARAMETERS:I = 0x4

.field public static final greylist-max-o KEY_GEN_MISSING_ALIAS:I = 0x1

.field public static final greylist-max-o KEY_GEN_NO_KEYSTORE_PROVIDER:I = 0x5

.field public static final greylist-max-o KEY_GEN_NO_SUCH_ALGORITHM:I = 0x3

.field public static final blacklist KEY_GEN_STRONGBOX_UNAVAILABLE:I = 0x6

.field public static final greylist-max-o KEY_GEN_SUCCESS:I = 0x0

.field public static final greylist-max-o KEY_GEN_SUPERFLUOUS_ATTESTATION_CHALLENGE:I = 0x2

.field public static final blacklist LOG:Ljava/lang/String; = "KeyChain"

.field private static final blacklist SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1002
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1078
    if-eqz p0, :cond_9c

    .line 1081
    if-nez p1, :cond_7

    .line 1082
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 1084
    :cond_7
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1088
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1089
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1090
    .local v2, "keyChainService":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    invoke-direct {v3, v2, v0}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    move-object v6, v3

    .line 1108
    .local v6, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v5, Landroid/content/Intent;

    const-class v3, Landroid/security/IKeyChainService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 1110
    .local v3, "comp":Landroid/content/ComponentName;
    if-eqz v3, :cond_88

    .line 1113
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1115
    if-eqz p1, :cond_46

    .line 1116
    const/4 v7, 0x1

    move-object v4, p0

    move-object v8, p1

    move-object v9, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "user":Landroid/os/UserHandle;
    .local v4, "context":Landroid/content/Context;
    .local v8, "handler":Landroid/os/Handler;
    .local v9, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p0

    .local p0, "bindSucceed":Z
    goto :goto_4d

    .line 1119
    .end local v4    # "context":Landroid/content/Context;
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "user":Landroid/os/UserHandle;
    .local p0, "context":Landroid/content/Context;
    .restart local p1    # "handler":Landroid/os/Handler;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :cond_46
    move-object v4, p0

    move-object v8, p1

    move-object v9, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v8    # "handler":Landroid/os/Handler;
    .restart local v9    # "user":Landroid/os/UserHandle;
    invoke-virtual {v4, v5, v6, v1, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    .line 1122
    .local p0, "bindSucceed":Z
    :goto_4d
    if-eqz p0, :cond_7d

    .line 1126
    const-wide/16 p1, 0x7530

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 1130
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/IKeyChainService;

    .line 1131
    .local p1, "service":Landroid/security/IKeyChainService;
    if-eqz p1, :cond_67

    .line 1132
    new-instance p2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-direct {p2, v4, v6, p1}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-object p2

    .line 1134
    :cond_67
    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1135
    new-instance p2, Ljava/lang/AssertionError;

    const-string v1, "KeyChainService died while binding"

    invoke-direct {p2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 1127
    .end local p1    # "service":Landroid/security/IKeyChainService;
    :cond_72
    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1128
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "binding to KeyChainService timeout"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1123
    :cond_7d
    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1124
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "could not bind to KeyChainService"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1111
    .end local v4    # "context":Landroid/content/Context;
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "user":Landroid/os/UserHandle;
    .local p0, "context":Landroid/content/Context;
    .local p1, "handler":Landroid/os/Handler;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :cond_88
    move-object v4, p0

    move-object v8, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v8    # "handler":Landroid/os/Handler;
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "could not resolve KeyChainService"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 1085
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "keyChainService":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/security/IKeyChainService;>;"
    .end local v3    # "comp":Landroid/content/ComponentName;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "keyChainServiceConnection":Landroid/content/ServiceConnection;
    .end local v8    # "handler":Landroid/os/Handler;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "handler":Landroid/os/Handler;
    :cond_92
    move-object v4, p0

    move-object v8, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v8    # "handler":Landroid/os/Handler;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "User must be unlocked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1079
    .end local v4    # "context":Landroid/content/Context;
    .end local v8    # "handler":Landroid/os/Handler;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "handler":Landroid/os/Handler;
    :cond_9c
    move-object v4, p0

    move-object v8, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "handler":Landroid/os/Handler;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v8    # "handler":Landroid/os/Handler;
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1016
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .line 568
    if-eqz p0, :cond_88

    .line 571
    if-eqz p1, :cond_7f

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    new-instance v1, Landroid/security/KeyChain$AliasResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain-IA;)V

    const-string/jumbo v2, "response"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 577
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 578
    const-string v1, "alias"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string/jumbo v1, "key_types"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v1, "issuersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    if-eqz p3, :cond_64

    .line 582
    array-length v3, p3

    move v4, v2

    :goto_37
    if-ge v4, v3, :cond_64

    aget-object v5, p3, v4

    .line 588
    .local v5, "issuer":Ljava/security/Principal;
    instance-of v6, v5, Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_4c

    .line 595
    move-object v6, v5

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .end local v5    # "issuer":Ljava/security/Principal;
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 589
    .restart local v5    # "issuer":Ljava/security/Principal;
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 591
    invoke-interface {v5}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Ljava/security/Principal;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 589
    const-string v4, "Issuer %s is of type %s, not X500Principal"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 598
    .end local v5    # "issuer":Ljava/security/Principal;
    :cond_64
    const-string/jumbo v3, "issuers"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 600
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x4000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "sender"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 603
    return-void

    .line 572
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "issuersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "response == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_3c

    .line 498
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 499
    const/4 v3, -0x1

    if-eq p5, v3, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    :cond_28
    const-string v3, ""

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    goto :goto_3d

    .line 497
    :cond_3c
    move-object v5, v0

    .line 502
    .end local v0    # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    :goto_3d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "response":Landroid/security/KeyChainAliasCallback;
    .end local p2    # "keyTypes":[Ljava/lang/String;
    .end local p3    # "issuers":[Ljava/security/Principal;
    .end local p6    # "alias":Ljava/lang/String;
    .local v1, "activity":Landroid/app/Activity;
    .local v2, "response":Landroid/security/KeyChainAliasCallback;
    .local v3, "keyTypes":[Ljava/lang/String;
    .local v4, "issuers":[Ljava/security/Principal;
    .local v6, "alias":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public static whitelist createInstallIntent()Landroid/content/Intent;
    .registers 3

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.certinstaller"

    const-string v2, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    return-object v0
.end method

.method public static whitelist createManageCredentialsIntent(Landroid/security/AppUriAuthenticationPolicy;)Landroid/content/Intent;
    .registers 4
    .param p0, "policy"    # Landroid/security/AppUriAuthenticationPolicy;

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.MANAGE_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, ".security.RequestManageCredentials"

    invoke-static {v1, v2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 446
    const-string v1, "android.security.extra.AUTHENTICATION_POLICY"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 447
    return-object v0
.end method

.method private static greylist-max-o ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1141
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_15

    .line 1142
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1145
    :cond_15
    :goto_15
    return-void
.end method

.method public static whitelist getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 849
    if-eqz p1, :cond_88

    .line 855
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_81
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_a} :catch_7a

    .line 856
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_a
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 857
    .local v1, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v1, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_6e

    .line 858
    .local v2, "certificateBytes":[B
    if-nez v2, :cond_1c

    .line 859
    nop

    .line 862
    if-eqz v0, :cond_1a

    :try_start_17
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_81
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1a} :catch_7a

    .line 859
    :cond_1a
    const/4 v3, 0x0

    return-object v3

    .line 861
    :cond_1c
    :try_start_1c
    invoke-interface {v1, p1}, Landroid/security/IKeyChainService;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_6e

    .line 862
    .end local v1    # "keyChainService":Landroid/security/IKeyChainService;
    .local v3, "certChainBytes":[B
    if-eqz v0, :cond_25

    :try_start_22
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_81
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_25} :catch_7a

    .line 867
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_25
    nop

    .line 870
    :try_start_26
    invoke-static {v2}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 873
    .local v0, "leafCert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_51

    array-length v1, v3

    if-eqz v1, :cond_51

    .line 874
    invoke-static {v3}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    .line 875
    .local v1, "chain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 876
    .local v4, "fullChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 878
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    return-object v5

    .line 890
    .end local v1    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "fullChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    :cond_51
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 891
    .local v1, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 892
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_66
    .catch Ljava/security/cert/CertificateException; {:try_start_26 .. :try_end_66} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_66} :catch_67

    return-object v5

    .line 894
    .end local v0    # "leafCert":Ljava/security/cert/X509Certificate;
    .end local v1    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_67
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 855
    .end local v2    # "certificateBytes":[B
    .end local v3    # "certChainBytes":[B
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_6e
    move-exception v1

    if-eqz v0, :cond_79

    :try_start_71
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v2

    :try_start_76
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "alias":Ljava/lang/String;
    :cond_79
    :goto_79
    throw v1
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7a} :catch_81
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_7a} :catch_7a

    .line 864
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "alias":Ljava/lang/String;
    :catch_7a
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 862
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_81
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 850
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getCredentialManagementAppPolicy(Landroid/content/Context;)Landroid/security/AppUriAuthenticationPolicy;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "policy":Landroid/security/AppUriAuthenticationPolicy;
    :try_start_1
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_20

    .line 646
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getCredentialManagementAppPolicy()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_14

    move-object v0, v2

    .line 647
    if-eqz v1, :cond_2d

    :try_start_10
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_20

    goto :goto_2d

    .line 645
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_1f

    :try_start_17
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "policy":Landroid/security/AppUriAuthenticationPolicy;
    .end local p0    # "context":Landroid/content/Context;
    :cond_1f
    :goto_1f
    throw v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_20} :catch_20

    .line 649
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v0    # "policy":Landroid/security/AppUriAuthenticationPolicy;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_20
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while getting credential management app policy."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 647
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_29
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 652
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    nop

    .line 653
    return-object v0
.end method

.method private static blacklist getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p0, "keyid"    # Ljava/lang/String;

    .line 768
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 769
    .local v0, "result":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 770
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 771
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 773
    :try_start_d
    const-string/jumbo v2, "ks2_keychain_grant_id:"

    .line 774
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 773
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_20} :catch_22

    .line 777
    nop

    .line 778
    return-object v0

    .line 775
    :catch_22
    move-exception v2

    .line 776
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1
.end method

.method public static blacklist getGrantString(Landroid/system/keystore2/KeyDescriptor;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Landroid/system/keystore2/KeyDescriptor;

    .line 783
    iget-wide v0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "ks2_keychain_grant_id:%016X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 790
    if-eqz p1, :cond_54

    .line 793
    if-eqz p0, :cond_4c

    .line 798
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_c} :catch_3e

    .line 799
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_c
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_32

    .line 800
    .local v1, "keyId":Ljava/lang/String;
    if-eqz v0, :cond_19

    :try_start_16
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_3e

    .line 805
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :cond_19
    nop

    .line 807
    if-nez v1, :cond_1e

    .line 808
    const/4 v0, 0x0

    return-object v0

    .line 814
    :cond_1e
    :try_start_1e
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    .line 815
    invoke-static {v1}, Landroid/security/KeyChain;->getGrantDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    .line 813
    invoke-static {v0, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object v0
    :try_end_2a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1e .. :try_end_2a} :catch_2b
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_1e .. :try_end_2a} :catch_2b

    .line 812
    return-object v0

    .line 816
    :catch_2b
    move-exception v0

    .line 817
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Landroid/security/KeyChainException;

    invoke-direct {v2, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 798
    .end local v1    # "keyId":Ljava/lang/String;
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_3d

    :try_start_35
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "alias":Ljava/lang/String;
    :cond_3d
    :goto_3d
    throw v1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3e} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 802
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "alias":Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 800
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_45
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 794
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 751
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 752
    .local v0, "keyPair":Ljava/security/KeyPair;
    if-eqz v0, :cond_b

    .line 753
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    .line 756
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getWifiKeyGrantAsUser(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1033
    const-string v0, "KeyChain"

    .line 1034
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_25

    .line 1035
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_b
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/security/IKeyChainService;->getWifiKeyGrantAsUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    .line 1036
    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_25

    .line 1035
    :cond_18
    return-object v3

    .line 1033
    :catchall_19
    move-exception v3

    if-eqz v2, :cond_24

    :try_start_1c
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v4

    :try_start_21
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "alias":Ljava/lang/String;
    :cond_24
    :goto_24
    throw v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_25} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_25} :catch_25

    .line 1039
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "alias":Ljava/lang/String;
    :catch_25
    move-exception v2

    .line 1040
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1041
    const-string v3, "Interrupted while getting grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    return-object v1

    .line 1036
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_33
    move-exception v2

    .line 1037
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t get grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    return-object v1
.end method

.method public static whitelist hasWifiKeyGrantAsUser(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1054
    const-string v0, "KeyChain"

    .line 1055
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_35
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_27

    .line 1056
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_b
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    const/16 v4, 0x3f2

    invoke-interface {v3, v4, p2}, Landroid/security/IKeyChainService;->hasGrant(ILjava/lang/String;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1b

    .line 1057
    if-eqz v2, :cond_1a

    :try_start_17
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1a} :catch_35
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_27

    .line 1056
    :cond_1a
    return v3

    .line 1054
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_26

    :try_start_1e
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v4

    :try_start_23
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "user":Landroid/os/UserHandle;
    .end local p2    # "alias":Ljava/lang/String;
    :cond_26
    :goto_26
    throw v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_27} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_27} :catch_35
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_27} :catch_27

    .line 1060
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "user":Landroid/os/UserHandle;
    .restart local p2    # "alias":Ljava/lang/String;
    :catch_27
    move-exception v2

    .line 1061
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1062
    const-string v3, "Interrupted while querying grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    return v1

    .line 1057
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_35
    move-exception v2

    .line 1058
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t query grant for wifi"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    return v1
.end method

.method public static whitelist isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isCredentialManagementApp(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "isCredentialManagementApp":Z
    :try_start_1
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_24

    .line 620
    .local v1, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_5
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/security/IKeyChainService;->isCredentialManagementApp(Ljava/lang/String;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_18

    move v0, v2

    .line 622
    if-eqz v1, :cond_34

    :try_start_14
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_17} :catch_24

    goto :goto_34

    .line 619
    :catchall_18
    move-exception v2

    if-eqz v1, :cond_23

    :try_start_1b
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v3

    :try_start_20
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "isCredentialManagementApp":Z
    .end local p0    # "context":Landroid/content/Context;
    :cond_23
    :goto_23
    throw v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_24} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_24} :catch_24

    .line 627
    .end local v1    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v0    # "isCredentialManagementApp":Z
    .restart local p0    # "context":Landroid/content/Context;
    :catch_24
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    goto :goto_35

    .line 624
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_27
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while checking whether the caller is the credential management app."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 622
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_30
    move-exception v1

    .line 623
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 629
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_34
    :goto_34
    nop

    .line 630
    :goto_35
    return v0
.end method

.method public static whitelist isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 906
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "algUpper":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 908
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 907
    :goto_1a
    return v1
.end method

.method public static whitelist removeCredentialManagementApp(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 704
    :try_start_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_1f

    .line 705
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_4
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1}, Landroid/security/IKeyChainService;->removeCredentialManagementApp()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    .line 706
    nop

    .line 707
    if-eqz v0, :cond_11

    :try_start_e
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_1f

    .line 706
    :cond_11
    const/4 v1, 0x1

    return v1

    .line 704
    :catchall_13
    move-exception v1

    if-eqz v0, :cond_1e

    :try_start_16
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v2

    :try_start_1b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    :cond_1e
    :goto_1e
    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1f} :catch_1f

    .line 707
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_1f
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyChain"

    const-string v2, "Remove credential management app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 710
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist setCredentialManagementApp(Landroid/content/Context;Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authenticationPolicy"    # Landroid/security/AppUriAuthenticationPolicy;

    .line 676
    :try_start_0
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_4} :catch_1f

    .line 677
    .local v0, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_4
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 678
    invoke-interface {v1, p1, p2}, Landroid/security/IKeyChainService;->setCredentialManagementApp(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_13

    .line 679
    nop

    .line 680
    if-eqz v0, :cond_11

    :try_start_e
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_1f

    .line 679
    :cond_11
    const/4 v1, 0x1

    return v1

    .line 676
    :catchall_13
    move-exception v1

    if-eqz v0, :cond_1e

    :try_start_16
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception v2

    :try_start_1b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "authenticationPolicy":Landroid/security/AppUriAuthenticationPolicy;
    :cond_1e
    :goto_1e
    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1f} :catch_1f

    .line 680
    .end local v0    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "authenticationPolicy":Landroid/security/AppUriAuthenticationPolicy;
    :catch_1f
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyChain"

    const-string v2, "Set credential management app failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 683
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "bytes"    # [B

    .line 940
    if-eqz p0, :cond_1c

    .line 944
    :try_start_2
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 945
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 946
    .local v1, "cert":Ljava/security/cert/Certificate;
    move-object v2, v1

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_14
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_14} :catch_15

    return-object v2

    .line 947
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :catch_15
    move-exception v0

    .line 948
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 941
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o toCertificates([B)Ljava/util/Collection;
    .registers 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 955
    if-eqz p0, :cond_19

    .line 959
    :try_start_2
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 960
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_11} :catch_12

    return-object v1

    .line 962
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_12
    move-exception v0

    .line 963
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 956
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
