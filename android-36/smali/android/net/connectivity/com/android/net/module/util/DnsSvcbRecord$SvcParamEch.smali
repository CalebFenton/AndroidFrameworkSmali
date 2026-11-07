.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamEch;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamEch"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 393
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;-><init>(ILjava/nio/ByteBuffer;)V

    .line 394
    return-void
.end method
