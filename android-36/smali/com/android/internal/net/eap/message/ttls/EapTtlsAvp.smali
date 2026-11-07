.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
.super Ljava/lang/Object;
.source "EapTtlsAvp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;
    }
.end annotation


# static fields
.field private static final blacklist AVP_BYTE_ALIGNMENT:I = 0x4

.field private static final blacklist AVP_CODE_LEN_BYTES:I = 0x4

.field private static final blacklist AVP_FLAGS_LEN_BYTES:I = 0x1

.field private static final blacklist AVP_HEADER_LEN_BYTES:I = 0x8

.field private static final blacklist AVP_LENGTH_LEN_BYTES:I = 0x3

.field private static final blacklist AVP_VENDOR_ID_LEN_BYTES:I = 0x4

.field private static final blacklist EAP_MESSAGE_AVP_CODE:I = 0x4f

.field private static final blacklist FLAG_AVP_MANDATORY:I = 0x40

.field private static final blacklist FLAG_VENDOR_ID_INCLUDED:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist avpCode:I

.field public final blacklist avpLength:I

.field public final blacklist data:[B

.field public final blacklist isMandatory:Z

.field public final blacklist isVendorIdPresent:Z

.field public final blacklist vendorId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(IIZ[B)V
    .registers 6
    .param p1, "avpCode"    # I
    .param p2, "vendorId"    # I
    .param p3, "isMandatory"    # Z
    .param p4, "data"    # [B

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpCode:I

    .line 109
    iput p2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->vendorId:I

    .line 110
    iput-boolean p3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isMandatory:Z

    .line 111
    iput-object p4, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->data:[B

    .line 113
    if-eqz p2, :cond_18

    .line 114
    array-length v0, p4

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isVendorIdPresent:Z

    goto :goto_20

    .line 117
    :cond_18
    array-length v0, p4

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isVendorIdPresent:Z

    .line 120
    :goto_20
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpCode:I

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 77
    .local v0, "avpFlags":B
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isMandatory:Z

    .line 78
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    iput-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isVendorIdPresent:Z

    .line 80
    invoke-static {p1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->getAvpLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    .line 81
    iget v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    add-int/lit8 v1, v1, -0x8

    .line 83
    .local v1, "dataLength":I
    iget-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isVendorIdPresent:Z

    if-eqz v2, :cond_37

    .line 84
    add-int/lit8 v1, v1, -0x4

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->vendorId:I

    goto :goto_39

    .line 88
    :cond_37
    iput v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->vendorId:I

    .line 91
    :goto_39
    if-ltz v1, :cond_50

    .line 99
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->data:[B

    .line 100
    iget-object v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->data:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 103
    iget v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    invoke-static {v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->getAvpPadding(I)I

    move-result v2

    .line 104
    .local v2, "paddingSize":I
    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 105
    return-void

    .line 92
    .end local v2    # "paddingSize":I
    :cond_50
    new-instance v2, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received an AVP with an invalid length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Data length was predicted to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist encodeAvpLength(Ljava/nio/ByteBuffer;I)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 192
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    return-void
.end method

.method static blacklist getAvpLength(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 209
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    or-int/2addr v0, v1

    .line 208
    return v0
.end method

.method static blacklist getAvpPadding(I)I
    .registers 2
    .param p0, "avpLength"    # I

    .line 176
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_6

    .line 177
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_6
    rem-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static blacklist getEapMessageAvp(I[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    .registers 5
    .param p0, "vendorId"    # I
    .param p1, "data"    # [B

    .line 165
    new-instance v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    const/16 v1, 0x4f

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;-><init>(IIZ[B)V

    return-object v0
.end method

.method private blacklist getFlagByte()B
    .registers 4

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "flag":I
    iget-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isVendorIdPresent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/16 v1, 0x80

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    or-int/2addr v0, v1

    .line 130
    iget-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isMandatory:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x40

    :cond_11
    or-int/2addr v0, v2

    .line 131
    int-to-byte v1, v0

    return v1
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 4

    .line 142
    iget v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    iget v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    invoke-static {v1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->getAvpPadding(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    .local v0, "paddedAvpLength":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 146
    .local v1, "encodedBuffer":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpCode:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 147
    invoke-direct {p0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->getFlagByte()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    iget v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->avpLength:I

    invoke-static {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->encodeAvpLength(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->isVendorIdPresent:Z

    if-eqz v2, :cond_27

    .line 150
    iget v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->vendorId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    :cond_27
    iget-object v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->data:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
