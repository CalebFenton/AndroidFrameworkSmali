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
    .line 5364
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
    .line 5372
    const-string/jumbo v2, "no_unmute_microphone"

    #@3
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    .line 5374
    .local v1, "wasRestricted":Z
    const-string/jumbo v2, "no_unmute_microphone"

    #@a
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 5375
    .local v0, "isRestricted":Z
    if-eq v1, v0, :cond_0

    #@10
    .line 5376
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    #@12
    invoke-static {v2, v0, p1}, Lcom/android/server/audio/AudioService;->-wrap39(Lcom/android/server/audio/AudioService;ZI)V

    #@15
    .line 5383
    :cond_0
    const-string/jumbo v2, "no_adjust_volume"

    #@18
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .line 5385
    const-string/jumbo v2, "no_adjust_volume"

    #@1f
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    .line 5386
    if-eq v1, v0, :cond_1

    #@25
    .line 5387
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    #@27
    const/4 v3, 0x0

    #@28
    invoke-static {v2, v0, v3, p1}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;ZII)V

    #@2b
    .line 5368
    :cond_1
    return-void
.end method
