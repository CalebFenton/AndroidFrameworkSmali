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
.field private static lastGlobalMessageSize:I


# instance fields
.field private aad:[B

.field protected buf:[B

.field protected bufCount:I

.field protected evpAead:J

.field private tagLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 851
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
    .line 879
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    #@5
    .line 878
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 884
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
    .line 885
    return-void

    #@a
    .line 888
    :cond_0
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@c
    add-int/2addr v1, p1

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    new-array v0, v1, [B

    #@11
    .line 889
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@13
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@15
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18
    .line 890
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@1a
    .line 882
    return-void
.end method

.method private reset()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 894
    sget v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    #@3
    .line 895
    .local v0, "lastBufSize":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@5
    if-nez v1, :cond_1

    #@7
    .line 896
    new-array v1, v0, [B

    #@9
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@b
    .line 903
    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@d
    .line 893
    return-void

    #@e
    .line 897
    :cond_1
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@10
    if-lez v1, :cond_0

    #@12
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@14
    if-eq v1, v0, :cond_0

    #@16
    .line 898
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@18
    sput v1, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->lastGlobalMessageSize:I

    #@1a
    .line 899
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@1c
    array-length v1, v1

    #@1d
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@1f
    if-eq v1, v2, :cond_0

    #@21
    .line 900
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@23
    new-array v1, v1, [B

    #@25
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@27
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
    .line 1041
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1042
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    #@6
    const-string/jumbo v1, "Must be NoPadding for AEAD ciphers"

    #@9
    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1040
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
    .line 998
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@6
    .line 999
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->encodedKey:[B

    #@a
    move-object/from16 v0, p0

    #@c
    iget v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLen:I

    #@e
    .line 998
    invoke-static {v4, v5, v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_init(J[BI)J

    #@11
    move-result-wide v4

    #@12
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;-><init>(J)V

    #@15
    .line 1002
    .local v2, "cipherCtx":Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->isEncrypting()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 1004
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

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
    .line 1003
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;[BI[B[BII[B)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result v12

    #@34
    .line 1035
    .local v12, "bytesWritten":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    #@37
    .line 1036
    return v12

    #@38
    .line 1007
    .end local v12    # "bytesWritten":I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

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
    .line 1006
    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;[BI[B[BII[B)I
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    #@50
    move-result v12

    #@51
    .restart local v12    # "bytesWritten":I
    goto :goto_0

    #@52
    .line 1009
    .end local v12    # "bytesWritten":I
    :catch_0
    move-exception v13

    #@53
    .line 1010
    .local v13, "e":Ljavax/crypto/BadPaddingException;
    const/4 v10, 0x0

    #@54
    .line 1012
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
    .line 1013
    const-class v5, Ljava/lang/String;

    #@60
    const/4 v6, 0x0

    #@61
    aput-object v5, v4, v6

    #@63
    .line 1012
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    #@66
    move-result-object v10

    #@67
    .line 1017
    .end local v10    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    if-eqz v10, :cond_1

    #@69
    .line 1018
    const/4 v11, 0x0

    #@6a
    .line 1020
    .local v11, "badTagException":Ljavax/crypto/BadPaddingException;
    const/4 v3, 0x1

    #@6b
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    #@6d
    invoke-virtual {v13}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

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
    .line 1022
    .local v11, "badTagException":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v13}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v11, v3}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    #@83
    .line 1029
    .end local v11    # "badTagException":Ljavax/crypto/BadPaddingException;
    :goto_2
    if-eqz v11, :cond_1

    #@85
    .line 1030
    throw v11

    #@86
    .line 1025
    :catch_1
    move-exception v15

    #@87
    .line 1026
    .local v15, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljavax/crypto/BadPaddingException;

    #@89
    invoke-direct {v3}, Ljavax/crypto/BadPaddingException;-><init>()V

    #@8c
    invoke-virtual {v15}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v3, v4}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@93
    move-result-object v3

    #@94
    check-cast v3, Ljavax/crypto/BadPaddingException;

    #@96
    throw v3

    #@97
    .line 1033
    .end local v15    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    throw v13

    #@98
    .line 1023
    :catch_2
    move-exception v14

    #@99
    .local v14, "e2":Ljava/lang/ReflectiveOperationException;
    goto :goto_2

    #@9a
    .line 1014
    .end local v14    # "e2":Ljava/lang/ReflectiveOperationException;
    .restart local v10    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_3
    move-exception v14

    #@9b
    .restart local v14    # "e2":Ljava/lang/ReflectiveOperationException;
    goto :goto_1
.end method

.method protected engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 16
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
    .line 912
    if-nez p2, :cond_0

    #@2
    .line 913
    const/4 v10, 0x0

    #@3
    .line 914
    .local v10, "iv":[B
    const/4 v12, 0x0

    #@4
    .line 945
    .end local v10    # "iv":[B
    .local v12, "tagLenBits":I
    :goto_0
    rem-int/lit8 v13, v12, 0x8

    #@6
    if-eqz v13, :cond_3

    #@8
    .line 946
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@a
    .line 947
    new-instance v14, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v15, "Tag length must be a multiple of 8; was "

    #@12
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v14

    #@16
    move-object/from16 v0, p0

    #@18
    iget v15, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLen:I

    #@1a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v14

    #@1e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v14

    #@22
    .line 946
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@25
    throw v13

    #@26
    .line 918
    .end local v12    # "tagLenBits":I
    :cond_0
    :try_start_0
    const-string/jumbo v13, "javax.crypto.spec.GCMParameterSpec"

    #@29
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v7

    #@2d
    .line 923
    :goto_1
    if-eqz v7, :cond_1

    #@2f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v13

    #@33
    invoke-virtual {v7, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@36
    move-result v13

    #@37
    if-eqz v13, :cond_1

    #@39
    .line 925
    :try_start_1
    const-string/jumbo v13, "getTLen"

    #@3c
    const/4 v14, 0x0

    #@3d
    new-array v14, v14, [Ljava/lang/Class;

    #@3f
    invoke-virtual {v7, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@42
    move-result-object v9

    #@43
    .line 926
    .local v9, "getTLenMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v13, "getIV"

    #@46
    const/4 v14, 0x0

    #@47
    new-array v14, v14, [Ljava/lang/Class;

    #@49
    invoke-virtual {v7, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@4c
    move-result-object v8

    #@4d
    .line 927
    .local v8, "getIVMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    #@4e
    new-array v13, v13, [Ljava/lang/Object;

    #@50
    move-object/from16 v0, p2

    #@52
    invoke-virtual {v9, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v13

    #@56
    check-cast v13, Ljava/lang/Integer;

    #@58
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v12

    #@5c
    .line 928
    .restart local v12    # "tagLenBits":I
    const/4 v13, 0x0

    #@5d
    new-array v13, v13, [Ljava/lang/Object;

    #@5f
    move-object/from16 v0, p2

    #@61
    invoke-virtual {v8, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v10

    #@65
    check-cast v10, [B
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    #@67
    .local v10, "iv":[B
    goto :goto_0

    #@68
    .line 919
    .end local v8    # "getIVMethod":Ljava/lang/reflect/Method;
    .end local v9    # "getTLenMethod":Ljava/lang/reflect/Method;
    .end local v10    # "iv":[B
    .end local v12    # "tagLenBits":I
    :catch_0
    move-exception v2

    #@69
    .line 920
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const/4 v7, 0x0

    #@6a
    .local v7, "gcmSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    #@6b
    .line 931
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "gcmSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v4

    #@6c
    .line 932
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v13, Ljava/lang/RuntimeException;

    #@6e
    const-string/jumbo v14, "Could not fetch GCM parameters"

    #@71
    .line 933
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@74
    move-result-object v15

    #@75
    .line 932
    invoke-direct {v13, v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@78
    throw v13

    #@79
    .line 929
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    #@7a
    .line 930
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v13, Ljava/lang/RuntimeException;

    #@7c
    const-string/jumbo v14, "GCMParameterSpec lacks expected methods"

    #@7f
    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@82
    throw v13

    #@83
    .line 935
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    move-object/from16 v0, p2

    #@85
    instance-of v13, v0, Ljavax/crypto/spec/IvParameterSpec;

    #@87
    if-eqz v13, :cond_2

    #@89
    move-object/from16 v11, p2

    #@8b
    .line 936
    check-cast v11, Ljavax/crypto/spec/IvParameterSpec;

    #@8d
    .line 937
    .local v11, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v11}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@90
    move-result-object v10

    #@91
    .line 938
    .restart local v10    # "iv":[B
    const/4 v12, 0x0

    #@92
    .restart local v12    # "tagLenBits":I
    goto/16 :goto_0

    #@94
    .line 940
    .end local v10    # "iv":[B
    .end local v11    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v12    # "tagLenBits":I
    :cond_2
    const/4 v10, 0x0

    #@95
    .line 941
    .local v10, "iv":[B
    const/4 v12, 0x0

    #@96
    .restart local v12    # "tagLenBits":I
    goto/16 :goto_0

    #@98
    .line 950
    .end local v10    # "iv":[B
    :cond_3
    div-int/lit8 v13, v12, 0x8

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput v13, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->tagLen:I

    #@9e
    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->isEncrypting()Z

    #@a1
    move-result v5

    #@a2
    .line 954
    .local v5, "encrypting":Z
    move-object/from16 v0, p1

    #@a4
    array-length v13, v0

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v13}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->getEVP_AEAD(I)J

    #@aa
    move-result-wide v14

    #@ab
    move-object/from16 v0, p0

    #@ad
    iput-wide v14, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@af
    .line 956
    move-object/from16 v0, p0

    #@b1
    iget-wide v14, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->evpAead:J

    #@b3
    invoke-static {v14, v15}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    #@b6
    move-result v6

    #@b7
    .line 957
    .local v6, "expectedIvLength":I
    if-nez v10, :cond_7

    #@b9
    if-eqz v6, :cond_7

    #@bb
    .line 958
    if-nez v5, :cond_4

    #@bd
    .line 959
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@bf
    new-instance v14, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v15, "IV must be specified in "

    #@c7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v14

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@cf
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v14

    #@d3
    .line 960
    const-string/jumbo v15, " mode"

    #@d6
    .line 959
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v14

    #@da
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v14

    #@de
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@e1
    throw v13

    #@e2
    .line 963
    :cond_4
    new-array v10, v6, [B

    #@e4
    .line 964
    .local v10, "iv":[B
    if-nez p3, :cond_5

    #@e6
    .line 965
    new-instance p3, Ljava/security/SecureRandom;

    #@e8
    .end local p3    # "random":Ljava/security/SecureRandom;
    invoke-direct/range {p3 .. p3}, Ljava/security/SecureRandom;-><init>()V

    #@eb
    .line 967
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :cond_5
    move-object/from16 v0, p3

    #@ed
    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@f0
    .line 975
    .end local v10    # "iv":[B
    :cond_6
    move-object/from16 v0, p0

    #@f2
    iput-object v10, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->iv:[B

    #@f4
    .line 976
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->reset()V

    #@f7
    .line 909
    return-void

    #@f8
    .line 968
    :cond_7
    if-nez v6, :cond_8

    #@fa
    if-eqz v10, :cond_8

    #@fc
    .line 969
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@fe
    new-instance v14, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v15, "IV not used in "

    #@106
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v14

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget-object v15, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    #@10e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v14

    #@112
    const-string/jumbo v15, " mode"

    #@115
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v14

    #@119
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v14

    #@11d
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@120
    throw v13

    #@121
    .line 970
    :cond_8
    if-eqz v10, :cond_6

    #@123
    array-length v13, v10

    #@124
    if-eq v13, v6, :cond_6

    #@126
    .line 971
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    #@128
    new-instance v14, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v15, "Expected IV length of "

    #@130
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v14

    #@134
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@137
    move-result-object v14

    #@138
    .line 972
    const-string/jumbo v15, " but was "

    #@13b
    .line 971
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v14

    #@13f
    .line 972
    array-length v15, v10

    #@140
    .line 971
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v14

    #@144
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v14

    #@148
    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@14b
    throw v13
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
    .line 1054
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1055
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@b
    .line 1053
    :goto_0
    return-void

    #@c
    .line 1057
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@e
    array-length v2, v2

    #@f
    add-int v0, v2, p3

    #@11
    .line 1058
    .local v0, "newSize":I
    new-array v1, v0, [B

    #@13
    .line 1059
    .local v1, "newaad":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@15
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@17
    array-length v3, v3

    #@18
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b
    .line 1060
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->aad:[B

    #@1d
    array-length v2, v2

    #@1e
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@21
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
    .line 1048
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@2
    add-int v1, v0, p1

    #@4
    .line 1049
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->isEncrypting()Z

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
    .line 1048
    :goto_0
    add-int/2addr v0, v1

    #@11
    return v0

    #@12
    .line 1049
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
    .line 982
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 983
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Cipher not initialized"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 986
    :cond_0
    array-length v0, p1

    #@f
    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/ArrayUtils;->checkOffsetAndCount(III)V

    #@12
    .line 987
    if-lez p3, :cond_1

    #@14
    .line 988
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->expand(I)V

    #@17
    .line 989
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->buf:[B

    #@19
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@1b
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 990
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@20
    add-int/2addr v0, p3

    #@21
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;->bufCount:I

    #@23
    .line 992
    :cond_1
    return v2
.end method
