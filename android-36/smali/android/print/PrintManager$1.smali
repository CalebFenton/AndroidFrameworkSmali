.class Landroid/print/PrintManager$1;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "this$0"    # Landroid/print/PrintManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .param p4, "async"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 266
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 269
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 271
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 272
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    .line 274
    .local v1, "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    invoke-virtual {v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    move-result-object v2

    .line 275
    .local v2, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v2, :cond_1b

    .line 276
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrintJobId;

    .line 277
    .local v3, "printJobId":Landroid/print/PrintJobId;
    invoke-interface {v2, v3}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    .line 279
    .end local v3    # "printJobId":Landroid/print/PrintJobId;
    :cond_1b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 282
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    .end local v2    # "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
