.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamAlpn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 285
    .local v0, "len":I
    invoke-static {p1, v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 286
    .local v1, "svcParamValue":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;->-$$Nest$smtoStringList(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->mValue:Ljava/util/List;

    .line 287
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->mValue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 290
    return-void

    .line 288
    :cond_1f
    new-instance v2, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    const-string v3, "alpn value must be non-empty"

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 278
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->mValue:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->getKey()I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->mValue:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
