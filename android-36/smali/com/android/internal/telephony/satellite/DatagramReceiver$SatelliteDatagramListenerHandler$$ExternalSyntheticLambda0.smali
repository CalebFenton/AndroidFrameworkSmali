.class public final synthetic Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:Landroid/telephony/satellite/SatelliteDatagram;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;JLandroid/telephony/satellite/SatelliteDatagram;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/satellite/SatelliteDatagram;

    iput p5, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/satellite/SatelliteDatagram;

    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler$$ExternalSyntheticLambda0;->f$3:I

    move-object v5, p1

    check-cast v5, Landroid/telephony/satellite/ISatelliteDatagramCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;->$r8$lambda$2SM74nd66lgEg2AtQl_0H0fztQY(Lcom/android/internal/telephony/satellite/DatagramReceiver$SatelliteDatagramListenerHandler;JLandroid/telephony/satellite/SatelliteDatagram;ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V

    return-void
.end method
