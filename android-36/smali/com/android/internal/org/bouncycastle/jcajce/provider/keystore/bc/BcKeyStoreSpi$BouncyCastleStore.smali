.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 997
    return-void
.end method


# virtual methods
.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 18
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    move-object/from16 v0, p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 1006
    if-nez v0, :cond_a

    .line 1008
    return-void

    .line 1011
    :cond_a
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1012
    .local v1, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1014
    .local v2, "version":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    .line 1016
    if-eqz v2, :cond_24

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    goto :goto_24

    .line 1018
    :cond_1c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Wrong version of key store."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1022
    :cond_24
    :goto_24
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v8, v3, [B

    .line 1024
    .local v8, "salt":[B
    array-length v3, v8

    const/16 v4, 0x14

    const-string v5, "Key store corrupted."

    if-ne v3, v4, :cond_8e

    .line 1029
    invoke-virtual {v1, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1031
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1033
    .local v9, "iterationCount":I
    if-ltz v9, :cond_88

    const/high16 v3, 0x10000

    if-gt v9, v3, :cond_88

    .line 1039
    if-nez v2, :cond_44

    .line 1041
    const-string v3, "OldPBEWithSHAAndTwofish-CBC"

    move-object v5, v3

    .local v3, "cipherAlg":Ljava/lang/String;
    goto :goto_47

    .line 1045
    .end local v3    # "cipherAlg":Ljava/lang/String;
    :cond_44
    const-string v3, "PBEWithSHAAndTwofish-CBC"

    move-object v5, v3

    .line 1048
    .local v5, "cipherAlg":Ljava/lang/String;
    :goto_47
    const/4 v6, 0x2

    move-object v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1049
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1051
    .local v6, "cIn":Ljavax/crypto/CipherInputStream;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 1052
    .local v7, "dig":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v10, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 1054
    .local v10, "dgIn":Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1057
    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    new-array v11, v11, [B

    .line 1058
    .local v11, "hash":[B
    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1062
    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    new-array v12, v12, [B

    .line 1063
    .local v12, "oldHash":[B
    invoke-static {v6, v12}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1065
    invoke-static {v11, v12}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 1070
    return-void

    .line 1067
    :cond_7b
    iget-object v13, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    .line 1068
    new-instance v13, Ljava/io/IOException;

    const-string v14, "KeyStore integrity check failed."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1035
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "cipherAlg":Ljava/lang/String;
    .end local v6    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v7    # "dig":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v10    # "dgIn":Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;
    .end local v11    # "hash":[B
    .end local v12    # "oldHash":[B
    :cond_88
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    .end local v9    # "iterationCount":I
    :cond_8e
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    if-eqz p1, :cond_22

    .line 1107
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1108
    .local v0, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1110
    .local v1, "version":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_15

    .line 1111
    if-eqz v1, :cond_15

    if-eq v1, v4, :cond_15

    .line 1112
    return v3

    .line 1115
    :cond_15
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    .line 1117
    .local v2, "salt":[B
    array-length v5, v2

    const/16 v6, 0x14

    if-eq v5, v6, :cond_21

    .line 1118
    return v3

    .line 1121
    :cond_21
    return v4

    .line 1105
    .end local v0    # "dIn":Ljava/io/DataInputStream;
    .end local v1    # "version":I
    .end local v2    # "salt":[B
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input stream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 11
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1077
    .local v0, "dOut":Ljava/io/DataOutputStream;
    const/16 v1, 0x14

    new-array v6, v1, [B

    .line 1078
    .local v6, "salt":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v7, v1, 0x400

    .line 1080
    .local v7, "iterationCount":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1082
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1083
    array-length v1, v6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1084
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 1085
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1087
    const-string v3, "PBEWithSHAAndTwofish-CBC"

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "password":[C
    .local v5, "password":[C
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 1089
    .local p2, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1090
    .local v1, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 1092
    .local v3, "dgOut":Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;
    new-instance v4, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v4, v1, v3}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1094
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v4

    .line 1096
    .local v4, "dig":[B
    invoke-virtual {v1, v4}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1098
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1099
    return-void
.end method
