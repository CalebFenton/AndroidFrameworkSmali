.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamIpv4Hint"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 381
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v0, v1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;-><init>(ILjava/nio/ByteBuffer;ILandroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord-IA;)V

    .line 382
    return-void
.end method
