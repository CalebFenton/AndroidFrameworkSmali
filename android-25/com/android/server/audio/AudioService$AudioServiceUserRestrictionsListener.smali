.class Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 5367
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5375
    const-string/jumbo v2, "no_unmute_microphone"

    #@3
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    .line 5377
    .local v1, "wasRestricted":Z
    const-string/jumbo v2, "no_unmute_microphone"

    #@a
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 5378
    .local v0, "isRestricted":Z
    if-eq v1, v0, :cond_0

    #@10
    .line 5379
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    #@12
    invoke-static {v2, v0, p1}, Lcom/android/server/audio/AudioService;->-wrap39(Lcom/android/server/audio/AudioService;ZI)V

    #@15
    .line 5386
    :cond_0
    const-string/jumbo v2, "no_adjust_volume"

    #@18
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_2

    #@1e
    .line 5387
    const-string/jumbo v2, "disallow_unmute_device"

    #@21
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@24
    move-result v1

    #@25
    .line 5389
    .end local v1    # "wasRestricted":Z
    :goto_0
    const-string/jumbo v2, "no_adjust_volume"

    #@28
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_3

    #@2e
    .line 5390
    const-string/jumbo v2, "disallow_unmute_device"

    #@31
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@34
    move-result v0

    #@35
    .line 5391
    :goto_1
    if-eq v1, v0, :cond_1

    #@37
    .line 5392
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    #@39
    const/4 v3, 0x0

    #@3a
    invoke-static {v2, v0, v3, p1}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;ZII)V

    #@3d
    .line 5371
    :cond_1
    return-void

    #@3e
    .line 5386
    .restart local v1    # "wasRestricted":Z
    :cond_2
    const/4 v1, 0x1

    #@3f
    .local v1, "wasRestricted":Z
    goto :goto_0

    #@40
    .line 5389
    .end local v1    # "wasRestricted":Z
    :cond_3
    const/4 v0, 0x1

    #@41
    goto :goto_1
.end method
