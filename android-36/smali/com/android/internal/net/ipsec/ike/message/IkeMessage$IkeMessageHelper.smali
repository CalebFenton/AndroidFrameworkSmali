.class public final Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;
.super Ljava/lang/Object;
.source "IkeMessage.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IkeMessageHelper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .registers 21
    .param p1, "expectedMsgId"    # I
    .param p2, "header"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p3, "inputPacket"    # [B
    .param p4, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p5, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p6, "integrityKey"    # [B
    .param p7, "decryptionKey"    # [B
    .param p8, "collectedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 743
    move-object/from16 v6, p8

    const-string v1, "IkeMessage"

    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    const/16 v2, 0x2e

    const/16 v3, 0x35

    if-eq v0, v2, :cond_1d

    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    if-eq v0, v3, :cond_1d

    .line 745
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;

    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Message contains unprotected payloads"

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;-><init>(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v0

    .line 752
    :cond_1d
    nop

    .line 753
    :try_start_1e
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->decryptAndAuthenticate(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Landroid/util/Pair;

    move-result-object v0
    :try_end_22
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_1e .. :try_end_22} :catch_e0

    move-object v7, v0

    .line 773
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;Ljava/lang/Integer;>;"
    nop

    .line 776
    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v4

    :goto_2d
    move v8, v0

    .line 777
    .local v8, "isFragment":Z
    if-eqz v6, :cond_31

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    move v9, v2

    .line 779
    .local v9, "fragReassemblyStarted":Z
    if-eqz v8, :cond_6b

    .line 780
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an IKE fragment ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;

    iget v3, v3, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_6b
    if-nez v8, :cond_79

    if-eqz v9, :cond_79

    .line 792
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    .line 793
    const-string v2, "Received a complete IKE message while doing IKE fragment reassembly. Discard the newly received message."

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-object v6

    .line 800
    :cond_79
    move-object v0, p3

    .line 801
    .local v0, "firstPacket":[B
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->getUnencryptedData()[B

    move-result-object v10

    .line 802
    .local v10, "decryptedBytes":[B
    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 805
    .local v11, "firstPayloadType":I
    if-eqz v8, :cond_b5

    .line 806
    array-length v1, p3

    invoke-direct {p0, p2, v1, v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->validateFragmentHeader(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)V

    .line 809
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 814
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 810
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->processIkeFragment(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    move-result-object v4

    .line 817
    .local v4, "DecodeResultPartial":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->isAllFragmentsReceived()Z

    move-result v1

    if-nez v1, :cond_ab

    return-object v4

    .line 819
    :cond_ab
    iget v11, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstPayloadType:I

    .line 820
    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->reassembleAllFrags()[B

    move-result-object v10

    .line 821
    iget-object v0, v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->firstFragBytes:[B

    move-object v1, v0

    goto :goto_b6

    .line 805
    .end local v4    # "DecodeResultPartial":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    :cond_b5
    move-object v1, v0

    .line 828
    .end local v0    # "firstPacket":[B
    .local v1, "firstPacket":[B
    :goto_b6
    :try_start_b6
    iget-boolean v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    .line 829
    invoke-static {v11, v0, v10}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->-$$Nest$smdecodePayloadList(IZ[B)Ljava/util/List;

    move-result-object v0

    .line 831
    .local v0, "supportedPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    array-length v4, p3

    invoke-virtual {p2, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->validateInboundHeader(I)V

    .line 832
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;

    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v5, p2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    invoke-direct {v4, v5, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[B)V
    :try_end_ca
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_b6 .. :try_end_ca} :catch_d2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_b6 .. :try_end_ca} :catch_d2
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_b6 .. :try_end_ca} :catch_cb

    return-object v4

    .line 838
    .end local v0    # "supportedPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :catch_cb
    move-exception v0

    .line 839
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;-><init>(Landroid/net/ipsec/ike/exceptions/IkeException;[B)V

    return-object v4

    .line 834
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :catch_d2
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;

    new-instance v5, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v6, "Malformed IKE Payload"

    invoke-direct {v5, v6, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v4, v5, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;-><init>(Landroid/net/ipsec/ike/exceptions/IkeException;[B)V

    return-object v4

    .line 761
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "firstPacket":[B
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;Ljava/lang/Integer;>;"
    .end local v8    # "isFragment":Z
    .end local v9    # "fragReassemblyStarted":Z
    .end local v10    # "decryptedBytes":[B
    .end local v11    # "firstPayloadType":I
    :catch_e0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    if-nez p8, :cond_e9

    .line 763
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;-><init>(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v1

    .line 765
    :cond_e9
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v4

    .line 766
    const-string v5, "Message authentication or decryption failed on received message. Discard it "

    invoke-virtual {v4, v1, v5, v0}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    return-object p8
.end method

.method private blacklist decryptAndAuthenticate(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Landroid/util/Pair;
    .registers 15
    .param p1, "expectedMsgId"    # I
    .param p2, "header"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p3, "inputPacket"    # [B
    .param p4, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p5, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p6, "integrityKey"    # [B
    .param p7, "decryptionKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/net/ipsec/ike/message/IkeHeader;",
            "[B",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;",
            "[B[B)",
            "Landroid/util/Pair<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    .line 854
    :try_start_0
    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    if-ne v0, p1, :cond_1b

    .line 858
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->validateMajorVersion()V

    .line 860
    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I
    :try_end_9
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_9} :catch_3a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_9} :catch_3a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_9} :catch_2e

    const/16 v1, 0x35

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v1, v0

    .line 861
    .local v1, "isSkf":Z
    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p3    # "inputPacket":[B
    .end local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p6    # "integrityKey":[B
    .end local p7    # "decryptionKey":[B
    .local v2, "inputPacket":[B
    .local v3, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v4, "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v5, "integrityKey":[B
    .local v6, "decryptionKey":[B
    :try_start_16
    invoke-static/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->getIkeSkPayload(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Landroid/util/Pair;

    move-result-object p3

    return-object p3

    .line 855
    .end local v1    # "isSkf":Z
    .end local v2    # "inputPacket":[B
    .end local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v5    # "integrityKey":[B
    .end local v6    # "decryptionKey":[B
    .restart local p3    # "inputPacket":[B
    .restart local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local p6    # "integrityKey":[B
    .restart local p7    # "decryptionKey":[B
    :cond_1b
    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p3    # "inputPacket":[B
    .end local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p6    # "integrityKey":[B
    .end local p7    # "decryptionKey":[B
    .restart local v2    # "inputPacket":[B
    .restart local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local v5    # "integrityKey":[B
    .restart local v6    # "decryptionKey":[B
    new-instance p3, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;

    iget p4, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-direct {p3, p4}, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;-><init>(I)V

    .end local v2    # "inputPacket":[B
    .end local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v5    # "integrityKey":[B
    .end local v6    # "decryptionKey":[B
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;
    .end local p1    # "expectedMsgId":I
    .end local p2    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    throw p3
    :try_end_28
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_16 .. :try_end_28} :catch_2b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_16 .. :try_end_28} :catch_2b
    .catch Ljava/security/GeneralSecurityException; {:try_start_16 .. :try_end_28} :catch_28

    .line 870
    .restart local v2    # "inputPacket":[B
    .restart local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local v5    # "integrityKey":[B
    .restart local v6    # "decryptionKey":[B
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;
    .restart local p1    # "expectedMsgId":I
    .restart local p2    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    :catch_28
    move-exception v0

    move-object p3, v0

    goto :goto_35

    .line 868
    :catch_2b
    move-exception v0

    move-object p3, v0

    goto :goto_41

    .line 870
    .end local v2    # "inputPacket":[B
    .end local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v5    # "integrityKey":[B
    .end local v6    # "decryptionKey":[B
    .restart local p3    # "inputPacket":[B
    .restart local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local p6    # "integrityKey":[B
    .restart local p7    # "decryptionKey":[B
    :catch_2e
    move-exception v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object p3, v0

    .line 871
    .end local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p6    # "integrityKey":[B
    .end local p7    # "decryptionKey":[B
    .restart local v2    # "inputPacket":[B
    .restart local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local v5    # "integrityKey":[B
    .restart local v6    # "decryptionKey":[B
    .local p3, "e":Ljava/security/GeneralSecurityException;
    :goto_35
    invoke-static {p3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object p4

    throw p4

    .line 868
    .end local v2    # "inputPacket":[B
    .end local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v5    # "integrityKey":[B
    .end local v6    # "decryptionKey":[B
    .local p3, "inputPacket":[B
    .restart local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local p6    # "integrityKey":[B
    .restart local p7    # "decryptionKey":[B
    :catch_3a
    move-exception v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object p3, v0

    .line 869
    .end local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p6    # "integrityKey":[B
    .end local p7    # "decryptionKey":[B
    .restart local v2    # "inputPacket":[B
    .restart local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local v5    # "integrityKey":[B
    .restart local v6    # "decryptionKey":[B
    .local p3, "e":Ljava/lang/RuntimeException;
    :goto_41
    new-instance p4, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string p5, "Malformed IKE Payload"

    invoke-direct {p4, p5, p3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method private blacklist encodeHeaderAndBody(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;I)[B
    .registers 6
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "skPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    .param p3, "firstInnerPayload"    # I

    .line 680
    nop

    .line 681
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->getPayloadLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 682
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->getPayloadLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->encodeToByteBuffer(Ljava/nio/ByteBuffer;I)V

    .line 683
    invoke-virtual {p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->encodeToByteBuffer(ILjava/nio/ByteBuffer;)V

    .line 684
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist processIkeFragment(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .registers 13
    .param p1, "header"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "inputPacket"    # [B
    .param p3, "skf"    # Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .param p4, "nextPayloadType"    # I
    .param p5, "collectedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 904
    if-nez p5, :cond_12

    .line 905
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local p2    # "inputPacket":[B
    .end local p3    # "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .end local p4    # "nextPayloadType":I
    .end local p5    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .local v1, "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v2, "inputPacket":[B
    .local v3, "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .local v4, "nextPayloadType":I
    .local v5, "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)V

    move-object p1, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    .end local v1    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v2, "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v3, "inputPacket":[B
    .local v4, "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .local v5, "nextPayloadType":I
    .local p1, "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    return-object v0

    .line 909
    .end local v2    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local v3    # "inputPacket":[B
    .end local v4    # "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .end local v5    # "nextPayloadType":I
    .local p1, "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .restart local p2    # "inputPacket":[B
    .restart local p3    # "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .restart local p4    # "nextPayloadType":I
    .restart local p5    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    :cond_12
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, p5

    .end local p2    # "inputPacket":[B
    .end local p3    # "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .end local p4    # "nextPayloadType":I
    .end local p5    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .restart local v2    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .restart local v3    # "inputPacket":[B
    .restart local v4    # "skf":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .restart local v5    # "nextPayloadType":I
    .local p1, "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    iget p2, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    iget-object p3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    array-length p3, p3

    const-string p4, "IkeMessage"

    if-le p2, p3, :cond_30

    .line 910
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object p2

    .line 911
    const-string p3, "Received IKE fragment has larger total fragments number. Discard all previously collected fragments"

    invoke-virtual {p2, p4, p3}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)V

    return-object v1

    .line 919
    :cond_30
    iget p2, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->totalFragments:I

    iget-object p3, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    array-length p3, p3

    if-ge p2, p3, :cond_41

    .line 920
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object p2

    .line 921
    const-string p3, "Received IKE fragment has smaller total fragments number. Discard it."

    invoke-virtual {p2, p4, p3}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return-object p1

    .line 928
    :cond_41
    iget-object p2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->collectedFragsList:[[B

    iget p3, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;->fragmentNum:I

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    if-eqz p2, :cond_55

    .line 929
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object p2

    const-string p3, "Received IKE fragment is a replay."

    invoke-virtual {p2, p4, p3}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-object p1

    .line 933
    :cond_55
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    move-object v6, p1

    .end local p1    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .local v6, "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)V

    .end local v6    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .restart local p1    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    return-object v1
.end method

.method private blacklist validateFragmentHeader(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;ILcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)V
    .registers 8
    .param p1, "fragIkeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "packetLen"    # I
    .param p3, "collectedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 878
    const-string v0, "IkeMessage"

    :try_start_2
    invoke-virtual {p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->validateInboundHeader(I)V
    :try_end_5
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_2 .. :try_end_5} :catch_6

    .line 886
    goto :goto_10

    .line 879
    :catch_6
    move-exception v1

    .line 880
    .local v1, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v2

    .line 881
    const-string v3, "Received an IKE fragment with invalid header. Will be handled when reassembly is done."

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    .end local v1    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :goto_10
    if-nez p3, :cond_13

    return-void

    .line 889
    :cond_13
    iget v1, p1, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    iget-object v2, p3, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    if-eq v1, v2, :cond_24

    .line 890
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    .line 891
    const-string v2, "Received an IKE fragment with different exchange type from previously collected fragments. Ignore it."

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_24
    return-void
.end method


# virtual methods
.method public blacklist decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .registers 17
    .param p1, "expectedMsgId"    # I
    .param p2, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p3, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p4, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p5, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p6, "packet"    # [B
    .param p7, "collectedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 723
    nop

    .line 729
    invoke-virtual {p4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInboundIntegrityKey()[B

    move-result-object v6

    .line 730
    invoke-virtual {p4}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getInboundDecryptionKey()[B

    move-result-object v7

    .line 723
    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v6

    return-object v6
.end method

.method public blacklist decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .registers 8
    .param p1, "expectedMsgId"    # I
    .param p2, "header"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p3, "inputPacket"    # [B

    .line 690
    :try_start_0
    iget v0, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    if-ne v0, p1, :cond_25

    .line 694
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->validateMajorVersion()V

    .line 695
    array-length v0, p3

    invoke-virtual {p2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->validateInboundHeader(I)V

    .line 697
    array-length v0, p3

    .line 698
    const/16 v1, 0x1c

    invoke-static {p3, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 700
    .local v0, "unencryptedPayloads":[B
    iget v1, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    iget-boolean v2, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    .line 701
    invoke-static {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->-$$Nest$smdecodePayloadList(IZ[B)Ljava/util/List;

    move-result-object v1

    .line 703
    .local v1, "supportedPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    invoke-direct {v3, p2, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V

    invoke-direct {v2, v3, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;[B)V

    return-object v2

    .line 691
    .end local v0    # "unencryptedPayloads":[B
    .end local v1    # "supportedPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :cond_25
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;

    iget v1, p2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;-><init>(I)V

    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;
    .end local p1    # "expectedMsgId":I
    .end local p2    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local p3    # "inputPacket":[B
    throw v0
    :try_end_2d
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_2d} :catch_34
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_2d} :catch_34
    .catch Landroid/net/ipsec/ike/exceptions/IkeProtocolException; {:try_start_0 .. :try_end_2d} :catch_2d

    .line 709
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;
    .restart local p1    # "expectedMsgId":I
    .restart local p2    # "header":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .restart local p3    # "inputPacket":[B
    :catch_2d
    move-exception v0

    .line 710
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;-><init>(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v1

    .line 705
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    :catch_34
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;

    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "Malformed IKE Payload"

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;-><init>(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v1
.end method

.method public blacklist encode(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B
    .registers 8
    .param p1, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;

    .line 553
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->getBasicInfoString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeMessage"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->-$$Nest$mencodePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B

    move-result-object v0

    .line 556
    .local v0, "encodedIkeBody":[B
    invoke-virtual {p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->attachEncodedHeader([B)[B

    move-result-object v1

    .line 557
    .local v1, "packet":[B
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build a complete IKE message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-object v1
.end method

.method public blacklist encryptAndEncode(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ZI)[[B
    .registers 21
    .param p1, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p2, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p3, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p4, "ikeMessage"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p5, "supportFragment"    # Z
    .param p6, "fragSize"    # I

    .line 569
    move-object/from16 v0, p4

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->getBasicInfoString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IkeMessage"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 573
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 574
    move v6, v2

    goto :goto_3c

    .line 575
    :cond_31
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    move v6, v2

    .line 576
    :goto_3c
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->-$$Nest$mencodePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B

    move-result-object v7

    .line 579
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getOutboundIntegrityKey()[B

    move-result-object v10

    .line 580
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getOutboundEncryptionKey()[B

    move-result-object v11

    .line 571
    move-object v4, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->encryptAndEncode(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BZI)[[B

    move-result-object v1

    return-object v1
.end method

.method blacklist encryptAndEncode(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BZI)[[B
    .registers 30
    .param p1, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "firstInnerPayload"    # I
    .param p3, "unencryptedPayloads"    # [B
    .param p4, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p5, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p6, "integrityKey"    # [B
    .param p7, "encryptionKey"    # [B
    .param p8, "supportFragment"    # Z
    .param p9, "fragSize"    # I

    .line 597
    move-object/from16 v0, p0

    move/from16 v1, p9

    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    move-object v12, v2

    .line 606
    .local v12, "skPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    invoke-virtual {v12}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;->getPayloadLength()I

    move-result v2

    add-int/lit8 v13, v2, 0x1c

    .line 609
    .local v13, "msgLen":I
    const-string v14, "IkeMessage"

    const/4 v15, 0x0

    const/4 v2, 0x1

    if-eqz p8, :cond_de

    if-gt v13, v1, :cond_28

    goto/16 :goto_de

    .line 621
    :cond_28
    add-int/lit8 v3, v1, -0x1c

    add-int/lit8 v3, v3, -0x4

    add-int/lit8 v3, v3, -0x4

    .line 626
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getIvLen()I

    move-result v4

    sub-int/2addr v3, v4

    .line 627
    if-nez p4, :cond_37

    move v4, v15

    goto :goto_3b

    :cond_37
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getChecksumLen()I

    move-result v4

    :goto_3b
    sub-int/2addr v3, v4

    .line 628
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getBlockSize()I

    move-result v4

    sub-int/2addr v3, v4

    .line 631
    .local v3, "dataLenPerPacket":I
    if-lez v3, :cond_d4

    .line 636
    move-object/from16 v4, p3

    array-length v5, v4

    add-int/2addr v5, v3

    sub-int/2addr v5, v2

    div-int v11, v5, v3

    .line 638
    .local v11, "totalFragments":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->makeSkfHeaderFromSkHeader()Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    move-result-object v2

    .line 639
    .local v2, "skfHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    new-array v5, v11, [[B

    .line 641
    .local v5, "packetList":[[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 642
    .local v6, "unencryptedDataBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_55
    if-ge v7, v11, :cond_d1

    .line 643
    nop

    .line 644
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-array v8, v8, [B

    .line 645
    .local v8, "unencryptedData":[B
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 647
    add-int/lit8 v10, v7, 0x1

    .line 650
    .local v10, "fragNum":I
    if-nez v7, :cond_6c

    move/from16 v9, p2

    goto :goto_6d

    :cond_6c
    move v9, v15

    .line 651
    .local v9, "fragFirstInnerPayload":I
    :goto_6d
    move/from16 v16, v3

    move-object v3, v2

    .end local v2    # "skfHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v3, "skfHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v16, "dataLenPerPacket":I
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object v5, v8

    move v4, v9

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .end local v6    # "unencryptedDataBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "i":I
    .end local v8    # "unencryptedData":[B
    .end local v9    # "fragFirstInnerPayload":I
    .local v4, "fragFirstInnerPayload":I
    .local v5, "unencryptedData":[B
    .local v17, "packetList":[[B
    .local v18, "unencryptedDataBuffer":Ljava/nio/ByteBuffer;
    .local v19, "i":I
    invoke-direct/range {v2 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;I[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[BII)V

    .line 663
    .local v2, "skfPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->encodeHeaderAndBody(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;I)[B

    move-result-object v6

    aput-object v6, v17, v19

    .line 664
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build an IKE fragment ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v19, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 672
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v8

    aget-object v9, v17, v19

    invoke-virtual {v8, v9}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 665
    invoke-virtual {v6, v14, v7}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .end local v2    # "skfPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;
    .end local v4    # "fragFirstInnerPayload":I
    .end local v5    # "unencryptedData":[B
    .end local v10    # "fragNum":I
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v4, p3

    move-object v2, v3

    move/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    .end local v19    # "i":I
    .restart local v7    # "i":I
    goto :goto_55

    .end local v16    # "dataLenPerPacket":I
    .end local v17    # "packetList":[[B
    .end local v18    # "unencryptedDataBuffer":Ljava/nio/ByteBuffer;
    .local v2, "skfHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v3, "dataLenPerPacket":I
    .local v5, "packetList":[[B
    .restart local v6    # "unencryptedDataBuffer":Ljava/nio/ByteBuffer;
    :cond_d1
    move-object/from16 v17, v5

    .line 675
    .end local v5    # "packetList":[[B
    .end local v7    # "i":I
    .restart local v17    # "packetList":[[B
    return-object v17

    .line 632
    .end local v2    # "skfHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local v6    # "unencryptedDataBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "totalFragments":I
    .end local v17    # "packetList":[[B
    :cond_d4
    move/from16 v16, v3

    .end local v3    # "dataLenPerPacket":I
    .restart local v16    # "dataLenPerPacket":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Max fragment size is too small for an IKE fragment."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    .end local v16    # "dataLenPerPacket":I
    :cond_de
    :goto_de
    new-array v2, v2, [[B

    .line 611
    .local v2, "packetList":[[B
    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v12, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;->encodeHeaderAndBody(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;I)[B

    move-result-object v5

    aput-object v5, v2, v15

    .line 613
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build a complete IKE message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 616
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v7

    aget-object v8, v2, v15

    invoke-virtual {v7, v8}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-virtual {v5, v14, v6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-object v2
.end method
