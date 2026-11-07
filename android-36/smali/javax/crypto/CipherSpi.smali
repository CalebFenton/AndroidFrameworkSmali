.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .registers 23
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .param p3, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 748
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_15d

    if-eqz v8, :cond_15d

    .line 752
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 753
    .local v9, "inPos":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    .line 754
    .local v10, "inLimit":I
    sub-int v4, v10, v9

    .line 755
    .local v4, "inLen":I
    const/4 v11, 0x0

    if-eqz p3, :cond_1a

    if-nez v4, :cond_1a

    .line 756
    return v11

    .line 758
    :cond_1a
    invoke-virtual {v1, v4}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v12

    .line 759
    .local v12, "outLenNeeded":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v12, :cond_13e

    .line 764
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v13

    .line 765
    .local v13, "a1":Z
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v14

    .line 767
    .local v14, "a2":Z
    if-eqz v13, :cond_5d

    if-eqz v14, :cond_5d

    .line 768
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 769
    .local v2, "inArray":[B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v3, v0, v9

    .line 770
    .local v3, "inOfs":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 771
    .local v5, "outArray":[B
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 772
    .local v0, "outPos":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v0

    .line 774
    .local v6, "outOfs":I
    if-eqz p3, :cond_4e

    .line 775
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v11

    .local v11, "n":I
    goto :goto_54

    .line 777
    .end local v11    # "n":I
    :cond_4e
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v11

    .line 779
    .restart local v11    # "n":I
    :goto_54
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 780
    add-int v1, v0, v11

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 781
    return v11

    .line 782
    .end local v0    # "outPos":I
    .end local v2    # "inArray":[B
    .end local v3    # "inOfs":I
    .end local v5    # "outArray":[B
    .end local v6    # "outOfs":I
    .end local v11    # "n":I
    :cond_5d
    if-nez v13, :cond_a8

    if-eqz v14, :cond_a8

    .line 783
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 784
    .restart local v0    # "outPos":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 785
    .restart local v5    # "outArray":[B
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, v0

    .line 786
    .local v1, "outOfs":I
    invoke-static {v4}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v2, v2, [B

    .line 787
    .restart local v2    # "inArray":[B
    const/4 v3, 0x0

    move v6, v1

    move v15, v3

    move v1, v4

    .line 789
    .end local v4    # "inLen":I
    .local v1, "inLen":I
    .restart local v6    # "outOfs":I
    .local v15, "total":I
    :cond_78
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 790
    .local v4, "chunk":I
    if-lez v4, :cond_82

    .line 791
    invoke-virtual {v7, v2, v11, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 794
    :cond_82
    if-nez p3, :cond_93

    if-eq v1, v4, :cond_89

    move/from16 v16, v1

    goto :goto_95

    .line 797
    :cond_89
    const/4 v3, 0x0

    move/from16 v16, v1

    move-object/from16 v1, p0

    .end local v1    # "inLen":I
    .local v16, "inLen":I
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v3

    .local v3, "n":I
    goto :goto_9c

    .line 794
    .end local v3    # "n":I
    .end local v16    # "inLen":I
    .restart local v1    # "inLen":I
    :cond_93
    move/from16 v16, v1

    .line 795
    .end local v1    # "inLen":I
    .restart local v16    # "inLen":I
    :goto_95
    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v3

    .line 799
    .restart local v3    # "n":I
    :goto_9c
    add-int/2addr v15, v3

    .line 800
    add-int/2addr v6, v3

    .line 801
    sub-int v1, v16, v4

    .line 802
    .end local v3    # "n":I
    .end local v4    # "chunk":I
    .end local v16    # "inLen":I
    .restart local v1    # "inLen":I
    if-gtz v1, :cond_78

    .line 803
    add-int v3, v0, v15

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 804
    return v15

    .line 808
    .end local v0    # "outPos":I
    .end local v1    # "inLen":I
    .end local v2    # "inArray":[B
    .end local v5    # "outArray":[B
    .end local v6    # "outOfs":I
    .end local v15    # "total":I
    .local v4, "inLen":I
    :cond_a8
    if-eqz v13, :cond_b5

    .line 809
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 810
    .local v0, "inArray":[B
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, v9

    move-object v2, v0

    .local v1, "inOfs":I
    goto :goto_bd

    .line 812
    .end local v0    # "inArray":[B
    .end local v1    # "inOfs":I
    :cond_b5
    invoke-static {v4}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 813
    .restart local v0    # "inArray":[B
    const/4 v1, 0x0

    move-object v2, v0

    .line 815
    .end local v0    # "inArray":[B
    .restart local v1    # "inOfs":I
    .restart local v2    # "inArray":[B
    :goto_bd
    invoke-static {v12}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 816
    .local v0, "outArray":[B
    array-length v3, v0

    .line 817
    .local v3, "outSize":I
    const/4 v5, 0x0

    .line 818
    .local v5, "total":I
    const/4 v6, 0x0

    move v15, v3

    move v3, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move-object v5, v0

    .line 820
    .end local v0    # "outArray":[B
    .end local v4    # "inLen":I
    .local v3, "inLen":I
    .local v5, "outArray":[B
    .local v15, "outSize":I
    .local v16, "total":I
    .local v17, "resized":Z
    :goto_cd
    nop

    .line 821
    if-nez v15, :cond_d2

    array-length v0, v2

    goto :goto_d3

    :cond_d2
    move v0, v15

    :goto_d3
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 822
    .local v4, "chunk":I
    if-nez v13, :cond_e1

    if-nez v17, :cond_e1

    if-lez v4, :cond_e1

    .line 823
    invoke-virtual {v7, v2, v11, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 824
    const/4 v1, 0x0

    .line 828
    :cond_e1
    if-nez p3, :cond_fa

    if-eq v3, v4, :cond_e9

    move/from16 v18, v3

    move v3, v1

    goto :goto_fd

    .line 831
    :cond_e9
    const/4 v6, 0x0

    move/from16 v18, v3

    move v3, v1

    move-object/from16 v1, p0

    .end local v1    # "inOfs":I
    .local v3, "inOfs":I
    .local v18, "inLen":I
    :try_start_ef
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0
    :try_end_f3
    .catch Ljavax/crypto/ShortBufferException; {:try_start_ef .. :try_end_f3} :catch_f6

    move-object/from16 v1, p0

    .local v0, "n":I
    goto :goto_104

    .line 840
    .end local v0    # "n":I
    :catch_f6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_119

    .line 828
    .end local v18    # "inLen":I
    .restart local v1    # "inOfs":I
    .local v3, "inLen":I
    :cond_fa
    move/from16 v18, v3

    move v3, v1

    .line 829
    .end local v1    # "inOfs":I
    .local v3, "inOfs":I
    .restart local v18    # "inLen":I
    :goto_fd
    const/4 v6, 0x0

    move-object/from16 v1, p0

    :try_start_100
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0
    :try_end_104
    .catch Ljavax/crypto/ShortBufferException; {:try_start_100 .. :try_end_104} :catch_118

    .line 833
    .restart local v0    # "n":I
    :goto_104
    const/16 v17, 0x0

    .line 834
    add-int/2addr v3, v4

    .line 835
    sub-int v6, v18, v4

    .line 836
    .end local v18    # "inLen":I
    .local v6, "inLen":I
    if-lez v0, :cond_115

    .line 837
    :try_start_10b
    invoke-virtual {v8, v5, v11, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_10e
    .catch Ljavax/crypto/ShortBufferException; {:try_start_10b .. :try_end_10e} :catch_111

    .line 838
    add-int v16, v16, v0

    goto :goto_115

    .line 840
    .end local v0    # "n":I
    :catch_111
    move-exception v0

    move/from16 v18, v6

    goto :goto_119

    .line 851
    :cond_115
    :goto_115
    move/from16 v18, v6

    goto :goto_124

    .line 840
    .end local v6    # "inLen":I
    .restart local v18    # "inLen":I
    :catch_118
    move-exception v0

    .line 841
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    :goto_119
    if-nez v17, :cond_130

    .line 848
    const/4 v6, 0x1

    .line 849
    .end local v17    # "resized":Z
    .local v6, "resized":Z
    invoke-virtual {v1, v4}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v15

    .line 850
    new-array v5, v15, [B

    move/from16 v17, v6

    .line 852
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    .end local v4    # "chunk":I
    .end local v6    # "resized":Z
    .restart local v17    # "resized":Z
    :goto_124
    if-gtz v18, :cond_12c

    .line 853
    if-eqz v13, :cond_12b

    .line 854
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 856
    :cond_12b
    return v16

    .line 852
    :cond_12c
    move v1, v3

    move/from16 v3, v18

    goto :goto_cd

    .line 844
    .restart local v0    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v4    # "chunk":I
    :cond_130
    new-instance v6, Ljava/security/ProviderException;

    const-string v11, "Could not determine buffer size"

    invoke-direct {v6, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v6, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/security/ProviderException;

    throw v6

    .line 760
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    .end local v2    # "inArray":[B
    .end local v3    # "inOfs":I
    .end local v5    # "outArray":[B
    .end local v13    # "a1":Z
    .end local v14    # "a2":Z
    .end local v15    # "outSize":I
    .end local v16    # "total":I
    .end local v17    # "resized":Z
    .end local v18    # "inLen":I
    .local v4, "inLen":I
    :cond_13e
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes of space in output buffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    .end local v4    # "inLen":I
    .end local v9    # "inPos":I
    .end local v10    # "inLimit":I
    .end local v12    # "outLenNeeded":I
    :cond_15d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Input and output buffers must not be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o getTempArraySize(I)I
    .registers 2
    .param p0, "totalSize"    # I

    .line 738
    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result v0

    return v0
.end method

.method protected abstract whitelist test-api engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineGetBlockSize()I
.end method

.method protected abstract whitelist test-api engineGetIV()[B
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 947
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineGetOutputSize(I)I
.end method

.method protected abstract whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 5
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 556
    const-string v0, "Internal error in update()"

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, p1, p2, v1}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result v0
    :try_end_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_7} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 560
    :catch_8
    move-exception v1

    .line 562
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_f
    move-exception v1

    .line 559
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract whitelist test-api engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineUpdate([BII)[B
.end method

.method protected whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1008
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The underlying Cipher implementation does not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdateAAD([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 975
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The underlying Cipher implementation does not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
