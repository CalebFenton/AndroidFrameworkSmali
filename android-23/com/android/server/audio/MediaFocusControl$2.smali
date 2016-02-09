.class Lcom/android/server/audio/MediaFocusControl$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;

    #@0
    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1140
    if-nez p2, :cond_0

    #@2
    .line 1141
    return-void

    #@3
    .line 1143
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    .line 1144
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    #@9
    .line 1145
    return-void

    #@a
    .line 1147
    :cond_1
    const-string/jumbo v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 1148
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@15
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get5(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1c
    .line 1139
    :cond_2
    return-void
.end method
