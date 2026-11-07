.class Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;
.super Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamNoDefaultAlpn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 306
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 310
    :cond_b
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "no-default-alpn value must be empty"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;->getKey()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
