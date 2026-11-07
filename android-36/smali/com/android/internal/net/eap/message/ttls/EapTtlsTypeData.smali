.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
.super Ljava/lang/Object;
.source "EapTtlsTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;,
        Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;
    }
.end annotation


# static fields
.field private static final blacklist FLAGS_LEN_BYTES:I = 0x1

.field private static final blacklist FLAG_LENGTH_INCLUDED:I = 0x80

.field private static final blacklist FLAG_PACKET_FRAGMENTED:I = 0x40

.field private static final blacklist FLAG_START:I = 0x20

.field private static final blacklist FLAG_VERSION_MASK:I = 0x7

.field private static final blacklist LEN_NOT_INCLUDED:I = 0x0

.field private static final blacklist MESSAGE_LENGTH_LEN_BYTES:I = 0x4

.field private static final blacklist SUPPORTED_EAP_TTLS_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public blacklist data:[B

.field public final blacklist isDataFragmented:Z

.field public final blacklist isLengthIncluded:Z

.field public final blacklist isStart:Z

.field public final blacklist messageLength:I

.field public final blacklist version:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 79
    .local v0, "flags":B
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    .line 80
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    .line 81
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    iput-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isStart:Z

    .line 82
    and-int/lit8 v1, v0, 0x7

    iput v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->version:I

    .line 84
    iget-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    :cond_2f
    iput v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->messageLength:I

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    .line 86
    iget-object v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    iget-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    if-nez v1, :cond_56

    iget-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->messageLength:I

    if-ne v1, v2, :cond_4e

    goto :goto_56

    .line 89
    :cond_4e
    new-instance v1, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    const-string v2, "Received an unfragmented packet with message length not equal to payload"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_56
    :goto_56
    return-void
.end method

.method private constructor blacklist <init>(ZZII[B)V
    .registers 9
    .param p1, "isDataFragmented"    # Z
    .param p2, "isStart"    # Z
    .param p3, "version"    # I
    .param p4, "messageLength"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-eqz p4, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    .line 98
    iput-boolean p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isStart:Z

    .line 100
    if-nez p3, :cond_29

    .line 103
    iput p3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->version:I

    .line 104
    iput p4, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->messageLength:I

    .line 105
    iput-object p5, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    .line 107
    if-nez p1, :cond_28

    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-eqz v0, :cond_28

    array-length v0, p5

    if-ne v0, p4, :cond_20

    goto :goto_28

    .line 108
    :cond_20
    new-instance v0, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    const-string v1, "Received an unfragmented packet with message length not equal to payload"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_28
    :goto_28
    return-void

    .line 101
    :cond_29
    new-instance v0, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ZZII[BLcom/android/internal/net/eap/message/ttls/EapTtlsTypeData-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;-><init>(ZZII[B)V

    return-void
.end method

.method public static blacklist getEapTtlsTypeData(ZZII[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
    .registers 11
    .param p0, "packetFragmented"    # Z
    .param p1, "start"    # Z
    .param p2, "version"    # I
    .param p3, "messageLength"    # I
    .param p4, "data"    # [B

    .line 148
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
    :try_end_2
    .catch Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException; {:try_start_0 .. :try_end_2} :catch_e

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "packetFragmented":Z
    .end local p1    # "start":Z
    .end local p2    # "version":I
    .end local p3    # "messageLength":I
    .end local p4    # "data":[B
    .local v1, "packetFragmented":Z
    .local v2, "start":Z
    .local v3, "version":I
    .local v4, "messageLength":I
    .local v5, "data":[B
    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;-><init>(ZZII[B)V
    :try_end_a
    .catch Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException; {:try_start_7 .. :try_end_a} :catch_b

    return-object v0

    .line 149
    :catch_b
    move-exception v0

    move-object p0, v0

    goto :goto_15

    .end local v1    # "packetFragmented":Z
    .end local v2    # "start":Z
    .end local v3    # "version":I
    .end local v4    # "messageLength":I
    .end local v5    # "data":[B
    .restart local p0    # "packetFragmented":Z
    .restart local p1    # "start":Z
    .restart local p2    # "version":I
    .restart local p3    # "messageLength":I
    .restart local p4    # "data":[B
    :catch_e
    move-exception v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object p0, v0

    .line 150
    .end local p1    # "start":Z
    .end local p2    # "version":I
    .end local p3    # "messageLength":I
    .end local p4    # "data":[B
    .restart local v1    # "packetFragmented":Z
    .restart local v2    # "start":Z
    .restart local v3    # "version":I
    .restart local v4    # "messageLength":I
    .restart local v5    # "data":[B
    .local p0, "e":Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;
    :goto_15
    sget-object p1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object p2, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->TAG:Ljava/lang/String;

    const-string p3, "Parsing exception thrown while attempting to create an EapTtlsTypeData"

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getFlagByte()B
    .registers 4

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v0, 0x80

    goto :goto_9

    :cond_8
    move v0, v1

    .line 120
    :goto_9
    iget-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x40

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    or-int/2addr v0, v2

    .line 121
    iget-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isStart:Z

    if-eqz v2, :cond_18

    const/16 v1, 0x20

    :cond_18
    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->version:I

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 118
    return v0
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 5

    .line 161
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 162
    .local v0, "msgLen":I
    :goto_7
    iget-object v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 163
    .local v1, "bufferSize":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 164
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->getFlagByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    iget-boolean v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-eqz v3, :cond_21

    .line 166
    iget v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->messageLength:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    :cond_21
    iget-object v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public blacklist isAcknowledgmentPacket()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    array-length v0, v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isStart:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method
