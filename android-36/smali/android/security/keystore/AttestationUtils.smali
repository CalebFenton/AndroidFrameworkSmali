.class public abstract Landroid/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ID_TYPE_IMEI:I = 0x2

.field public static final whitelist ID_TYPE_MEID:I = 0x3

.field public static final whitelist ID_TYPE_SERIAL:I = 0x1

.field public static final whitelist USE_INDIVIDUAL_ATTESTATION:I = 0x4


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static whitelist attestDeviceIds(Landroid/content/Context;[I[B)[Ljava/security/cert/X509Certificate;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idTypes"    # [I
    .param p2, "attestationChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 140
    const-string v0, "AndroidKeyStore"

    if-eqz p2, :cond_91

    .line 143
    if-eqz p1, :cond_89

    .line 147
    invoke-static {}, Landroid/security/keystore/AttestationUtils;->generateRandomAlias()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "keystoreAlias":Ljava/lang/String;
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v4, "secp256r1"

    invoke-direct {v3, v4}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const-string v3, "SHA-256"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {v2, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 154
    .local v2, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    if-eqz p1, :cond_33

    .line 155
    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 156
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 160
    :cond_33
    :try_start_33
    const-string v3, "EC"

    invoke-static {v3, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 162
    .local v3, "keyPairGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 163
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 165
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 166
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 168
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 169
    .local v4, "certs":[Ljava/security/cert/Certificate;
    array-length v5, v4

    const-class v6, [Ljava/security/cert/X509Certificate;

    .line 170
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 172
    .local v5, "certificateChain":[Ljava/security/cert/X509Certificate;
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_5b} :catch_87
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5b} :catch_5c

    .line 174
    return-object v5

    .line 177
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "keyPairGenerator":Ljava/security/KeyPairGenerator;
    .end local v4    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "certificateChain":[Ljava/security/cert/X509Certificate;
    :catch_5c
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Landroid/security/keystore/DeviceIdAttestationException;

    if-nez v3, :cond_80

    .line 185
    instance-of v3, v0, Ljava/security/ProviderException;

    if-eqz v3, :cond_78

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_78

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/IllegalArgumentException;

    throw v3

    .line 189
    :cond_78
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to perform attestation"

    invoke-direct {v3, v4, v0}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 181
    :cond_80
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Landroid/security/keystore/DeviceIdAttestationException;

    throw v3

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_87
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 144
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "keystoreAlias":Ljava/lang/String;
    .end local v2    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing id types"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing attestation challenge"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist generateRandomAlias()Ljava/lang/String;
    .registers 4

    .line 194
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 195
    .local v0, "random":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const/16 v3, 0x14

    if-ge v2, v3, :cond_1d

    .line 199
    const/16 v3, 0x1a

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 201
    .end local v2    # "i":I
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z
    .registers 3
    .param p0, "chain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    .line 209
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static greylist-max-o parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;
    .registers 6
    .param p0, "kmChain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/KeyAttestationException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "rawChain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4a

    .line 94
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v1, "concatenatedRawChain":Ljava/io/ByteArrayOutputStream;
    :try_start_10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 97
    .local v3, "cert":[B
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    .end local v3    # "cert":[B
    goto :goto_14

    .line 99
    :cond_24
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    .line 101
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_40} :catch_41

    .line 99
    return-object v2

    .line 102
    :catch_41
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/security/keystore/KeyAttestationException;

    const-string v4, "Unable to construct certificate chain"

    invoke-direct {v3, v4, v2}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v1    # "concatenatedRawChain":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4a
    new-instance v1, Landroid/security/keystore/KeyAttestationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attestation certificate chain contained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries. At least two are required."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
