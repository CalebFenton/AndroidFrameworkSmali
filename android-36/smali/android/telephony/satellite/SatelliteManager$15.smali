.class Landroid/telephony/satellite/SatelliteManager$15;
.super Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForIncomingDatagram(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteDatagramCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteDatagramCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/satellite/SatelliteManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2148
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$callback:Landroid/telephony/satellite/SatelliteDatagramCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteDatagramReceived$0(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V
    .registers 6
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteDatagramCallback;
    .param p1, "datagramId"    # J
    .param p3, "datagram"    # Landroid/telephony/satellite/SatelliteDatagram;
    .param p4, "pendingCount"    # I
    .param p5, "externalAck"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2166
    invoke-interface/range {p0 .. p5}, Landroid/telephony/satellite/SatelliteDatagramCallback;->onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteDatagramReceived$1(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V
    .registers 13
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteDatagramCallback;
    .param p1, "datagramId"    # J
    .param p3, "datagram"    # Landroid/telephony/satellite/SatelliteDatagram;
    .param p4, "pendingCount"    # I
    .param p5, "externalAck"    # Ljava/util/function/Consumer;

    .line 2165
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p0    # "callback":Landroid/telephony/satellite/SatelliteDatagramCallback;
    .end local p1    # "datagramId":J
    .end local p3    # "datagram":Landroid/telephony/satellite/SatelliteDatagram;
    .end local p4    # "pendingCount":I
    .end local p5    # "externalAck":Ljava/util/function/Consumer;
    .local v1, "callback":Landroid/telephony/satellite/SatelliteDatagramCallback;
    .local v2, "datagramId":J
    .local v4, "datagram":Landroid/telephony/satellite/SatelliteDatagram;
    .local v5, "pendingCount":I
    .local v6, "externalAck":Ljava/util/function/Consumer;
    invoke-direct/range {v0 .. v6}, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V
    .registers 14
    .param p1, "datagramId"    # J
    .param p3, "datagram"    # Landroid/telephony/satellite/SatelliteDatagram;
    .param p4, "pendingCount"    # I
    .param p5, "internalAck"    # Lcom/android/internal/telephony/IVoidConsumer;

    .line 2153
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$15$1;

    invoke-direct {v0, p0, p5}, Landroid/telephony/satellite/SatelliteManager$15$1;-><init>(Landroid/telephony/satellite/SatelliteManager$15;Lcom/android/internal/telephony/IVoidConsumer;)V

    move-object v7, v0

    .line 2165
    .local v7, "externalAck":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteManager$15;->val$callback:Landroid/telephony/satellite/SatelliteDatagramCallback;

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda0;

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    .end local p1    # "datagramId":J
    .end local p3    # "datagram":Landroid/telephony/satellite/SatelliteDatagram;
    .end local p4    # "pendingCount":I
    .local v3, "datagramId":J
    .local v5, "datagram":Landroid/telephony/satellite/SatelliteDatagram;
    .local v6, "pendingCount":I
    invoke-direct/range {v1 .. v7}, Landroid/telephony/satellite/SatelliteManager$15$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteDatagramCallback;JLandroid/telephony/satellite/SatelliteDatagram;ILjava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2168
    return-void
.end method
