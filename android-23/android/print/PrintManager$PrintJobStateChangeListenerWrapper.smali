.class final Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
.super Landroid/print/IPrintJobStateChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintJobStateChangeListenerWrapper"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrintManager$PrintJobStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintJobStateChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/print/PrintManager$PrintJobStateChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1039
    invoke-direct {p0}, Landroid/print/IPrintJobStateChangeListener$Stub;-><init>()V

    #@3
    .line 1041
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@a
    .line 1042
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@c
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@f
    iput-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@11
    .line 1040
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 1059
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    #@5
    .line 1058
    return-void
.end method

.method public getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;
    .locals 1

    #@0
    .prologue
    .line 1063
    iget-object v0, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@8
    return-object v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 1047
    iget-object v3, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/os/Handler;

    #@8
    .line 1048
    .local v1, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    #@a
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@10
    .line 1049
    .local v2, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v1, :cond_0

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 1050
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@17
    move-result-object v0

    #@18
    .line 1051
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1a
    .line 1052
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1c
    .line 1053
    const/4 v3, 0x1

    #@1d
    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@24
    .line 1046
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-void
.end method
