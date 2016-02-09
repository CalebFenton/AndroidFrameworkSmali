.class public Landroid/support/v4/media/session/MediaSessionCompatApi8;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi8.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mbr"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 24
    const-string/jumbo v1, "audio"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/AudioManager;

    #@9
    .line 25
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    #@c
    .line 23
    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mbr"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 29
    const-string/jumbo v1, "audio"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/AudioManager;

    #@9
    .line 30
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    #@c
    .line 28
    return-void
.end method
