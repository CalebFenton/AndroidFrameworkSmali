.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
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
    .locals 3
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
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 562
    const-class v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@4
    if-ne p2, v2, :cond_0

    #@6
    .line 563
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 565
    :cond_0
    const-class v2, Ljava/security/KeyStore$PrivateKeyEntry;

    #@d
    if-ne p2, v2, :cond_3

    #@f
    .line 566
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 567
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@18
    move-result-object v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 566
    :goto_0
    return v0

    #@1c
    :cond_1
    move v0, v1

    #@1d
    .line 567
    goto :goto_0

    #@1e
    :cond_2
    move v0, v1

    #@1f
    .line 566
    goto :goto_0

    #@20
    .line 569
    :cond_3
    const-class v2, Ljava/security/KeyStore$SecretKeyEntry;

    #@22
    if-ne p2, v2, :cond_5

    #@24
    .line 570
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_4

    #@2a
    .line 571
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@2d
    move-result-object v2

    #@2e
    if-nez v2, :cond_4

    #@30
    move v1, v0

    #@31
    .line 570
    :cond_4
    return v1

    #@32
    .line 573
    :cond_5
    return v1
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
    const/4 v5, 0x0

    #@1
    .line 450
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 451
    return-object v5

    #@8
    .line 454
    :cond_0
    if-eqz p2, :cond_1

    #@a
    .line 455
    instance-of v4, p2, Ljava/security/KeyStore$PasswordProtection;

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 459
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_4

    #@14
    .line 460
    if-nez p2, :cond_3

    #@16
    .line 461
    new-instance v4, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@18
    .line 462
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@1b
    move-result-object v5

    #@1c
    .line 461
    invoke-direct {v4, v5}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    #@1f
    return-object v4

    #@20
    .line 456
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@22
    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@25
    throw v4

    #@26
    .line 464
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@28
    .line 465
    const-string/jumbo v5, "trusted certificate entries are not password-protected"

    #@2b
    .line 464
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v4

    #@2f
    .line 467
    :cond_4
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_7

    #@35
    .line 468
    const/4 v2, 0x0

    #@36
    .line 469
    .local v2, "password":[C
    if-eqz p2, :cond_5

    #@38
    move-object v3, p2

    #@39
    .line 471
    check-cast v3, Ljava/security/KeyStore$PasswordProtection;

    #@3b
    .line 472
    .local v3, "pp":Ljava/security/KeyStore$PasswordProtection;
    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    #@3e
    move-result-object v2

    #@3f
    .line 474
    .end local v2    # "password":[C
    .end local v3    # "pp":Ljava/security/KeyStore$PasswordProtection;
    :cond_5
    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@42
    move-result-object v1

    #@43
    .line 475
    .local v1, "key":Ljava/security/Key;
    instance-of v4, v1, Ljava/security/PrivateKey;

    #@45
    if-eqz v4, :cond_6

    #@47
    .line 476
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@4a
    move-result-object v0

    #@4b
    .line 477
    .local v0, "chain":[Ljava/security/cert/Certificate;
    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    #@4d
    check-cast v1, Ljava/security/PrivateKey;

    #@4f
    .end local v1    # "key":Ljava/security/Key;
    invoke-direct {v4, v1, v0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    #@52
    return-object v4

    #@53
    .line 478
    .end local v0    # "chain":[Ljava/security/cert/Certificate;
    .restart local v1    # "key":Ljava/security/Key;
    :cond_6
    instance-of v4, v1, Ljavax/crypto/SecretKey;

    #@55
    if-eqz v4, :cond_7

    #@57
    .line 479
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    #@59
    check-cast v1, Ljavax/crypto/SecretKey;

    #@5b
    .end local v1    # "key":Ljava/security/Key;
    invoke-direct {v4, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    #@5e
    return-object v4

    #@5f
    .line 482
    :cond_7
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@61
    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@64
    throw v4
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
    .locals 8
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
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 383
    if-nez p1, :cond_0

    #@4
    move-object v5, v6

    #@5
    .line 384
    check-cast v5, Ljava/io/InputStream;

    #@7
    check-cast v6, [C

    #@9
    invoke-virtual {p0, v5, v6}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    #@c
    .line 385
    return-void

    #@d
    .line 388
    :cond_0
    instance-of v5, p1, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    #@f
    if-eqz v5, :cond_4

    #@11
    .line 389
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    #@14
    move-result-object v4

    #@15
    .line 391
    .local v4, "protection":Ljava/security/KeyStore$ProtectionParameter;
    instance-of v5, v4, Ljava/security/KeyStore$PasswordProtection;

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 392
    check-cast v4, Ljava/security/KeyStore$PasswordProtection;

    #@1b
    .end local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    #@1e
    move-result-object v3

    #@1f
    .line 414
    .local v3, "password":[C
    :cond_1
    invoke-virtual {p0, v6, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    #@22
    .line 415
    return-void

    #@23
    .line 393
    .end local v3    # "password":[C
    .restart local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_2
    instance-of v5, v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 395
    check-cast v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@29
    .end local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v4}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    #@2c
    move-result-object v2

    #@2d
    .line 397
    .local v2, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    #@2f
    const-string/jumbo v5, "Password: "

    #@32
    invoke-direct {v0, v5, v7}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    #@35
    .line 399
    .local v0, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v5, 0x1

    #@36
    :try_start_0
    new-array v5, v5, [Ljavax/security/auth/callback/Callback;

    #@38
    const/4 v7, 0x0

    #@39
    aput-object v0, v5, v7

    #@3b
    invoke-interface {v2, v5}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
    :try_end_0
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 404
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    #@41
    move-result-object v3

    #@42
    .line 405
    .restart local v3    # "password":[C
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    #@45
    .line 406
    if-nez v3, :cond_1

    #@47
    .line 407
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@49
    .line 408
    const-string/jumbo v6, "No password provided"

    #@4c
    .line 407
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v5

    #@50
    .line 400
    .end local v3    # "password":[C
    :catch_0
    move-exception v1

    #@51
    .line 401
    .local v1, "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@53
    .line 402
    const-string/jumbo v6, "Could not obtain password"

    #@56
    .line 401
    invoke-direct {v5, v6, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v5

    #@5a
    .line 411
    .end local v0    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .end local v1    # "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    .end local v2    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_3
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    #@5c
    const-string/jumbo v6, "ProtectionParameter must be PasswordProtection or CallbackHandlerProtection"

    #@5f
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@62
    throw v5

    #@63
    .line 418
    .end local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@65
    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@68
    throw v5
.end method

.method public abstract engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 6
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
    const/4 v3, 0x0

    #@1
    .line 508
    if-eqz p3, :cond_0

    #@3
    .line 509
    instance-of v4, p3, Ljava/security/KeyStore$PasswordProtection;

    #@5
    if-eqz v4, :cond_2

    #@7
    .line 512
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 513
    .local v0, "pProtect":Ljava/security/KeyStore$PasswordProtection;
    if-eqz p3, :cond_1

    #@a
    move-object v0, p3

    #@b
    .line 514
    check-cast v0, Ljava/security/KeyStore$PasswordProtection;

    #@d
    .line 517
    .end local v0    # "pProtect":Ljava/security/KeyStore$PasswordProtection;
    :cond_1
    if-nez v0, :cond_3

    #@f
    const/4 v1, 0x0

    #@10
    .line 519
    :goto_0
    instance-of v4, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@12
    if-eqz v4, :cond_4

    #@14
    move-object v2, p2

    #@15
    .line 521
    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    #@17
    .line 522
    .local v2, "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p0, p1, v3}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    #@1e
    .line 523
    return-void

    #@1f
    .line 510
    .end local v2    # "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_2
    new-instance v3, Ljava/security/KeyStoreException;

    #@21
    const-string/jumbo v4, "unsupported protection parameter"

    #@24
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 517
    :cond_3
    invoke-virtual {v0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    #@2b
    move-result-object v1

    #@2c
    .local v1, "password":[C
    goto :goto_0

    #@2d
    .line 524
    .end local v1    # "password":[C
    :cond_4
    instance-of v4, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    #@2f
    if-eqz v4, :cond_5

    #@31
    move-object v3, p2

    #@32
    .line 527
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    #@34
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    #@37
    move-result-object v3

    #@38
    .line 529
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    #@3a
    .end local p2    # "entry":Ljava/security/KeyStore$Entry;
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@3d
    move-result-object v4

    #@3e
    .line 525
    invoke-virtual {p0, p1, v3, v1, v4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    #@41
    .line 530
    return-void

    #@42
    .line 531
    .restart local p2    # "entry":Ljava/security/KeyStore$Entry;
    :cond_5
    instance-of v4, p2, Ljava/security/KeyStore$SecretKeyEntry;

    #@44
    if-eqz v4, :cond_6

    #@46
    .line 534
    check-cast p2, Ljava/security/KeyStore$SecretKeyEntry;

    #@48
    .end local p2    # "entry":Ljava/security/KeyStore$Entry;
    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    #@4b
    move-result-object v4

    #@4c
    .line 536
    check-cast v3, [Ljava/security/cert/Certificate;

    #@4e
    .line 532
    invoke-virtual {p0, p1, v4, v1, v3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    #@51
    .line 537
    return-void

    #@52
    .line 540
    .restart local p2    # "entry":Ljava/security/KeyStore$Entry;
    :cond_6
    new-instance v3, Ljava/security/KeyStoreException;

    #@54
    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "unsupported entry type: "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    .line 540
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@73
    throw v3
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
    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
