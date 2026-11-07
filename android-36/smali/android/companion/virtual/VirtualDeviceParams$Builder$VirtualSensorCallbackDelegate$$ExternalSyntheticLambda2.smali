.class public final synthetic Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/SharedMemory;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iput p2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;->f$2:Landroid/os/SharedMemory;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;->f$0:Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate$$ExternalSyntheticLambda2;->f$2:Landroid/os/SharedMemory;

    invoke-static {v0, v1, v2}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;->$r8$lambda$dIrr3qBLMrUqUASiibtqUqlKTXE(Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;ILandroid/os/SharedMemory;)V

    return-void
.end method
