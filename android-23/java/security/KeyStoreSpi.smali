.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C
    .locals 8
    .param p0, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 502
    if-nez p0, :cond_0

    #@3
    .line 503
    return-object v5

    #@4
    .line 506
    :cond_0
    instance-of v5, p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@6
    if-nez v5, :cond_1

    #@8
    .line 507
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    #@a
    const-string/jumbo v6, "Incorrect ProtectionParameter"

    #@d
    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    #@10
    throw v5

    #@11
    .line 510
    :cond_1
    const-string/jumbo v5, "auth.login.defaultCallbackHandler"

    #@14
    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 511
    .local v2, "clName":Ljava/lang/String;
    if-nez v2, :cond_2

    #@1a
    .line 512
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    #@1c
    const-string/jumbo v6, "Default CallbackHandler was not defined"

    #@1f
    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    #@22
    throw v5

    #@23
    .line 517
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@26
    move-result-object v1

    #@27
    .line 518
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljavax/security/auth/callback/CallbackHandler;

    #@2d
    .line 519
    .local v0, "cbHand":Ljavax/security/auth/callback/CallbackHandler;
    const/4 v5, 0x1

    #@2e
    new-array v4, v5, [Ljavax/security/auth/callback/PasswordCallback;

    #@30
    new-instance v5, Ljavax/security/auth/callback/PasswordCallback;

    #@32
    const-string/jumbo v6, "password: "

    #@35
    const/4 v7, 0x1

    #@36
    invoke-direct {v5, v6, v7}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    #@39
    const/4 v6, 0x0

    #@3a
    aput-object v5, v4, v6

    #@3c
    .line 520
    .local v4, "pwCb":[Ljavax/security/auth/callback/PasswordCallback;
    invoke-interface {v0, v4}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    #@3f
    .line 521
    const/4 v5, 0x0

    #@40
    aget-object v5, v4, v5

    #@42
    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result-object v5

    #@46
    return-object v5

    #@47
    .line 522
    .end local v0    # "cbHand":Ljavax/security/auth/callback/CallbackHandler;
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "pwCb":[Ljavax/security/auth/callback/PasswordCallback;
    :catch_0
    move-exception v3

    #@48
    .line 523
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    #@4a
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@4d
    move-result-object v6

    #@4e
    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    #@51
    throw v5
.end method


# virtual methods
.method public abstract engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public abstract engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 467
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 468
    return v2

    #@9
    .line 472
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 475
    const-string/jumbo v1, "java.security.KeyStore$TrustedCertificateEntry"

    #@12
    .line 474
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@15
    move-result-object v1

    #@16
    .line 473
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@19
    move-result v1

    #@1a
    return v1

    #@1b
    .line 478
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_5

    #@21
    .line 480
    const-string/jumbo v3, "java.security.KeyStore$PrivateKeyEntry"

    #@24
    .line 479
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_3

    #@2e
    .line 481
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@31
    move-result-object v3

    #@32
    if-eqz v3, :cond_2

    #@34
    :goto_0
    return v1

    #@35
    :cond_2
    move v1, v2

    #@36
    goto :goto_0

    #@37
    .line 485
    :cond_3
    const-string/jumbo v3, "java.security.KeyStore$SecretKeyEntry"

    #@3a
    .line 484
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_5

    #@44
    .line 486
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    move-result-object v3

    #@48
    if-nez v3, :cond_4

    #@4a
    :goto_1
    return v1

    #@4b
    :cond_4
    move v1, v2

    #@4c
    goto :goto_1

    #@4d
    .line 489
    :catch_0
    move-exception v0

    #@4e
    .line 491
    :cond_5
    return v2
.end method

.method public abstract engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 348
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 349
    return-object v4

    #@8
    .line 351
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 352
    new-instance v3, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@10
    .line 353
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@13
    move-result-object v4

    #@14
    .line 352
    invoke-direct {v3, v4}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    #@17
    return-object v3

    #@18
    .line 355
    :cond_1
    const/4 v2, 0x0

    #@19
    .line 356
    .local v2, "passW":[C
    if-eqz p2, :cond_2

    #@1b
    .line 357
    instance-of v3, p2, Ljava/security/KeyStore$PasswordProtection;

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 359
    :try_start_0
    check-cast p2, Ljava/security/KeyStore$PasswordProtection;

    #@21
    .end local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {p2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v2

    #@25
    .line 371
    .end local v2    # "passW":[C
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_6

    #@2b
    .line 372
    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@2e
    move-result-object v1

    #@2f
    .line 373
    .local v1, "key":Ljava/security/Key;
    instance-of v3, v1, Ljava/security/PrivateKey;

    #@31
    if-eqz v3, :cond_5

    #@33
    .line 374
    new-instance v3, Ljava/security/KeyStore$PrivateKeyEntry;

    #@35
    check-cast v1, Ljava/security/PrivateKey;

    #@37
    .line 375
    .end local v1    # "key":Ljava/security/Key;
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@3a
    move-result-object v4

    #@3b
    .line 374
    invoke-direct {v3, v1, v4}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    #@3e
    return-object v3

    #@3f
    .line 361
    .restart local v2    # "passW":[C
    :catch_0
    move-exception v0

    #@40
    .line 362
    .local v0, "ee":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/security/KeyStoreException;

    #@42
    const-string/jumbo v4, "Password was destroyed"

    #@45
    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@48
    throw v3

    #@49
    .line 364
    .end local v0    # "ee":Ljava/lang/IllegalStateException;
    .restart local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_3
    instance-of v3, p2, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@4b
    if-eqz v3, :cond_4

    #@4d
    .line 365
    invoke-static {p2}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    #@50
    move-result-object v2

    #@51
    .local v2, "passW":[C
    goto :goto_0

    #@52
    .line 367
    .local v2, "passW":[C
    :cond_4
    new-instance v3, Ljava/security/UnrecoverableEntryException;

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "ProtectionParameter object is not PasswordProtection: "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-direct {v3, v4}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v3

    #@6c
    .line 377
    .end local v2    # "passW":[C
    .end local p2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    .restart local v1    # "key":Ljava/security/Key;
    :cond_5
    instance-of v3, v1, Ljavax/crypto/SecretKey;

    #@6e
    if-eqz v3, :cond_6

    #@70
    .line 378
    new-instance v3, Ljava/security/KeyStore$SecretKeyEntry;

    #@72
    check-cast v1, Ljavax/crypto/SecretKey;

    #@74
    .end local v1    # "key":Ljava/security/Key;
    invoke-direct {v3, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    #@77
    return-object v3

    #@78
    .line 381
    :cond_6
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@7a
    const-string/jumbo v4, "Unknown KeyStore.Entry object"

    #@7d
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@80
    throw v3
.end method

.method public abstract engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 299
    if-nez p1, :cond_0

    #@3
    .line 300
    invoke-virtual {p0, v4, v4}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    #@6
    .line 301
    return-void

    #@7
    .line 304
    :cond_0
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    #@a
    move-result-object v2

    #@b
    .line 305
    .local v2, "pp":Ljava/security/KeyStore$ProtectionParameter;
    instance-of v4, v2, Ljava/security/KeyStore$PasswordProtection;

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 307
    :try_start_0
    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    #@11
    .end local v2    # "pp":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    #@14
    move-result-object v3

    #@15
    .line 308
    .local v3, "pwd":[C
    const/4 v4, 0x0

    #@16
    invoke-virtual {p0, v4, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 309
    return-void

    #@1a
    .line 310
    .end local v3    # "pwd":[C
    :catch_0
    move-exception v0

    #@1b
    .line 311
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@20
    throw v4

    #@21
    .line 314
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "pp":Ljava/security/KeyStore$ProtectionParameter;
    :cond_1
    instance-of v4, v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 316
    :try_start_1
    invoke-static {v2}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    #@28
    move-result-object v3

    #@29
    .line 317
    .restart local v3    # "pwd":[C
    const/4 v4, 0x0

    #@2a
    invoke-virtual {p0, v4, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_1

    #@2d
    .line 318
    return-void

    #@2e
    .line 319
    .end local v3    # "pwd":[C
    :catch_1
    move-exception v1

    #@2f
    .line 320
    .local v1, "e":Ljava/security/UnrecoverableEntryException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v4

    #@35
    .line 323
    .end local v1    # "e":Ljava/security/UnrecoverableEntryException;
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@37
    const-string/jumbo v5, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    #@3a
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v4
.end method

.method public abstract engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 402
    if-nez p2, :cond_0

    #@3
    .line 403
    new-instance v6, Ljava/security/KeyStoreException;

    #@5
    const-string/jumbo v7, "entry == null"

    #@8
    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@b
    throw v6

    #@c
    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    .line 407
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    #@15
    .line 410
    :cond_1
    instance-of v6, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@17
    if-eqz v6, :cond_2

    #@19
    move-object v5, p2

    #@1a
    .line 411
    check-cast v5, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@1c
    .line 412
    .local v5, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v5}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {p0, p1, v6}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    #@23
    .line 413
    return-void

    #@24
    .line 416
    .end local v5    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_2
    const/4 v2, 0x0

    #@25
    .line 417
    .local v2, "passW":[C
    if-eqz p3, :cond_3

    #@27
    .line 418
    instance-of v6, p3, Ljava/security/KeyStore$PasswordProtection;

    #@29
    if-eqz v6, :cond_4

    #@2b
    .line 420
    :try_start_0
    check-cast p3, Ljava/security/KeyStore$PasswordProtection;

    #@2d
    .end local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {p3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v2

    #@31
    .line 436
    .end local v2    # "passW":[C
    :cond_3
    :goto_0
    instance-of v6, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    #@33
    if-eqz v6, :cond_6

    #@35
    move-object v3, p2

    #@36
    .line 437
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    #@38
    .line 438
    .local v3, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {p0, p1, v6, v2, v7}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    #@43
    .line 440
    return-void

    #@44
    .line 421
    .end local v3    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v2    # "passW":[C
    :catch_0
    move-exception v1

    #@45
    .line 422
    .local v1, "ee":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/security/KeyStoreException;

    #@47
    const-string/jumbo v7, "Password was destroyed"

    #@4a
    invoke-direct {v6, v7, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4d
    throw v6

    #@4e
    .line 424
    .end local v1    # "ee":Ljava/lang/IllegalStateException;
    .restart local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4
    instance-of v6, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@50
    if-eqz v6, :cond_5

    #@52
    .line 426
    :try_start_1
    invoke-static {p3}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    move-result-object v2

    #@56
    .local v2, "passW":[C
    goto :goto_0

    #@57
    .line 427
    .local v2, "passW":[C
    :catch_1
    move-exception v0

    #@58
    .line 428
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/KeyStoreException;

    #@5a
    invoke-direct {v6, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@5d
    throw v6

    #@5e
    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v6, Ljava/security/KeyStoreException;

    #@60
    const-string/jumbo v7, "protParam should be PasswordProtection or CallbackHandlerProtection"

    #@63
    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@66
    throw v6

    #@67
    .line 443
    .end local v2    # "passW":[C
    .end local p3    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_6
    instance-of v6, p2, Ljava/security/KeyStore$SecretKeyEntry;

    #@69
    if-eqz v6, :cond_7

    #@6b
    move-object v4, p2

    #@6c
    .line 444
    check-cast v4, Ljava/security/KeyStore$SecretKeyEntry;

    #@6e
    .line 445
    .local v4, "skE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {p0, p1, v6, v2, v7}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    #@75
    .line 447
    return-void

    #@76
    .line 450
    .end local v4    # "skE":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_7
    new-instance v6, Ljava/security/KeyStoreException;

    #@78
    new-instance v7, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v8, "Entry object is neither PrivateKeyObject nor SecretKeyEntry nor TrustedCertificateEntry: "

    #@80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v6
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSize()I
.end method

.method public abstract engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
