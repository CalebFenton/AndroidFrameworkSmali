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


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/print/PrintManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Landroid/print/PrintManager$1;->this$0:Landroid/print/PrintManager;

    #@2
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 193
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v4, :pswitch_data_0

    #@5
    .line 192
    :goto_0
    return-void

    #@6
    .line 195
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 197
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v3, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    #@e
    .line 198
    .local v3, "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    invoke-virtual {v3}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@11
    move-result-object v1

    #@12
    .line 199
    .local v1, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v1, :cond_0

    #@14
    .line 200
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@16
    check-cast v2, Landroid/print/PrintJobId;

    #@18
    .line 201
    .local v2, "printJobId":Landroid/print/PrintJobId;
    invoke-interface {v1, v2}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    #@1b
    .line 203
    .end local v2    # "printJobId":Landroid/print/PrintJobId;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1e
    goto :goto_0

    #@1f
    .line 193
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
