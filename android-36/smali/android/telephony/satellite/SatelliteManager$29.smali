.class Landroid/telephony/satellite/SatelliteManager$29;
.super Lcom/android/internal/telephony/IBooleanConsumer$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForSupportedStateChanged(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 3313
    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$29;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$29;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "supported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$accept$1(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "supported"    # Z

    .line 3316
    new-instance v0, Landroid/telephony/satellite/SatelliteManager$29$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$29$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(Z)V
    .registers 5
    .param p1, "supported"    # Z

    .line 3316
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$29;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$29;->val$callback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$29$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$29$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3318
    return-void
.end method
