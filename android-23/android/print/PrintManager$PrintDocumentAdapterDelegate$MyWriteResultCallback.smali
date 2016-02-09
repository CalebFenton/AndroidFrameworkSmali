.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
.super Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyWriteResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/IWriteResultCallback;

.field private mFd:Landroid/os/ParcelFileDescriptor;

.field private final mSequence:I

.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p2, "callback"    # Landroid/print/IWriteResultCallback;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sequence"    # I

    #@0
    .prologue
    .line 934
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    #@5
    .line 936
    iput-object p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    #@7
    .line 937
    iput p4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    #@9
    .line 938
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    #@b
    .line 935
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    #@0
    .prologue
    .line 1024
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1025
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    #@9
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c
    .line 1026
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    #@f
    .line 1027
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    #@12
    .line 1028
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-static {v0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-set0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 1023
    return-void

    #@1a
    .line 1024
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public onWriteCancelled()V
    .locals 4

    #@0
    .prologue
    .line 1001
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1002
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v2

    #@a
    .line 1006
    if-nez v0, :cond_0

    #@c
    .line 1007
    const-string/jumbo v2, "PrintManager"

    #@f
    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 1010
    return-void

    #@16
    .line 1001
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3

    #@19
    .line 1014
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    #@1b
    invoke-interface {v0, v2}, Landroid/print/IWriteResultCallback;->onWriteCanceled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 1018
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@21
    .line 999
    :goto_0
    return-void

    #@22
    .line 1015
    :catch_0
    move-exception v1

    #@23
    .line 1016
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "PrintManager"

    #@26
    const-string/jumbo v3, "Error calling onWriteCanceled"

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 1018
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@2f
    goto :goto_0

    #@30
    .line 1017
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    #@31
    .line 1018
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@34
    .line 1017
    throw v2
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 977
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 978
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v2

    #@a
    .line 982
    if-nez v0, :cond_0

    #@c
    .line 983
    const-string/jumbo v2, "PrintManager"

    #@f
    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 986
    return-void

    #@16
    .line 977
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3

    #@19
    .line 990
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    #@1b
    invoke-interface {v0, p1, v2}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    .line 994
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@21
    .line 975
    :goto_0
    return-void

    #@22
    .line 991
    :catch_0
    move-exception v1

    #@23
    .line 992
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "PrintManager"

    #@26
    const-string/jumbo v3, "Error calling onWriteFailed"

    #@29
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 994
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@2f
    goto :goto_0

    #@30
    .line 993
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    #@31
    .line 994
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@34
    .line 993
    throw v2
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 4
    .param p1, "pages"    # [Landroid/print/PageRange;

    #@0
    .prologue
    .line 944
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    #@2
    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 945
    :try_start_0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v2

    #@a
    .line 949
    if-nez v0, :cond_0

    #@c
    .line 950
    const-string/jumbo v2, "PrintManager"

    #@f
    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    #@12
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 953
    return-void

    #@16
    .line 944
    .end local v0    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit v2

    #@18
    throw v3

    #@19
    .line 957
    .restart local v0    # "callback":Landroid/print/IWriteResultCallback;
    :cond_0
    if-nez p1, :cond_1

    #@1b
    .line 958
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v3, "pages cannot be null"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 969
    :catchall_1
    move-exception v2

    #@25
    .line 970
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@28
    .line 969
    throw v2

    #@29
    .line 960
    :cond_1
    :try_start_2
    array-length v2, p1

    #@2a
    if-nez v2, :cond_2

    #@2c
    .line 961
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v3, "pages cannot be empty"

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 965
    :cond_2
    :try_start_3
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    #@37
    invoke-interface {v0, p1, v2}, Landroid/print/IWriteResultCallback;->onWriteFinished([Landroid/print/PageRange;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    .line 970
    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    #@3d
    .line 942
    return-void

    #@3e
    .line 966
    :catch_0
    move-exception v1

    #@3f
    .line 967
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "PrintManager"

    #@42
    const-string/jumbo v3, "Error calling onWriteFinished"

    #@45
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@48
    goto :goto_0
.end method
