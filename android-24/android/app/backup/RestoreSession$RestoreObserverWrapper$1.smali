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
.field final synthetic this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor <init>(Landroid/app/backup/RestoreSession$RestoreObserverWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 196
    iput-object p1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 198
    :goto_0
    return-void

    #@6
    .line 201
    :pswitch_0
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@8
    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    #@a
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@c
    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreStarting(I)V

    #@f
    goto :goto_0

    #@10
    .line 204
    :pswitch_1
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@12
    iget-object v1, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    #@14
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2, v0}, Landroid/app/backup/RestoreObserver;->onUpdate(ILjava/lang/String;)V

    #@1d
    goto :goto_0

    #@1e
    .line 207
    :pswitch_2
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@20
    iget-object v0, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    #@22
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@24
    invoke-virtual {v0, v1}, Landroid/app/backup/RestoreObserver;->restoreFinished(I)V

    #@27
    goto :goto_0

    #@28
    .line 210
    :pswitch_3
    iget-object v0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@2a
    iget-object v1, v0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    #@2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v0, [Landroid/app/backup/RestoreSet;

    #@30
    invoke-virtual {v1, v0}, Landroid/app/backup/RestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    #@33
    goto :goto_0

    #@34
    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
