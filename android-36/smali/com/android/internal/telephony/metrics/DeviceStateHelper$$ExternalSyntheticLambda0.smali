.class public final synthetic Lcom/android/internal/telephony/metrics/DeviceStateHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/metrics/DeviceStateHelper;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/DeviceStateHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    return-void
.end method


# virtual methods
.method public final whitelist onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DeviceStateHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->$r8$lambda$BHiZp1Avx9WTCtZLogEcm_3v30w(Lcom/android/internal/telephony/metrics/DeviceStateHelper;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method
