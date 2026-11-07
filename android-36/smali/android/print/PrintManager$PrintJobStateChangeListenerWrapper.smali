.class public final Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
.super Landroid/print/IPrintJobStateChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintJobStateChangeListenerWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/print/PrintManager$PrintJobStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1335
    invoke-direct {p0}, Landroid/print/IPrintJobStateChangeListener$Stub;-><init>()V

    .line 1336
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1337
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 1338
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 2

    .line 1354
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1355
    return-void
.end method

.method public greylist-max-o getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;
    .registers 2

    .line 1358
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-object v0
.end method

.method public greylist-max-o onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .registers 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .line 1342
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1343
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 1344
    .local v1, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    .line 1345
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1346
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1347
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1348
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1349
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1351
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_24
    return-void
.end method
