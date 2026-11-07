.class Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;
.super Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 4
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 530
    if-nez p1, :cond_a

    .line 531
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    const-string v1, "onCapabilitiesStatusChanged: parameter is null"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 532
    return-void

    .line 534
    :cond_a
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 535
    :try_start_11
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleMmtelCapabilitiesStatusChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 536
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method
