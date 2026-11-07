.class Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;
.super Landroid/os/Handler;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

.field final synthetic blacklist val$this$0:Landroid/app/backup/RestoreSession;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/RestoreSession$RestoreObserverWrapper;Landroid/os/Looper;Landroid/app/backup/RestoreSession;)V
    .registers 4
    .param p1, "this$1"    # Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
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

    .line 352
    iput-object p1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iput-object p3, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->val$this$0:Landroid/app/backup/RestoreSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 355
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 366
    :pswitch_6
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/app/backup/RestoreSet;

    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    goto :goto_34

    .line 363
    :pswitch_12
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreFinished(I)V

    .line 364
    goto :goto_34

    .line 360
    :pswitch_1c
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/RestoreObserver;->onUpdate(ILjava/lang/String;)V

    .line 361
    goto :goto_34

    .line 357
    :pswitch_2a
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreStarting(I)V

    .line 358
    nop

    .line 369
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1c
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
