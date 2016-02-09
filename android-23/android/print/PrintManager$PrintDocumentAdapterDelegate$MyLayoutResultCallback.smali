.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLayoutResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/ILayoutResultCallback;

.field private final mSequence:I

.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p2, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p3, "sequence"    # I

    #@0
    .prologue
    .line 835
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    #@5
    .line 837
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    #@7
    .line 838
    iput p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    #@9
    .line 836
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    #@0
    .prologue
    .line 921
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 922
    const/4 v0, 0x0

    #@8
    :try_start_0
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    #@a
    .line 923
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-set0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 920
    return-void

    #@12
    .line 921
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public onLayoutCancelled()V
    .locals 4

    #@0
    .prologue
    .line 898
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 899
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v2

    #@a
    .line 903
    if-nez v0, :cond_0

    #@c
    .line 904
    const-string/jumbo v2, "PrintManager"

    #@f
    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 907
    return-void

    #@16
    .line 898
    .end local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3

    #@19
    .line 911
    .restart local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    #@1b
    invoke-interface {v0, v2}, Landroid/print/ILayoutResultCallback;->onLayoutCanceled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 915
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@21
    .line 896
    :goto_0
    return-void

    #@22
    .line 912
    :catch_0
    move-exception v1

    #@23
    .line 913
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "PrintManager"

    #@26
    const-string/jumbo v3, "Error calling onLayoutFailed"

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 915
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@2f
    goto :goto_0

    #@30
    .line 914
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    #@31
    .line 915
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@34
    .line 914
    throw v2
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 874
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v2

    #@a
    .line 879
    if-nez v0, :cond_0

    #@c
    .line 880
    const-string/jumbo v2, "PrintManager"

    #@f
    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 883
    return-void

    #@16
    .line 874
    .end local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3

    #@19
    .line 887
    .restart local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    #@1b
    invoke-interface {v0, p1, v2}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 891
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@21
    .line 872
    :goto_0
    return-void

    #@22
    .line 888
    :catch_0
    move-exception v1

    #@23
    .line 889
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "PrintManager"

    #@26
    const-string/jumbo v3, "Error calling onLayoutFailed"

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 891
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@2f
    goto :goto_0

    #@30
    .line 890
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    #@31
    .line 891
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@34
    .line 890
    throw v2
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 4
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;
    .param p2, "changed"    # Z

    #@0
    .prologue
    .line 844
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 845
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v2

    #@a
    .line 849
    if-nez v0, :cond_0

    #@c
    .line 850
    const-string/jumbo v2, "PrintManager"

    #@f
    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 853
    return-void

    #@16
    .line 844
    .end local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3

    #@19
    .line 857
    .restart local v0    # "callback":Landroid/print/ILayoutResultCallback;
    :cond_0
    if-nez p1, :cond_1

    #@1b
    .line 858
    :try_start_1
    new-instance v2, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v3, "document info cannot be null"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 866
    :catchall_1
    move-exception v2

    #@25
    .line 867
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@28
    .line 866
    throw v2

    #@29
    .line 862
    :cond_1
    :try_start_2
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    #@2b
    invoke-interface {v0, p1, p2, v2}, Landroid/print/ILayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 867
    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    #@31
    .line 842
    return-void

    #@32
    .line 863
    :catch_0
    move-exception v1

    #@33
    .line 864
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "PrintManager"

    #@36
    const-string/jumbo v3, "Error calling onLayoutFinished"

    #@39
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3c
    goto :goto_0
.end method
