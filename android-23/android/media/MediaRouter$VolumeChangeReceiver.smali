.class Landroid/media/MediaRouter$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeChangeReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2853
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2856
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    const-string/jumbo v4, "android.media.VOLUME_CHANGED_ACTION"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 2857
    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@11
    .line 2858
    const/4 v4, -0x1

    #@12
    .line 2857
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@15
    move-result v2

    #@16
    .line 2859
    .local v2, "streamType":I
    const/4 v3, 0x3

    #@17
    if-eq v2, v3, :cond_0

    #@19
    .line 2860
    return-void

    #@1a
    .line 2863
    :cond_0
    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    #@1d
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@20
    move-result v0

    #@21
    .line 2865
    .local v0, "newVolume":I
    const-string/jumbo v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    #@24
    .line 2864
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@27
    move-result v1

    #@28
    .line 2866
    .local v1, "oldVolume":I
    if-eq v0, v1, :cond_1

    #@2a
    .line 2867
    invoke-static {v0}, Landroid/media/MediaRouter;->systemVolumeChanged(I)V

    #@2d
    .line 2855
    .end local v0    # "newVolume":I
    .end local v1    # "oldVolume":I
    .end local v2    # "streamType":I
    :cond_1
    return-void
.end method
