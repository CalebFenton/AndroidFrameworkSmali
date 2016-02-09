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
.field final synthetic this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/storage/StorageManager$ObbListenerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 256
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

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
    .line 259
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    #@2
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->getListener()Landroid/os/storage/OnObbStateChangeListener;

    #@5
    move-result-object v0

    #@6
    .line 260
    .local v0, "changeListener":Landroid/os/storage/OnObbStateChangeListener;
    if-nez v0, :cond_0

    #@8
    .line 261
    return-void

    #@9
    .line 264
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b
    check-cast v1, Ljava/lang/String;

    #@d
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    #@12
    .line 258
    return-void
.end method
