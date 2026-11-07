.class public abstract Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.super Landroid/net/ipsec/ike/exceptions/IkeException;
.source "IkeProtocolException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/exceptions/IkeProtocolException$ErrorType;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_DATA_NOT_INCLUDED:[B

.field public static final whitelist ERROR_TYPE_AUTHENTICATION_FAILED:I = 0x18

.field public static final whitelist ERROR_TYPE_CHILD_SA_NOT_FOUND:I = 0x2c

.field public static final whitelist ERROR_TYPE_FAILED_CP_REQUIRED:I = 0x25

.field public static final whitelist ERROR_TYPE_INTERNAL_ADDRESS_FAILURE:I = 0x24

.field public static final whitelist ERROR_TYPE_INVALID_IKE_SPI:I = 0x4

.field public static final whitelist ERROR_TYPE_INVALID_KE_PAYLOAD:I = 0x11

.field public static final whitelist ERROR_TYPE_INVALID_MAJOR_VERSION:I = 0x5

.field public static final whitelist ERROR_TYPE_INVALID_MESSAGE_ID:I = 0x9

.field public static final whitelist ERROR_TYPE_INVALID_SELECTORS:I = 0x27

.field public static final whitelist ERROR_TYPE_INVALID_SYNTAX:I = 0x7

.field public static final whitelist ERROR_TYPE_NO_ADDITIONAL_SAS:I = 0x23

.field public static final whitelist ERROR_TYPE_NO_PROPOSAL_CHOSEN:I = 0xe

.field public static final whitelist ERROR_TYPE_SINGLE_PAIR_REQUIRED:I = 0x22

.field public static final whitelist ERROR_TYPE_TEMPORARY_FAILURE:I = 0x2b

.field public static final whitelist ERROR_TYPE_TS_UNACCEPTABLE:I = 0x26

.field public static final whitelist ERROR_TYPE_UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x1

.field private static final blacklist INTEGER_BYTE_SIZE:I = 0x4


# instance fields
.field private final blacklist mErrorData:[B

.field private final blacklist mErrorType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 97
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->ERROR_DATA_NOT_INCLUDED:[B

    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 106
    invoke-direct {p0}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>()V

    .line 107
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    .line 108
    sget-object v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->ERROR_DATA_NOT_INCLUDED:[B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    .line 109
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p2}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>(Ljava/lang/String;)V

    .line 114
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    .line 115
    sget-object v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->ERROR_DATA_NOT_INCLUDED:[B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    .line 116
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 127
    invoke-direct {p0, p2, p3}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    .line 129
    sget-object v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->ERROR_DATA_NOT_INCLUDED:[B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    .line 130
    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/Throwable;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 120
    invoke-direct {p0, p2}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    .line 122
    sget-object v0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->ERROR_DATA_NOT_INCLUDED:[B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    .line 123
    return-void
.end method

.method protected constructor blacklist <init>(I[B)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "notifyData"    # [B

    .line 138
    invoke-direct {p0}, Landroid/net/ipsec/ike/exceptions/IkeException;-><init>()V

    .line 140
    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->isValidDataLength(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 148
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    .line 149
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    .line 150
    return-void

    .line 141
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error data for error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Received error data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist byteArrayToInteger([B)I
    .registers 4
    .param p0, "byteArray"    # [B

    .line 175
    if-eqz p0, :cond_1d

    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1d

    .line 179
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 181
    .local v1, "zeroPad":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2

    .line 176
    .end local v0    # "dataBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "zeroPad":[B
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert the byte array to integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist integerToByteArray(II)[B
    .registers 6
    .param p0, "integer"    # I
    .param p1, "arraySize"    # I

    .line 157
    const/4 v0, 0x4

    if-gt p1, v0, :cond_1b

    .line 162
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    rsub-int/lit8 v1, p1, 0x4

    new-array v1, v1, [B

    .line 167
    .local v1, "zeroPad":[B
    new-array v2, p1, [B

    .line 168
    .local v2, "byteData":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 170
    return-object v2

    .line 158
    .end local v0    # "dataBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "zeroPad":[B
    .end local v2    # "byteData":[B
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert integer to a byte array of length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist buildNotifyPayload()Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 4

    .line 221
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    iget v1, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    iget-object v2, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    return-object v0
.end method

.method public whitelist getErrorData()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorData:[B

    return-object v0
.end method

.method public whitelist getErrorType()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->mErrorType:I

    return v0
.end method

.method protected abstract blacklist isValidDataLength(I)Z
.end method
