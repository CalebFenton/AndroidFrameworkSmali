.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamNoDefaultAlpn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 309
    .local v0, "len":I
    if-nez v0, :cond_b

    .line 312
    return-void

    .line 310
    :cond_b
    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "no-default-alpn value must be empty"

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 303
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;->getValue()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()Ljava/lang/Void;
    .registers 2

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 321
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
