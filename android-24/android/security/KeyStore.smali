.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    #@0
    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/security/KeyStore;->mError:I

    #@6
    .line 107
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@8
    .line 108
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    #@e
    .line 106
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    #@0
    .prologue
    .line 112
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    .line 113
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_0

    #@6
    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    .line 115
    const-string/jumbo v2, "Failed to obtain application Context from ActivityThread"

    #@b
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 117
    :cond_0
    return-object v0
.end method

.method private getFingerprintOnlySid()J
    .locals 4

    #@0
    .prologue
    .line 732
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    #@2
    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    #@4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    #@a
    .line 733
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-nez v0, :cond_0

    #@c
    .line 734
    const-wide/16 v2, 0x0

    #@e
    return-wide v2

    #@f
    .line 739
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    #@12
    move-result-wide v2

    #@13
    return-wide v2
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    #@0
    .prologue
    .line 122
    const-string/jumbo v1, "android.security.keystore"

    #@3
    .line 121
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    #@a
    move-result-object v0

    #@b
    .line 123
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Landroid/security/KeyStore;

    #@d
    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    #@10
    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .param p0, "errorCode"    # I

    #@0
    .prologue
    .line 635
    if-lez p0, :cond_0

    #@2
    .line 637
    packed-switch p0, :pswitch_data_0

    #@5
    .line 655
    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    #@7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@e
    return-object v0

    #@f
    .line 639
    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    #@11
    const-string/jumbo v1, "OK"

    #@14
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@17
    return-object v0

    #@18
    .line 641
    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    #@1a
    const-string/jumbo v1, "User authentication required"

    #@1d
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@20
    return-object v0

    #@21
    .line 643
    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    #@23
    const-string/jumbo v1, "Keystore not initialized"

    #@26
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@29
    return-object v0

    #@2a
    .line 645
    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    #@2c
    const-string/jumbo v1, "System error"

    #@2f
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@32
    return-object v0

    #@33
    .line 647
    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    #@35
    const-string/jumbo v1, "Permission denied"

    #@38
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@3b
    return-object v0

    #@3c
    .line 649
    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    #@3e
    const-string/jumbo v1, "Key not found"

    #@41
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@44
    return-object v0

    #@45
    .line 651
    :pswitch_7
    new-instance v0, Landroid/security/KeyStoreException;

    #@47
    const-string/jumbo v1, "Key blob corrupted"

    #@4a
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@4d
    return-object v0

    #@4e
    .line 653
    :pswitch_8
    new-instance v0, Landroid/security/KeyStoreException;

    #@50
    const-string/jumbo v1, "Operation requires authorization"

    #@53
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@56
    return-object v0

    #@57
    .line 659
    :cond_0
    packed-switch p0, :pswitch_data_1

    #@5a
    .line 666
    new-instance v0, Landroid/security/KeyStoreException;

    #@5c
    .line 667
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 666
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@63
    return-object v0

    #@64
    .line 663
    :pswitch_9
    new-instance v0, Landroid/security/KeyStoreException;

    #@66
    .line 664
    const-string/jumbo v1, "Invalid user authentication validity duration"

    #@69
    .line 663
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    #@6c
    return-object v0

    #@6d
    .line 637
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    #@90
    .line 659
    :pswitch_data_1
    .packed-switch -0x10
        :pswitch_9
    .end packed-switch
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 128
    new-instance v0, Landroid/os/Binder;

    #@7
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@a
    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    #@c
    .line 130
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 520
    :catch_0
    move-exception v0

    #@8
    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 522
    const/4 v1, 0x4

    #@12
    return v1
.end method

.method public addAuthToken([B)I
    .locals 3
    .param p1, "authToken"    # [B

    #@0
    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 551
    :catch_0
    move-exception v0

    #@8
    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 553
    const/4 v1, 0x4

    #@12
    return v1
.end method

.method public addRngEntropy([B)Z
    .locals 4
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 412
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->addRngEntropy([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 413
    :catch_0
    move-exception v0

    #@e
    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 415
    return v2
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "outChain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    #@0
    .prologue
    .line 622
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 623
    :catch_0
    move-exception v0

    #@8
    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 625
    const/4 v1, 0x4

    #@12
    return v1
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B

    #@0
    .prologue
    .line 491
    const/4 v6, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B
    .param p6, "uid"    # I

    #@0
    .prologue
    .line 482
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    move-object v2, p1

    #@7
    move v3, p2

    #@8
    move v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    move v7, p6

    #@c
    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 483
    :catch_0
    move-exception v8

    #@12
    .line 484
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    #@15
    const-string/jumbo v1, "Cannot connect to keystore"

    #@18
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 485
    const/4 v0, 0x0

    #@1c
    return-object v0
.end method

.method public clearUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 399
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    int-to-long v4, p1

    #@5
    invoke-interface {v3, v4, v5}, Landroid/security/IKeystoreService;->clear_uid(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v3

    #@9
    if-ne v3, v1, :cond_0

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    move v1, v2

    #@d
    goto :goto_0

    #@e
    .line 400
    :catch_0
    move-exception v0

    #@f
    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@12
    const-string/jumbo v3, "Cannot connect to keystore"

    #@15
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 402
    return v2
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 200
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 201
    :catch_0
    move-exception v0

    #@e
    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 203
    return v2
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 186
    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    .line 187
    .local v1, "ret":I
    if-eq v1, v2, :cond_0

    #@a
    const/4 v4, 0x7

    #@b
    if-ne v1, v4, :cond_1

    #@d
    :cond_0
    :goto_0
    return v2

    #@e
    :cond_1
    move v2, v3

    #@f
    goto :goto_0

    #@10
    .line 188
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    #@11
    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    #@14
    const-string/jumbo v4, "Cannot connect to keystore"

    #@17
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 190
    return v3
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 376
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 377
    :catch_0
    move-exception v0

    #@e
    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 379
    return v2
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;

    #@0
    .prologue
    .line 476
    const/4 v5, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 469
    :catch_0
    move-exception v6

    #@d
    .line 470
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    #@10
    const-string/jumbo v1, "Cannot connect to keystore"

    #@13
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 471
    const/4 v0, 0x0

    #@17
    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B

    #@0
    .prologue
    .line 514
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B

    #@0
    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 507
    :catch_0
    move-exception v0

    #@8
    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 509
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    #@0
    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    .line 300
    new-instance v6, Landroid/security/KeystoreArguments;

    #@4
    invoke-direct {v6, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    #@7
    move-object v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move v4, p4

    #@b
    move v5, p5

    #@c
    .line 299
    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v0

    #@10
    .line 300
    const/4 v1, 0x1

    #@11
    .line 299
    if-ne v0, v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0

    #@17
    .line 301
    :catch_0
    move-exception v7

    #@18
    .line 302
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    #@1b
    const-string/jumbo v1, "Cannot connect to keystore"

    #@1e
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 303
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    #@0
    .prologue
    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 423
    :catch_0
    move-exception v7

    #@e
    .line 424
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    #@11
    const-string/jumbo v1, "Cannot connect to keystore"

    #@14
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 425
    const/4 v0, 0x4

    #@18
    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "flags"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    #@0
    .prologue
    .line 431
    const/4 v4, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move-object v6, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 161
    :catch_0
    move-exception v0

    #@8
    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 163
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 1
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 748
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 12
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "e"    # Landroid/security/KeyStoreException;

    #@0
    .prologue
    .line 678
    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 727
    new-instance v0, Ljava/security/InvalidKeyException;

    #@9
    const-string/jumbo v1, "Keystore operation failed"

    #@c
    invoke-direct {v0, v1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    return-object v0

    #@10
    .line 680
    :sswitch_0
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    #@12
    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    #@15
    return-object v0

    #@16
    .line 682
    :sswitch_1
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    #@18
    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    #@1b
    return-object v0

    #@1c
    .line 684
    :sswitch_2
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    #@1e
    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    #@21
    return-object v0

    #@22
    .line 693
    :sswitch_3
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    #@24
    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@27
    .line 695
    .local v5, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v2, 0x0

    #@28
    const/4 v3, 0x0

    #@29
    move-object v0, p0

    #@2a
    move-object v1, p1

    #@2b
    move v4, p2

    #@2c
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    #@2f
    move-result v8

    #@30
    .line 697
    .local v8, "getKeyCharacteristicsErrorCode":I
    const/4 v0, 0x1

    #@31
    if-eq v8, v0, :cond_0

    #@33
    .line 698
    new-instance v0, Ljava/security/InvalidKeyException;

    #@35
    .line 699
    const-string/jumbo v1, "Failed to obtained key characteristics"

    #@38
    .line 700
    invoke-static {v8}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@3b
    move-result-object v2

    #@3c
    .line 698
    invoke-direct {v0, v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    return-object v0

    #@40
    .line 703
    :cond_0
    const v0, -0x5ffffe0a

    #@43
    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    #@46
    move-result-object v9

    #@47
    .line 704
    .local v9, "keySids":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_1

    #@4d
    .line 706
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    #@4f
    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    #@52
    return-object v0

    #@53
    .line 708
    :cond_1
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    #@56
    move-result-wide v10

    #@57
    .line 709
    .local v10, "rootSid":J
    const-wide/16 v0, 0x0

    #@59
    cmp-long v0, v10, v0

    #@5b
    if-eqz v0, :cond_2

    #@5d
    invoke-static {v10, v11}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@60
    move-result-object v0

    #@61
    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_2

    #@67
    .line 712
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    #@69
    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    #@6c
    return-object v0

    #@6d
    .line 715
    :cond_2
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    #@70
    move-result-wide v6

    #@71
    .line 716
    .local v6, "fingerprintOnlySid":J
    const-wide/16 v0, 0x0

    #@73
    cmp-long v0, v6, v0

    #@75
    if-eqz v0, :cond_3

    #@77
    .line 717
    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@7a
    move-result-object v0

    #@7b
    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@7e
    move-result v0

    #@7f
    .line 716
    if-eqz v0, :cond_3

    #@81
    .line 720
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    #@83
    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    #@86
    return-object v0

    #@87
    .line 724
    :cond_3
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    #@89
    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    #@8c
    return-object v0

    #@8d
    .line 678
    nop

    #@8e
    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_3
        -0x19 -> :sswitch_1
        -0x18 -> :sswitch_2
        0x2 -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "uid"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    #@0
    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 438
    :catch_0
    move-exception v6

    #@d
    .line 439
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    #@10
    const-string/jumbo v1, "Cannot connect to keystore"

    #@13
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    .line 440
    const/4 v0, 0x4

    #@17
    return v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    #@0
    .prologue
    .line 446
    const/4 v4, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getLastError()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    #@2
    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    #@4
    move-result-wide v0

    #@5
    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 358
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    .line 359
    .local v2, "millis":J
    cmp-long v1, v2, v6

    #@a
    if-nez v1, :cond_0

    #@c
    .line 360
    return-wide v6

    #@d
    .line 363
    :cond_0
    const-wide/16 v4, 0x3e8

    #@f
    mul-long/2addr v4, v2

    #@10
    return-wide v4

    #@11
    .line 364
    .end local v2    # "millis":J
    :catch_0
    move-exception v0

    #@12
    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@15
    const-string/jumbo v4, "Cannot connect to keystore"

    #@18
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 366
    return-wide v6
.end method

.method public grant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 336
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 337
    :catch_0
    move-exception v0

    #@e
    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 339
    return v2
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    #@0
    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 454
    :catch_0
    move-exception v8

    #@10
    .line 455
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    #@13
    const-string/jumbo v1, "Cannot connect to keystore"

    #@16
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 456
    const/4 v0, 0x4

    #@1a
    return v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    #@0
    .prologue
    .line 462
    const/4 v5, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move v6, p5

    #@7
    move-object v7, p6

    #@8
    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 309
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 310
    :catch_0
    move-exception v0

    #@e
    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 312
    return v2
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 178
    :catch_0
    move-exception v0

    #@8
    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 180
    const/4 v1, 0x4

    #@12
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 293
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isEmpty(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 285
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@3
    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :cond_0
    return v1

    #@b
    .line 286
    :catch_0
    move-exception v0

    #@c
    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    #@f
    const-string/jumbo v3, "Cannot connect to keystore"

    #@12
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 288
    return v1
.end method

.method public isHardwareBacked()Z
    .locals 1

    #@0
    .prologue
    .line 385
    const-string/jumbo v0, "RSA"

    #@3
    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "keyType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 390
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@6
    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v3

    #@e
    if-ne v3, v1, :cond_0

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    move v1, v2

    #@12
    goto :goto_0

    #@13
    .line 391
    :catch_0
    move-exception v0

    #@14
    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@17
    const-string/jumbo v3, "Cannot connect to keystore"

    #@1a
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 393
    return v2
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 535
    :catch_0
    move-exception v0

    #@8
    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 537
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isUnlocked()Z
    .locals 2

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 217
    :catch_0
    move-exception v0

    #@8
    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 219
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public lock()Z
    .locals 1

    #@0
    .prologue
    .line 252
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public lock(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 244
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 245
    :catch_0
    move-exception v0

    #@e
    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 247
    return v2
.end method

.method public onUserAdded(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 599
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    #@4
    .line 598
    return-void
.end method

.method public onUserAdded(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    #@0
    .prologue
    .line 587
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 585
    :goto_0
    return-void

    #@6
    .line 588
    :catch_0
    move-exception v0

    #@7
    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@a
    const-string/jumbo v2, "Cannot connect to keystore"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 566
    if-nez p2, :cond_0

    #@4
    .line 567
    const-string/jumbo p2, ""

    #@7
    .line 570
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@9
    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v3

    #@d
    if-ne v3, v1, :cond_1

    #@f
    :goto_0
    return v1

    #@10
    :cond_1
    move v1, v2

    #@11
    goto :goto_0

    #@12
    .line 571
    :catch_0
    move-exception v0

    #@13
    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@16
    const-string/jumbo v3, "Cannot connect to keystore"

    #@19
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 573
    return v2
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPassword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 616
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 607
    :goto_0
    return-void

    #@6
    .line 610
    :catch_0
    move-exception v0

    #@7
    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@a
    const-string/jumbo v2, "Cannot connect to keystore"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public reset()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 229
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 230
    :catch_0
    move-exception v0

    #@e
    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 232
    return v2
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 319
    :catch_0
    move-exception v0

    #@8
    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 321
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    #@0
    .prologue
    .line 151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 136
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->getState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    .line 142
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    #@9
    .line 146
    new-instance v2, Ljava/lang/AssertionError;

    #@b
    iget v3, p0, Landroid/security/KeyStore;->mError:I

    #@d
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    #@10
    throw v2

    #@11
    .line 137
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    #@12
    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    #@15
    const-string/jumbo v3, "Cannot connect to keystore"

    #@18
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 139
    new-instance v2, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v2

    #@21
    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    #@23
    return-object v2

    #@24
    .line 144
    :pswitch_1
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    #@26
    return-object v2

    #@27
    .line 145
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    #@29
    return-object v2

    #@2a
    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 345
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 346
    :catch_0
    move-exception v0

    #@e
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 348
    return v2
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 268
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    #@7
    move-result v3

    #@8
    iput v3, p0, Landroid/security/KeyStore;->mError:I

    #@a
    .line 269
    iget v3, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    if-ne v3, v1, :cond_0

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    move v1, v2

    #@10
    goto :goto_0

    #@11
    .line 270
    :catch_0
    move-exception v0

    #@12
    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@15
    const-string/jumbo v3, "Cannot connect to keystore"

    #@18
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 272
    return v2
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B

    #@0
    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 497
    :catch_0
    move-exception v0

    #@8
    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@b
    const-string/jumbo v2, "Cannot connect to keystore"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 499
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 327
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    #@4
    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v3

    #@8
    if-ne v3, v1, :cond_0

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    move v1, v2

    #@c
    goto :goto_0

    #@d
    .line 328
    :catch_0
    move-exception v0

    #@e
    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    #@11
    const-string/jumbo v3, "Cannot connect to keystore"

    #@14
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 330
    return v2
.end method
