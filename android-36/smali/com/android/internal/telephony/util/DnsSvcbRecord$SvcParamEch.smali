.class Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamEch;
.super Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamGeneric;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamEch"
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

    const/4 v0, 0x5

    .line 393
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamGeneric;-><init>(ILjava/nio/ByteBuffer;)V

    return-void
.end method
