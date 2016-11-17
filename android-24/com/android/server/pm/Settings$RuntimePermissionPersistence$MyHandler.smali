.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@0
    .prologue
    .line 5332
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@2
    .line 5333
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    .line 5332
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 5338
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    .line 5339
    .local v1, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Ljava/lang/Runnable;

    #@6
    .line 5340
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    #@8
    invoke-static {v2, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-wrap1(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    #@b
    .line 5341
    if-eqz v0, :cond_0

    #@d
    .line 5342
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@10
    .line 5337
    :cond_0
    return-void
.end method
