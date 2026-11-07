.class public final Landroid/security/keystore/KeyStoreManager;
.super Ljava/lang/Object;
.source "KeyStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreManager$SupplementaryAttestationInfoTagEnum;
    }
.end annotation


# static fields
.field public static final whitelist MODULE_HASH:I = -0x6ffffd2c

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreManager"

.field private static blacklist sInstance:Landroid/security/keystore/KeyStoreManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mKeyStore2:Landroid/security/KeyStore2;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/keystore/KeyStoreManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    .line 70
    return-void
.end method

.method private static blacklist createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4
    .param p0, "alias"    # Ljava/lang/String;

    .line 344
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 345
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 346
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 347
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 348
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 349
    return-object v0
.end method

.method private static blacklist createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p0, "id"    # J
    .param p2, "domain"    # I

    .line 357
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 358
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    iput p2, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 359
    iput-wide p0, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 360
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 361
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 362
    return-object v0
.end method

.method private static blacklist getCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 5
    .param p0, "certificate"    # [B

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "result":Ljava/security/cert/X509Certificate;
    if-eqz p0, :cond_1e

    .line 272
    :try_start_3
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 273
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_16

    move-object v0, v2

    .line 277
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    goto :goto_1e

    .line 275
    :catch_16
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KeyStoreManager"

    const-string v3, "Caught an exception parsing the certificate: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static blacklist getCertificates([B)Ljava/util/Collection;
    .registers 5
    .param p0, "certificateChain"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 288
    const-string v0, "KeyStoreManager"

    if-eqz p0, :cond_26

    .line 290
    :try_start_4
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 291
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 292
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v2

    .line 294
    .local v2, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-nez v2, :cond_1f

    .line 295
    const-string v3, "Received null certificates from a non-null certificateChain"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_20

    return-object v0

    .line 298
    :cond_1f
    return-object v2

    .line 299
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :catch_20
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Caught an exception parsing the certs: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/security/keystore/KeyStoreManager;
    .registers 2

    .line 78
    sget-object v0, Landroid/security/keystore/KeyStoreManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Landroid/security/keystore/KeyStoreManager;

    invoke-direct {v1}, Landroid/security/keystore/KeyStoreManager;-><init>()V

    sput-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    .line 82
    :cond_e
    sget-object v1, Landroid/security/keystore/KeyStoreManager;->sInstance:Landroid/security/keystore/KeyStoreManager;

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public whitelist getGrantedCertificateChainFromId(J)Ljava/util/List;
    .registers 12
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 240
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-static {v1, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object v1

    .line 242
    .local v1, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    .line 243
    .local v2, "keyStoreKey":Ljava/security/PublicKey;
    instance-of v3, v2, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v3, :cond_39

    .line 244
    move-object v3, v2

    check-cast v3, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 246
    .local v3, "androidKeyStorePublicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getCertificate()[B

    move-result-object v4

    .line 247
    .local v4, "certBytes":[B
    invoke-static {v4}, Landroid/security/keystore/KeyStoreManager;->getCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 249
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    if-nez v5, :cond_25

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 252
    :cond_25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getCertificateChain()[B

    move-result-object v7

    .line 255
    .local v7, "certificateChain":[B
    invoke-static {v7}, Landroid/security/keystore/KeyStoreManager;->getCertificates([B)Ljava/util/Collection;

    move-result-object v8

    .line 256
    .local v8, "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    return-object v6

    .line 259
    .end local v3    # "androidKeyStorePublicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .end local v4    # "certBytes":[B
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "certificateChain":[B
    .end local v8    # "certificates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "keyStoreKey is not of the expected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyStoreManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public whitelist getGrantedKeyFromId(J)Ljava/security/Key;
    .registers 6
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 187
    .local v0, "result":Ljava/security/Key;
    if-eqz v0, :cond_b

    .line 190
    return-object v0

    .line 188
    :cond_b
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No key found by the given alias"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getGrantedKeyPairFromId(J)Ljava/security/KeyPair;
    .registers 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromId(JI)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 212
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-static {v1, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupplementaryAttestationInfo(I)[B
    .registers 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore2;->getSupplementaryAttestationInfo(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist grantKeyAccess(Ljava/lang/String;I)J
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 110
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    const/16 v1, 0x104

    .line 112
    .local v1, "grantAccessVector":I
    const/4 v2, 0x0

    .line 114
    .local v2, "result":Landroid/system/keystore2/KeyDescriptor;
    :try_start_7
    iget-object v3, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    const/16 v4, 0x104

    invoke-virtual {v3, v0, p2, v4}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3
    :try_end_f
    .catch Landroid/security/KeyStoreException; {:try_start_7 .. :try_end_f} :catch_7e

    .line 122
    .end local v2    # "result":Landroid/system/keystore2/KeyDescriptor;
    .local v3, "result":Landroid/system/keystore2/KeyDescriptor;
    nop

    .line 123
    const-string v2, " to uid "

    const/4 v4, 0x4

    const-string v5, "KeyStoreManager"

    if-eqz v3, :cond_58

    .line 128
    iget v6, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 133
    iget-wide v4, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    return-wide v4

    .line 129
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received a result outside the grant domain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v5, Landroid/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to obtain a grant ID for alias "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 124
    :cond_58
    const-string v6, "Received a null KeyDescriptor from grant"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v5, Landroid/security/KeyStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No ID was returned for the grant request for alias "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 115
    .end local v3    # "result":Landroid/system/keystore2/KeyDescriptor;
    .restart local v2    # "result":Landroid/system/keystore2/KeyDescriptor;
    :catch_7e
    move-exception v3

    .line 118
    .local v3, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v3}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8e

    .line 119
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "No key found by the given alias"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_8e
    throw v3
.end method

.method public whitelist revokeKeyAccess(Ljava/lang/String;I)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 152
    invoke-static {p1}, Landroid/security/keystore/KeyStoreManager;->createKeyDescriptorFromAlias(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    .line 154
    .local v0, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    :try_start_4
    iget-object v1, p0, Landroid/security/keystore/KeyStoreManager;->mKeyStore2:Landroid/security/KeyStore2;

    invoke-virtual {v1, v0, p2}, Landroid/security/KeyStore2;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    :try_end_9
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_9} :catch_b

    .line 162
    nop

    .line 163
    return-void

    .line 155
    :catch_b
    move-exception v1

    .line 158
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1b

    .line 159
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "No key found by the given alias"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_1b
    throw v1
.end method
