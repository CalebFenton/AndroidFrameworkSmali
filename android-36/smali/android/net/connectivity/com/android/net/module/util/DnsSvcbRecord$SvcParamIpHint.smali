.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamIpHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "Ljava/util/List<",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(ILjava/nio/ByteBuffer;I)V
    .registers 9
    .param p1, "key"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "addrLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 356
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 357
    .local v0, "len":I
    invoke-static {p2, v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 358
    .local v1, "svcParamValue":Ljava/nio/ByteBuffer;
    invoke-static {v1, p3}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;->-$$Nest$smtoInetAddressList(Ljava/nio/ByteBuffer;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->mValue:Ljava/util/List;

    .line 359
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 362
    return-void

    .line 360
    :cond_1e
    new-instance v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getKey()I

    move-result v4

    invoke-static {v4}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value must be non-empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method synthetic constructor blacklist <init>(ILjava/nio/ByteBuffer;ILandroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;-><init>(ILjava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 349
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->mValue:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 371
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 372
    .local v0, "valueJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->mValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 373
    .local v2, "ip":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 374
    .end local v2    # "ip":Ljava/net/InetAddress;
    goto :goto_d

    .line 375
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getKey()I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
