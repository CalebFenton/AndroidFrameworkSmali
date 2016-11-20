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
    .line 256
    iput-object p1, p0, Landroid/print/PrintManager$1;->this$0:Landroid/print/PrintManager;

    #@2
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 259
    iget v8, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v8, :pswitch_data_0

    #@5
    .line 258
    :cond_0
    :goto_0
    return-void

    #@6
    .line 261
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 263
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v5, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    #@e
    .line 264
    .local v5, "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    invoke-virtual {v5}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    #@11
    move-result-object v1

    #@12
    .line 265
    .local v1, "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    if-eqz v1, :cond_1

    #@14
    .line 266
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@16
    check-cast v4, Landroid/print/PrintJobId;

    #@18
    .line 267
    .local v4, "printJobId":Landroid/print/PrintJobId;
    invoke-interface {v1, v4}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    #@1b
    .line 269
    .end local v4    # "printJobId":Landroid/print/PrintJobId;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1e
    goto :goto_0

    #@1f
    .line 273
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "listener":Landroid/print/PrintManager$PrintJobStateChangeListener;
    .end local v5    # "wrapper":Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    check-cast v7, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;

    #@23
    .line 274
    .local v7, "wrapper":Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    invoke-virtual {v7}, Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintServicesChangeListener;

    #@26
    move-result-object v3

    #@27
    .line 275
    .local v3, "listener":Landroid/print/PrintManager$PrintServicesChangeListener;
    if-eqz v3, :cond_0

    #@29
    .line 276
    invoke-interface {v3}, Landroid/print/PrintManager$PrintServicesChangeListener;->onPrintServicesChanged()V

    #@2c
    goto :goto_0

    #@2d
    .line 281
    .end local v3    # "listener":Landroid/print/PrintManager$PrintServicesChangeListener;
    .end local v7    # "wrapper":Landroid/print/PrintManager$PrintServicesChangeListenerWrapper;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f
    check-cast v6, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;

    #@31
    .line 282
    .local v6, "wrapper":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
    invoke-virtual {v6}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    #@34
    move-result-object v2

    #@35
    .line 283
    .local v2, "listener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    if-eqz v2, :cond_0

    #@37
    .line 284
    invoke-interface {v2}, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;->onPrintServiceRecommendationsChanged()V

    #@3a
    goto :goto_0

    #@3b
    .line 259
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
