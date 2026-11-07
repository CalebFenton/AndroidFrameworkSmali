.class Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;
.super Ljava/lang/Object;
.source "SaRecord.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaRecordHelper"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getChildSharedKey(Ljava/util/List;Ljava/util/List;Z)[B
    .registers 10
    .param p2, "isLocalInit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 366
    .local p0, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p1, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 367
    const/16 v1, 0x22

    invoke-static {v1, v0, p0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 370
    .local v0, "keInitPayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    if-nez v0, :cond_10

    .line 371
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 374
    :cond_10
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 375
    invoke-static {v1, v2, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 377
    .local v1, "keRespPayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    if-eqz p2, :cond_1c

    move-object v2, v0

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    .line 378
    .local v2, "localKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    :goto_1d
    if-eqz p2, :cond_21

    move-object v3, v1

    goto :goto_22

    :cond_21
    move-object v3, v0

    .line 379
    .local v3, "remoteKePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    :goto_22
    iget-object v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->localPrivateKey:Ljava/security/PrivateKey;

    iget-object v5, v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    iget v6, v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->getSharedKey(Ljava/security/PrivateKey;[BI)[B

    move-result-object v4

    return-object v4
.end method

.method private blacklist getSharedKey(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B
    .registers 8
    .param p1, "keLocalMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "keRemoteMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 253
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 254
    const/16 v1, 0x22

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 256
    .local v0, "keLocalPayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 257
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    .line 260
    .local v1, "keRemotePayload":Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->localPrivateKey:Ljava/security/PrivateKey;

    iget-object v3, v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    iget v4, v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->getSharedKey(Ljava/security/PrivateKey;[BI)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist makeChildSaRecord(Ljava/util/List;Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .registers 8
    .param p3, "childSaRecordConfig"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;",
            ")",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    .local p1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 342
    const/16 v1, 0x28

    invoke-static {v1, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 347
    .local v0, "nonceInit":[B
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 348
    invoke-static {v1, v2, p2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 353
    .local v1, "nonceResp":[B
    iget-boolean v2, p3, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->isLocalInit:Z

    .line 354
    invoke-static {p1, p2, v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;->getChildSharedKey(Ljava/util/List;Ljava/util/List;Z)[B

    move-result-object v2

    .line 356
    .local v2, "sharedDhKey":[B
    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;->makeChildSaRecord([B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    move-result-object v3

    return-object v3
.end method

.method blacklist makeChildSaRecord([B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .registers 33
    .param p1, "sharedKey"    # [B
    .param p2, "nonceInit"    # [B
    .param p3, "nonceResp"    # [B
    .param p4, "childSaRecordConfig"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v15, p4

    array-length v0, v1

    array-length v2, v6

    add-int/2addr v0, v2

    array-length v2, v7

    add-int/2addr v0, v2

    .line 401
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 402
    .local v2, "bufferToSign":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 405
    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->encryptionAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getKeyLength()I

    move-result v3

    .line 407
    .local v3, "encryptionKeyLength":I
    iget-boolean v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->hasIntegrityAlgo:Z

    if-eqz v0, :cond_2d

    .line 408
    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->integrityAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getKeyLength()I

    move-result v0

    goto :goto_2e

    .line 409
    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    move v4, v0

    .line 410
    .local v4, "integrityKeyLength":I
    mul-int/lit8 v0, v3, 0x2

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v0

    .line 411
    .local v5, "keyMaterialLen":I
    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->ikePrf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    iget-object v8, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->skD:[B

    .line 413
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 412
    invoke-virtual {v0, v8, v9, v5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->generateKeyMat([B[BI)[B

    move-result-object v16

    .line 418
    .local v16, "keyMat":[B
    new-array v10, v3, [B

    .line 419
    .local v10, "skEi":[B
    new-array v8, v4, [B

    .line 420
    .local v8, "skAi":[B
    new-array v11, v3, [B

    .line 421
    .local v11, "skEr":[B
    new-array v9, v4, [B

    .line 423
    .local v9, "skAr":[B
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 424
    .local v12, "keyMatBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    const/4 v13, 0x0

    .line 429
    .local v13, "initTransform":Landroid/net/IpSecTransform;
    const/4 v14, 0x0

    .line 432
    .local v14, "respTransform":Landroid/net/IpSecTransform;
    :try_start_5d
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/SaRecord;->-$$Nest$sfgetsIpSecTransformHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

    move-result-object v17

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->initAddress:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->udpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-object/from16 v20, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->integrityAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    move-object/from16 v22, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->encryptionAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-object/from16 v23, v0

    iget-boolean v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->isTransport:Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7b} :catch_15c

    .line 433
    move/from16 v26, v0

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v8    # "skAi":[B
    .end local v10    # "skEi":[B
    .local v24, "skAi":[B
    .local v25, "skEi":[B
    :try_start_81
    invoke-interface/range {v17 .. v26}, Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;->makeIpSecTransform(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/IpSecManager$SecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BZ)Landroid/net/IpSecTransform;

    move-result-object v0
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_85} :catch_14a

    .end local v24    # "skAi":[B
    .end local v25    # "skEi":[B
    .restart local v8    # "skAi":[B
    .restart local v10    # "skEi":[B
    move-object/from16 v27, v0

    .line 443
    .end local v13    # "initTransform":Landroid/net/IpSecTransform;
    .local v27, "initTransform":Landroid/net/IpSecTransform;
    :try_start_87
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/SaRecord;->-$$Nest$sfgetsIpSecTransformHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

    move-result-object v17

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->context:Landroid/content/Context;

    iget-object v13, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->respAddress:Ljava/net/InetAddress;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->udpEncapSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-object/from16 v20, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    move-object/from16 v21, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->integrityAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;

    move-object/from16 v22, v0

    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->encryptionAlgo:Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;

    move-object/from16 v23, v0

    iget-boolean v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->isTransport:Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a3} :catch_13a

    .line 444
    move/from16 v26, v0

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v19, v13

    .end local v9    # "skAr":[B
    .end local v11    # "skEr":[B
    .local v24, "skAr":[B
    .local v25, "skEr":[B
    :try_start_ab
    invoke-interface/range {v17 .. v26}, Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;->makeIpSecTransform(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/IpSecManager$SecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BZ)Landroid/net/IpSecTransform;

    move-result-object v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_12a

    .end local v25    # "skEr":[B
    .restart local v11    # "skEr":[B
    move-object/from16 v17, v0

    .line 455
    .end local v14    # "respTransform":Landroid/net/IpSecTransform;
    .local v17, "respTransform":Landroid/net/IpSecTransform;
    :try_start_b1
    iget-object v0, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->initSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v0}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v0

    .line 456
    .local v0, "initSpi":I
    iget-object v9, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->respSpi:Landroid/net/IpSecManager$SecurityParameterIndex;

    invoke-virtual {v9}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v9

    move/from16 v18, v9

    .line 458
    .local v18, "respSpi":I
    iget-boolean v9, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->isLocalInit:Z
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c1} :catch_11a

    .line 459
    .local v9, "isLocalInit":Z
    if-eqz v9, :cond_c5

    move v13, v0

    goto :goto_c7

    :cond_c5
    move/from16 v13, v18

    .line 460
    .local v13, "inSpi":I
    :goto_c7
    if-eqz v9, :cond_cc

    move/from16 v14, v18

    goto :goto_cd

    :cond_cc
    move v14, v0

    .line 461
    .local v14, "outSpi":I
    :goto_cd
    if-eqz v9, :cond_d2

    move-object/from16 v19, v17

    goto :goto_d4

    :cond_d2
    move-object/from16 v19, v27

    .line 462
    .local v19, "inTransform":Landroid/net/IpSecTransform;
    :goto_d4
    if-eqz v9, :cond_d9

    move-object/from16 v20, v27

    goto :goto_db

    :cond_d9
    move-object/from16 v20, v17

    .line 464
    .local v20, "outTransform":Landroid/net/IpSecTransform;
    :goto_db
    move-object/from16 v21, v2

    .end local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .local v21, "bufferToSign":Ljava/nio/ByteBuffer;
    :try_start_dd
    new-instance v2, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_df} :catch_10c

    move/from16 v22, v4

    move v4, v14

    .end local v14    # "outSpi":I
    .local v4, "outSpi":I
    .local v22, "integrityKeyLength":I
    :try_start_e2
    iget-object v14, v15, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;->saLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e4} :catch_ff

    move-object/from16 v23, v12

    move-object/from16 v12, v19

    move/from16 v19, v3

    move v3, v13

    move-object/from16 v13, v20

    move/from16 v20, v5

    move v5, v9

    move-object/from16 v9, v24

    .end local v24    # "skAr":[B
    .local v3, "inSpi":I
    .local v5, "isLocalInit":Z
    .local v9, "skAr":[B
    .local v12, "inTransform":Landroid/net/IpSecTransform;
    .local v13, "outTransform":Landroid/net/IpSecTransform;
    .local v19, "encryptionKeyLength":I
    .local v20, "keyMaterialLen":I
    .local v23, "keyMatBuffer":Ljava/nio/ByteBuffer;
    :try_start_f2
    invoke-direct/range {v2 .. v14}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;-><init>(IIZ[B[B[B[B[B[BLandroid/net/IpSecTransform;Landroid/net/IpSecTransform;Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_f6

    .end local v9    # "skAr":[B
    .restart local v24    # "skAr":[B
    return-object v2

    .line 478
    .end local v0    # "initSpi":I
    .end local v3    # "inSpi":I
    .end local v4    # "outSpi":I
    .end local v5    # "isLocalInit":Z
    .end local v12    # "inTransform":Landroid/net/IpSecTransform;
    .end local v13    # "outTransform":Landroid/net/IpSecTransform;
    .end local v18    # "respSpi":I
    .end local v24    # "skAr":[B
    .restart local v9    # "skAr":[B
    :catch_f6
    move-exception v0

    move-object/from16 v24, v9

    move-object/from16 v14, v17

    move-object/from16 v13, v27

    .end local v9    # "skAr":[B
    .restart local v24    # "skAr":[B
    goto/16 :goto_169

    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .local v3, "encryptionKeyLength":I
    .local v5, "keyMaterialLen":I
    .local v12, "keyMatBuffer":Ljava/nio/ByteBuffer;
    :catch_ff
    move-exception v0

    move/from16 v19, v3

    move/from16 v20, v5

    move-object/from16 v23, v12

    move-object/from16 v14, v17

    move-object/from16 v13, v27

    .end local v3    # "encryptionKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    goto/16 :goto_169

    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v22    # "integrityKeyLength":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "encryptionKeyLength":I
    .local v4, "integrityKeyLength":I
    .restart local v5    # "keyMaterialLen":I
    .restart local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    :catch_10c
    move-exception v0

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v20, v5

    move-object/from16 v23, v12

    move-object/from16 v14, v17

    move-object/from16 v13, v27

    .end local v3    # "encryptionKeyLength":I
    .end local v4    # "integrityKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v22    # "integrityKeyLength":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    goto :goto_169

    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v22    # "integrityKeyLength":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v3    # "encryptionKeyLength":I
    .restart local v4    # "integrityKeyLength":I
    .restart local v5    # "keyMaterialLen":I
    .restart local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    :catch_11a
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v20, v5

    move-object/from16 v23, v12

    move-object/from16 v14, v17

    move-object/from16 v13, v27

    .end local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v3    # "encryptionKeyLength":I
    .end local v4    # "integrityKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v22    # "integrityKeyLength":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    goto :goto_169

    .end local v11    # "skEr":[B
    .end local v17    # "respTransform":Landroid/net/IpSecTransform;
    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v22    # "integrityKeyLength":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v3    # "encryptionKeyLength":I
    .restart local v4    # "integrityKeyLength":I
    .restart local v5    # "keyMaterialLen":I
    .restart local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .local v14, "respTransform":Landroid/net/IpSecTransform;
    .restart local v25    # "skEr":[B
    :catch_12a
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v20, v5

    move-object/from16 v23, v12

    move-object/from16 v11, v25

    move-object/from16 v13, v27

    .end local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v3    # "encryptionKeyLength":I
    .end local v4    # "integrityKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .end local v25    # "skEr":[B
    .restart local v11    # "skEr":[B
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v22    # "integrityKeyLength":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    goto :goto_169

    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v22    # "integrityKeyLength":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .end local v24    # "skAr":[B
    .restart local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v3    # "encryptionKeyLength":I
    .restart local v4    # "integrityKeyLength":I
    .restart local v5    # "keyMaterialLen":I
    .restart local v9    # "skAr":[B
    .restart local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    :catch_13a
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v20, v5

    move-object/from16 v24, v9

    move-object/from16 v23, v12

    move-object/from16 v13, v27

    .end local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v3    # "encryptionKeyLength":I
    .end local v4    # "integrityKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v9    # "skAr":[B
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v22    # "integrityKeyLength":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v24    # "skAr":[B
    goto :goto_169

    .end local v8    # "skAi":[B
    .end local v10    # "skEi":[B
    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v22    # "integrityKeyLength":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .end local v27    # "initTransform":Landroid/net/IpSecTransform;
    .restart local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v3    # "encryptionKeyLength":I
    .restart local v4    # "integrityKeyLength":I
    .restart local v5    # "keyMaterialLen":I
    .restart local v9    # "skAr":[B
    .restart local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .local v13, "initTransform":Landroid/net/IpSecTransform;
    .local v24, "skAi":[B
    .local v25, "skEi":[B
    :catch_14a
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v20, v5

    move-object/from16 v23, v12

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v24, v9

    .end local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v3    # "encryptionKeyLength":I
    .end local v4    # "integrityKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v9    # "skAr":[B
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .end local v25    # "skEi":[B
    .restart local v8    # "skAi":[B
    .restart local v10    # "skEi":[B
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v22    # "integrityKeyLength":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .local v24, "skAr":[B
    goto :goto_169

    .end local v19    # "encryptionKeyLength":I
    .end local v20    # "keyMaterialLen":I
    .end local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v22    # "integrityKeyLength":I
    .end local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .end local v24    # "skAr":[B
    .restart local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v3    # "encryptionKeyLength":I
    .restart local v4    # "integrityKeyLength":I
    .restart local v5    # "keyMaterialLen":I
    .restart local v9    # "skAr":[B
    .restart local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    :catch_15c
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v20, v5

    move-object/from16 v24, v9

    move-object/from16 v23, v12

    .line 479
    .end local v2    # "bufferToSign":Ljava/nio/ByteBuffer;
    .end local v3    # "encryptionKeyLength":I
    .end local v4    # "integrityKeyLength":I
    .end local v5    # "keyMaterialLen":I
    .end local v9    # "skAr":[B
    .end local v12    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "encryptionKeyLength":I
    .restart local v20    # "keyMaterialLen":I
    .restart local v21    # "bufferToSign":Ljava/nio/ByteBuffer;
    .restart local v22    # "integrityKeyLength":I
    .restart local v23    # "keyMatBuffer":Ljava/nio/ByteBuffer;
    .restart local v24    # "skAr":[B
    :goto_169
    if-eqz v13, :cond_16e

    invoke-virtual {v13}, Landroid/net/IpSecTransform;->close()V

    .line 480
    :cond_16e
    if-eqz v14, :cond_173

    invoke-virtual {v14}, Landroid/net/IpSecTransform;->close()V

    .line 481
    :cond_173
    throw v0
.end method

.method public blacklist makeFirstIkeSaRecord(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 9
    .param p1, "initRequest"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "initResponse"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p3, "ikeSaRecordConfig"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 204
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 205
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 208
    .local v0, "nonceInit":[B
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 209
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 214
    .local v1, "nonceResp":[B
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;->getSharedKey(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B

    move-result-object v2

    .line 215
    .local v2, "sharedDhKey":[B
    iget-object v3, p3, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->prf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 216
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->generateSKeySeed([B[B[B)[B

    move-result-object v3

    .line 218
    .local v3, "sKeySeed":[B
    invoke-virtual {p0, v3, v0, v1, p3}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;->makeIkeSaRecord([B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v4

    return-object v4
.end method

.method blacklist makeIkeSaRecord([B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 29
    .param p1, "sKeySeed"    # [B
    .param p2, "nonceInit"    # [B
    .param p3, "nonceResp"    # [B
    .param p4, "ikeSaRecordConfig"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;

    .line 279
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v14, p4

    array-length v0, v4

    array-length v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    .line 280
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 283
    .local v15, "bufferToSign":Ljava/nio/ByteBuffer;
    iget-object v1, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->initSpi:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 284
    .local v1, "initSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    iget-object v2, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->respSpi:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 285
    .local v2, "respSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    iget-object v0, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->prf:Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;

    .line 286
    .local v0, "prf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    iget v3, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->integrityKeyLength:I

    .line 287
    .local v3, "integrityKeyLength":I
    iget v6, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->encryptionKeyLength:I

    .line 289
    .local v6, "encryptionKeyLength":I
    nop

    .line 290
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 291
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 292
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 293
    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getKeyLength()I

    move-result v7

    .line 298
    .local v7, "skDLength":I
    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v7

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    .line 302
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getKeyLength()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 303
    .local v8, "keyMaterialLen":I
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v0, v10, v9, v8}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->generateKeyMat([B[BI)[B

    move-result-object v16

    .line 306
    .local v16, "keyMat":[B
    new-array v9, v7, [B

    .line 307
    .local v9, "skD":[B
    move v11, v7

    .end local v7    # "skDLength":I
    .local v11, "skDLength":I
    new-array v7, v3, [B

    .line 308
    .local v7, "skAi":[B
    move v12, v8

    .end local v8    # "keyMaterialLen":I
    .local v12, "keyMaterialLen":I
    new-array v8, v3, [B

    .line 309
    .local v8, "skAr":[B
    new-array v13, v6, [B

    .line 310
    .local v13, "skEi":[B
    new-array v10, v6, [B

    .line 311
    .local v10, "skEr":[B
    move-object/from16 v17, v0

    .end local v0    # "prf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .local v17, "prf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getKeyLength()I

    move-result v0

    new-array v0, v0, [B

    .line 312
    .local v0, "skPi":[B
    move-object/from16 v18, v1

    .end local v1    # "initSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .local v18, "initSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->getKeyLength()I

    move-result v1

    new-array v1, v1, [B

    .line 314
    .local v1, "skPr":[B
    move-object/from16 v19, v15

    .end local v15    # "bufferToSign":Ljava/nio/ByteBuffer;
    .local v19, "bufferToSign":Ljava/nio/ByteBuffer;
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 315
    .local v15, "keyMatBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v20, v2

    .end local v2    # "respSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .local v20, "respSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 316
    move v2, v11

    move-object v11, v0

    .end local v0    # "skPi":[B
    .local v2, "skDLength":I
    .local v11, "skPi":[B
    new-instance v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move/from16 v21, v3

    .end local v3    # "integrityKeyLength":I
    .local v21, "integrityKeyLength":I
    iget-boolean v3, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->isLocalInit:Z

    move/from16 v22, v6

    move-object v6, v9

    move-object v9, v13

    .end local v13    # "skEi":[B
    .local v6, "skD":[B
    .local v9, "skEi":[B
    .local v22, "encryptionKeyLength":I
    iget-object v13, v14, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->saLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    move/from16 v23, v12

    move-object v12, v1

    move-object/from16 v1, v18

    move/from16 v18, v2

    move-object/from16 v2, v20

    move/from16 v20, v23

    .local v1, "initSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .local v2, "respSpi":Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .local v12, "skPr":[B
    .local v18, "skDLength":I
    .local v20, "keyMaterialLen":I
    invoke-direct/range {v0 .. v13}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Z[B[B[B[B[B[B[B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V

    return-object v0
.end method

.method public blacklist makeRekeyedIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 13
    .param p1, "oldSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p2, "oldPrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p3, "rekeyRequest"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p4, "rekeyResponse"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p5, "ikeSaRecordConfig"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 230
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 231
    const/16 v1, 0x28

    invoke-virtual {p3, v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 234
    .local v0, "nonceInit":[B
    const-class v2, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    .line 235
    invoke-virtual {p4, v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 240
    .local v1, "nonceResp":[B
    iget-boolean v2, p5, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->isLocalInit:Z

    if-eqz v2, :cond_1c

    move-object v2, p3

    goto :goto_1d

    :cond_1c
    move-object v2, p4

    .line 241
    .local v2, "localMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :goto_1d
    iget-boolean v3, p5, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;->isLocalInit:Z

    if-eqz v3, :cond_23

    move-object v3, p4

    goto :goto_24

    :cond_23
    move-object v3, p3

    .line 243
    .local v3, "remoteMsg":Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    :goto_24
    invoke-direct {p0, v2, v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;->getSharedKey(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B

    move-result-object v4

    .line 244
    .local v4, "sharedDhKey":[B
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->-$$Nest$fgetmSkD(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)[B

    move-result-object v5

    .line 245
    invoke-virtual {p2, v5, v0, v1, v4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->generateRekeyedSKeySeed([B[B[B[B)[B

    move-result-object v5

    .line 248
    .local v5, "sKeySeed":[B
    invoke-virtual {p0, v5, v0, v1, p5}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;->makeIkeSaRecord([B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v6

    return-object v6
.end method
