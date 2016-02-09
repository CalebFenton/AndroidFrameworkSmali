.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "BcKeyStoreSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Std;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Version1;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field private static final KEY_CIPHER:Ljava/lang/String; = "PBEWithSHAAnd3-KeyTripleDES-CBC"

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field private static final KEY_SALT_SIZE:I = 0x14

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final STORE_CIPHER:Ljava/lang/String; = "PBEWithSHAAndTwofish-CBC"

.field private static final STORE_SALT_SIZE:I = 0x14

.field private static final STORE_VERSION:I = 0x2


# instance fields
.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected random:Ljava/security/SecureRandom;

.field protected table:Ljava/util/Hashtable;

.field protected version:I


# direct methods
.method static synthetic -wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 1
    .param p1, "dIn"    # Ljava/io/DataInputStream;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 0
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    #@3
    .line 89
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@a
    .line 91
    new-instance v0, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@11
    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@13
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@18
    .line 99
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    #@1a
    .line 97
    return-void
.end method

.method private decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .locals 8
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 364
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@7
    move-result v6

    #@8
    new-array v1, v6, [B

    #@a
    .line 366
    .local v1, "cEnc":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    #@d
    .line 370
    :try_start_0
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@f
    invoke-interface {v6, v5}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@12
    move-result-object v2

    #@13
    .line 371
    .local v2, "cFact":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@15
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@18
    .line 373
    .local v0, "bIn":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v6

    #@1c
    return-object v6

    #@1d
    .line 380
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v4

    #@1e
    .line 381
    .local v4, "ex":Ljava/security/cert/CertificateException;
    new-instance v6, Ljava/io/IOException;

    #@20
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v6

    #@28
    .line 376
    .end local v4    # "ex":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v3

    #@29
    .line 377
    .local v3, "ex":Ljava/security/NoSuchProviderException;
    new-instance v6, Ljava/io/IOException;

    #@2b
    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v6
.end method

.method private decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 9
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    #@3
    move-result v4

    #@4
    .line 416
    .local v4, "keyType":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 417
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 418
    .local v0, "algorithm":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@f
    move-result v6

    #@10
    new-array v2, v6, [B

    #@12
    .line 421
    .local v2, "enc":[B
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    #@15
    .line 423
    const-string/jumbo v6, "PKCS#8"

    #@18
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_0

    #@1e
    const-string/jumbo v6, "PKCS8"

    #@21
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_1

    #@27
    .line 425
    :cond_0
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@29
    invoke-direct {v5, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@2c
    .line 442
    .local v5, "spec":Ljava/security/spec/KeySpec;
    :goto_0
    packed-switch v4, :pswitch_data_0

    #@2f
    .line 451
    :try_start_0
    new-instance v6, Ljava/io/IOException;

    #@31
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v8, "Key type "

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    const-string/jumbo v8, " not recognised!"

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 455
    :catch_0
    move-exception v1

    #@51
    .line 456
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    #@53
    new-instance v7, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v8, "Exception creating key: "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v6

    #@6f
    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "spec":Ljava/security/spec/KeySpec;
    :cond_1
    const-string/jumbo v6, "X.509"

    #@72
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v6

    #@76
    if-nez v6, :cond_2

    #@78
    const-string/jumbo v6, "X509"

    #@7b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v6

    #@7f
    if-eqz v6, :cond_3

    #@81
    .line 429
    :cond_2
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    #@83
    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@86
    .restart local v5    # "spec":Ljava/security/spec/KeySpec;
    goto :goto_0

    #@87
    .line 431
    .end local v5    # "spec":Ljava/security/spec/KeySpec;
    :cond_3
    const-string/jumbo v6, "RAW"

    #@8a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v6

    #@8e
    if-eqz v6, :cond_4

    #@90
    .line 433
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    #@92
    invoke-direct {v6, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@95
    return-object v6

    #@96
    .line 437
    :cond_4
    new-instance v6, Ljava/io/IOException;

    #@98
    new-instance v7, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v8, "Key format "

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    const-string/jumbo v8, " not recognised!"

    #@ab
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v7

    #@b3
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v6

    #@b7
    .line 445
    .restart local v5    # "spec":Ljava/security/spec/KeySpec;
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@b9
    invoke-interface {v6, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@bc
    move-result-object v6

    #@bd
    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    #@c0
    move-result-object v6

    #@c1
    return-object v6

    #@c2
    .line 447
    :pswitch_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@c4
    invoke-interface {v6, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@c7
    move-result-object v6

    #@c8
    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    #@cb
    move-result-object v6

    #@cc
    return-object v6

    #@cd
    .line 449
    :pswitch_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@cf
    invoke-interface {v6, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@d2
    move-result-object v6

    #@d3
    invoke-virtual {v6, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@d6
    move-result-object v6

    #@d7
    return-object v6

    #@d8
    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    .line 349
    .local v0, "cEnc":[B
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@b
    .line 350
    array-length v2, v0

    #@c
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@f
    .line 351
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 343
    return-void

    #@13
    .line 354
    .end local v0    # "cEnc":[B
    :catch_0
    move-exception v1

    #@14
    .line 355
    .local v1, "ex":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/io/IOException;

    #@16
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2
.end method

.method private encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3
    move-result-object v0

    #@4
    .line 392
    .local v0, "enc":[B
    instance-of v1, p1, Ljava/security/PrivateKey;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 394
    const/4 v1, 0x0

    #@9
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    #@c
    .line 405
    :goto_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@13
    .line 406
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@1a
    .line 407
    array-length v1, v0

    #@1b
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1e
    .line 408
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@21
    .line 388
    return-void

    #@22
    .line 396
    :cond_0
    instance-of v1, p1, Ljava/security/PublicKey;

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 398
    const/4 v1, 0x1

    #@27
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 402
    :cond_1
    const/4 v1, 0x2

    #@2c
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    #@2f
    goto :goto_0
.end method

.method static getBouncyCastleProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 1052
    const-string/jumbo v0, "BC"

    #@3
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1054
    const-string/jumbo v0, "BC"

    #@c
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 1058
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    #@13
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    #@16
    return-object v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

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

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 509
    .local v0, "entry":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    .line 511
    return-void

    #@9
    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 505
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 520
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@9
    .line 522
    .local v1, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v1, :cond_1

    #@b
    .line 524
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x1

    #@10
    if-ne v2, v3, :cond_0

    #@12
    .line 526
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/security/cert/Certificate;

    #@18
    return-object v2

    #@19
    .line 530
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@1c
    move-result-object v0

    #@1d
    .line 532
    .local v0, "chain":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    #@1f
    .line 534
    const/4 v2, 0x0

    #@20
    aget-object v2, v0, v2

    #@22
    return-object v2

    #@23
    .line 539
    .end local v0    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    return-object v4
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 545
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@6
    move-result-object v2

    #@7
    .line 546
    .local v2, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_2

    #@d
    .line 548
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@13
    .line 550
    .local v3, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    instance-of v4, v4, Ljava/security/cert/Certificate;

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 552
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/security/cert/Certificate;

    #@21
    .line 554
    .local v0, "c":Ljava/security/cert/Certificate;
    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 556
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    return-object v4

    #@2c
    .line 561
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@2f
    move-result-object v1

    #@30
    .line 563
    .local v1, "chain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    #@32
    const/4 v4, 0x0

    #@33
    aget-object v4, v1, v4

    #@35
    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_0

    #@3b
    .line 565
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    return-object v4

    #@40
    .line 570
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    .end local v3    # "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    :cond_2
    return-object v5
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 576
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@9
    .line 578
    .local v0, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    #@b
    .line 580
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 583
    :cond_0
    return-object v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 588
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@9
    .line 590
    .local v0, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    #@b
    .line 592
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 595
    :cond_0
    return-object v2
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 603
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@9
    .line 605
    .local v0, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 607
    :cond_0
    return-object v3

    #@13
    .line 610
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject([C)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/security/Key;

    #@19
    return-object v1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 616
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@9
    .line 618
    .local v0, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@e
    move-result v1

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 620
    return v2

    #@12
    .line 623
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 629
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@9
    .line 631
    .local v0, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@e
    move-result v1

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 633
    return v2

    #@12
    .line 636
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 15
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 797
    iget-object v13, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 799
    if-nez p1, :cond_0

    #@7
    .line 801
    return-void

    #@8
    .line 804
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@f
    .line 805
    .local v1, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@12
    move-result v12

    #@13
    .line 807
    .local v12, "version":I
    const/4 v13, 0x2

    #@14
    if-eq v12, v13, :cond_1

    #@16
    .line 809
    if-eqz v12, :cond_1

    #@18
    const/4 v13, 0x1

    #@19
    if-eq v12, v13, :cond_1

    #@1b
    .line 811
    new-instance v13, Ljava/io/IOException;

    #@1d
    const-string/jumbo v14, "Wrong version of key store."

    #@20
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v13

    #@24
    .line 815
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@27
    move-result v11

    #@28
    .line 816
    .local v11, "saltLength":I
    if-gtz v11, :cond_2

    #@2a
    .line 818
    new-instance v13, Ljava/io/IOException;

    #@2c
    const-string/jumbo v14, "Invalid salt detected"

    #@2f
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v13

    #@33
    .line 821
    :cond_2
    new-array v10, v11, [B

    #@35
    .line 823
    .local v10, "salt":[B
    invoke-virtual {v1, v10}, Ljava/io/DataInputStream;->readFully([B)V

    #@38
    .line 825
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@3b
    move-result v3

    #@3c
    .line 830
    .local v3, "iterationCount":I
    new-instance v2, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    #@3e
    new-instance v13, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@40
    invoke-direct {v13}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@43
    invoke-direct {v2, v13}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@46
    .line 831
    .local v2, "hMac":Lcom/android/org/bouncycastle/crypto/macs/HMac;
    if-eqz p2, :cond_4

    #@48
    move-object/from16 v0, p2

    #@4a
    array-length v13, v0

    #@4b
    if-eqz v13, :cond_4

    #@4d
    .line 833
    invoke-static/range {p2 .. p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    #@50
    move-result-object v8

    #@51
    .line 835
    .local v8, "passKey":[B
    new-instance v9, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    #@53
    new-instance v13, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@55
    invoke-direct {v13}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@58
    invoke-direct {v9, v13}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@5b
    .line 836
    .local v9, "pbeGen":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {v9, v8, v10, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@5e
    .line 840
    const/4 v13, 0x2

    #@5f
    if-eq v12, v13, :cond_3

    #@61
    .line 842
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@64
    move-result v13

    #@65
    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@68
    move-result-object v6

    #@69
    .line 849
    .local v6, "macParams":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const/4 v13, 0x0

    #@6a
    invoke-static {v8, v13}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    #@6d
    .line 851
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@70
    .line 852
    new-instance v4, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;

    #@72
    invoke-direct {v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V

    #@75
    .line 854
    .local v4, "mIn":Lcom/android/org/bouncycastle/crypto/io/MacInputStream;
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    #@78
    .line 857
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@7b
    move-result v13

    #@7c
    new-array v5, v13, [B

    #@7e
    .line 858
    .local v5, "mac":[B
    const/4 v13, 0x0

    #@7f
    invoke-virtual {v2, v5, v13}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    #@82
    .line 862
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@85
    move-result v13

    #@86
    new-array v7, v13, [B

    #@88
    .line 863
    .local v7, "oldMac":[B
    invoke-virtual {v1, v7}, Ljava/io/DataInputStream;->readFully([B)V

    #@8b
    .line 865
    invoke-static {v5, v7}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@8e
    move-result v13

    #@8f
    if-nez v13, :cond_5

    #@91
    .line 867
    iget-object v13, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@93
    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    #@96
    .line 868
    new-instance v13, Ljava/io/IOException;

    #@98
    const-string/jumbo v14, "KeyStore integrity check failed."

    #@9b
    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v13

    #@9f
    .line 846
    .end local v4    # "mIn":Lcom/android/org/bouncycastle/crypto/io/MacInputStream;
    .end local v5    # "mac":[B
    .end local v6    # "macParams":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v7    # "oldMac":[B
    :cond_3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@a2
    move-result v13

    #@a3
    mul-int/lit8 v13, v13, 0x8

    #@a5
    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@a8
    move-result-object v6

    #@a9
    .restart local v6    # "macParams":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@aa
    .line 873
    .end local v6    # "macParams":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v8    # "passKey":[B
    .end local v9    # "pbeGen":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    #@ad
    .line 877
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@b0
    move-result v13

    #@b1
    new-array v7, v13, [B

    #@b3
    .line 878
    .restart local v7    # "oldMac":[B
    invoke-virtual {v1, v7}, Ljava/io/DataInputStream;->readFully([B)V

    #@b6
    .line 795
    :cond_5
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@8
    .line 646
    .local v0, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x1

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 648
    new-instance v1, Ljava/security/KeyStoreException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "key store already has a key entry with alias "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 651
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2d
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@2f
    invoke-direct {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    #@32
    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 642
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 670
    instance-of v0, p2, Ljava/security/PrivateKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p4, :cond_0

    #@6
    .line 672
    new-instance v0, Ljava/security/KeyStoreException;

    #@8
    const-string/jumbo v1, "no certificate chain for private key"

    #@b
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 677
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@11
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@13
    move-object v1, p0

    #@14
    move-object v2, p1

    #@15
    move-object v3, p2

    #@16
    move-object v4, p3

    #@17
    move-object v5, p4

    #@18
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    #@1b
    invoke-virtual {v7, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 668
    return-void

    #@1f
    .line 680
    :catch_0
    move-exception v6

    #@20
    .line 681
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/KeyStoreException;

    #@22
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@4
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 658
    return-void
.end method

.method public engineSize()I
    .locals 1

    #@0
    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 12
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 886
    new-instance v0, Ljava/io/DataOutputStream;

    #@3
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@6
    .line 887
    .local v0, "dOut":Ljava/io/DataOutputStream;
    const/16 v9, 0x14

    #@8
    new-array v8, v9, [B

    #@a
    .line 888
    .local v8, "salt":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@c
    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextInt()I

    #@f
    move-result v9

    #@10
    and-int/lit16 v9, v9, 0x3ff

    #@12
    add-int/lit16 v3, v9, 0x400

    #@14
    .line 890
    .local v3, "iterationCount":I
    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@16
    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@19
    .line 892
    iget v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    #@1b
    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1e
    .line 893
    array-length v9, v8

    #@1f
    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@22
    .line 894
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    #@25
    .line 895
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@28
    .line 897
    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    #@2a
    new-instance v9, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@2c
    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@2f
    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@32
    .line 898
    .local v1, "hMac":Lcom/android/org/bouncycastle/crypto/macs/HMac;
    new-instance v4, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;

    #@34
    invoke-direct {v4, v1}, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    #@37
    .line 899
    .local v4, "mOut":Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;
    new-instance v7, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    #@39
    new-instance v9, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@3b
    invoke-direct {v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@3e
    invoke-direct {v7, v9}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@41
    .line 900
    .local v7, "pbeGen":Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    #@44
    move-result-object v6

    #@45
    .line 902
    .local v6, "passKey":[B
    invoke-virtual {v7, v6, v8, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@48
    .line 904
    iget v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    #@4a
    const/4 v10, 0x2

    #@4b
    if-ge v9, v10, :cond_0

    #@4d
    .line 906
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@50
    move-result v9

    #@51
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@58
    .line 913
    :goto_0
    const/4 v2, 0x0

    #@59
    .local v2, "i":I
    :goto_1
    array-length v9, v6

    #@5a
    if-eq v2, v9, :cond_1

    #@5c
    .line 915
    aput-byte v11, v6, v2

    #@5e
    .line 913
    add-int/lit8 v2, v2, 0x1

    #@60
    goto :goto_1

    #@61
    .line 910
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@64
    move-result v9

    #@65
    mul-int/lit8 v9, v9, 0x8

    #@67
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@6a
    move-result-object v9

    #@6b
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@6e
    goto :goto_0

    #@6f
    .line 918
    .restart local v2    # "i":I
    :cond_1
    new-instance v9, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;

    #@71
    invoke-direct {v9, v0, v4}, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    #@74
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    #@77
    .line 920
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    #@7a
    move-result v9

    #@7b
    new-array v5, v9, [B

    #@7d
    .line 922
    .local v5, "mac":[B
    invoke-virtual {v1, v5, v11}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    #@80
    .line 924
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    #@83
    .line 926
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    #@86
    .line 884
    return-void
.end method

.method protected loadStore(Ljava/io/InputStream;)V
    .locals 25
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    new-instance v23, Ljava/io/DataInputStream;

    #@2
    move-object/from16 v0, v23

    #@4
    move-object/from16 v1, p1

    #@6
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@9
    .line 695
    .local v23, "dIn":Ljava/io/DataInputStream;
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->read()I

    #@c
    move-result v19

    #@d
    .line 697
    .local v19, "type":I
    :goto_0
    if-lez v19, :cond_1

    #@f
    .line 699
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 700
    .local v4, "alias":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    #@15
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readLong()J

    #@18
    move-result-wide v2

    #@19
    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1c
    .line 701
    .local v5, "date":Ljava/util/Date;
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    #@1f
    move-result v22

    #@20
    .line 702
    .local v22, "chainLength":I
    const/4 v14, 0x0

    #@21
    .line 704
    .local v14, "chain":[Ljava/security/cert/Certificate;
    if-eqz v22, :cond_0

    #@23
    .line 706
    move/from16 v0, v22

    #@25
    new-array v14, v0, [Ljava/security/cert/Certificate;

    #@27
    .line 708
    .local v14, "chain":[Ljava/security/cert/Certificate;
    const/16 v24, 0x0

    #@29
    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    #@2b
    move/from16 v1, v22

    #@2d
    if-eq v0, v1, :cond_0

    #@2f
    .line 710
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v23

    #@33
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    #@36
    move-result-object v2

    #@37
    aput-object v2, v14, v24

    #@39
    .line 708
    add-int/lit8 v24, v24, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 714
    .end local v14    # "chain":[Ljava/security/cert/Certificate;
    .end local v24    # "i":I
    :cond_0
    packed-switch v19, :pswitch_data_0

    #@3f
    .line 733
    new-instance v2, Ljava/lang/RuntimeException;

    #@41
    const-string/jumbo v3, "Unknown object type in store."

    #@44
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 717
    :pswitch_0
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, v23

    #@4c
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    #@4f
    move-result-object v7

    #@50
    .line 719
    .local v7, "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    #@52
    iget-object v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@54
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@56
    const/4 v6, 0x1

    #@57
    move-object/from16 v3, p0

    #@59
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    #@5c
    invoke-virtual {v8, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 736
    .end local v7    # "cert":Ljava/security/cert/Certificate;
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->read()I

    #@62
    move-result v19

    #@63
    goto :goto_0

    #@64
    .line 722
    :pswitch_1
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, v23

    #@68
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    #@6b
    move-result-object v13

    #@6c
    .line 723
    .local v13, "key":Ljava/security/Key;
    move-object/from16 v0, p0

    #@6e
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@70
    new-instance v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@72
    const/4 v12, 0x2

    #@73
    move-object/from16 v9, p0

    #@75
    move-object v10, v4

    #@76
    move-object v11, v5

    #@77
    invoke-direct/range {v8 .. v14}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    #@7a
    invoke-virtual {v2, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    goto :goto_2

    #@7e
    .line 727
    .end local v13    # "key":Ljava/security/Key;
    :pswitch_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    #@81
    move-result v2

    #@82
    new-array v0, v2, [B

    #@84
    move-object/from16 v20, v0

    #@86
    .line 729
    .local v20, "b":[B
    move-object/from16 v0, v23

    #@88
    move-object/from16 v1, v20

    #@8a
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    #@8d
    .line 730
    move-object/from16 v0, p0

    #@8f
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@91
    new-instance v15, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@93
    move-object/from16 v16, p0

    #@95
    move-object/from16 v17, v4

    #@97
    move-object/from16 v18, v5

    #@99
    move-object/from16 v21, v14

    #@9b
    invoke-direct/range {v15 .. v21}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    #@9e
    invoke-virtual {v2, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    goto :goto_2

    #@a2
    .line 692
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "date":Ljava/util/Date;
    .end local v20    # "b":[B
    .end local v22    # "chainLength":I
    :cond_1
    return-void

    #@a3
    .line 714
    nop

    #@a4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "password"    # [C
    .param p4, "salt"    # [B
    .param p5, "iterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    :try_start_0
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    #@2
    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    #@5
    .line 471
    .local v4, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@7
    invoke-interface {v5, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@a
    move-result-object v3

    #@b
    .line 472
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@d
    invoke-direct {v1, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@10
    .line 474
    .local v1, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@12
    invoke-interface {v5, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@15
    move-result-object v0

    #@16
    .line 476
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v0, p2, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 478
    return-object v0

    #@1e
    .line 481
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :catch_0
    move-exception v2

    #@1f
    .line 482
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "Error initialising store of key store: "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v5
.end method

.method protected saveStore(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 744
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@6
    move-result-object v3

    #@7
    .line 745
    .local v3, "e":Ljava/util/Enumeration;
    new-instance v2, Ljava/io/DataOutputStream;

    #@9
    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c
    .line 747
    .local v2, "dOut":Ljava/io/DataOutputStream;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_2

    #@12
    .line 749
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    #@18
    .line 751
    .local v4, "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@1b
    move-result v6

    #@1c
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write(I)V

    #@1f
    .line 752
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@26
    .line 753
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    #@2d
    move-result-wide v6

    #@2e
    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@31
    .line 755
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    #@34
    move-result-object v1

    #@35
    .line 756
    .local v1, "chain":[Ljava/security/cert/Certificate;
    if-nez v1, :cond_1

    #@37
    .line 758
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3a
    .line 769
    :cond_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    #@3d
    move-result v6

    #@3e
    packed-switch v6, :pswitch_data_0

    #@41
    .line 785
    new-instance v6, Ljava/lang/RuntimeException;

    #@43
    const-string/jumbo v7, "Unknown object type in store."

    #@46
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v6

    #@4a
    .line 762
    :cond_1
    array-length v6, v1

    #@4b
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@4e
    .line 763
    const/4 v5, 0x0

    #@4f
    .local v5, "i":I
    :goto_1
    array-length v6, v1

    #@50
    if-eq v5, v6, :cond_0

    #@52
    .line 765
    aget-object v6, v1, v5

    #@54
    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    #@57
    .line 763
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 772
    .end local v5    # "i":I
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    #@5d
    move-result-object v6

    #@5e
    check-cast v6, Ljava/security/cert/Certificate;

    #@60
    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    #@63
    goto :goto_0

    #@64
    .line 775
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    #@67
    move-result-object v6

    #@68
    check-cast v6, Ljava/security/Key;

    #@6a
    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    #@6d
    goto :goto_0

    #@6e
    .line 779
    :pswitch_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    #@71
    move-result-object v0

    #@72
    check-cast v0, [B

    #@74
    .line 781
    .local v0, "b":[B
    array-length v6, v0

    #@75
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@78
    .line 782
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@7b
    goto :goto_0

    #@7c
    .line 789
    .end local v0    # "b":[B
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    .end local v4    # "entry":Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    :cond_2
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    #@7f
    .line 742
    return-void

    #@80
    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@2
    .line 487
    return-void
.end method
