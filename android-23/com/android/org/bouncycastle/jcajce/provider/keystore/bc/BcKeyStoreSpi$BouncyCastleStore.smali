.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 944
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    #@4
    .line 942
    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 954
    if-nez p1, :cond_0

    #@7
    .line 956
    return-void

    #@8
    .line 959
    :cond_0
    new-instance v8, Ljava/io/DataInputStream;

    #@a
    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@d
    .line 960
    .local v8, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@10
    move-result v13

    #@11
    .line 962
    .local v13, "version":I
    const/4 v0, 0x2

    #@12
    if-eq v13, v0, :cond_1

    #@14
    .line 964
    if-eqz v13, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    if-eq v13, v0, :cond_1

    #@19
    .line 966
    new-instance v0, Ljava/io/IOException;

    #@1b
    const-string/jumbo v2, "Wrong version of key store."

    #@1e
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 970
    :cond_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@25
    move-result v0

    #@26
    new-array v4, v0, [B

    #@28
    .line 972
    .local v4, "salt":[B
    array-length v0, v4

    #@29
    const/16 v2, 0x14

    #@2b
    if-eq v0, v2, :cond_2

    #@2d
    .line 974
    new-instance v0, Ljava/io/IOException;

    #@2f
    const-string/jumbo v2, "Key store corrupted."

    #@32
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 977
    :cond_2
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    #@39
    .line 979
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    #@3c
    move-result v5

    #@3d
    .line 981
    .local v5, "iterationCount":I
    if-ltz v5, :cond_3

    #@3f
    const/16 v0, 0x1000

    #@41
    if-le v5, v0, :cond_4

    #@43
    .line 983
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@45
    const-string/jumbo v2, "Key store corrupted."

    #@48
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 987
    :cond_4
    if-nez v13, :cond_5

    #@4e
    .line 989
    const-string/jumbo v1, "OldPBEWithSHAAndTwofish-CBC"

    #@51
    .line 996
    .local v1, "cipherAlg":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    #@52
    move-object v0, p0

    #@53
    move-object/from16 v3, p2

    #@55
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@58
    move-result-object v7

    #@59
    .line 997
    .local v7, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    #@5b
    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    #@5e
    .line 999
    .local v6, "cIn":Ljavax/crypto/CipherInputStream;
    new-instance v10, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@60
    invoke-direct {v10}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@63
    .line 1000
    .local v10, "dig":Lcom/android/org/bouncycastle/crypto/Digest;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;

    #@65
    invoke-direct {v9, v6, v10}, Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@68
    .line 1002
    .local v9, "dgIn":Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    #@6b
    .line 1005
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6e
    move-result v0

    #@6f
    new-array v11, v0, [B

    #@71
    .line 1006
    .local v11, "hash":[B
    const/4 v0, 0x0

    #@72
    invoke-interface {v10, v11, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@75
    .line 1010
    invoke-interface {v10}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@78
    move-result v0

    #@79
    new-array v12, v0, [B

    #@7b
    .line 1011
    .local v12, "oldHash":[B
    invoke-static {v6, v12}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    #@7e
    .line 1013
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@81
    move-result v0

    #@82
    if-nez v0, :cond_6

    #@84
    .line 1015
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    #@86
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@89
    .line 1016
    new-instance v0, Ljava/io/IOException;

    #@8b
    const-string/jumbo v2, "KeyStore integrity check failed."

    #@8e
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@91
    throw v0

    #@92
    .line 993
    .end local v1    # "cipherAlg":Ljava/lang/String;
    .end local v6    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v7    # "cipher":Ljavax/crypto/Cipher;
    .end local v9    # "dgIn":Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    .end local v10    # "dig":Lcom/android/org/bouncycastle/crypto/Digest;
    .end local v11    # "hash":[B
    .end local v12    # "oldHash":[B
    :cond_5
    const-string/jumbo v1, "PBEWithSHAAndTwofish-CBC"

    #@95
    .restart local v1    # "cipherAlg":Ljava/lang/String;
    goto :goto_0

    #@96
    .line 950
    .restart local v6    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v7    # "cipher":Ljavax/crypto/Cipher;
    .restart local v9    # "dgIn":Lcom/android/org/bouncycastle/crypto/io/DigestInputStream;
    .restart local v10    # "dig":Lcom/android/org/bouncycastle/crypto/Digest;
    .restart local v11    # "hash":[B
    .restart local v12    # "oldHash":[B
    :cond_6
    return-void
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 11
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    new-instance v8, Ljava/io/DataOutputStream;

    #@2
    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5
    .line 1025
    .local v8, "dOut":Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    #@7
    new-array v4, v0, [B

    #@9
    .line 1026
    .local v4, "salt":[B
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    #@b
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    #@e
    move-result v0

    #@f
    and-int/lit16 v0, v0, 0x3ff

    #@11
    add-int/lit16 v5, v0, 0x400

    #@13
    .line 1028
    .local v5, "iterationCount":I
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    #@15
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@18
    .line 1030
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    #@1a
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1d
    .line 1031
    array-length v0, v4

    #@1e
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@21
    .line 1032
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    #@24
    .line 1033
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@27
    .line 1035
    const-string/jumbo v1, "PBEWithSHAAndTwofish-CBC"

    #@2a
    const/4 v2, 0x1

    #@2b
    move-object v0, p0

    #@2c
    move-object v3, p2

    #@2d
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@30
    move-result-object v7

    #@31
    .line 1037
    .local v7, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    #@33
    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@36
    .line 1038
    .local v6, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;

    #@38
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@3a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@3d
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@40
    .line 1040
    .local v9, "dgOut":Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;
    new-instance v0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;

    #@42
    invoke-direct {v0, v6, v9}, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    #@45
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    #@48
    .line 1042
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    #@4b
    move-result-object v10

    #@4c
    .line 1044
    .local v10, "dig":[B
    invoke-virtual {v6, v10}, Ljavax/crypto/CipherOutputStream;->write([B)V

    #@4f
    .line 1046
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    #@52
    .line 1021
    return-void
.end method
