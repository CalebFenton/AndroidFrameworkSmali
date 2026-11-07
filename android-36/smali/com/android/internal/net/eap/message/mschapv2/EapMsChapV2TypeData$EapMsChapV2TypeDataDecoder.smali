.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;
.super Ljava/lang/Object;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2TypeDataDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decodeChallengeRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapTypeData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<",
            "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;",
            ">;"
        }
    .end annotation

    .line 485
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 486
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 488
    .local v1, "opCode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_57

    .line 489
    new-instance v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v4, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received type data with invalid opCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 493
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    .line 489
    return-object v2

    .line 497
    :cond_57
    new-instance v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)V
    :try_end_61
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_61} :catch_62
    .catch Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException; {:try_start_0 .. :try_end_61} :catch_62

    return-object v2

    .line 498
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "opCode":I
    :catch_62
    move-exception v0

    .line 499
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Error parsing EAP MSCHAPv2 Challenge Request type data"

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    new-instance v1, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1
.end method

.method public blacklist decodeFailureRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapTypeData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<",
            "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;",
            ">;"
        }
    .end annotation

    .line 549
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 550
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 552
    .local v1, "opCode":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_57

    .line 553
    new-instance v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v4, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received type data with invalid opCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 557
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    .line 553
    return-object v2

    .line 561
    :cond_57
    new-instance v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)V
    :try_end_61
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_61} :catch_62
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_61} :catch_62
    .catch Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException; {:try_start_0 .. :try_end_61} :catch_62

    return-object v2

    .line 562
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "opCode":I
    :catch_62
    move-exception v0

    .line 565
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Error parsing EAP MSCHAPv2 Failure Request type data"

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 566
    new-instance v1, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1
.end method

.method public blacklist decodeSuccessRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapTypeData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<",
            "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;",
            ">;"
        }
    .end annotation

    .line 516
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 517
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 519
    .local v1, "opCode":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_57

    .line 520
    new-instance v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v4, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received type data with invalid opCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 524
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    .line 520
    return-object v2

    .line 528
    :cond_57
    new-instance v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)V
    :try_end_61
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_61} :catch_62
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_61} :catch_62
    .catch Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException; {:try_start_0 .. :try_end_61} :catch_62

    return-object v2

    .line 529
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "opCode":I
    :catch_62
    move-exception v0

    .line 532
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Error parsing EAP MSCHAPv2 Success Request type data"

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    new-instance v1, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1
.end method

.method public blacklist getOpCode([B)I
    .registers 3
    .param p1, "eapTypeData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 470
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method
