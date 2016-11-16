.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EVP_AEAD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD$AES;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static lastGlobalMessageSize:I


# instance fields
.field private aad:[B

.field protected buf:[B

.field protected bufCount:I

.field protected evpAead:J

.field private tagLengthInBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 857
    const/16 v0, 0x20

    #@2
    sput v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    #@4
    .line 847
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@0
    .prologue
    .line 885
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@5
    .line 884
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 890
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@3
    add-int/2addr v1, p1

    #@4
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@6
    array-length v2, v2

    #@7
    if-gt v1, v2, :cond_0

    #@9
    .line 891
    return-void

    #@a
    .line 894
    :cond_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@c
    add-int/2addr v1, p1

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    new-array v0, v1, [B

    #@11
    .line 895
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@13
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@15
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18
    .line 896
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@1a
    .line 888
    return-void
.end method

.method private reset()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 900
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@4
    .line 901
    sget v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    #@6
    .line 902
    .local v0, "lastBufSize":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@8
    if-nez v1, :cond_1

    #@a
    .line 903
    new-array v1, v0, [B

    #@c
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@e
    .line 910
    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@10
    .line 899
    return-void

    #@11
    .line 904
    :cond_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@13
    if-lez v1, :cond_0

    #@15
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@17
    if-eq v1, v0, :cond_0

    #@19
    .line 905
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@1b
    sput v1, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    #@1d
    .line 906
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@1f
    array-length v1, v1

    #@20
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@22
    if-eq v1, v2, :cond_0

    #@24
    .line 907
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@26
    new-array v1, v1, [B

    #@28
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@2a
    goto :goto_0
.end method


# virtual methods
.method protected checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1033
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1034
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@6
    const-string/jumbo v1, "Must be NoPadding for AEAD ciphers"

    #@9
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1032
    :cond_0
    return-void
.end method

.method protected doFinalInternal([BII)I
    .locals 16
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 990
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@6
    .line 991
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    #@a
    move-object/from16 v0, p0

    #@c
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    #@e
    .line 990
    invoke-static {v4, v5, v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_init(J[BI)J

    #@11
    move-result-wide v4

    #@12
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;-><init>(J)V

    #@15
    .line 994
    .local v2, "cipherCtx":Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->isEncrypting()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 996
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@23
    move-object/from16 v0, p0

    #@25
    iget v8, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@2b
    const/4 v7, 0x0

    #@2c
    move-object/from16 v3, p1

    #@2e
    move/from16 v4, p2

    #@30
    .line 995
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;[BI[B[BII[B)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result v12

    #@34
    .line 1027
    .local v12, "bytesWritten":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    #@37
    .line 1028
    return v12

    #@38
    .line 999
    .end local v12    # "bytesWritten":I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@40
    move-object/from16 v0, p0

    #@42
    iget v8, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@48
    const/4 v7, 0x0

    #@49
    move-object/from16 v3, p1

    #@4b
    move/from16 v4, p2

    #@4d
    .line 998
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;[BI[B[BII[B)I
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    #@50
    move-result v12

    #@51
    .restart local v12    # "bytesWritten":I
    goto :goto_0

    #@52
    .line 1001
    .end local v12    # "bytesWritten":I
    :catch_0
    move-exception v13

    #@53
    .line 1002
    .local v13, "e":Ljavax/crypto/BadPaddingException;
    const/4 v10, 0x0

    #@54
    .line 1004
    .local v10, "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_2
    const-string/jumbo v3, "javax.crypto.AEADBadTagException"

    #@57
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@5a
    move-result-object v3

    #@5b
    const/4 v4, 0x1

    #@5c
    new-array v4, v4, [Ljava/lang/Class;

    #@5e
    .line 1005
    const-class v5, Ljava/lang/String;

    #@60
    const/4 v6, 0x0

    #@61
    aput-object v5, v4, v6

    #@63
    .line 1004
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    #@66
    move-result-object v10

    #@67
    .line 1009
    .end local v10    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    if-eqz v10, :cond_1

    #@69
    .line 1010
    const/4 v11, 0x0

    #@6a
    .line 1012
    .local v11, "badTagException":Ljavax/crypto/BadPaddingException;
    const/4 v3, 0x1

    #@6b
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    #@6d
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    const/4 v5, 0x0

    #@72
    aput-object v4, v3, v5

    #@74
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v3

    #@78
    move-object v0, v3

    #@79
    check-cast v0, Ljavax/crypto/BadPaddingException;

    #@7b
    move-object v11, v0

    #@7c
    .line 1014
    .local v11, "badTagException":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v11, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    #@83
    .line 1021
    .end local v11    # "badTagException":Ljavax/crypto/BadPaddingException;
    :goto_2
    if-eqz v11, :cond_1

    #@85
    .line 1022
    throw v11

    #@86
    .line 1017
    :catch_1
    move-exception v15

    #@87
    .line 1018
    .local v15, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljavax/crypto/BadPaddingException;

    #@89
    invoke-direct {v3}, Ljavax/crypto/BadPaddingException;-><init>()V

    #@8c
    invoke-virtual {v15}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@93
    move-result-object v3

    #@94
    check-cast v3, Ljavax/crypto/BadPaddingException;

    #@96
    throw v3

    #@97
    .line 1025
    .end local v15    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    throw v13

    #@98
    .line 1015
    :catch_2
    move-exception v14

    #@99
    .local v14, "e2":Ljava/lang/ReflectiveOperationException;
    goto :goto_2

    #@9a
    .line 1006
    .end local v14    # "e2":Ljava/lang/ReflectiveOperationException;
    .restart local v10    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_3
    move-exception v14

    #@9b
    .restart local v14    # "e2":Ljava/lang/ReflectiveOperationException;
    goto :goto_1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1060
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1061
    return-object v5

    #@6
    .line 1064
    :cond_0
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    #@8
    mul-int/lit8 v3, v3, 0x8

    #@a
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@c
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    #@f
    move-result-object v2

    #@10
    .line 1065
    .local v2, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    if-nez v2, :cond_1

    #@12
    .line 1069
    invoke-super {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineGetParameters()Ljava/security/AlgorithmParameters;

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 1073
    :cond_1
    :try_start_0
    const-string/jumbo v3, "GCM"

    #@1a
    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    #@1d
    move-result-object v1

    #@1e
    .line 1074
    .local v1, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1075
    return-object v1

    #@22
    .line 1076
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    #@23
    .line 1078
    .local v0, "e":Ljava/security/GeneralSecurityException;
    return-object v5
.end method

.method protected engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 919
    if-nez p2, :cond_0

    #@2
    .line 920
    const/4 v3, 0x0

    #@3
    .line 921
    .local v3, "iv":[B
    const/16 v5, 0x80

    #@5
    .line 937
    .end local v3    # "iv":[B
    .local v5, "tagLenBits":I
    :goto_0
    rem-int/lit8 v6, v5, 0x8

    #@7
    if-eqz v6, :cond_3

    #@9
    .line 938
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@b
    .line 939
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v8, "Tag length must be a multiple of 8; was "

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    iget v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    .line 938
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@24
    throw v6

    #@25
    .line 923
    .end local v5    # "tagLenBits":I
    :cond_0
    invoke-static {p2}, Lcom/android/org/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;

    #@28
    move-result-object v2

    #@29
    .line 924
    .local v2, "gcmParams":Lcom/android/org/conscrypt/GCMParameters;
    if-eqz v2, :cond_1

    #@2b
    .line 925
    invoke-virtual {v2}, Lcom/android/org/conscrypt/GCMParameters;->getIV()[B

    #@2e
    move-result-object v3

    #@2f
    .line 926
    .local v3, "iv":[B
    invoke-virtual {v2}, Lcom/android/org/conscrypt/GCMParameters;->getTLen()I

    #@32
    move-result v5

    #@33
    .restart local v5    # "tagLenBits":I
    goto :goto_0

    #@34
    .line 927
    .end local v3    # "iv":[B
    .end local v5    # "tagLenBits":I
    :cond_1
    instance-of v6, p2, Ljavax/crypto/spec/IvParameterSpec;

    #@36
    if-eqz v6, :cond_2

    #@38
    move-object v4, p2

    #@39
    .line 928
    nop

    #@3a
    nop

    #@3b
    .line 929
    .local v4, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@3e
    move-result-object v3

    #@3f
    .line 930
    .restart local v3    # "iv":[B
    const/16 v5, 0x80

    #@41
    .restart local v5    # "tagLenBits":I
    goto :goto_0

    #@42
    .line 932
    .end local v3    # "iv":[B
    .end local v4    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "tagLenBits":I
    :cond_2
    const/4 v3, 0x0

    #@43
    .line 933
    .local v3, "iv":[B
    const/16 v5, 0x80

    #@45
    .restart local v5    # "tagLenBits":I
    goto :goto_0

    #@46
    .line 942
    .end local v2    # "gcmParams":Lcom/android/org/conscrypt/GCMParameters;
    .end local v3    # "iv":[B
    :cond_3
    div-int/lit8 v6, v5, 0x8

    #@48
    iput v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLengthInBytes:I

    #@4a
    .line 944
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->isEncrypting()Z

    #@4d
    move-result v0

    #@4e
    .line 946
    .local v0, "encrypting":Z
    array-length v6, p1

    #@4f
    invoke-virtual {p0, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->getEVP_AEAD(I)J

    #@52
    move-result-wide v6

    #@53
    iput-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@55
    .line 948
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@57
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    #@5a
    move-result v1

    #@5b
    .line 949
    .local v1, "expectedIvLength":I
    if-nez v3, :cond_7

    #@5d
    if-eqz v1, :cond_7

    #@5f
    .line 950
    if-nez v0, :cond_4

    #@61
    .line 951
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@63
    new-instance v7, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v8, "IV must be specified in "

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    .line 952
    const-string/jumbo v8, " mode"

    #@78
    .line 951
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@83
    throw v6

    #@84
    .line 955
    :cond_4
    new-array v3, v1, [B

    #@86
    .line 956
    .local v3, "iv":[B
    if-nez p3, :cond_5

    #@88
    .line 957
    new-instance p3, Ljava/security/SecureRandom;

    #@8a
    .end local p3    # "random":Ljava/security/SecureRandom;
    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    #@8d
    .line 959
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_5
    invoke-virtual {p3, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@90
    .line 967
    .end local v3    # "iv":[B
    :cond_6
    iput-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    #@92
    .line 968
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    #@95
    .line 916
    return-void

    #@96
    .line 960
    :cond_7
    if-nez v1, :cond_8

    #@98
    if-eqz v3, :cond_8

    #@9a
    .line 961
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@9c
    new-instance v7, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v8, "IV not used in "

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@aa
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v7

    #@ae
    const-string/jumbo v8, " mode"

    #@b1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v7

    #@b9
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v6

    #@bd
    .line 962
    :cond_8
    if-eqz v3, :cond_6

    #@bf
    array-length v6, v3

    #@c0
    if-eq v6, v1, :cond_6

    #@c2
    .line 963
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@c4
    new-instance v7, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v8, "Expected IV length of "

    #@cc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    .line 964
    const-string/jumbo v8, " but was "

    #@d7
    .line 963
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v7

    #@db
    .line 964
    array-length v8, v3

    #@dc
    .line 963
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@e7
    throw v6
.end method

.method protected engineUpdateAAD([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1046
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1047
    add-int v2, p2, p3

    #@7
    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@d
    .line 1045
    :goto_0
    return-void

    #@e
    .line 1049
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@10
    array-length v2, v2

    #@11
    add-int v0, v2, p3

    #@13
    .line 1050
    .local v0, "newSize":I
    new-array v1, v0, [B

    #@15
    .line 1051
    .local v1, "newaad":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@17
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@19
    array-length v3, v3

    #@1a
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 1052
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@1f
    array-length v2, v2

    #@20
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 1053
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@25
    goto :goto_0
.end method

.method protected abstract getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected getOutputSizeForFinal(I)I
    .locals 4
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 1040
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@2
    add-int v1, v0, p1

    #@4
    .line 1041
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->isEncrypting()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@c
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    #@f
    move-result v0

    #@10
    .line 1040
    :goto_0
    add-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 1041
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method protected updateInternal([BII[BII)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 974
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 975
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Cipher not initialized"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 978
    :cond_0
    array-length v0, p1

    #@f
    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/ArrayUtils;->checkOffsetAndCount(III)V

    #@12
    .line 979
    if-lez p3, :cond_1

    #@14
    .line 980
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->expand(I)V

    #@17
    .line 981
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@19
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@1b
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 982
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@20
    add-int/2addr v0, p3

    #@21
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@23
    .line 984
    :cond_1
    return v2
.end method
