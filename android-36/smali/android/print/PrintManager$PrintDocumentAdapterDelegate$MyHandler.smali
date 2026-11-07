.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_ON_FINISH:I = 0x4

.field public static final greylist-max-o MSG_ON_KILL:I = 0x5

.field public static final greylist-max-o MSG_ON_LAYOUT:I = 0x2

.field public static final greylist-max-o MSG_ON_START:I = 0x1

.field public static final greylist-max-o MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1036
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 1037
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1038
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .line 1042
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 1111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 1105
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1106
    :try_start_2e
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$mdestroyLocked(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 1107
    monitor-exit v1

    .line 1108
    goto :goto_88

    .line 1107
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v0

    .line 1077
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1078
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintDocumentAdapter;

    .line 1079
    .local v1, "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [Landroid/print/PageRange;

    .line 1080
    .local v2, "pages":[Landroid/print/PageRange;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 1081
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/os/CancellationSignal;

    .line 1082
    .local v4, "cancellation":Landroid/os/CancellationSignal;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v5, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 1083
    .local v5, "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1093
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 1094
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v2    # "pages":[Landroid/print/PageRange;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "cancellation":Landroid/os/CancellationSignal;
    .end local v5    # "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    goto :goto_88

    .line 1052
    :pswitch_57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1053
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/print/PrintDocumentAdapter;

    .line 1054
    .local v2, "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/print/PrintAttributes;

    .line 1055
    .local v3, "oldAttributes":Landroid/print/PrintAttributes;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/print/PrintAttributes;

    .line 1056
    .local v4, "newAttributes":Landroid/print/PrintAttributes;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/os/CancellationSignal;

    .line 1057
    .local v5, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 1058
    .local v6, "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/os/Bundle;

    .line 1059
    .local v7, "metadata":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1072
    invoke-virtual/range {v2 .. v7}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    .line 1074
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v3    # "oldAttributes":Landroid/print/PrintAttributes;
    .end local v4    # "newAttributes":Landroid/print/PrintAttributes;
    .end local v5    # "cancellation":Landroid/os/CancellationSignal;
    .end local v6    # "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .end local v7    # "metadata":Landroid/os/Bundle;
    goto :goto_88

    .line 1048
    :pswitch_80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onStart()V

    .line 1049
    nop

    .line 1115
    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_80
        :pswitch_57
        :pswitch_38
        :pswitch_20
    .end packed-switch
.end method
