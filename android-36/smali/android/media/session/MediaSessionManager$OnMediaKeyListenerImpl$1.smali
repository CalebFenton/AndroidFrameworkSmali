.class Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field final synthetic blacklist val$event:Landroid/view/KeyEvent;

.field final synthetic blacklist val$result:Landroid/os/ResultReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1363
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1366
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->-$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1367
    .local v0, "handled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The media key listener is returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_2f

    .line 1369
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    .line 1370
    nop

    .line 1369
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1373
    :cond_2f
    return-void
.end method
