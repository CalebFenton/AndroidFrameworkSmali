.class Lcom/android/ims/ImsManager$1;
.super Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/ImsManager;->addRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/ImsManager;

.field final synthetic blacklist val$listener:Lcom/android/ims/ImsConnectionStateListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConnectionStateListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2227
    iput-object p1, p0, Lcom/android/ims/ImsManager$1;->this$0:Lcom/android/ims/ImsManager;

    iput-object p2, p0, Lcom/android/ims/ImsManager$1;->val$listener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 4
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 2231
    iget-object v0, p0, Lcom/android/ims/ImsManager$1;->val$listener:Lcom/android/ims/ImsConnectionStateListener;

    iget-object v1, p0, Lcom/android/ims/ImsManager$1;->this$0:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getRegistrationTech()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChangedAdapter(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 2232
    return-void
.end method
