.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createDeviceCapListener(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
    .registers 6

    .line 0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->lambda$new$1(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    move-result-object p1

    return-object p1
.end method
