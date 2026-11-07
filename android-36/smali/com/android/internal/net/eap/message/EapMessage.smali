.class public Lcom/android/internal/net/eap/message/EapMessage;
.super Ljava/lang/Object;
.source "EapMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/EapMessage$EapCode;
    }
.end annotation


# static fields
.field public static final blacklist EAP_CODE_FAILURE:I = 0x4

.field public static final blacklist EAP_CODE_REQUEST:I = 0x1

.field public static final blacklist EAP_CODE_RESPONSE:I = 0x2

.field public static final blacklist EAP_CODE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EAP_CODE_SUCCESS:I = 0x3

.field public static final blacklist EAP_HEADER_LENGTH:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist eapCode:I

.field public final blacklist eapData:Lcom/android/internal/net/eap/message/EapData;

.field public final blacklist eapIdentifier:I

.field public final blacklist eapLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 74
    const-class v0, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/EapMessage;->EAP_CODE_STRING:Ljava/util/Map;

    .line 92
    sget-object v0, Lcom/android/internal/net/eap/message/EapMessage;->EAP_CODE_STRING:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/internal/net/eap/message/EapMessage;->EAP_CODE_STRING:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESPONSE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/internal/net/eap/message/EapMessage;->EAP_CODE_STRING:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/internal/net/eap/message/EapMessage;->EAP_CODE_STRING:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/internal/net/eap/message/EapData;)V
    .registers 5
    .param p1, "eapCode"    # I
    .param p2, "eapIdentifier"    # I
    .param p3, "eapData"    # Lcom/android/internal/net/eap/message/EapData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/EapSilentException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    .line 108
    iput p2, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 109
    if-nez p3, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p3}, Lcom/android/internal/net/eap/message/EapData;->getLength()I

    move-result v0

    :goto_f
    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapLength:I

    .line 110
    iput-object p3, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/EapMessage;->validate()V

    .line 113
    return-void
.end method

.method public static blacklist decode([B)Lcom/android/internal/net/eap/message/EapMessage;
    .registers 10
    .param p0, "packet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/EapSilentException;
        }
    .end annotation

    .line 123
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 130
    .local v1, "eapCode":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 131
    .local v2, "eapIdentifier":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    .line 133
    .local v3, "eapLength":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_26

    const/4 v6, 0x2

    if-ne v1, v6, :cond_24

    goto :goto_26

    .line 150
    :cond_24
    const/4 v5, 0x0

    .local v5, "eapData":Lcom/android/internal/net/eap/message/EapData;
    goto :goto_50

    .line 134
    .end local v5    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    :cond_26
    :goto_26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v6

    .line 135
    .local v6, "eapType":I
    invoke-static {v6}, Lcom/android/internal/net/eap/message/EapData;->isSupportedEapType(I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 143
    add-int/lit8 v7, v3, -0x4

    sub-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 144
    .local v5, "eapDataLengthRemaining":I
    nop

    .line 145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v7, v7, [B

    .line 147
    .local v7, "eapDataBytes":[B
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    new-instance v8, Lcom/android/internal/net/eap/message/EapData;

    invoke-direct {v8, v6, v7}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V
    :try_end_4e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4e} :catch_a4

    move-object v5, v8

    .line 149
    .end local v6    # "eapType":I
    .end local v7    # "eapDataBytes":[B
    .local v5, "eapData":Lcom/android/internal/net/eap/message/EapData;
    nop

    .line 156
    :goto_50
    nop

    .line 158
    if-nez v5, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {v5}, Lcom/android/internal/net/eap/message/EapData;->getLength()I

    move-result v4

    .line 159
    .local v4, "eapDataLength":I
    :goto_58
    add-int/lit8 v6, v4, 0x4

    if-gt v3, v6, :cond_62

    .line 165
    new-instance v6, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-direct {v6, v1, v2, v5}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    return-object v6

    .line 160
    :cond_62
    const-string v6, "Packet is shorter than specified length"

    .line 161
    .local v6, "msg":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v8, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v7, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;

    invoke-direct {v7, v6}, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    .end local v4    # "eapDataLength":I
    .end local v5    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    .local v6, "eapType":I
    :cond_71
    :try_start_71
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v5, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decoding EAP packet with unsupported EAP-Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v4, Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported eapType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;-><init>(ILjava/lang/String;)V

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "packet":[B
    throw v4
    :try_end_a4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_71 .. :try_end_a4} :catch_a4

    .line 152
    .end local v1    # "eapCode":I
    .end local v2    # "eapIdentifier":I
    .end local v3    # "eapLength":I
    .end local v6    # "eapType":I
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "packet":[B
    :catch_a4
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/nio/BufferUnderflowException;
    const-string v2, "EAP packet is missing required values"

    .line 154
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v4, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;

    invoke-direct {v3, v2, v1}, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist getNakResponse(ILjava/util/Collection;)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p0, "eapIdentifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/internal/net/eap/EapResult;"
        }
    .end annotation

    .line 219
    .local p1, "supportedEapTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 220
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 221
    .local v2, "eapMethodType":I
    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    nop

    .end local v2    # "eapMethodType":I
    goto :goto_c

    .line 223
    :cond_22
    new-instance v1, Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 225
    .local v1, "nakData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v2, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v1}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    invoke-static {v2}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2
    :try_end_36
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_0 .. :try_end_36} :catch_37

    return-object v2

    .line 227
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "nakData":Lcom/android/internal/net/eap/message/EapData;
    :catch_37
    move-exception v0

    .line 229
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create Nak for message with identifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static blacklist getNotificationResponse(I)Lcom/android/internal/net/eap/EapResult;
    .registers 6
    .param p0, "eapIdentifier"    # I

    .line 196
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/EapMessage;

    sget-object v1, Lcom/android/internal/net/eap/message/EapData;->NOTIFICATION_DATA:Lcom/android/internal/net/eap/message/EapData;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0, v1}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    invoke-static {v0}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_c
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 198
    :catch_d
    move-exception v0

    .line 200
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create Notification Response for message with identifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method private blacklist validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/EapSilentException;
        }
    .end annotation

    .line 236
    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_39

    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-eq v0, v1, :cond_39

    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-eq v0, v2, :cond_39

    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-ne v0, v3, :cond_15

    goto :goto_39

    .line 240
    :cond_15
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid EAP Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/android/internal/net/eap/exceptions/InvalidEapCodeException;

    iget v1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/InvalidEapCodeException;-><init>(I)V

    throw v0

    .line 244
    :cond_39
    :goto_39
    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-eq v0, v2, :cond_41

    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-ne v0, v3, :cond_45

    :cond_41
    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapLength:I

    if-ne v0, v3, :cond_63

    .line 251
    :cond_45
    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-eq v0, v4, :cond_4d

    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    if-ne v0, v1, :cond_51

    :cond_4d
    iget-object v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    if-eqz v0, :cond_52

    .line 256
    :cond_51
    return-void

    .line 252
    :cond_52
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    const-string v2, "No Type value included for EAP-Request/EAP-Response"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;

    const-string v1, "EAP Request/Response packets must include a Type value"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_63
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/message/EapMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length for EAP-Success/EAP-Failure. Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;

    const-string v1, "EAP Success/Failure packets must be length 4"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/EapInvalidPacketLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 3

    .line 174
    iget v0, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    iget v1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 177
    iget v1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapLength:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    if-eqz v1, :cond_21

    .line 180
    iget-object v1, p0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {v1, v0}, Lcom/android/internal/net/eap/message/EapData;->encodeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 183
    :cond_21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
