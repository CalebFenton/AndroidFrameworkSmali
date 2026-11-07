.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->lambda$new$2(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p1

    return-object p1
.end method
