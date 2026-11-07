.class Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;
.super Ljava/lang/Object;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamValueUtil"
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;->toInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoShortArray(Ljava/nio/ByteBuffer;)[S
    .registers 1

    invoke-static {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;->toShortArray(Ljava/nio/ByteBuffer;)[S

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;->toStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist toInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "addrLen"    # I
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
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/2addr v0, p1

    if-nez v0, :cond_29

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-array v1, p1, [B

    .line 528
    .local v1, "addr":[B
    :goto_e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p1, :cond_28

    .line 529
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 531
    :try_start_17
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 534
    goto :goto_e

    .line 532
    :catch_1f
    move-exception v2

    .line 533
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v4, "Can\'t parse byte array as an IP address"

    invoke-direct {v3, v4}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 536
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_28
    return-object v0

    .line 523
    .end local v0    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v1    # "addr":[B
    :cond_29
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Can\'t parse whole byte array"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toShortArray(Ljava/nio/ByteBuffer;)[S
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_16

    .line 511
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 512
    .local v0, "sb":Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [S

    .line 513
    .local v1, "out":[S
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 514
    return-object v1

    .line 509
    .end local v0    # "sb":Ljava/nio/ShortBuffer;
    .end local v1    # "out":[S
    :cond_16
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Can\'t parse whole byte array"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
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
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 492
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 493
    .local v1, "alpnLen":I
    if-eqz v1, :cond_25

    .line 496
    new-array v2, v1, [B

    .line 497
    .local v2, "alpn":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 498
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v1    # "alpnLen":I
    .end local v2    # "alpn":[B
    goto :goto_5

    .line 494
    .restart local v1    # "alpnLen":I
    :cond_25
    new-instance v2, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v3, "alpn should not be an empty string"

    invoke-direct {v2, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    .end local v1    # "alpnLen":I
    :cond_2d
    return-object v0
.end method
