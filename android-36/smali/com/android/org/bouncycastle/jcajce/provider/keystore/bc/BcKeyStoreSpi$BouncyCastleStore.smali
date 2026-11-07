.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 996
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_9

    goto/16 :goto_77

    .line 1011
    :cond_9
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1012
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_23

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    goto :goto_23

    .line 1018
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Wrong version of key store."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1022
    :cond_23
    :goto_23
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v6, v1, [B

    const/16 v2, 0x14

    .line 1024
    const-string v3, "Key store corrupted."

    if-ne v1, v2, :cond_8b

    .line 1029
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1031
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-ltz v7, :cond_85

    const/high16 v1, 0x10000

    if-gt v7, v1, :cond_85

    if-nez p1, :cond_42

    .line 1041
    const-string p1, "OldPBEWithSHAAndTwofish-CBC"

    :goto_40
    move-object v3, p1

    goto :goto_45

    .line 1045
    :cond_42
    const-string p1, "PBEWithSHAAndTwofish-CBC"

    goto :goto_40

    :goto_45
    const/4 v4, 0x2

    move-object v2, p0

    move-object v5, p2

    .line 1048
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 1049
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v0, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1051
    new-instance p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 1052
    new-instance p2, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {p2, p1, p0}, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 1054
    invoke-virtual {v2, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 1057
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 1058
    invoke-interface {p0, p2, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1062
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    .line 1063
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1065
    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_78

    :goto_77
    return-void

    .line 1067
    :cond_78
    iget-object p0, v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    .line 1068
    new-instance p0, Ljava/io/IOException;

    const-string p1, "KeyStore integrity check failed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1035
    :cond_85
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1026
    :cond_8b
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 1107
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1108
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_15

    if-eqz p1, :cond_15

    if-eq p1, v2, :cond_15

    return v1

    .line 1115
    :cond_15
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    new-array p1, p0, [B

    const/16 p1, 0x14

    if-eq p0, p1, :cond_20

    return v1

    :cond_20
    return v2

    .line 1105
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "input stream must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x14

    .line 1077
    new-array v5, p1, [B

    .line 1078
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v6, v1, 0x400

    .line 1080
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1082
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1083
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1084
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1085
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1087
    const-string v2, "PBEWithSHAAndTwofish-CBC"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 1089
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, v0, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1090
    new-instance p0, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;

    new-instance p2, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {p2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 1092
    new-instance p2, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {p2, p1, p0}, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object p0

    .line 1096
    invoke-virtual {p1, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1098
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method
