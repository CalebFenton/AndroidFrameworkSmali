.class Landroid/telephony/satellite/SatelliteManager$27;
.super Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForNtnSignalStrengthChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/satellite/NtnSignalStrengthCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/NtnSignalStrengthCallback;)V
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

    .line 3113
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$27;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$27;->val$callback:Landroid/telephony/satellite/NtnSignalStrengthCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onNtnSignalStrengthChanged$0(Landroid/telephony/satellite/NtnSignalStrengthCallback;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/satellite/NtnSignalStrengthCallback;
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3118
    invoke-interface {p0, p1}, Landroid/telephony/satellite/NtnSignalStrengthCallback;->onNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method

.method static synthetic blacklist lambda$onNtnSignalStrengthChanged$1(Landroid/telephony/satellite/NtnSignalStrengthCallback;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3
    .param p0, "callback"    # Landroid/telephony/satellite/NtnSignalStrengthCallback;
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 3117
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/NtnSignalStrengthCallback;Landroid/telephony/satellite/NtnSignalStrength;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 5
    .param p1, "ntnSignalStrength"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 3117
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$27;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$27;->val$callback:Landroid/telephony/satellite/NtnSignalStrengthCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$27$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/NtnSignalStrengthCallback;Landroid/telephony/satellite/NtnSignalStrength;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3120
    return-void
.end method
