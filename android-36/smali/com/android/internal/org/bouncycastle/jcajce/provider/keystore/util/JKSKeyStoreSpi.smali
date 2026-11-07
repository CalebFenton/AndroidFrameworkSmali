.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "JKSKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    }
.end annotation


# static fields
.field private static final blacklist NOT_IMPLEMENTED_MESSAGE:Ljava/lang/String; = "BC JKS store is read-only and only supports certificate entries"


# instance fields
.field private final blacklist certificateEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .registers 3
    .param p1, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 46
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    .line 47
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 48
    return-void
.end method

.method private blacklist addPassword(Lcom/android/internal/org/bouncycastle/crypto/Digest;[C)V
    .registers 6
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_15

    .line 342
    aget-char v1, p2, v0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 343
    aget-char v1, p2, v0

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    :cond_15
    const-string v0, "Mighty Aphrodite"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 352
    return-void
.end method

.method private blacklist createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 5
    .param p1, "certFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    if-eqz v0, :cond_16

    .line 318
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 320
    :catch_b
    move-exception v0

    .line 322
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :cond_16
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method private blacklist validateStream(Ljava/io/InputStream;[C)Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .registers 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const-string v0, "SHA-1"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 370
    .local v0, "checksumCalculator":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 372
    .local v1, "rawStore":[B
    const/4 v2, 0x0

    if-eqz p2, :cond_47

    .line 374
    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->addPassword(Lcom/android/internal/org/bouncycastle/crypto/Digest;[C)V

    .line 375
    array-length v3, v1

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 377
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 379
    .local v3, "checksum":[B
    invoke-interface {v0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 381
    array-length v4, v3

    new-array v4, v4, [B

    .line 382
    .local v4, "streamChecksum":[B
    array-length v5, v1

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v3

    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 390
    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v6, v1

    array-length v7, v3

    sub-int/2addr v6, v7

    invoke-direct {v5, v1, v2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object v5

    .line 386
    :cond_3b
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 387
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "password incorrect or store tampered with"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v3    # "checksum":[B
    .end local v4    # "streamChecksum":[B
    :cond_47
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    array-length v4, v1

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 134
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 139
    if-eqz p1, :cond_10

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 146
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 147
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1

    .line 141
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    .line 84
    .local v1, "ent":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    if-eqz v1, :cond_11

    .line 86
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object v2

    .line 88
    .end local v1    # "ent":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    :cond_11
    monitor-exit v0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 88
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 175
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 179
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;"
    :cond_2f
    goto :goto_d

    .line 180
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;>;>;"
    :cond_30
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 181
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    .line 97
    .local v1, "ent":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    if-eqz v1, :cond_11

    .line 99
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;->date:Ljava/util/Date;

    monitor-exit v0

    return-object v2

    .line 101
    .end local v1    # "ent":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;
    :cond_11
    monitor-exit v0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 101
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 165
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 21
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 213
    move-object/from16 v1, p0

    if-nez p1, :cond_5

    .line 215
    return-void

    .line 218
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->validateStream(Ljava/io/InputStream;[C)Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;

    move-result-object v2

    .line 220
    .local v2, "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    monitor-enter v3

    .line 224
    :try_start_c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 226
    .local v4, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v5, v0

    .line 227
    .local v5, "magic":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_105

    move v6, v0

    .line 228
    .local v6, "storeVersion":I
    const v0, -0x1120113

    if-ne v5, v0, :cond_ea

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    const/4 v7, 0x0

    .line 233
    .local v7, "certFactories":Ljava/util/Hashtable;
    packed-switch v6, :pswitch_data_110

    .line 242
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .local v16, "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .local v17, "dIn":Ljava/io/DataInputStream;
    :try_start_2a
    new-instance v1, Ljava/lang/IllegalStateException;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_103

    goto/16 :goto_e3

    .line 239
    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    :pswitch_2e
    :try_start_2e
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    move-object v7, v8

    .line 240
    goto :goto_42

    .line 306
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v7    # "certFactories":Ljava/util/Hashtable;
    :catchall_35
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_108

    .line 236
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v5    # "magic":I
    .restart local v6    # "storeVersion":I
    .restart local v7    # "certFactories":Ljava/util/Hashtable;
    :pswitch_3a
    :try_start_3a
    const-string v8, "X.509"

    invoke-direct {v1, v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    move-object v0, v8

    .line 237
    nop

    .line 245
    :goto_42
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 246
    .local v8, "numEntries":I
    const/4 v9, 0x0

    .local v9, "t":I
    :goto_47
    if-ge v9, v8, :cond_de

    .line 248
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_105

    .line 249
    .local v10, "tag":I
    packed-switch v10, :pswitch_data_118

    .line 294
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    :try_start_54
    new-instance v1, Ljava/lang/IllegalStateException;
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_103

    goto/16 :goto_d7

    .line 254
    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    :pswitch_58
    :try_start_58
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, "alias":Ljava/lang/String;
    new-instance v12, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_105

    .line 257
    .local v12, "date":Ljava/util/Date;
    const/4 v13, 0x2

    if-ne v6, v13, :cond_81

    .line 259
    :try_start_68
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    .line 260
    .local v13, "certFormat":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 262
    invoke-virtual {v7, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/CertificateFactory;

    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v14, "certFact":Ljava/security/cert/CertificateFactory;
    goto :goto_82

    .line 266
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    :cond_79
    invoke-direct {v1, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->createCertFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v14

    .line 267
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v7, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_35

    goto :goto_82

    .line 257
    .end local v13    # "certFormat":Ljava/lang/String;
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    :cond_81
    move-object v14, v0

    .line 271
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_82
    :try_start_82
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v13, v0

    .line 272
    .local v13, "l":I
    new-array v0, v13, [B

    move-object v15, v0

    .line 273
    .local v15, "certData":[B
    invoke-virtual {v4, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 275
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :try_end_8f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_105

    move-object/from16 v16, v2

    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :try_start_91
    array-length v2, v15

    move-object/from16 v17, v4

    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    invoke-direct {v0, v15, v4, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;-><init>([BII)V
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_103

    move-object v2, v0

    .line 279
    .local v2, "certStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :try_start_99
    invoke-virtual {v14, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 281
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->available()I

    move-result v4
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_c5

    if-nez v4, :cond_bc

    .line 288
    :try_start_a3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 289
    nop

    .line 291
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;

    invoke-direct {v1, v12, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$BCJKSTrustedCertEntry;-><init>(Ljava/util/Date;Ljava/security/cert/Certificate;)V

    invoke-virtual {v4, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catchall {:try_start_a3 .. :try_end_b1} :catchall_103

    .line 292
    nop

    .line 246
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "certStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v10    # "tag":I
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "l":I
    .end local v15    # "certData":[B
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object v0, v14

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_47

    .line 283
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v2    # "certStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v10    # "tag":I
    .restart local v11    # "alias":Ljava/lang/String;
    .restart local v12    # "date":Ljava/util/Date;
    .restart local v13    # "l":I
    .restart local v15    # "certData":[B
    :cond_bc
    :try_start_bc
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v4, "password incorrect or store tampered with"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "certStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v7    # "certFactories":Ljava/util/Hashtable;
    .end local v8    # "numEntries":I
    .end local v9    # "t":I
    .end local v10    # "tag":I
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "l":I
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v15    # "certData":[B
    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_c5

    .line 288
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v2    # "certStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v5    # "magic":I
    .restart local v6    # "storeVersion":I
    .restart local v7    # "certFactories":Ljava/util/Hashtable;
    .restart local v8    # "numEntries":I
    .restart local v9    # "t":I
    .restart local v10    # "tag":I
    .restart local v11    # "alias":Ljava/lang/String;
    .restart local v12    # "date":Ljava/util/Date;
    .restart local v13    # "l":I
    .restart local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v15    # "certData":[B
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catchall_c5
    move-exception v0

    :try_start_c6
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 289
    nop

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v0

    .line 252
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "l":I
    .end local v14    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v15    # "certData":[B
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    .local v2, "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :pswitch_cb
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1

    .line 294
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :goto_d7
    const-string/jumbo v2, "unable to discern entry type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1

    .line 246
    .end local v10    # "tag":I
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_de
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    goto :goto_ee

    .line 242
    .end local v8    # "numEntries":I
    .end local v9    # "t":I
    :goto_e3
    const-string/jumbo v2, "unable to discern store version"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1

    .line 228
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v7    # "certFactories":Ljava/util/Hashtable;
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_ea
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .line 299
    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local v4    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    :goto_ee
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->available()I

    move-result v0
    :try_end_f2
    .catchall {:try_start_c6 .. :try_end_f2} :catchall_103

    if-nez v0, :cond_fa

    .line 306
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    :try_start_f4
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 307
    nop

    .line 308
    monitor-exit v3
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_10d

    .line 309
    return-void

    .line 301
    .restart local v5    # "magic":I
    .restart local v6    # "storeVersion":I
    .restart local v17    # "dIn":Ljava/io/DataInputStream;
    :cond_fa
    :try_start_fa
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "password incorrect or store tampered with"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v0
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_103

    .line 306
    .end local v5    # "magic":I
    .end local v6    # "storeVersion":I
    .end local v17    # "dIn":Ljava/io/DataInputStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catchall_103
    move-exception v0

    goto :goto_108

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :catchall_105
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    :goto_108
    :try_start_108
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;->erase()V

    .line 307
    nop

    .end local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v0

    .line 308
    .restart local v16    # "storeStream":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi$ErasableByteStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catchall_10d
    move-exception v0

    monitor-exit v3
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_10d

    throw v0

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2e
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_58
    .end packed-switch
.end method

.method public whitelist test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 5
    .param p1, "loadStoreParameter"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 193
    if-nez p1, :cond_7

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_1a

    .line 197
    :cond_7
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;

    if-eqz v0, :cond_1b

    .line 199
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;

    .line 201
    .local v0, "bcParam":Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;->extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 202
    .end local v0    # "bcParam":Lcom/android/internal/org/bouncycastle/jcajce/BCLoadStoreParameter;
    nop

    .line 208
    :goto_1a
    return-void

    .line 205
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_8

    .line 56
    move-object v0, p1

    check-cast v0, Ljava/io/DataInputStream;

    .local v0, "storeStream":Ljava/io/DataInputStream;
    goto :goto_d

    .line 60
    .end local v0    # "storeStream":Ljava/io/DataInputStream;
    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .restart local v0    # "storeStream":Ljava/io/DataInputStream;
    :goto_d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 64
    .local v1, "magic":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 65
    .local v2, "storeVersion":I
    const v3, -0x1120113

    if-ne v1, v3, :cond_21

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    const/4 v4, 0x2

    if-ne v2, v4, :cond_21

    :cond_20
    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    return v3
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 114
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/util/JKSKeyStoreSpi;->certificateEntries:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BC JKS store is read-only and only supports certificate entries"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
