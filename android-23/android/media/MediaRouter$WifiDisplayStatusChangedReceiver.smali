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
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2873
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2876
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2878
    const-string/jumbo v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    #@10
    .line 2877
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    #@16
    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    #@19
    .line 2875
    :cond_0
    return-void
.end method
