.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "BcKeyStoreSpi.java"


# instance fields
.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist table:Ljava/util/Hashtable;

.field protected blacklist version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdecodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mencodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    .line 100
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 110
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    return-void
.end method

.method private blacklist decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .registers 4

    .line 373
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 376
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 380
    :try_start_d
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 381
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 383
    invoke-virtual {p0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_1c
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_1c} :catch_28
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 391
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_28
    move-exception p0

    .line 387
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .registers 7

    .line 430
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 431
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    .line 436
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 438
    const-string p1, "PKCS#8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v4, " not recognised!"

    if-nez p1, :cond_67

    const-string p1, "PKCS8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_67

    .line 442
    :cond_28
    const-string p1, "X.509"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "X509"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_61

    .line 446
    :cond_39
    const-string p0, "RAW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 448
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0

    .line 452
    :cond_47
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 444
    :cond_61
    :goto_61
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p1, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_6c

    .line 440
    :cond_67
    :goto_67
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p1, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    :goto_6c
    if-eqz v0, :cond_a2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_99

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7f

    .line 464
    :try_start_74
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, v2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0

    .line 466
    :cond_7f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_99
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 460
    :cond_a2
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_aa} :catch_ab

    return-object p0

    :catch_ab
    move-exception p0

    .line 471
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception creating key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .registers 3

    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    .line 359
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 360
    array-length p1, p0

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 365
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .registers 4

    .line 400
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_32

    .line 407
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1c

    .line 411
    :cond_f
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1c

    :cond_18
    const/4 v0, 0x2

    .line 417
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 420
    :goto_1c
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 421
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 422
    array-length p1, p0

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 423
    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    .line 404
    :cond_32
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unable to store encoding of protected key"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 1

    .line 509
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 2

    .line 515
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 529
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3

    .line 535
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz p0, :cond_22

    .line 539
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 541
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    return-object p0

    .line 545
    :cond_18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 p1, 0x0

    .line 549
    aget-object p0, p0, p1

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 5

    .line 560
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    .line 561
    :cond_6
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 563
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 565
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_2b

    .line 567
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 569
    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 571
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 576
    :cond_2b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 578
    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 580
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 2

    .line 591
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz p0, :cond_f

    .line 595
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 603
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz p0, :cond_f

    .line 607
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 618
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz p0, :cond_19

    .line 620
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    goto :goto_19

    .line 625
    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject([C)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Key;

    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 2

    .line 631
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz p0, :cond_12

    .line 633
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_12

    return p1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 2

    .line 644
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz p0, :cond_12

    .line 646
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_12

    return p1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_9

    goto/16 :goto_8e

    .line 828
    :cond_9
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 829
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_23

    if-eqz p1, :cond_23

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1b

    goto :goto_23

    .line 835
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Wrong version of key store."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 839
    :cond_23
    :goto_23
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_a9

    .line 845
    new-array v2, v2, [B

    .line 847
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 849
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 854
    new-instance v4, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    if-eqz p2, :cond_9c

    .line 855
    array-length v5, p2

    if-eqz v5, :cond_9c

    .line 857
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p2

    .line 859
    new-instance v5, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v6, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 860
    invoke-virtual {v5, p2, v2, v3}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    if-eq p1, v1, :cond_5d

    .line 866
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_67

    .line 870
    :cond_5d
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    :goto_67
    const/4 v1, 0x0

    .line 873
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 875
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 876
    new-instance p1, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;

    invoke-direct {p1, v0, v4}, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 881
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    .line 882
    invoke-virtual {v4, p1, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 886
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p2

    new-array p2, p2, [B

    .line 887
    invoke-virtual {v0, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 889
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_8f

    :goto_8e
    return-void

    .line 891
    :cond_8f
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    .line 892
    new-instance p0, Ljava/io/IOException;

    const-string p1, "KeyStore integrity check failed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 897
    :cond_9c
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 901
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p0

    new-array p0, p0, [B

    .line 902
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    return-void

    .line 842
    :cond_a9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid salt detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 962
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 963
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_15

    if-eqz p1, :cond_15

    if-eq p1, v2, :cond_15

    return v1

    .line 970
    :cond_15
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    new-array p1, p0, [B

    const/16 p1, 0x14

    if-eq p0, p1, :cond_20

    return v1

    :cond_20
    return v2

    .line 960
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input stream must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    if-eqz v0, :cond_29

    .line 661
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_29

    .line 663
    :cond_12
    new-instance p0, Ljava/security/KeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key store already has a key entry with alias "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 666
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 685
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_21

    if-eqz p4, :cond_26

    .line 691
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_21

    .line 694
    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {p3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_21
    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p4

    goto :goto_2e

    .line 689
    :cond_26
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "no certificate chain for private key"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 701
    :goto_2e
    :try_start_2e
    iget-object p0, v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    move-object v8, v5

    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v9, p3

    move-object v7, v2

    move-object v10, v6

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    move-object v2, v7

    invoke-virtual {p0, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception v0

    move-object p0, v0

    .line 705
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api engineSize()I
    .registers 1

    .line 711
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x14

    .line 911
    new-array v1, p1, [B

    .line 912
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0x3ff

    add-int/lit16 v2, v2, 0x400

    .line 914
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 916
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 917
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 918
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 919
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 921
    new-instance p1, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p1, v3}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 922
    new-instance v3, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/crypto/io/MacOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/Mac;)V

    .line 923
    new-instance v4, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 924
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p2

    .line 926
    invoke-virtual {v4, p2, v1, v2}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 928
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_57

    .line 930
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_64

    .line 934
    :cond_57
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_64
    const/4 v1, 0x0

    move v2, v1

    .line 937
    :goto_66
    array-length v4, p2

    if-eq v2, v4, :cond_6e

    .line 939
    aput-byte v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 942
    :cond_6e
    new-instance p2, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {p2, v0, v3}, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    .line 944
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p0

    new-array p0, p0, [B

    .line 946
    invoke-virtual {p1, p0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 948
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 950
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method protected blacklist loadStore(Ljava/io/InputStream;)V
    .registers 15

    .line 718
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 719
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    move v5, p1

    :goto_a
    if-lez v5, :cond_86

    .line 723
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 724
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 725
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-eqz p1, :cond_2f

    .line 730
    new-array v1, p1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    :goto_22
    if-eq v2, p1, :cond_2d

    .line 734
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2d
    :goto_2d
    move-object v7, v1

    goto :goto_31

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2d

    :goto_31
    const/4 p1, 0x1

    if-eq v5, p1, :cond_70

    const/4 p1, 0x2

    if-eq v5, p1, :cond_5e

    const/4 p1, 0x3

    if-eq v5, p1, :cond_46

    const/4 p1, 0x4

    if-ne v5, p1, :cond_3e

    goto :goto_46

    .line 757
    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown object type in store."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 751
    :cond_46
    :goto_46
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v6, p1, [B

    .line 753
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 754
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v2, p0

    move-object v3, v8

    move-object v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    move-object v7, v2

    invoke-virtual {p1, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    :cond_5e
    move-object v12, v7

    move-object v7, p0

    .line 746
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v11

    .line 747
    iget-object p0, v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    const/4 v10, 0x2

    invoke-direct/range {v6 .. v12}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {p0, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    :cond_70
    move-object v7, p0

    .line 741
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    .line 743
    iget-object p0, v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {p0, v8, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :goto_80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v5

    move-object p0, v7

    goto :goto_a

    :cond_86
    return-void
.end method

.method protected blacklist makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .registers 8

    .line 485
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 486
    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p3, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p3

    .line 487
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 489
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 491
    invoke-virtual {p3, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 497
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error initialising store of key store: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist saveStore(Ljava/io/OutputStream;)V
    .registers 7

    .line 768
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 769
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 771
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_85

    .line 773
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 775
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 776
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 779
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 782
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_4a

    .line 786
    :cond_3b
    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 787
    :goto_3f
    array-length v4, v3

    if-eq v2, v4, :cond_4a

    .line 789
    aget-object v4, v3, v2

    invoke-direct {p0, v4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 793
    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_71

    const/4 v3, 0x3

    if-eq v2, v3, :cond_63

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5b

    goto :goto_63

    .line 809
    :cond_5b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown object type in store."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 803
    :cond_63
    :goto_63
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 805
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 806
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_b

    .line 799
    :cond_71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    goto :goto_b

    .line 796
    :cond_7b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;

    invoke-direct {p0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    goto :goto_b

    .line 813
    :cond_85
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public blacklist setRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method
