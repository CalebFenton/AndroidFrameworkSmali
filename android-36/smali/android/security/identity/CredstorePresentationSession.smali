.class Landroid/security/identity/CredstorePresentationSession;
.super Landroid/security/identity/PresentationSession;
.source "CredstorePresentationSession.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstorePresentationSession"


# instance fields
.field private blacklist mBinder:Landroid/security/identity/ISession;

.field private blacklist mCipherSuite:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCredentialCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreIdentityCredential;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEphemeralKeyPair:Ljava/security/KeyPair;

.field private blacklist mFeatureVersion:I

.field private blacklist mOperationHandle:J

.field private blacklist mOperationHandleSet:Z

.field private blacklist mSessionTranscript:[B

.field private blacklist mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cipherSuite"    # I
    .param p3, "store"    # Landroid/security/identity/CredstoreIdentityCredentialStore;
    .param p4, "binder"    # Landroid/security/identity/ISession;
    .param p5, "featureVersion"    # I

    .line 57
    invoke-direct {p0}, Landroid/security/identity/PresentationSession;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    .line 48
    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    .line 51
    iput v0, p0, Landroid/security/identity/CredstorePresentationSession;->mFeatureVersion:I

    .line 58
    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    .line 59
    iput p2, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    .line 60
    iput-object p3, p0, Landroid/security/identity/CredstorePresentationSession;->mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 61
    iput-object p4, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    .line 62
    iput p5, p0, Landroid/security/identity/CredstorePresentationSession;->mFeatureVersion:I

    .line 63
    return-void
.end method

.method private blacklist ensureEphemeralKeyPair()V
    .registers 10

    .line 66
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_5

    .line 67
    return-void

    .line 78
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getEphemeralKeyPair()[B

    move-result-object v0

    .line 79
    .local v0, "pkcs12":[B
    const-string v1, "ephemeralKey"

    .line 80
    .local v1, "alias":Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [C

    .line 82
    .local v2, "password":[C
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 83
    .local v3, "ks":Ljava/security/KeyStore;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 85
    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    .line 87
    .local v5, "privKey":Ljava/security/PrivateKey;
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 88
    .local v6, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 90
    .local v7, "pubKey":Ljava/security/PublicKey;
    new-instance v8, Ljava/security/KeyPair;

    invoke-direct {v8, v7, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v8, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;
    :try_end_33
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_33} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_33} :catch_35

    .line 101
    .end local v0    # "pkcs12":[B
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "password":[C
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    .end local v6    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "pubKey":Ljava/security/PublicKey;
    nop

    .line 102
    return-void

    .line 94
    :catch_35
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getCredentialData(Ljava/lang/String;Landroid/security/identity/CredentialDataRequest;)Landroid/security/identity/CredentialDataResult;
    .registers 12
    .param p1, "credentialName"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/security/identity/CredentialDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/NoAuthenticationKeyAvailableException;,
            Landroid/security/identity/InvalidReaderSignatureException;,
            Landroid/security/identity/InvalidRequestMessageException;,
            Landroid/security/identity/EphemeralPublicKeyNotFoundException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/CredstoreIdentityCredential;

    .line 148
    .local v0, "credential":Landroid/security/identity/CredstoreIdentityCredential;
    if-nez v0, :cond_3a

    .line 149
    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    .line 150
    invoke-interface {v1, p1}, Landroid/security/identity/ISession;->getCredentialForPresentation(Ljava/lang/String;)Landroid/security/identity/ICredential;

    move-result-object v1

    move-object v6, v1

    .line 151
    .local v6, "credstoreCredential":Landroid/security/identity/ICredential;
    new-instance v2, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v3, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    iget v8, p0, Landroid/security/identity/CredstorePresentationSession;->mFeatureVersion:I
    :try_end_19
    .catch Landroid/security/identity/SessionTranscriptMismatchException; {:try_start_0 .. :try_end_19} :catch_a3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_19} :catch_71

    move-object v7, p0

    move-object v4, p1

    .end local p1    # "credentialName":Ljava/lang/String;
    .local v4, "credentialName":Ljava/lang/String;
    :try_start_1b
    invoke-direct/range {v2 .. v8}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;I)V

    move-object v0, v2

    .line 154
    iget-object p1, v7, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExhaustedKeys()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExhaustedKeys(Z)V

    .line 157
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExpiredKeys()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExpiredKeys(Z)V

    .line 158
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isIncrementUseCount()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/security/identity/CredstoreIdentityCredential;->setIncrementKeyUsageCount(Z)V

    goto :goto_3c

    .line 148
    .end local v4    # "credentialName":Ljava/lang/String;
    .end local v6    # "credstoreCredential":Landroid/security/identity/ICredential;
    .restart local p1    # "credentialName":Ljava/lang/String;
    :cond_3a
    move-object v7, p0

    move-object v4, p1

    .line 161
    .end local p1    # "credentialName":Ljava/lang/String;
    .restart local v4    # "credentialName":Ljava/lang/String;
    :goto_3c
    nop

    .line 162
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getDeviceSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v7, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 165
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v3

    .line 161
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object p1

    .line 169
    .local p1, "deviceSignedResult":Landroid/security/identity/ResultData;
    nop

    .line 170
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getIssuerSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v7, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 173
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v5

    .line 169
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object v1

    .line 175
    .local v1, "issuerSignedResult":Landroid/security/identity/ResultData;
    new-instance v2, Landroid/security/identity/CredstoreCredentialDataResult;

    invoke-direct {v2, p1, v1}, Landroid/security/identity/CredstoreCredentialDataResult;-><init>(Landroid/security/identity/ResultData;Landroid/security/identity/ResultData;)V
    :try_end_67
    .catch Landroid/security/identity/SessionTranscriptMismatchException; {:try_start_1b .. :try_end_67} :catch_6e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_67} :catch_6b
    .catch Landroid/os/ServiceSpecificException; {:try_start_1b .. :try_end_67} :catch_68

    return-object v2

    .line 181
    .end local v0    # "credential":Landroid/security/identity/CredstoreIdentityCredential;
    .end local v1    # "issuerSignedResult":Landroid/security/identity/ResultData;
    .end local p1    # "deviceSignedResult":Landroid/security/identity/ResultData;
    :catch_68
    move-exception v0

    move-object p1, v0

    goto :goto_75

    .line 179
    :catch_6b
    move-exception v0

    move-object p1, v0

    goto :goto_9b

    .line 177
    :catch_6e
    move-exception v0

    move-object p1, v0

    goto :goto_a7

    .line 181
    .end local v4    # "credentialName":Ljava/lang/String;
    .local p1, "credentialName":Ljava/lang/String;
    :catch_71
    move-exception v0

    move-object v7, p0

    move-object v4, p1

    move-object p1, v0

    .line 182
    .restart local v4    # "credentialName":Ljava/lang/String;
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_75
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7c

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_7c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 179
    .end local v4    # "credentialName":Ljava/lang/String;
    .local p1, "credentialName":Ljava/lang/String;
    :catch_97
    move-exception v0

    move-object v7, p0

    move-object v4, p1

    move-object p1, v0

    .line 180
    .restart local v4    # "credentialName":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_9b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 177
    .end local v4    # "credentialName":Ljava/lang/String;
    .local p1, "credentialName":Ljava/lang/String;
    :catch_a3
    move-exception v0

    move-object v7, p0

    move-object v4, p1

    move-object p1, v0

    .line 178
    .restart local v4    # "credentialName":Ljava/lang/String;
    .local p1, "e":Landroid/security/identity/SessionTranscriptMismatchException;
    :goto_a7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getCredstoreOperationHandle()J
    .registers 5

    .line 199
    iget-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    if-nez v0, :cond_37

    .line 201
    :try_start_4
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getAuthChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_2e
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_f} :catch_10

    .line 212
    goto :goto_37

    .line 205
    :catch_10
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_2e
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    iget-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    return-wide v0
.end method

.method public whitelist getEphemeralKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 106
    invoke-direct {p0}, Landroid/security/identity/CredstorePresentationSession;->ensureEphemeralKeyPair()V

    .line 107
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public whitelist setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .registers 6
    .param p1, "readerEphemeralPublicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 114
    nop

    .line 115
    :try_start_1
    invoke-static {p1}, Landroid/security/identity/Util;->publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B

    move-result-object v0

    .line 116
    .local v0, "uncompressedForm":[B
    iget-object v1, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v1, v0}, Landroid/security/identity/ISession;->setReaderEphemeralPublicKey([B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_a} :catch_c

    .line 122
    .end local v0    # "uncompressedForm":[B
    nop

    .line 123
    return-void

    .line 119
    :catch_c
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_28
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setSessionTranscript([B)V
    .registers 6
    .param p1, "sessionTranscript"    # [B

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0, p1}, Landroid/security/identity/ISession;->setSessionTranscript([B)V

    .line 129
    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    .line 135
    nop

    .line 136
    return-void

    .line 132
    :catch_9
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 130
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_25
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
