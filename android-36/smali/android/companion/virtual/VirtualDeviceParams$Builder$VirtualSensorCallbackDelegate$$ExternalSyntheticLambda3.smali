.class public final synthetic Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

.field public final synthetic blacklist f$1:Landroid/companion/virtual/sensor/VirtualSensor;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Ljava/time/Duration;

.field public final synthetic blacklist f$4:Ljava/time/Duration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$0:Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$1:Landroid/companion/virtual/sensor/VirtualSensor;

    iput-boolean p3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$3:Ljava/time/Duration;

    iput-object p5, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$4:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$0:Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$1:Landroid/companion/virtual/sensor/VirtualSensor;

    iget-boolean v2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$2:Z

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$3:Ljava/time/Duration;

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda3;->f$4:Ljava/time/Duration;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->$r8$lambda$PYJbVHIiubIpRimXmv87MAvG-m4(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;Landroid/companion/virtual/sensor/VirtualSensor;ZLjava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method
