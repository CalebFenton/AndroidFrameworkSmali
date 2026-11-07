.class Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;
.super Landroid/database/ContentObserver;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 417
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmImsMmTelManager(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    if-nez v0, :cond_10

    .line 418
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    const-string v1, "SimInfo change error: MmTelManager is null"

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 419
    return-void

    .line 423
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$fgetmImsMmTelManager(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v0

    .line 424
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleVtSettingChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1f} :catch_20

    .line 427
    .end local v0    # "isEnabled":Z
    goto :goto_39

    .line 425
    :catch_20
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimInfo change error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mlogw(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V

    .line 428
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_39
    return-void
.end method
