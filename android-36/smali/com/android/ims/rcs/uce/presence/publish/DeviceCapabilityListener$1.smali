.class Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 381
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 384
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_31

    .line 385
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_32

    :cond_15
    goto :goto_20

    :pswitch_16
    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_21

    :goto_20
    const/4 v0, -0x1

    :goto_21
    packed-switch v0, :pswitch_data_38

    goto :goto_30

    .line 387
    :pswitch_25
    const-string v0, "android.telecom.extra.TTY_PREFERRED_MODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 389
    .local v0, "preferredMode":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-static {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->-$$Nest$mhandleTtyPreferredModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V

    .line 392
    .end local v0    # "preferredMode":I
    :goto_30
    return-void

    .line 384
    :cond_31
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch -0x7768ec62
        :pswitch_16
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method
