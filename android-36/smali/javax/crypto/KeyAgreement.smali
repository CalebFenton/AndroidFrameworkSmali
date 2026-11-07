.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final greylist-max-o I_NO_PARAMS:I = 0x1

.field private static final greylist-max-o I_PARAMS:I = 0x2

.field private static greylist-max-o warnCount:I


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o spi:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 310
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/KeyAgreement;->warnCount:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyAgreeSpi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 144
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 145
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method private greylist-max-o chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 15
    .param p1, "initType"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 389
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_3
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 393
    iget-object v3, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b7

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "initType":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    .local v4, "initType":I
    .local v5, "key":Ljava/security/Key;
    .local v6, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v7, "random":Ljava/security/SecureRandom;
    :try_start_10
    invoke-direct/range {v2 .. v7}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 394
    monitor-exit v1

    return-void

    .line 392
    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .end local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "random":Ljava/security/SecureRandom;
    .restart local p1    # "initType":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p4    # "random":Ljava/security/SecureRandom;
    :cond_15
    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 396
    .end local p1    # "initType":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .restart local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v7    # "random":Ljava/security/SecureRandom;
    const/4 p1, 0x0

    .line 398
    .local p1, "lastException":Ljava/lang/Exception;
    const-string p2, "KeyAgreement"

    iget-object p3, v2, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {p2, p3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_79

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/Provider$Service;

    .line 400
    .local p3, "s":Ljava/security/Provider$Service;
    invoke-virtual {p3, v5}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3a

    .line 401
    goto :goto_27

    .line 403
    :cond_3a
    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object p4

    invoke-static {p4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result p4
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_c0

    if-nez p4, :cond_45

    .line 404
    goto :goto_27

    .line 407
    :cond_45
    const/4 p4, 0x0

    :try_start_46
    invoke-virtual {p3, p4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/crypto/KeyAgreementSpi;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4c} :catch_73
    .catchall {:try_start_46 .. :try_end_4c} :catchall_c0

    .line 408
    .local p4, "spi":Ljavax/crypto/KeyAgreementSpi;
    move-object v8, v6

    move-object v9, v7

    move v6, v4

    move-object v7, v5

    move-object v5, p4

    move-object v4, v2

    .end local v4    # "initType":I
    .end local p4    # "spi":Ljavax/crypto/KeyAgreementSpi;
    .local v5, "spi":Ljavax/crypto/KeyAgreementSpi;
    .local v6, "initType":I
    .local v7, "key":Ljava/security/Key;
    .local v8, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v9, "random":Ljava/security/SecureRandom;
    :try_start_52
    invoke-direct/range {v4 .. v9}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_6b
    .catchall {:try_start_52 .. :try_end_55} :catchall_63

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    .line 409
    .end local v8    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v9    # "random":Ljava/security/SecureRandom;
    .restart local v4    # "initType":I
    .local v5, "key":Ljava/security/Key;
    .local v6, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v7, "random":Ljava/security/SecureRandom;
    .restart local p4    # "spi":Ljavax/crypto/KeyAgreementSpi;
    :try_start_59
    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    iput-object v0, v2, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 410
    iput-object p4, v2, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_61} :catch_73
    .catchall {:try_start_59 .. :try_end_61} :catchall_c0

    .line 416
    :try_start_61
    monitor-exit v1

    return-void

    .line 440
    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .end local p1    # "lastException":Ljava/lang/Exception;
    .end local p3    # "s":Ljava/security/Provider$Service;
    .end local p4    # "spi":Ljavax/crypto/KeyAgreementSpi;
    .local v6, "initType":I
    .local v7, "key":Ljava/security/Key;
    .restart local v8    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v9    # "random":Ljava/security/SecureRandom;
    :catchall_63
    move-exception v0

    move-object v2, v4

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object p1, v0

    .end local v8    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v9    # "random":Ljava/security/SecureRandom;
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .local v6, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v7, "random":Ljava/security/SecureRandom;
    goto :goto_be

    .line 417
    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .local v6, "initType":I
    .local v7, "key":Ljava/security/Key;
    .restart local v8    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v9    # "random":Ljava/security/SecureRandom;
    .restart local p1    # "lastException":Ljava/lang/Exception;
    .restart local p3    # "s":Ljava/security/Provider$Service;
    :catch_6b
    move-exception v0

    move-object v2, v4

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object p4, v0

    .end local v8    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v9    # "random":Ljava/security/SecureRandom;
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .local v6, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local v7, "random":Ljava/security/SecureRandom;
    goto :goto_75

    :catch_73
    move-exception v0

    move-object p4, v0

    .line 421
    .local p4, "e":Ljava/lang/Exception;
    :goto_75
    if-nez p1, :cond_78

    .line 422
    move-object p1, p4

    .line 425
    .end local p3    # "s":Ljava/security/Provider$Service;
    .end local p4    # "e":Ljava/lang/Exception;
    :cond_78
    goto :goto_27

    .line 427
    :cond_79
    instance-of p2, p1, Ljava/security/InvalidKeyException;

    if-nez p2, :cond_b3

    .line 430
    instance-of p2, p1, Ljava/security/InvalidAlgorithmParameterException;

    if-nez p2, :cond_af

    .line 433
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_ab

    .line 436
    if-eqz v5, :cond_90

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_92

    :cond_90
    const-string p2, "(null)"

    .line 437
    .local p2, "kName":Ljava/lang/String;
    :goto_92
    new-instance p3, Ljava/security/InvalidKeyException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No installed provider supports this key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .end local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "random":Ljava/security/SecureRandom;
    .end local p0    # "this":Ljavax/crypto/KeyAgreement;
    throw p3

    .line 434
    .end local p2    # "kName":Ljava/lang/String;
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .restart local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v7    # "random":Ljava/security/SecureRandom;
    .restart local p0    # "this":Ljavax/crypto/KeyAgreement;
    :cond_ab
    move-object p2, p1

    check-cast p2, Ljava/lang/RuntimeException;

    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .end local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "random":Ljava/security/SecureRandom;
    .end local p0    # "this":Ljavax/crypto/KeyAgreement;
    throw p2

    .line 431
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .restart local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v7    # "random":Ljava/security/SecureRandom;
    .restart local p0    # "this":Ljavax/crypto/KeyAgreement;
    :cond_af
    move-object p2, p1

    check-cast p2, Ljava/security/InvalidAlgorithmParameterException;

    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .end local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "random":Ljava/security/SecureRandom;
    .end local p0    # "this":Ljavax/crypto/KeyAgreement;
    throw p2

    .line 428
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .restart local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v7    # "random":Ljava/security/SecureRandom;
    .restart local p0    # "this":Ljavax/crypto/KeyAgreement;
    :cond_b3
    move-object p2, p1

    check-cast p2, Ljava/security/InvalidKeyException;

    .end local v4    # "initType":I
    .end local v5    # "key":Ljava/security/Key;
    .end local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "random":Ljava/security/SecureRandom;
    .end local p0    # "this":Ljavax/crypto/KeyAgreement;
    throw p2

    .line 440
    .restart local p0    # "this":Ljavax/crypto/KeyAgreement;
    .local p1, "initType":I
    .local p2, "key":Ljava/security/Key;
    .local p3, "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local p4, "random":Ljava/security/SecureRandom;
    :catchall_b7
    move-exception v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p1, v0

    .end local p1    # "initType":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p4    # "random":Ljava/security/SecureRandom;
    .restart local v4    # "initType":I
    .restart local v5    # "key":Ljava/security/Key;
    .restart local v6    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v7    # "random":Ljava/security/SecureRandom;
    :goto_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_61 .. :try_end_bf} :catchall_c0

    throw p1

    :catchall_c0
    move-exception v0

    move-object p1, v0

    goto :goto_be
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 201
    nop

    .line 202
    const-string v0, "KeyAgreement"

    invoke-static {v0, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 207
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 208
    goto :goto_b

    .line 212
    :cond_22
    new-instance v3, Ljavax/crypto/KeyAgreement;

    invoke-direct {v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 214
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_28
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 260
    const-string v0, "KeyAgreement"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-class v1, Ljavax/crypto/KeyAgreementSpi;

    .line 262
    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 263
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/KeyAgreement;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/KeyAgreementSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 302
    const-string v0, "KeyAgreement"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-class v1, Ljavax/crypto/KeyAgreementSpi;

    .line 304
    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 305
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/KeyAgreement;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/KeyAgreementSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist getProviderName()Ljava/lang/String;
    .registers 2

    .line 551
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    if-nez v0, :cond_7

    const-string v0, "(no provider)"

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method private greylist-max-o implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "spi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 380
    invoke-virtual {p1, p3, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_a

    .line 382
    :cond_7
    invoke-virtual {p1, p3, p4, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 384
    :goto_a
    return-void
.end method


# virtual methods
.method greylist-max-o chooseFirstProvider()V
    .registers 7

    .line 318
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_5

    .line 319
    return-void

    .line 321
    :cond_5
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_8
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v1, :cond_e

    .line 323
    monitor-exit v0

    return-void

    .line 340
    :cond_e
    const/4 v1, 0x0

    .line 342
    .local v1, "lastException":Ljava/lang/Exception;
    const-string v2, "KeyAgreement"

    iget-object v3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 343
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_5a

    if-nez v4, :cond_32

    .line 344
    goto :goto_1b

    .line 347
    :cond_32
    const/4 v4, 0x0

    :try_start_33
    invoke-virtual {v3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 348
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/crypto/KeyAgreementSpi;

    if-nez v5, :cond_3c

    .line 349
    goto :goto_1b

    .line 351
    :cond_3c
    move-object v5, v4

    check-cast v5, Ljavax/crypto/KeyAgreementSpi;

    iput-object v5, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 352
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_47} :catch_49
    .catchall {:try_start_33 .. :try_end_47} :catchall_5a

    .line 359
    :try_start_47
    monitor-exit v0

    return-void

    .line 360
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_49
    move-exception v4

    .line 361
    .local v4, "e":Ljava/lang/Exception;
    move-object v1, v4

    .line 363
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1b

    .line 364
    :cond_4c
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Could not construct KeyAgreementSpi instance"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_58

    .line 367
    invoke-virtual {v2, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 369
    :cond_58
    nop

    .end local p0    # "this":Ljavax/crypto/KeyAgreement;
    throw v2

    .line 370
    .end local v1    # "lastException":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/security/ProviderException;
    .restart local p0    # "this":Ljavax/crypto/KeyAgreement;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public final whitelist test-api doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 612
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateSecret([BI)I
    .registers 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 663
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 693
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api generateSecret()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 631
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getCurrentSpi()Ljavax/crypto/KeyAgreementSpi;
    .registers 2

    .line 704
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 449
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 450
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(Ljava/security/Key;)V
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 474
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 475
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_a

    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 502
    :cond_a
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_16

    .line 505
    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_12
    invoke-direct {p0, v0, p1, v1, p2}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_15} :catch_17

    .line 509
    nop

    .line 519
    :goto_16
    return-void

    .line 506
    :catch_17
    move-exception v0

    .line 508
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 547
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 548
    return-void
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_a

    .line 575
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_e

    .line 577
    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 587
    :goto_e
    return-void
.end method
