.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;
.super Ljava/lang/Object;
.source "EapTtlsAvp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapTtlsAvpDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decode([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;
    .registers 10
    .param p1, "avp"    # [B

    .line 230
    :try_start_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_17

    .line 231
    new-instance v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    const-string v3, "Received one or more invalid AVPs: AVPs must be 4 byte aligned."

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v0

    .line 237
    :cond_17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    .local v0, "avpBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 240
    .local v1, "eapMessageAvp":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    :goto_1c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 241
    new-instance v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;-><init>(Ljava/nio/ByteBuffer;)V

    .line 242
    .local v2, "decodedAvp":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-static {}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoded AVP with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and vendor ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->vendorId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget v3, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpCode:I

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_6d

    .line 250
    if-eqz v1, :cond_6b

    .line 252
    new-instance v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v5, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    const-string v6, "Received multiple EAP-MESSAGE AVPs in one message"

    invoke-direct {v5, v6}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v3

    .line 258
    :cond_6b
    move-object v1, v2

    goto :goto_96

    .line 259
    :cond_6d
    iget-boolean v3, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isMandatory:Z

    if-eqz v3, :cond_96

    .line 262
    new-instance v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v5, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received an AVP that requires support for AVP code"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v3

    .line 268
    .end local v2    # "decodedAvp":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    :cond_96
    :goto_96
    goto :goto_1c

    .line 270
    :cond_97
    if-nez v1, :cond_ab

    .line 271
    new-instance v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v4, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    const-string v5, "No EAP-MESSAGE (79) AVP was found"

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v2

    .line 277
    :cond_ab
    new-instance v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    invoke-direct {v2, v1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;-><init>(Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;)V
    :try_end_b0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_b0} :catch_b1
    .catch Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException; {:try_start_0 .. :try_end_b0} :catch_b1

    return-object v2

    .line 278
    .end local v0    # "avpBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "eapMessageAvp":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    :catch_b1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1
.end method
