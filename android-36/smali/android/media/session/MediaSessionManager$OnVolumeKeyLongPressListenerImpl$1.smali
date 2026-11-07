.class Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

.field final synthetic blacklist val$event:Landroid/view/KeyEvent;


# direct methods
.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1338
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1341
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;->this$0:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->-$$Nest$fgetmListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;)Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    invoke-interface {v0, v1}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;->onVolumeKeyLongPress(Landroid/view/KeyEvent;)V

    .line 1342
    return-void
.end method
