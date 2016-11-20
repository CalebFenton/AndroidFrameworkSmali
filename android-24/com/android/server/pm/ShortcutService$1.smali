.class Lcom/android/server/pm/ShortcutService$1;
.super Landroid/app/IUidObserver$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$1;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    return-void
.end method

.method public onUidGone(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$1;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    #@7
    .line 349
    return-void
.end method

.method public onUidIdle(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    return-void
.end method

.method public onUidStateChanged(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$1;->this$0:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    #@5
    .line 345
    return-void
.end method
