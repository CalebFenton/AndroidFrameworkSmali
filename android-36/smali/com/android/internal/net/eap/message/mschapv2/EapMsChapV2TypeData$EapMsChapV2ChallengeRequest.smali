.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;
.super Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2ChallengeRequest"
.end annotation


# static fields
.field public static final blacklist TYPE_DATA_HEADER_SIZE:I = 0x5

.field public static final blacklist VALUE_SIZE:I = 0x10


# instance fields
.field public final blacklist challenge:[B

.field public final blacklist name:[B


# direct methods
.method public constructor blacklist <init>(II[B[B)V
    .registers 8
    .param p1, "msChapV2Id"    # I
    .param p2, "msLength"    # I
    .param p3, "challenge"    # [B
    .param p4, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 108
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    .line 138
    array-length v1, p3

    if-ne v1, v0, :cond_16

    .line 142
    iget-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iput-object p4, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->name:[B

    .line 144
    return-void

    .line 139
    :cond_16
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "Challenge length must be 16"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 112
    nop

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 112
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 108
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 118
    .local v1, "valueSize":I
    if-ne v1, v0, :cond_43

    .line 121
    iget-object v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    iget v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->msLength:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    .line 124
    .local v2, "nameLenBytes":I
    if-ltz v2, :cond_3b

    .line 128
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->name:[B

    .line 129
    iget-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->name:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 130
    return-void

    .line 125
    :cond_3b
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v3, "Invalid MS-Length specified"

    invoke-direct {v0, v3}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    .end local v2    # "nameLenBytes":I
    :cond_43
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v2, "Challenge Value-Size must be 16"

    invoke-direct {v0, v2}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
