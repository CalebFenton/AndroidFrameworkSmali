.class Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamValueUtil;
.super Ljava/lang/Object;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamValueUtil"
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamValueUtil;->toInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoShortArray(Ljava/nio/ByteBuffer;)[S
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamValueUtil;->toShortArray(Ljava/nio/ByteBuffer;)[S

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamValueUtil;->toStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist toInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/2addr v0, p1

    if-nez v0, :cond_28

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    new-array v1, p1, [B

    .line 528
    :goto_e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p1, :cond_27

    .line 529
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 531
    :try_start_17
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 533
    :catch_1f
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Can\'t parse byte array as an IP address"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    return-object v0

    .line 523
    :cond_28
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Can\'t parse whole byte array"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist toShortArray(Ljava/nio/ByteBuffer;)[S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_16

    .line 511
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 512
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [S

    .line 513
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object v0

    .line 509
    :cond_16
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string v0, "Can\'t parse whole byte array"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist toStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :goto_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 492
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    if-eqz v1, :cond_25

    .line 496
    new-array v1, v1, [B

    .line 497
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 498
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 494
    :cond_25
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string v0, "alpn should not be an empty string"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    return-object v0
.end method
