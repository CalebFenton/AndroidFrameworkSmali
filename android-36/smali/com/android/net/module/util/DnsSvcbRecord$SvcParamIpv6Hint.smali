.class Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;
.super Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamIpv6Hint"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 387
    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;-><init>(ILjava/nio/ByteBuffer;ILcom/android/net/module/util/DnsSvcbRecord-IA;)V

    .line 388
    return-void
.end method
