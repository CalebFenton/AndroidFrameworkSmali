.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "BcKeyStoreSpi.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Version1;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Std;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
    }
.end annotation


# static fields
.field static final blacklist CERTIFICATE:I = 0x1

.field static final blacklist KEY:I = 0x2

.field private static final blacklist KEY_CIPHER:Ljava/lang/String; = "PBEWithSHAAnd3-KeyTripleDES-CBC"

.field static final blacklist KEY_PRIVATE:I = 0x0

.field static final blacklist KEY_PUBLIC:I = 0x1

.field private static final blacklist KEY_SALT_SIZE:I = 0x14

.field static final blacklist KEY_SECRET:I = 0x2

.field private static final blacklist MIN_ITERATIONS:I = 0x400

.field static final blacklist NULL:I = 0x0

.field static final blacklist SEALED:I = 0x4

.field static final blacklist SECRET:I = 0x3

.field private static final blacklist STORE_CIPHER:Ljava/lang/String; = "PBEWithSHAAndTwofish-CBC"

.field private static final blacklist STORE_SALT_SIZE:I = 0x14

.field private static final blacklist STORE_VERSION:I = 0x2


# instance fields
.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist table:Ljava/util/Hashtable;

.field protected blacklist version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mencodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "version"    # I

    .line 109
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    .line 100
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 110
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    .line 111
    return-void
.end method

.method private blacklist decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .registers 7
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 376
    .local v1, "cEnc":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 380
    :try_start_d
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 381
    .local v2, "cFact":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 383
    .local v3, "bIn":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_1c
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_1c} :catch_28
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_1c} :catch_1d

    return-object v4

    .line 389
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local v3    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_1d
    move-exception v2

    .line 391
    .local v2, "ex":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    .end local v2    # "ex":Ljava/security/cert/CertificateException;
    :catch_28
    move-exception v2

    .line 387
    .local v2, "ex":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .registers 11
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 431
    .local v0, "keyType":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "algorithm":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    .line 436
    .local v3, "enc":[B
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 438
    const-string v4, "PKCS#8"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " not recognised!"

    if-nez v4, :cond_6a

    const-string v4, "PKCS8"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_6a

    .line 442
    :cond_28
    const-string v4, "X.509"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    const-string v4, "X509"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_64

    .line 446
    :cond_39
    const-string v4, "RAW"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 448
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 452
    :cond_47
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    :cond_64
    :goto_64
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .local v4, "spec":Ljava/security/spec/KeySpec;
    goto :goto_6f

    .line 440
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    :cond_6a
    :goto_6a
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 457
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    :goto_6f
    packed-switch v0, :pswitch_data_cc

    .line 466
    :try_start_72
    new-instance v6, Ljava/io/IOException;

    goto :goto_94

    .line 464
    :pswitch_75
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    return-object v5

    .line 462
    :pswitch_80
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5

    .line 460
    :pswitch_89
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v5

    return-object v5

    .line 469
    :catch_92
    move-exception v5

    goto :goto_af

    .line 466
    :goto_94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyType":I
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "enc":[B
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .end local p1    # "dIn":Ljava/io/DataInputStream;
    throw v6
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_af} :catch_92

    .line 471
    .restart local v0    # "keyType":I
    .restart local v1    # "format":Ljava/lang/String;
    .restart local v2    # "algorithm":Ljava/lang/String;
    .restart local v3    # "enc":[B
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    .local v5, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .restart local p1    # "dIn":Ljava/io/DataInputStream;
    :goto_af
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception creating key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_89
        :pswitch_80
        :pswitch_75
    .end packed-switch
.end method

.method private blacklist encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 359
    .local v0, "cEnc":[B
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 360
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 361
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_12} :catch_14

    .line 366
    .end local v0    # "cEnc":[B
    nop

    .line 367
    return-void

    .line 363
    :catch_14
    move-exception v0

    .line 365
    .local v0, "ex":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 402
    .local v0, "enc":[B
    if-eqz v0, :cond_32

    .line 407
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_f

    .line 409
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1c

    .line 411
    :cond_f
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_18

    .line 413
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1c

    .line 417
    :cond_18
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 420
    :goto_1c
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 421
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 422
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 423
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 424
    return-void

    .line 404
    :cond_32
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "unable to store encoding of protected key"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "entry":Ljava/lang/Object;
    if-nez v0, :cond_9

    .line 526
    return-void

    .line 529
    :cond_9
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 537
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_22

    .line 539
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 541
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    return-object v1

    .line 545
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 547
    .local v1, "chain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_22

    .line 549
    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2

    .line 554
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 560
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 561
    .local v0, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 563
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 565
    .local v1, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_2c

    .line 567
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 569
    .local v2, "c":Ljava/security/cert/Certificate;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 571
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 573
    .end local v2    # "c":Ljava/security/cert/Certificate;
    :cond_2b
    goto :goto_40

    .line 576
    :cond_2c
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 578
    .local v2, "chain":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_40

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 580
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 583
    .end local v1    # "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_40
    :goto_40
    goto :goto_6

    .line 585
    :cond_41
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 593
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_f

    .line 595
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    .line 598
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 605
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_f

    .line 607
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 610
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 620
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_19

    .line 625
    :cond_12
    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject([C)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    return-object v1

    .line 622
    :cond_19
    :goto_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 633
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 635
    return v2

    .line 638
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 646
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 648
    return v2

    .line 651
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 19
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 823
    if-nez v1, :cond_e

    .line 825
    return-void

    .line 828
    :cond_e
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 829
    .local v3, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 831
    .local v4, "version":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_28

    .line 833
    if-eqz v4, :cond_28

    const/4 v6, 0x1

    if-ne v4, v6, :cond_20

    goto :goto_28

    .line 835
    :cond_20
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Wrong version of key store."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 839
    :cond_28
    :goto_28
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 840
    .local v6, "saltLength":I
    if-lez v6, :cond_ae

    .line 845
    new-array v7, v6, [B

    .line 847
    .local v7, "salt":[B
    invoke-virtual {v3, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 849
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 854
    .local v8, "iterationCount":I
    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 855
    .local v9, "hMac":Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
    if-eqz v2, :cond_a1

    array-length v10, v2

    if-eqz v10, :cond_a1

    .line 857
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v10

    .line 859
    .local v10, "passKey":[B
    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 860
    .local v11, "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {v11, v10, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 864
    if-eq v4, v5, :cond_62

    .line 866
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v5

    invoke-virtual {v11, v5}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .local v5, "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_6c

    .line 870
    .end local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_62
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v11, v5}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 873
    .restart local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_6c
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 875
    invoke-virtual {v9, v5}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 876
    new-instance v13, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;

    invoke-direct {v13, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 878
    .local v13, "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 881
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v14

    new-array v14, v14, [B

    .line 882
    .local v14, "mac":[B
    invoke-virtual {v9, v14, v12}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 886
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v12

    new-array v12, v12, [B

    .line 887
    .local v12, "oldMac":[B
    invoke-virtual {v3, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 889
    invoke-static {v14, v12}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v15

    if-eqz v15, :cond_94

    .line 894
    .end local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local v10    # "passKey":[B
    .end local v11    # "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v12    # "oldMac":[B
    .end local v13    # "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    .end local v14    # "mac":[B
    goto :goto_ad

    .line 891
    .restart local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v10    # "passKey":[B
    .restart local v11    # "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .restart local v12    # "oldMac":[B
    .restart local v13    # "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    .restart local v14    # "mac":[B
    :cond_94
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->clear()V

    .line 892
    new-instance v15, Ljava/io/IOException;

    const-string v1, "KeyStore integrity check failed."

    invoke-direct {v15, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 897
    .end local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local v10    # "passKey":[B
    .end local v11    # "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v12    # "oldMac":[B
    .end local v13    # "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    .end local v14    # "mac":[B
    :cond_a1
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 901
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    .line 902
    .local v1, "oldMac":[B
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 904
    .end local v1    # "oldMac":[B
    :goto_ad
    return-void

    .line 842
    .end local v7    # "salt":[B
    .end local v8    # "iterationCount":I
    .end local v9    # "hMac":Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
    :cond_ae
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Invalid salt detected"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    if-eqz p1, :cond_22

    .line 962
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 963
    .local v0, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 965
    .local v1, "version":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_15

    .line 966
    if-eqz v1, :cond_15

    if-eq v1, v4, :cond_15

    .line 967
    return v3

    .line 970
    :cond_15
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    .line 972
    .local v2, "salt":[B
    array-length v5, v2

    const/16 v6, 0x14

    if-eq v5, v6, :cond_21

    .line 973
    return v3

    .line 976
    :cond_21
    return v4

    .line 960
    .end local v0    # "dIn":Ljava/io/DataInputStream;
    .end local v1    # "version":I
    .end local v2    # "salt":[B
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input stream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 661
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_2b

    .line 663
    :cond_12
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key store already has a key entry with alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 685
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_29

    .line 687
    if-eqz p4, :cond_21

    .line 691
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_29

    .line 694
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    return-void

    .line 689
    :cond_21
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "no certificate chain for private key"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_29
    :try_start_29
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {v6, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_3a

    .line 706
    nop

    .line 707
    return-void

    .line 703
    :catch_3a
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-void
.end method

.method public whitelist test-api engineSize()I
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 13
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 911
    .local v0, "dOut":Ljava/io/DataOutputStream;
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 912
    .local v1, "salt":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0x3ff

    add-int/lit16 v2, v2, 0x400

    .line 914
    .local v2, "iterationCount":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 916
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 917
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 918
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 919
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 921
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 922
    .local v3, "hMac":Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 923
    .local v4, "mOut":Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 924
    .local v5, "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v6

    .line 926
    .local v6, "passKey":[B
    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 928
    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_58

    .line 930
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_65

    .line 934
    :cond_58
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 937
    :goto_65
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_66
    array-length v8, v6

    const/4 v9, 0x0

    if-eq v7, v8, :cond_6f

    .line 939
    aput-byte v9, v6, v7

    .line 937
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 942
    .end local v7    # "i":I
    :cond_6f
    new-instance v7, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v7, v0, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    .line 944
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v7, v7, [B

    .line 946
    .local v7, "mac":[B
    invoke-virtual {v3, v7, v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 948
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 950
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 951
    return-void
.end method

.method protected blacklist loadStore(Ljava/io/InputStream;)V
    .registers 16
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 719
    .local v0, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    move v6, v1

    .line 721
    .local v6, "type":I
    :goto_a
    if-lez v6, :cond_7e

    .line 723
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 724
    .local v9, "alias":Ljava/lang/String;
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v10, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 725
    .local v10, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 726
    .local v1, "chainLength":I
    const/4 v2, 0x0

    .line 728
    .local v2, "chain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_30

    .line 730
    new-array v2, v1, [Ljava/security/cert/Certificate;

    .line 732
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-eq v3, v1, :cond_2e

    .line 734
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    aput-object v4, v2, v3

    .line 732
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_2e
    move-object v8, v2

    goto :goto_31

    .line 728
    .end local v3    # "i":I
    :cond_30
    move-object v8, v2

    .line 738
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    .local v8, "chain":[Ljava/security/cert/Certificate;
    :goto_31
    packed-switch v6, :pswitch_data_80

    .line 757
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown object type in store."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    :pswitch_3c
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v7, v2, [B

    .line 753
    .local v7, "b":[B
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 754
    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v3, p0

    move-object v4, v9

    move-object v5, v10

    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "date":Ljava/util/Date;
    .local v4, "alias":Ljava/lang/String;
    .local v5, "date":Ljava/util/Date;
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    move-object v13, v8

    move-object v8, v3

    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "date":Ljava/util/Date;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .restart local v9    # "alias":Ljava/lang/String;
    .restart local v10    # "date":Ljava/util/Date;
    .local v13, "chain":[Ljava/security/cert/Certificate;
    invoke-virtual {v11, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    goto :goto_79

    .line 746
    .end local v7    # "b":[B
    .end local v13    # "chain":[Ljava/security/cert/Certificate;
    .restart local v8    # "chain":[Ljava/security/cert/Certificate;
    :pswitch_55
    move-object v13, v8

    move-object v8, p0

    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .restart local v13    # "chain":[Ljava/security/cert/Certificate;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v12

    .line 747
    .local v12, "key":Ljava/security/Key;
    iget-object v2, v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v7, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    const/4 v11, 0x2

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    goto :goto_79

    .line 741
    .end local v12    # "key":Ljava/security/Key;
    .end local v13    # "chain":[Ljava/security/cert/Certificate;
    .restart local v8    # "chain":[Ljava/security/cert/Certificate;
    :pswitch_67
    move-object v13, v8

    move-object v8, p0

    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .restart local v13    # "chain":[Ljava/security/cert/Certificate;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    .line 743
    .local v12, "cert":Ljava/security/cert/Certificate;
    iget-object v2, v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v7, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    const/4 v11, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {v2, v9, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    nop

    .line 760
    .end local v12    # "cert":Ljava/security/cert/Certificate;
    :goto_79
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 761
    .end local v1    # "chainLength":I
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "date":Ljava/util/Date;
    .end local v13    # "chain":[Ljava/security/cert/Certificate;
    goto :goto_a

    .line 762
    :cond_7e
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_67
        :pswitch_55
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method protected blacklist makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .registers 11
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

    .line 485
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 486
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 487
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v2, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 489
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v3, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 491
    .local v3, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v3, p2, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 493
    return-object v3

    .line 495
    .end local v0    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v1    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    :catch_1e
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error initialising store of key store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist saveStore(Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 769
    .local v0, "e":Ljava/util/Enumeration;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 771
    .local v1, "dOut":Ljava/io/DataOutputStream;
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7d

    .line 773
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 775
    .local v2, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 776
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 779
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 780
    .local v4, "chain":[Ljava/security/cert/Certificate;
    if-nez v4, :cond_3b

    .line 782
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_4b

    .line 786
    :cond_3b
    array-length v3, v4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 787
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    array-length v5, v4

    if-eq v3, v5, :cond_4b

    .line 789
    aget-object v5, v4, v3

    invoke-direct {p0, v5, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 787
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 793
    .end local v3    # "i":I
    :cond_4b
    :goto_4b
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_82

    .line 809
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Unknown object type in store."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 803
    :pswitch_5a
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 805
    .local v3, "b":[B
    array-length v5, v3

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 806
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 807
    goto :goto_7c

    .line 799
    .end local v3    # "b":[B
    :pswitch_68
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Key;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 800
    goto :goto_7c

    .line 796
    :pswitch_72
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 797
    nop

    .line 811
    .end local v2    # "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .end local v4    # "chain":[Ljava/security/cert/Certificate;
    :goto_7c
    goto :goto_b

    .line 813
    :cond_7d
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 814
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_72
        :pswitch_68
        :pswitch_5a
        :pswitch_5a
    .end packed-switch
.end method

.method public blacklist setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .line 504
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 505
    return-void
.end method
