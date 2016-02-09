.class Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;
.super Landroid/database/ContentObserver;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationListenerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2
    .line 148
    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl;->-get3(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@9
    .line 149
    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl;->-get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    .line 150
    const-string/jumbo v1, "enabled_notification_listeners"

    #@10
    .line 149
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    .line 150
    const/4 v2, 0x0

    #@15
    .line 149
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@18
    .line 147
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 155
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get0()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    if-eqz p1, :cond_1

    #@c
    .line 156
    :cond_0
    return-void

    #@d
    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@f
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->-wrap6(Lcom/android/server/audio/MediaFocusControl;)V

    #@12
    .line 154
    return-void
.end method
