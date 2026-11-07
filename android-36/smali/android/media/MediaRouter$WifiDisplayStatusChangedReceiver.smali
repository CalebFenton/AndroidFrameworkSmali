.class Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiDisplayStatusChangedReceiver"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 3192
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3196
    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    const-class v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 3199
    :cond_19
    return-void
.end method
