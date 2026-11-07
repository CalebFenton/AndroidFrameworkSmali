.class final Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;
.super Ljava/lang/Object;
.source "DatagramReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatagramRetryArgument"
.end annotation


# instance fields
.field public blacklist datagram:Landroid/telephony/satellite/SatelliteDatagram;

.field public blacklist datagramId:J

.field public blacklist listener:Landroid/telephony/satellite/ISatelliteDatagramCallback;

.field public blacklist pendingCount:I


# direct methods
.method constructor blacklist <init>(JLandroid/telephony/satellite/SatelliteDatagram;ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 6

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    .line 202
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    .line 203
    iput p4, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->pendingCount:I

    .line 204
    iput-object p5, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->listener:Landroid/telephony/satellite/ISatelliteDatagramCallback;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    if-eq v3, v2, :cond_10

    goto :goto_35

    .line 211
    :cond_10
    check-cast p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;

    .line 212
    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    iget-wide v4, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagramId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    iget-object v3, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->pendingCount:I

    iget v3, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->pendingCount:I

    if-ne v2, v3, :cond_35

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->listener:Landroid/telephony/satellite/ISatelliteDatagramCallback;

    iget-object p1, p1, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$DatagramRetryArgument;->listener:Landroid/telephony/satellite/ISatelliteDatagramCallback;

    .line 215
    invoke-interface {p0, p1}, Landroid/telephony/satellite/ISatelliteDatagramCallback;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    return v0

    :cond_35
    :goto_35
    return v1
.end method
