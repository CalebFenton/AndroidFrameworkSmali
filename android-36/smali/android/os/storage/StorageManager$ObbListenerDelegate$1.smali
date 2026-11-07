.class Landroid/os/storage/StorageManager$ObbListenerDelegate$1;
.super Landroid/os/Handler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

.field final synthetic blacklist val$this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V
    .registers 4
    .param p1, "this$1"    # Landroid/os/storage/StorageManager$ObbListenerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 484
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iput-object p3, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->val$this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 487
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->getListener()Landroid/os/storage/OnObbStateChangeListener;

    move-result-object v0

    .line 488
    .local v0, "changeListener":Landroid/os/storage/OnObbStateChangeListener;
    if-nez v0, :cond_9

    .line 489
    return-void

    .line 492
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    .line 493
    return-void
.end method
