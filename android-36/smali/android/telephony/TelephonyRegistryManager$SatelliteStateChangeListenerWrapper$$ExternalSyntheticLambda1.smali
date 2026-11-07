.class public final synthetic Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final blacklist operate(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Landroid/telephony/satellite/SatelliteStateChangeListener;

    invoke-static {v0, p1}, Landroid/telephony/TelephonyRegistryManager$SatelliteStateChangeListenerWrapper;->lambda$onSatelliteEnabledStateChanged$0(ZLandroid/telephony/satellite/SatelliteStateChangeListener;)V

    return-void
.end method
