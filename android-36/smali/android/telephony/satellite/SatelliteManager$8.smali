.class Landroid/telephony/satellite/SatelliteManager$8;
.super Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->startTransmissionUpdates(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;)V
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

    .line 1655
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveDatagramStateChanged$6(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V
    .registers 4
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "state"    # I
    .param p2, "receivePendingCount"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1680
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;->onReceiveDatagramStateChanged(III)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveDatagramStateChanged$7(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V
    .registers 5
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "state"    # I
    .param p2, "receivePendingCount"    # I
    .param p3, "errorCode"    # I

    .line 1679
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatellitePositionChanged$0(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "pointingInfo"    # Landroid/telephony/satellite/PointingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1660
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;->onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatellitePositionChanged$1(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "pointingInfo"    # Landroid/telephony/satellite/PointingInfo;

    .line 1659
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSendDatagramRequested$8(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "datagramType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1687
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;->onSendDatagramRequested(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSendDatagramRequested$9(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "datagramType"    # I

    .line 1686
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSendDatagramStateChanged$2(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;IIII)V
    .registers 5
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "datagramType"    # I
    .param p2, "state"    # I
    .param p3, "sendPendingCount"    # I
    .param p4, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1667
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;->onSendDatagramStateChanged(IIII)V

    return-void
.end method

.method static synthetic blacklist lambda$onSendDatagramStateChanged$3(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;IIII)V
    .registers 11
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "datagramType"    # I
    .param p2, "state"    # I
    .param p3, "sendPendingCount"    # I
    .param p4, "errorCode"    # I

    .line 1666
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "callback":Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .end local p1    # "datagramType":I
    .end local p2    # "state":I
    .end local p3    # "sendPendingCount":I
    .end local p4    # "errorCode":I
    .local v1, "callback":Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .local v2, "datagramType":I
    .local v3, "state":I
    .local v4, "sendPendingCount":I
    .local v5, "errorCode":I
    invoke-direct/range {v0 .. v5}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;IIII)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSendDatagramStateChanged$4(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V
    .registers 4
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "state"    # I
    .param p2, "sendPendingCount"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1672
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;->onSendDatagramStateChanged(III)V

    return-void
.end method

.method static synthetic blacklist lambda$onSendDatagramStateChanged$5(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V
    .registers 5
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;
    .param p1, "state"    # I
    .param p2, "sendPendingCount"    # I
    .param p3, "errorCode"    # I

    .line 1671
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onReceiveDatagramStateChanged(III)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "receivePendingCount"    # I
    .param p3, "errorCode"    # I

    .line 1679
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p2, p3}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1682
    return-void
.end method

.method public blacklist onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V
    .registers 5
    .param p1, "pointingInfo"    # Landroid/telephony/satellite/PointingInfo;

    .line 1659
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;Landroid/telephony/satellite/PointingInfo;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1661
    return-void
.end method

.method public blacklist onSendDatagramRequested(I)V
    .registers 5
    .param p1, "datagramType"    # I

    .line 1686
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1688
    return-void
.end method

.method public blacklist onSendDatagramStateChanged(IIII)V
    .registers 12
    .param p1, "datagramType"    # I
    .param p2, "state"    # I
    .param p3, "sendPendingCount"    # I
    .param p4, "errorCode"    # I

    .line 1666
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    new-instance v1, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda5;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "datagramType":I
    .end local p2    # "state":I
    .end local p3    # "sendPendingCount":I
    .end local p4    # "errorCode":I
    .local v3, "datagramType":I
    .local v4, "state":I
    .local v5, "sendPendingCount":I
    .local v6, "errorCode":I
    invoke-direct/range {v1 .. v6}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;IIII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1671
    iget-object p1, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Landroid/telephony/satellite/SatelliteManager$8;->val$callback:Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;

    new-instance p3, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;

    invoke-direct {p3, p2, v4, v5, v6}, Landroid/telephony/satellite/SatelliteManager$8$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/satellite/SatelliteTransmissionUpdateCallback;III)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1674
    return-void
.end method
