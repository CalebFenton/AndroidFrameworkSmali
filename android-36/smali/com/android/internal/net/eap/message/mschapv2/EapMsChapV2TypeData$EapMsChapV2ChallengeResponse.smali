.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;
.super Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2ChallengeResponse"
.end annotation


# static fields
.field public static final blacklist NT_RESPONSE_SIZE:I = 0x18

.field public static final blacklist PEER_CHALLENGE_SIZE:I = 0x10

.field public static final blacklist RESERVED_BYTES:I = 0x8

.field public static final blacklist TYPE_DATA_HEADER_SIZE:I = 0x5

.field public static final blacklist VALUE_SIZE:I = 0x31


# instance fields
.field public final blacklist flags:I

.field public final blacklist name:[B

.field public final blacklist ntResponse:[B

.field public final blacklist peerChallenge:[B


# direct methods
.method public constructor blacklist <init>(I[B[BI[B)V
    .registers 10
    .param p1, "msChapV2Id"    # I
    .param p2, "peerChallenge"    # [B
    .param p3, "ntResponse"    # [B
    .param p4, "flags"    # I
    .param p5, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 165
    array-length v0, p5

    add-int/lit8 v0, v0, 0x36

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 157
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->peerChallenge:[B

    .line 158
    const/16 v1, 0x18

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->ntResponse:[B

    .line 170
    array-length v2, p2

    if-ne v2, v0, :cond_3b

    .line 172
    array-length v2, p3

    if-ne v2, v1, :cond_33

    .line 174
    if-nez p4, :cond_2b

    .line 178
    iget-object v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->peerChallenge:[B

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->ntResponse:[B

    invoke-static {p3, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput p4, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->flags:I

    .line 181
    iput-object p5, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->name:[B

    .line 182
    return-void

    .line 175
    :cond_2b
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "Flags must be 0x00"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_33
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "NT-Response must be 24B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_3b
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "Peer-Challenge must be 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 3

    .line 186
    iget v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->msLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    iget v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->msChapV2Id:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    iget v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->msLength:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 191
    iget-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->peerChallenge:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->ntResponse:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->flags:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    iget-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;->name:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
