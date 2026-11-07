.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$Delegate;,
        Ljava/security/Signature$CipherAdapter;
    }
.end annotation


# static fields
.field private static final greylist-max-o RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final greylist-max-o RSA_SIGNATURE:Ljava/lang/String; = "NONEwithRSA"

.field protected static final whitelist test-api SIGN:I = 0x2

.field protected static final whitelist test-api UNINITIALIZED:I = 0x0

.field protected static final whitelist test-api VERIFY:I = 0x3

.field private static final greylist-max-o rsaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o signatureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field greylist-max-o provider:Ljava/security/Provider;

.field protected whitelist test-api state:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetalgorithm(Ljava/security/Signature;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetrsaIds()Ljava/util/List;
    .registers 1

    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisSpi(Ljava/security/Provider$Service;)Z
    .registers 1

    invoke-static {p0}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 320
    const/4 v0, 0x5

    new-array v0, v0, [Lsun/security/jca/ServiceId;

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "Signature"

    const-string v3, "NONEwithRSA"

    invoke-direct {v1, v2, v3}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v3, "Cipher"

    invoke-direct {v1, v3, v2}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "RSA/ECB"

    invoke-direct {v1, v3, v2}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "RSA//PKCS1Padding"

    invoke-direct {v1, v3, v2}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "RSA"

    invoke-direct {v1, v3, v2}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    .line 408
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    .line 409
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 411
    .local v0, "TRUE":Ljava/lang/Boolean;
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.provider.DSA$RawDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.provider.DSA$SHA1withDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "com.sun.net.ssl.internal.ssl.RSASignature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.pkcs11.P11Signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .end local v0    # "TRUE":Ljava/lang/Boolean;
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 309
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 310
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 360
    const-string v0, "NONEwithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 361
    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    invoke-static {v0}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_15

    .line 363
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :cond_f
    const-string v0, "Signature"

    invoke-static {v0, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 365
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 366
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 373
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 374
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-static {v2}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 377
    new-instance v3, Ljava/security/Signature$Delegate;

    invoke-direct {v3, p0}, Ljava/security/Signature$Delegate;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 381
    :cond_31
    :try_start_31
    const-class v3, Ljava/security/SignatureSpi;

    .line 382
    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    .line 383
    .local v3, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v3, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_3b} :catch_3c

    return-object v4

    .line 384
    .end local v3    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_3c
    move-exception v3

    .line 385
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 388
    .end local v2    # "s":Ljava/security/Provider$Service;
    .local v3, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_1f

    .line 389
    :cond_45
    throw v3

    .line 367
    .end local v3    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_46
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Signature not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 493
    const-string v0, "NONEwithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 495
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_34

    .line 498
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 499
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_1b

    .line 503
    invoke-static {v0}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 500
    :cond_1b
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    .end local v0    # "p":Ljava/security/Provider;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_3c
    const-string v0, "Signature"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-class v1, Ljava/security/SignatureSpi;

    .line 508
    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 509
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 543
    const-string v0, "NONEwithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 545
    if-eqz p1, :cond_f

    .line 548
    invoke-static {p1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 546
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_17
    const-string v0, "Signature"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-class v1, Ljava/security/SignatureSpi;

    .line 553
    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 554
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method private static greylist getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    .registers 4
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_d

    .line 395
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 396
    .local v0, "sig":Ljava/security/Signature;
    iput-object p1, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    goto :goto_17

    .line 398
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_d
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/SignatureSpi;

    .line 399
    .local v0, "spi":Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$Delegate;

    invoke-direct {v1, v0, p1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    move-object v0, v1

    .line 401
    .local v0, "sig":Ljava/security/Signature;
    :goto_17
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v1, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 402
    return-object v0
.end method

.method private static greylist-max-o getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;
    .registers 6
    .param p0, "p"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 562
    const-string v0, "Signature"

    const-string v1, "NONEwithRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 563
    .local v0, "s":Ljava/security/Provider$Service;
    if-eqz v0, :cond_15

    .line 564
    const-class v2, Ljava/security/SignatureSpi;

    invoke-static {v0, v2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 565
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v2, v1}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 569
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_15
    :try_start_15
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 570
    .local v2, "c":Ljavax/crypto/Cipher;
    new-instance v3, Ljava/security/Signature$Delegate;

    new-instance v4, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v4, v2}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4, v1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_25} :catch_26

    return-object v3

    .line 571
    .end local v2    # "c":Ljavax/crypto/Cipher;
    :catch_26
    move-exception v1

    .line 574
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such algorithm: NONEwithRSA for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 575
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static greylist-max-o isSpi(Ljava/security/Provider$Service;)Z
    .registers 7
    .param p0, "s"    # Ljava/security/Provider$Service;

    .line 424
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 426
    return v1

    .line 428
    :cond_e
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "className":Ljava/lang/String;
    sget-object v2, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 430
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_3a

    .line 432
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 436
    .local v3, "instance":Ljava/lang/Object;
    instance-of v5, v3, Ljava/security/SignatureSpi;

    if-eqz v5, :cond_2b

    instance-of v5, v3, Ljava/security/Signature;

    if-nez v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v4

    .line 447
    .local v1, "r":Z
    :goto_2c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, v5

    .line 448
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_38

    .line 452
    nop

    .end local v1    # "r":Z
    .end local v3    # "instance":Ljava/lang/Object;
    goto :goto_3a

    .line 449
    :catch_38
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    return v4

    .line 454
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method greylist-max-o chooseFirstProvider()V
    .registers 1

    .line 591
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1092
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 1093
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 962
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o test-api getCurrentSpi()Ljava/security/SignatureSpi;
    .registers 2

    .line 1106
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 1050
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 585
    invoke-virtual {p0}, Ljava/security/Signature;->chooseFirstProvider()V

    .line 586
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api initSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 683
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 684
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 694
    return-void
.end method

.method public final whitelist test-api initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 711
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 721
    return-void
.end method

.method public final whitelist test-api initVerify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 606
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 616
    return-void
.end method

.method public final whitelist test-api initVerify(Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 641
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2f

    .line 645
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 646
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 648
    .local v1, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 649
    const-string v2, "2.5.29.15"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 650
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 652
    .local v2, "keyUsageInfo":[Z
    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_27

    goto :goto_2f

    .line 653
    :cond_27
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Wrong key usage"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 657
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "keyUsageInfo":[Z
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 658
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v0}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 659
    const/4 v1, 0x3

    iput v1, p0, Ljava/security/Signature;->state:I

    .line 669
    return-void
.end method

.method public final whitelist test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1016
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method public final whitelist test-api setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1031
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1032
    return-void
.end method

.method public final whitelist test-api sign([BII)I
    .registers 6
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 779
    if-eqz p1, :cond_2c

    .line 782
    if-ltz p2, :cond_24

    if-ltz p3, :cond_24

    .line 785
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1c

    .line 789
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 793
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0

    .line 790
    :cond_14
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api sign()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 742
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 743
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0

    .line 745
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 973
    const-string v0, ""

    .line 974
    .local v0, "initState":Ljava/lang/String;
    iget v1, p0, Ljava/security/Signature;->state:I

    packed-switch v1, :pswitch_data_2e

    :pswitch_7
    goto :goto_11

    .line 979
    :pswitch_8
    const-string v0, "<initialized for verifying>"

    .line 980
    goto :goto_11

    .line 982
    :pswitch_b
    const-string v0, "<initialized for signing>"

    goto :goto_11

    .line 976
    :pswitch_e
    const-string v0, "<not initialized>"

    .line 977
    nop

    .line 985
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_7
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public final whitelist test-api update(B)V
    .registers 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 880
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 883
    :cond_b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_13
    :goto_13
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 886
    return-void
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 946
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 947
    :cond_b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_13
    :goto_13
    if-eqz p1, :cond_19

    .line 953
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 954
    return-void

    .line 951
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api update([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 898
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/Signature;->update([BII)V

    .line 899
    return-void
.end method

.method public final whitelist test-api update([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 914
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 927
    :cond_b
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_13
    :goto_13
    if-eqz p1, :cond_31

    .line 918
    if-ltz p2, :cond_29

    if-ltz p3, :cond_29

    .line 921
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_21

    .line 925
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 930
    return-void

    .line 922
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "off or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api verify([B)Z
    .registers 4
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 815
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 816
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    move-result v0

    return v0

    .line 818
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api verify([BII)Z
    .registers 6
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 852
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 853
    if-eqz p1, :cond_24

    .line 856
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    .line 860
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_14

    .line 865
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    move-result v0

    return v0

    .line 861
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset or length is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_2c
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
