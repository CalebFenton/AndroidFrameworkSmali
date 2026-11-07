.class Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamIpv4Hint;
.super Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamIpHint;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamIpv4Hint"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 381
    invoke-direct {p0, v0, p1, v0, v1}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamIpHint;-><init>(ILjava/nio/ByteBuffer;ILcom/android/internal/telephony/util/DnsSvcbRecord-IA;)V

    return-void
.end method
