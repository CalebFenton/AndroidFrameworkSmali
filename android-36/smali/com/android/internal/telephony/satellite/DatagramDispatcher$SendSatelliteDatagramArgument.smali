.class final Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;
.super Ljava/lang/Object;
.source "DatagramDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DatagramDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendSatelliteDatagramArgument"
.end annotation


# instance fields
.field public blacklist callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist datagram:Landroid/telephony/satellite/SatelliteDatagram;

.field public blacklist datagramId:J

.field public blacklist datagramStartTime:J

.field public blacklist datagramType:I

.field public blacklist needFullScreenPointingUI:Z

.field public blacklist skipCheckingSatelliteAligned:Z

.field public blacklist subId:I


# direct methods
.method constructor blacklist <init>(IJILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->skipCheckingSatelliteAligned:Z

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    .line 236
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    .line 237
    iput p4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 238
    iput-object p5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    .line 239
    iput-boolean p6, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->needFullScreenPointingUI:Z

    .line 240
    iput-object p7, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public blacklist getDatagramRoundedSizeBytes()I
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    invoke-virtual {v0}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 246
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteDatagram;->getSatelliteDatagram()[B

    move-result-object p0

    array-length p0, p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    .line 248
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDatagramStartTime()V
    .registers 5

    .line 257
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_c
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    return-void
.end method
