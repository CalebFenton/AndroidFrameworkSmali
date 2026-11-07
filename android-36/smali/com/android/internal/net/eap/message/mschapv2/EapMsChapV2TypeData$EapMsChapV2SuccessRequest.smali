.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;
.super Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2SuccessRequest"
.end annotation


# static fields
.field private static final blacklist AUTH_STRING_LABEL:Ljava/lang/String; = "S"

.field private static final blacklist AUTH_STRING_LEN_BYTES:I = 0x14

.field private static final blacklist AUTH_STRING_LEN_HEX:I = 0x28

.field private static final blacklist NUM_REQUIRED_ATTRIBUTES:I = 0x2


# instance fields
.field public final blacklist authBytes:[B

.field public final blacklist message:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(II[BLjava/lang/String;)V
    .registers 8
    .param p1, "msChapV2Id"    # I
    .param p2, "msLength"    # I
    .param p3, "authBytes"    # [B
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 211
    const/16 v0, 0x14

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->authBytes:[B

    .line 249
    array-length v1, p3

    if-ne v1, v0, :cond_16

    .line 253
    iget-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->authBytes:[B

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iput-object p4, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->message:Ljava/lang/String;

    .line 255
    return-void

    .line 250
    :cond_16
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "Auth String must be 20B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 215
    nop

    .line 217
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 218
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 215
    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 211
    const/16 v0, 0x14

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->authBytes:[B

    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 221
    .local v1, "message":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    new-instance v2, Ljava/lang/String;

    .line 225
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->getMessageMappings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 227
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "S"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 228
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6d

    .line 233
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, "authStringHex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_65

    .line 237
    invoke-static {v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 238
    .local v4, "authBytes":[B
    iget-object v5, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->authBytes:[B

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    const-string v0, "M"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->message:Ljava/lang/String;

    .line 241
    return-void

    .line 235
    .end local v4    # "authBytes":[B
    :cond_65
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v4, "Auth String must be 40 hex chars (20B)"

    invoke-direct {v0, v4}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    .end local v3    # "authStringHex":Ljava/lang/String;
    :cond_6d
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v3, "Auth message must be in the format: \'S=<auth_string> M=<message>\'"

    invoke-direct {v0, v3}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
