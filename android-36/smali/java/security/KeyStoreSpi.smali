.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .line 603
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    const-class v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-ne p2, v0, :cond_9

    .line 604
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 606
    :cond_9
    const-class v0, Ljava/security/KeyStore$PrivateKeyEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1e

    .line 607
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 608
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 607
    :goto_1d
    return v1

    .line 610
    :cond_1e
    const-class v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-ne p2, v0, :cond_31

    .line 611
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 612
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 611
    :goto_30
    return v1

    .line 614
    :cond_31
    return v2
.end method

.method public abstract whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public whitelist test-api engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .line 458
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 459
    return-object v0

    .line 469
    :cond_4
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 470
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 471
    return-object v0

    .line 474
    :cond_11
    const/4 v0, 0x1

    .local v0, "isCertificateEntry":Z
    goto :goto_14

    .line 476
    .end local v0    # "isCertificateEntry":Z
    :cond_13
    const/4 v0, 0x0

    .line 480
    .restart local v0    # "isCertificateEntry":Z
    :goto_14
    if-nez p2, :cond_22

    .line 483
    if-eqz v0, :cond_22

    .line 484
    new-instance v1, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 485
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    .line 484
    return-object v1

    .line 494
    :cond_22
    if-eqz p2, :cond_28

    instance-of v1, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_56

    .line 495
    :cond_28
    if-nez v0, :cond_5c

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "password":[C
    if-eqz p2, :cond_34

    .line 507
    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    .line 509
    .local v2, "pp":Ljava/security/KeyStore$PasswordProtection;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .line 511
    .end local v2    # "pp":Ljava/security/KeyStore$PasswordProtection;
    :cond_34
    invoke-virtual {p0, p1, v1}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    .line 512
    .local v2, "key":Ljava/security/Key;
    instance-of v3, v2, Ljava/security/PrivateKey;

    if-eqz v3, :cond_49

    .line 513
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 514
    .local v3, "chain":[Ljava/security/cert/Certificate;
    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v5, v2

    check-cast v5, Ljava/security/PrivateKey;

    invoke-direct {v4, v5, v3}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    return-object v4

    .line 515
    .end local v3    # "chain":[Ljava/security/cert/Certificate;
    :cond_49
    instance-of v3, v2, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_56

    .line 516
    new-instance v3, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v4, v2

    check-cast v4, Ljavax/crypto/SecretKey;

    invoke-direct {v3, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v3

    .line 521
    .end local v1    # "password":[C
    .end local v2    # "key":Ljava/security/Key;
    :cond_56
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 496
    :cond_5c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "trusted certificate entries are not password-protected"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method blacklist engineLoad(Ljava/io/InputStream;Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    if-nez p2, :cond_d

    .line 391
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, v0, v0}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 392
    return-void

    .line 395
    :cond_d
    instance-of v1, p2, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    if-eqz v1, :cond_64

    .line 396
    invoke-interface {p2}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 398
    .local v1, "protection":Ljava/security/KeyStore$ProtectionParameter;
    instance-of v2, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v2, :cond_21

    .line 399
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .local v2, "password":[C
    goto :goto_47

    .line 400
    .end local v2    # "password":[C
    :cond_21
    instance-of v2, v1, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v2, :cond_5c

    .line 401
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    .line 402
    invoke-virtual {v2}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v2

    .line 403
    .local v2, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v3, Ljavax/security/auth/callback/PasswordCallback;

    const-string v4, "Password: "

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 406
    .local v3, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v4, 0x1

    :try_start_35
    new-array v4, v4, [Ljavax/security/auth/callback/Callback;

    aput-object v3, v4, v5

    invoke-interface {v2, v4}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
    :try_end_3c
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_35 .. :try_end_3c} :catch_53

    .line 410
    nop

    .line 411
    invoke-virtual {v3}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v4

    .line 412
    .local v4, "password":[C
    invoke-virtual {v3}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 413
    if-eqz v4, :cond_4b

    .line 417
    .end local v2    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v3    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    move-object v2, v4

    .line 421
    .end local v4    # "password":[C
    .local v2, "password":[C
    :goto_47
    invoke-virtual {p0, v0, v2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 422
    return-void

    .line 414
    .local v2, "handler":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v3    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .restart local v4    # "password":[C
    :cond_4b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "No password provided"

    invoke-direct {v0, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    .end local v4    # "password":[C
    :catch_53
    move-exception v0

    .line 408
    .local v0, "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "Could not obtain password"

    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 418
    .end local v0    # "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    .end local v2    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v3    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    :cond_5c
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "ProtectionParameter must be PasswordProtection or CallbackHandlerProtection"

    invoke-direct {v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    .end local v1    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 384
    return-void
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    if-eqz p1, :cond_4

    .line 639
    const/4 v0, 0x0

    return v0

    .line 637
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input stream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public whitelist test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 547
    if-eqz p3, :cond_f

    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_7

    goto :goto_f

    .line 549
    :cond_7
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "unsupported protection parameter"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_f
    :goto_f
    const/4 v0, 0x0

    .line 552
    .local v0, "pProtect":Ljava/security/KeyStore$PasswordProtection;
    if-eqz p3, :cond_15

    .line 553
    move-object v0, p3

    check-cast v0, Ljava/security/KeyStore$PasswordProtection;

    .line 557
    :cond_15
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    move-object v2, v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 559
    .local v2, "password":[C
    :goto_1e
    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v3, :cond_2d

    .line 560
    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 562
    .local v1, "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 563
    return-void

    .line 564
    .end local v1    # "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_2d
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v3, :cond_43

    .line 565
    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 567
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 569
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 566
    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 570
    return-void

    .line 571
    :cond_43
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_55

    .line 572
    move-object v3, p2

    check-cast v3, Ljava/security/KeyStore$SecretKeyEntry;

    .line 574
    invoke-virtual {v3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v4, v1

    check-cast v4, [Ljava/security/cert/Certificate;

    .line 573
    invoke-virtual {p0, p1, v3, v2, v1}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 577
    return-void

    .line 581
    :cond_55
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported entry type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 582
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api engineSize()I
.end method

.method public abstract whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public whitelist test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
