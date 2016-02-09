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
.field public static final MSG_ON_FINISH:I = 0x4

.field public static final MSG_ON_KILL:I = 0x5

.field public static final MSG_ON_LAYOUT:I = 0x2

.field public static final MSG_ON_START:I = 0x1

.field public static final MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 735
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    .line 736
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 735
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 741
    iget v11, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v11, :pswitch_data_0

    #@5
    .line 819
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v12, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v13, "Unknown message: "

    #@f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v12

    #@13
    .line 820
    iget v13, p1, Landroid/os/Message;->what:I

    #@15
    .line 819
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v12

    #@19
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v12

    #@1d
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v11

    #@21
    .line 747
    :pswitch_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    check-cast v11, Landroid/print/PrintDocumentAdapter;

    #@25
    invoke-virtual {v11}, Landroid/print/PrintDocumentAdapter;->onStart()V

    #@28
    .line 740
    :goto_0
    return-void

    #@29
    .line 751
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v6, Lcom/android/internal/os/SomeArgs;

    #@2d
    .line 752
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2f
    check-cast v0, Landroid/print/PrintDocumentAdapter;

    #@31
    .line 753
    .local v0, "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@33
    check-cast v1, Landroid/print/PrintAttributes;

    #@35
    .line 754
    .local v1, "oldAttributes":Landroid/print/PrintAttributes;
    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@37
    check-cast v2, Landroid/print/PrintAttributes;

    #@39
    .line 755
    .local v2, "newAttributes":Landroid/print/PrintAttributes;
    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@3b
    check-cast v3, Landroid/os/CancellationSignal;

    #@3d
    .line 756
    .local v3, "cancellation":Landroid/os/CancellationSignal;
    iget-object v4, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@3f
    check-cast v4, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    #@41
    .line 757
    .local v4, "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    iget-object v5, v6, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@43
    check-cast v5, Landroid/os/Bundle;

    #@45
    .line 758
    .local v5, "metadata":Landroid/os/Bundle;
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@48
    .line 771
    invoke-virtual/range {v0 .. v5}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    #@4b
    goto :goto_0

    #@4c
    .line 776
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v1    # "oldAttributes":Landroid/print/PrintAttributes;
    .end local v2    # "newAttributes":Landroid/print/PrintAttributes;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v4    # "callback":Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .end local v5    # "metadata":Landroid/os/Bundle;
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4e
    check-cast v6, Lcom/android/internal/os/SomeArgs;

    #@50
    .line 777
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@52
    check-cast v0, Landroid/print/PrintDocumentAdapter;

    #@54
    .line 778
    .restart local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    iget-object v9, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@56
    check-cast v9, [Landroid/print/PageRange;

    #@58
    .line 779
    .local v9, "pages":[Landroid/print/PageRange;
    iget-object v8, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@5a
    check-cast v8, Landroid/os/ParcelFileDescriptor;

    #@5c
    .line 780
    .local v8, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@5e
    check-cast v3, Landroid/os/CancellationSignal;

    #@60
    .line 781
    .restart local v3    # "cancellation":Landroid/os/CancellationSignal;
    iget-object v7, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@62
    check-cast v7, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@64
    .line 782
    .local v7, "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@67
    .line 792
    invoke-virtual {v0, v9, v8, v3, v7}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    #@6a
    goto :goto_0

    #@6b
    .line 800
    .end local v0    # "adapter":Landroid/print/PrintDocumentAdapter;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "callback":Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .end local v8    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "pages":[Landroid/print/PageRange;
    :pswitch_3
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6d
    check-cast v11, Landroid/print/PrintDocumentAdapter;

    #@6f
    invoke-virtual {v11}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    #@72
    .line 804
    iget-object v11, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@74
    invoke-static {v11}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@77
    move-result-object v12

    #@78
    monitor-enter v12

    #@79
    .line 805
    :try_start_0
    iget-object v11, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@7b
    invoke-static {v11}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-wrap0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7e
    monitor-exit v12

    #@7f
    goto :goto_0

    #@80
    .line 804
    :catchall_0
    move-exception v11

    #@81
    monitor-exit v12

    #@82
    throw v11

    #@83
    .line 814
    :pswitch_4
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@85
    check-cast v10, Ljava/lang/String;

    #@87
    .line 815
    .local v10, "reason":Ljava/lang/String;
    new-instance v11, Ljava/lang/RuntimeException;

    #@89
    invoke-direct {v11, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v11

    #@8d
    .line 741
    nop

    #@8e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
