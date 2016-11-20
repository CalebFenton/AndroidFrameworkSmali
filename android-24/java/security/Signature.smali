.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$CipherAdapter;,
        Ljava/security/Signature$Delegate;
    }
.end annotation


# static fields
.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final RSA_SIGNATURE:Ljava/lang/String; = "NONEwithRSA"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3

.field private static final debug:Lsun/security/util/Debug;

.field private static final rsaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final signatureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static synthetic -get0(Ljava/security/Signature;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Lsun/security/util/Debug;
    .locals 1

    #@0
    sget-object v0, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Ljava/util/List;
    .locals 1

    #@0
    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .locals 1
    .param p0, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    invoke-static {p0}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 218
    const-string/jumbo v1, "jca"

    #@3
    const-string/jumbo v2, "Signature"

    #@6
    invoke-static {v1, v2}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v1

    #@a
    .line 217
    sput-object v1, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    #@c
    .line 274
    const/4 v1, 0x5

    #@d
    new-array v1, v1, [Lsun/security/jca/ServiceId;

    #@f
    .line 275
    new-instance v2, Lsun/security/jca/ServiceId;

    #@11
    const-string/jumbo v3, "Signature"

    #@14
    const-string/jumbo v4, "NONEwithRSA"

    #@17
    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    const/4 v3, 0x0

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 276
    new-instance v2, Lsun/security/jca/ServiceId;

    #@1f
    const-string/jumbo v3, "Cipher"

    #@22
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    #@25
    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    const/4 v3, 0x1

    #@29
    aput-object v2, v1, v3

    #@2b
    .line 277
    new-instance v2, Lsun/security/jca/ServiceId;

    #@2d
    const-string/jumbo v3, "Cipher"

    #@30
    const-string/jumbo v4, "RSA/ECB"

    #@33
    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    const/4 v3, 0x2

    #@37
    aput-object v2, v1, v3

    #@39
    .line 278
    new-instance v2, Lsun/security/jca/ServiceId;

    #@3b
    const-string/jumbo v3, "Cipher"

    #@3e
    const-string/jumbo v4, "RSA//PKCS1Padding"

    #@41
    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@44
    const/4 v3, 0x3

    #@45
    aput-object v2, v1, v3

    #@47
    .line 279
    new-instance v2, Lsun/security/jca/ServiceId;

    #@49
    const-string/jumbo v3, "Cipher"

    #@4c
    const-string/jumbo v4, "RSA"

    #@4f
    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    const/4 v3, 0x4

    #@53
    aput-object v2, v1, v3

    #@55
    .line 273
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@58
    move-result-object v1

    #@59
    sput-object v1, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    #@5b
    .line 358
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@5d
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@60
    sput-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@62
    .line 359
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@64
    .line 361
    .local v0, "TRUE":Ljava/lang/Boolean;
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@66
    const-string/jumbo v2, "sun.security.provider.DSA$RawDSA"

    #@69
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 362
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@6e
    const-string/jumbo v2, "sun.security.provider.DSA$SHA1withDSA"

    #@71
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    .line 363
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@76
    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    #@79
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 364
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@7e
    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    #@81
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 365
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@86
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    #@89
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 366
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@8e
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    #@91
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    .line 367
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@96
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    #@99
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    .line 368
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@9e
    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    #@a1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 369
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@a6
    const-string/jumbo v2, "com.sun.net.ssl.internal.ssl.RSASignature"

    #@a9
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    .line 370
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@ae
    const-string/jumbo v2, "sun.security.pkcs11.P11Signature"

    #@b1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    .line 215
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 251
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 263
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    #@8
    .line 262
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 9
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    const-string/jumbo v6, "NONEwithRSA"

    #@3
    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v6

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 314
    sget-object v6, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    #@b
    invoke-static {v6}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    #@e
    move-result-object v3

    #@f
    .line 318
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v5

    #@13
    .line 319
    .local v5, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v6

    #@17
    if-nez v6, :cond_1

    #@19
    .line 320
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    #@1b
    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    const-string/jumbo v8, " Signature not available"

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    .line 320
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@32
    throw v6

    #@33
    .line 316
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_0
    const-string/jumbo v6, "Signature"

    #@36
    invoke-static {v6, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@39
    move-result-object v3

    #@3a
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    #@3b
    .line 335
    .local v4, "s":Ljava/security/Provider$Service;
    .restart local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :catch_0
    move-exception v0

    #@3c
    .line 336
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    #@3d
    .line 339
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 326
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Ljava/security/Provider$Service;

    #@49
    .line 327
    .restart local v4    # "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_2

    #@4f
    .line 328
    new-instance v6, Ljava/security/Signature$Delegate;

    #@51
    invoke-direct {v6, p0}, Ljava/security/Signature$Delegate;-><init>(Ljava/lang/String;)V

    #@54
    return-object v6

    #@55
    .line 333
    :cond_2
    :try_start_0
    const-class v6, Ljava/security/SignatureSpi;

    #@57
    invoke-static {v4, v6}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@5a
    move-result-object v2

    #@5b
    .line 334
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v2, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    move-result-object v6

    #@5f
    return-object v6

    #@60
    .line 340
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    const-string/jumbo v2, "NONEwithRSA"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_3

    #@9
    .line 441
    if-eqz p1, :cond_0

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_1

    #@11
    .line 442
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "missing provider"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 444
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@1d
    move-result-object v1

    #@1e
    .line 445
    .local v1, "p":Ljava/security/Provider;
    if-nez v1, :cond_2

    #@20
    .line 446
    new-instance v2, Ljava/security/NoSuchProviderException;

    #@22
    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "no such provider: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 446
    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 449
    :cond_2
    invoke-static {v1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    #@3d
    move-result-object v2

    #@3e
    return-object v2

    #@3f
    .line 452
    .end local v1    # "p":Ljava/security/Provider;
    :cond_3
    const-string/jumbo v2, "Signature"

    #@42
    const-class v3, Ljava/security/SignatureSpi;

    #@44
    .line 451
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@47
    move-result-object v0

    #@48
    .line 453
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    #@4b
    move-result-object v2

    #@4c
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    const-string/jumbo v1, "NONEwithRSA"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 489
    if-nez p1, :cond_0

    #@b
    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v2, "missing provider"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 492
    :cond_0
    invoke-static {p1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 495
    :cond_1
    const-string/jumbo v1, "Signature"

    #@1c
    const-class v2, Ljava/security/SignatureSpi;

    #@1e
    .line 494
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@21
    move-result-object v0

    #@22
    .line 496
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method private static getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@2
    instance-of v2, v2, Ljava/security/Signature;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 346
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/security/Signature;

    #@a
    .line 351
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@c
    iput-object v2, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    #@e
    .line 352
    return-object v0

    #@f
    .line 348
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@11
    check-cast v1, Ljava/security/SignatureSpi;

    #@13
    .line 349
    .local v1, "spi":Ljava/security/SignatureSpi;
    new-instance v0, Ljava/security/Signature$Delegate;

    #@15
    invoke-direct {v0, v1, p1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    #@18
    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method private static getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;
    .locals 7
    .param p0, "p"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    const-string/jumbo v4, "Signature"

    #@3
    const-string/jumbo v5, "NONEwithRSA"

    #@6
    invoke-virtual {p0, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@9
    move-result-object v3

    #@a
    .line 505
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_0

    #@c
    .line 506
    const-class v4, Ljava/security/SignatureSpi;

    #@e
    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    #@11
    move-result-object v2

    #@12
    .line 507
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    const-string/jumbo v4, "NONEwithRSA"

    #@15
    invoke-static {v2, v4}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    #@18
    move-result-object v4

    #@19
    return-object v4

    #@1a
    .line 511
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    #@1d
    invoke-static {v4, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    #@20
    move-result-object v0

    #@21
    .line 512
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v4, Ljava/security/Signature$Delegate;

    #@23
    new-instance v5, Ljava/security/Signature$CipherAdapter;

    #@25
    invoke-direct {v5, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V

    #@28
    const-string/jumbo v6, "NONEwithRSA"

    #@2b
    invoke-direct {v4, v5, v6}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    return-object v4

    #@2f
    .line 513
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    #@30
    .line 516
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    #@32
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v6, "no such algorithm: NONEwithRSA for provider "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    .line 517
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4d
    throw v4
.end method

.method private static isSpi(Ljava/security/Provider$Service;)Z
    .locals 8
    .param p0, "s"    # Ljava/security/Provider$Service;

    #@0
    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    const-string/jumbo v6, "Cipher"

    #@7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 376
    const/4 v5, 0x1

    #@e
    return v5

    #@f
    .line 378
    :cond_0
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 379
    .local v0, "className":Ljava/lang/String;
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@15
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Ljava/lang/Boolean;

    #@1b
    .line 380
    .local v4, "result":Ljava/lang/Boolean;
    if-nez v4, :cond_2

    #@1d
    .line 382
    const/4 v5, 0x0

    #@1e
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    .line 386
    .local v2, "instance":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/SignatureSpi;

    #@24
    if-eqz v5, :cond_4

    #@26
    .line 387
    instance-of v5, v2, Ljava/security/Signature;

    #@28
    if-nez v5, :cond_3

    #@2a
    const/4 v3, 0x1

    #@2b
    .line 388
    .local v3, "r":Z
    :goto_0
    sget-object v5, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    #@2d
    if-eqz v5, :cond_1

    #@2f
    if-nez v3, :cond_1

    #@31
    .line 389
    sget-object v5, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Not a SignatureSpi "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4a
    .line 390
    sget-object v5, Ljava/security/Signature;->debug:Lsun/security/util/Debug;

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "Delayed provider selection may not be available for algorithm "

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 391
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    .line 390
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@67
    .line 393
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6a
    move-result-object v4

    #@6b
    .line 394
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    #@6d
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 400
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@73
    move-result v5

    #@74
    return v5

    #@75
    .line 387
    .restart local v2    # "instance":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    #@76
    .restart local v3    # "r":Z
    goto :goto_0

    #@77
    .line 386
    .end local v3    # "r":Z
    :cond_4
    const/4 v3, 0x0

    #@78
    .restart local v3    # "r":Z
    goto :goto_0

    #@79
    .line 395
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :catch_0
    move-exception v1

    #@7a
    .line 397
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    #@7b
    return v5
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 0

    #@0
    .prologue
    .line 531
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 988
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 989
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 991
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@b
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@e
    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 1

    #@0
    .prologue
    .line 1001
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 976
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    #@0
    .prologue
    .line 946
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 527
    invoke-virtual {p0}, Ljava/security/Signature;->chooseFirstProvider()V

    #@3
    .line 528
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    #@5
    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    #@3
    .line 608
    const/4 v0, 0x2

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 606
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 625
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@3
    .line 626
    const/4 v0, 0x2

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 624
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    #@3
    .line 548
    const/4 v0, 0x3

    #@4
    iput v0, p0, Ljava/security/Signature;->state:I

    #@6
    .line 546
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 574
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 578
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@7
    .line 579
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    #@a
    move-result-object v1

    #@b
    .line 581
    .local v1, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 590
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@16
    move-result-object v3

    #@17
    .line 591
    .local v3, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v3}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    #@1a
    .line 592
    const/4 v4, 0x3

    #@1b
    iput v4, p0, Ljava/security/Signature;->state:I

    #@1d
    .line 570
    return-void

    #@1e
    .line 582
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v4, "2.5.29.15"

    #@21
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    .line 581
    if-eqz v4, :cond_0

    #@27
    .line 583
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@2a
    move-result-object v2

    #@2b
    .line 585
    .local v2, "keyUsageInfo":[Z
    if-eqz v2, :cond_0

    #@2d
    const/4 v4, 0x0

    #@2e
    aget-boolean v4, v2, v4

    #@30
    if-nez v4, :cond_0

    #@32
    .line 586
    new-instance v4, Ljava/security/InvalidKeyException;

    #@34
    const-string/jumbo v5, "Wrong key usage"

    #@37
    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v4
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 912
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    #@3
    .line 911
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 927
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@3
    .line 926
    return-void
.end method

.method public final sign([BII)I
    .locals 2
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    if-nez p1, :cond_0

    #@2
    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "No output buffer given"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 688
    :cond_0
    array-length v0, p1

    #@c
    sub-int/2addr v0, p2

    #@d
    if-ge v0, p3, :cond_1

    #@f
    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 690
    const-string/jumbo v1, "Output buffer too small for specified offset and length"

    #@14
    .line 689
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 692
    :cond_1
    iget v0, p0, Ljava/security/Signature;->state:I

    #@1a
    const/4 v1, 0x2

    #@1b
    if-eq v0, v1, :cond_2

    #@1d
    .line 693
    new-instance v0, Ljava/security/SignatureException;

    #@1f
    const-string/jumbo v1, "object not initialized for signing"

    #@22
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 696
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public final sign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 648
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 649
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 651
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    #@c
    const-string/jumbo v1, "object not initialized for signing"

    #@f
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 869
    const-string/jumbo v0, ""

    #@3
    .line 870
    .local v0, "initState":Ljava/lang/String;
    iget v1, p0, Ljava/security/Signature;->state:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 881
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Signature object: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 872
    :pswitch_1
    const-string/jumbo v0, "<not initialized>"

    #@28
    goto :goto_0

    #@29
    .line 875
    :pswitch_2
    const-string/jumbo v0, "<initialized for verifying>"

    #@2c
    goto :goto_0

    #@2d
    .line 878
    :pswitch_3
    const-string/jumbo v0, "<initialized for signing>"

    #@30
    goto :goto_0

    #@31
    .line 870
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final update(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 776
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljava/security/Signature;->state:I

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 777
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    #@d
    .line 775
    return-void

    #@e
    .line 779
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    #@10
    const-string/jumbo v1, "object not initialized for signature or verification"

    #@13
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 842
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Ljava/security/Signature;->state:I

    #@7
    const/4 v1, 0x3

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 843
    new-instance v0, Ljava/security/SignatureException;

    #@c
    const-string/jumbo v1, "object not initialized for signature or verification"

    #@f
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 846
    :cond_0
    if-nez p1, :cond_1

    #@15
    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 849
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@1e
    .line 841
    return-void
.end method

.method public final update([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/security/Signature;->update([BII)V

    #@5
    .line 793
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 812
    if-nez p1, :cond_0

    #@2
    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "data == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 816
    :cond_0
    if-ltz p2, :cond_1

    #@d
    if-gez p3, :cond_2

    #@f
    .line 817
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v0

    #@15
    .line 816
    :cond_2
    add-int v0, p2, p3

    #@17
    array-length v1, p1

    #@18
    if-gt v0, v1, :cond_1

    #@1a
    .line 820
    iget v0, p0, Ljava/security/Signature;->state:I

    #@1c
    const/4 v1, 0x2

    #@1d
    if-eq v0, v1, :cond_3

    #@1f
    iget v0, p0, Ljava/security/Signature;->state:I

    #@21
    const/4 v1, 0x3

    #@22
    if-ne v0, v1, :cond_4

    #@24
    .line 821
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    #@27
    .line 809
    return-void

    #@28
    .line 823
    :cond_4
    new-instance v0, Ljava/security/SignatureException;

    #@2a
    const-string/jumbo v1, "object not initialized for signature or verification"

    #@2d
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public final verify([B)Z
    .locals 2
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 719
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 721
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    #@c
    const-string/jumbo v1, "object not initialized for verification"

    #@f
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public final verify([BII)Z
    .locals 2
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 755
    iget v0, p0, Ljava/security/Signature;->state:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_2

    #@5
    .line 756
    if-eqz p1, :cond_0

    #@7
    if-gez p2, :cond_1

    #@9
    .line 758
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Bad arguments"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 756
    :cond_1
    if-ltz p3, :cond_0

    #@14
    .line 757
    array-length v0, p1

    #@15
    sub-int/2addr v0, p2

    #@16
    if-gt p3, v0, :cond_0

    #@18
    .line 761
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 763
    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    #@1f
    const-string/jumbo v1, "object not initialized for verification"

    #@22
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method
