.class public final Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeNoncePayload.java"


# static fields
.field private static final blacklist GENERATED_NONCE_LEN:I = 0x20

.field private static final blacklist MAX_NONCE_LEN:I = 0x100

.field private static final blacklist MIN_NONCE_LEN:I = 0x10


# instance fields
.field public final blacklist nonceData:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)V
    .registers 4
    .param p1, "randomnessFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 71
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 72
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 75
    .local v0, "random":Ljava/security/SecureRandom;
    if-nez v0, :cond_18

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_19

    :cond_18
    move-object v1, v0

    .line 76
    .end local v0    # "random":Ljava/security/SecureRandom;
    .local v1, "random":Ljava/security/SecureRandom;
    :goto_19
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 77
    return-void
.end method

.method constructor blacklist <init>(Z[B)V
    .registers 6
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 58
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 59
    array-length v0, p2

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    array-length v0, p2

    const/16 v1, 0x100

    if-gt v0, v1, :cond_12

    .line 66
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    .line 67
    return-void

    .line 60
    :cond_12
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid nonce data with length of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 87
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 89
    .local v0, "payloadLength":I
    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 90
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 91
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;->nonceData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "Nonce"

    return-object v0
.end method
