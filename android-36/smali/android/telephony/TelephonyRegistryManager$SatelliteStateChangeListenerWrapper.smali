.class Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;
.super Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;
.source "TelephonyRegistryManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyRegistryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteStateChangeListenerWrapper"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/satellite/SatelliteStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$mAQ04EFH50ZG-xStxogddcPl7NI(Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->lambda$onSatelliteEnabledStateChanged$1(Z)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/satellite/SatelliteStateChangeListener;

    .line 1640
    invoke-direct {p0}, Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;-><init>()V

    .line 1641
    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1642
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    .line 1643
    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteEnabledStateChanged$0(ZLandroid/telephony/satellite/SatelliteStateChangeListener;)V
    .registers 2
    .param p0, "isEnabled"    # Z
    .param p1, "sscl"    # Landroid/telephony/satellite/SatelliteStateChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1652
    invoke-interface {p1, p0}, Landroid/telephony/satellite/SatelliteStateChangeListener;->onEnabledStateChanged(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$onSatelliteEnabledStateChanged$1(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    .line 1651
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda1;-><init>(Z)V

    .line 1649
    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteEnabledStateChanged(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 1647
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1653
    return-void
.end method
