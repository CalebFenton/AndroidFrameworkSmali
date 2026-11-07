.class Landroid/telephony/satellite/SatelliteManager$28;
.super Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForCapabilitiesChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteCapabilitiesCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCapabilitiesCallback;)V
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

    .line 3201
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$callback:Landroid/telephony/satellite/SatelliteCapabilitiesCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteCapabilitiesChanged$0(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;Landroid/telephony/satellite/SatelliteCapabilities;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    .param p1, "capabilities"    # Landroid/telephony/satellite/SatelliteCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3206
    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteCapabilitiesCallback;->onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilities;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteCapabilitiesChanged$1(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;Landroid/telephony/satellite/SatelliteCapabilities;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/SatelliteCapabilitiesCallback;
    .param p1, "capabilities"    # Landroid/telephony/satellite/SatelliteCapabilities;

    .line 3205
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;Landroid/telephony/satellite/SatelliteCapabilities;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteCapabilitiesChanged(Landroid/telephony/satellite/SatelliteCapabilities;)V
    .registers 5
    .param p1, "capabilities"    # Landroid/telephony/satellite/SatelliteCapabilities;

    .line 3205
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$callback:Landroid/telephony/satellite/SatelliteCapabilitiesCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteCapabilitiesCallback;Landroid/telephony/satellite/SatelliteCapabilities;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3208
    return-void
.end method
