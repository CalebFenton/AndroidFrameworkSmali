.class public final Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
.super Ljava/lang/Object;
.source "IkeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeHeader$ExchangeType;
    }
.end annotation


# static fields
.field private static final blacklist ENCODED_MESSAGE_LEN_UNAVAILABLE:I = -0x1

.field public static final blacklist EXCHANGE_TYPE_CREATE_CHILD_SA:I = 0x24

.field public static final blacklist EXCHANGE_TYPE_IKE_AUTH:I = 0x23

.field public static final blacklist EXCHANGE_TYPE_IKE_SA_INIT:I = 0x22

.field public static final blacklist EXCHANGE_TYPE_INFORMATIONAL:I = 0x25

.field private static final blacklist EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IKE_HEADER_FLAG_FROM_IKE_INITIATOR:B = 0x8t

.field private static final blacklist IKE_HEADER_FLAG_IS_RESP_MSG:B = 0x20t

.field public static final blacklist IKE_HEADER_LENGTH:I = 0x1c

.field private static final blacklist IKE_HEADER_VERSION_INFO:B = 0x20t


# instance fields
.field public final blacklist exchangeType:I

.field public final blacklist fromIkeInitiator:Z

.field public final blacklist ikeInitiatorSpi:J

.field public final blacklist ikeResponderSpi:J

.field public final blacklist isResponseMsg:Z

.field private final blacklist mEncodedMessageLength:I

.field public final blacklist majorVersion:B

.field public final blacklist messageId:I

.field public final blacklist minorVersion:B

.field public final blacklist nextPayloadType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;

    .line 69
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "IKE INIT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x23

    const-string v2, "IKE AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "Create Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "Informational"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(JJIIZZI)V
    .registers 11
    .param p1, "iSpi"    # J
    .param p3, "rSpi"    # J
    .param p5, "nextPType"    # I
    .param p6, "eType"    # I
    .param p7, "isResp"    # Z
    .param p8, "fromInit"    # Z
    .param p9, "msgId"    # I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    .line 114
    iput-wide p3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    .line 115
    iput p5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    .line 116
    iput p6, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    .line 117
    iput-boolean p7, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    .line 118
    iput-boolean p8, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->fromIkeInitiator:Z

    .line 119
    iput p9, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->mEncodedMessageLength:I

    .line 124
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->majorVersion:B

    .line 126
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->minorVersion:B

    .line 127
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 8
    .param p1, "packet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    array-length v0, p1

    const/16 v1, 0x1c

    if-le v0, v1, :cond_60

    .line 139
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    .line 145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 146
    .local v1, "versionByte":B
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->majorVersion:B

    .line 147
    and-int/lit8 v2, v1, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->minorVersion:B

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 152
    .local v2, "flagsByte":B
    and-int/lit8 v3, v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    move v3, v4

    goto :goto_49

    :cond_48
    move v3, v5

    :goto_49
    iput-boolean v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    .line 153
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v4, v5

    :goto_51
    iput-boolean v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->fromIkeInitiator:Z

    .line 155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    .line 156
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->mEncodedMessageLength:I

    .line 157
    return-void

    .line 136
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "versionByte":B
    .end local v2    # "flagsByte":B
    :cond_60
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "IKE message is too short to contain a header"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encodeToByteBuffer(Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "encodedMessageBodyLen"    # I

    .line 217
    iget-wide v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    .line 218
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    int-to-byte v1, v1

    .line 220
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 221
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    int-to-byte v1, v1

    .line 222
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "flag":B
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz v1, :cond_27

    .line 226
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 228
    :cond_27
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->fromIkeInitiator:Z

    if-eqz v1, :cond_2e

    .line 229
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 232
    :cond_2e
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 233
    return-void
.end method

.method public blacklist getBasicInfoString()Ljava/lang/String;
    .registers 5

    .line 237
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->EXCHANGE_TYPE_TO_STRING:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    .local v0, "exchangeStr":Ljava/lang/String;
    if-nez v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exchange ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_27
    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-eqz v1, :cond_2e

    const-string v1, "response"

    goto :goto_30

    :cond_2e
    const-string v1, "request"

    .line 242
    .local v1, "reqOrResp":Ljava/lang/String;
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method blacklist getInboundMessageLength()I
    .registers 3

    .line 177
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->mEncodedMessageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 181
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->mEncodedMessageLength:I

    return v0

    .line 178
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "It is not supported to get encoded message length from an outbound message."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist makeSkfHeaderFromSkHeader()Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .registers 13

    .line 161
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1a

    .line 164
    new-instance v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-wide v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeInitiatorSpi:J

    iget-wide v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->ikeResponderSpi:J

    iget v8, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    iget-boolean v9, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    iget-boolean v10, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->fromIkeInitiator:Z

    iget v11, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->messageId:I

    const/16 v7, 0x35

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;-><init>(JJIIZZI)V

    return-object v2

    .line 162
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next payload type is not SK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist validateInboundHeader(I)V
    .registers 4
    .param p1, "packetLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 206
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_19

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/16 v1, 0x25

    if-gt v0, v1, :cond_19

    .line 210
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->mEncodedMessageLength:I

    if-ne v0, p1, :cond_11

    .line 213
    return-void

    .line 211
    :cond_11
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Invalid IKE Message Length."

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_19
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Invalid IKE Exchange Type."

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist validateMajorVersion()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 186
    iget-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->majorVersion:B

    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    .line 190
    iget-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->majorVersion:B

    if-lt v0, v1, :cond_a

    .line 197
    return-void

    .line 195
    :cond_a
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v1, "Major version is smaller than 2."

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_12
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;

    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->majorVersion:B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;-><init>(B)V

    throw v0
.end method
