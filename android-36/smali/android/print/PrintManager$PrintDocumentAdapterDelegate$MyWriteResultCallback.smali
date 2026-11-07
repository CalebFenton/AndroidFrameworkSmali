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
.field private greylist-max-o mCallback:Landroid/print/IWriteResultCallback;

.field private greylist-max-o mFd:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mSequence:I

.field final synthetic blacklist this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V
    .registers 5
    .param p2, "callback"    # Landroid/print/IWriteResultCallback;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sequence"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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

    .line 1227
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    .line 1228
    iput-object p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 1229
    iput p4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    .line 1230
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1231
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 4

    .line 1316
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1317
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1318
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1319
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 1320
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fputmPendingCallback(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)V

    .line 1321
    monitor-exit v0

    .line 1322
    return-void

    .line 1321
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist onWriteCancelled()V
    .registers 5

    .line 1293
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1294
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1295
    .local v1, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2f

    .line 1298
    if-nez v1, :cond_14

    .line 1299
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void

    .line 1306
    :cond_14
    :try_start_14
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, v0}, Landroid/print/IWriteResultCallback;->onWriteCanceled(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_20
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 1310
    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1311
    goto :goto_2a

    .line 1310
    :catchall_1e
    move-exception v0

    goto :goto_2b

    .line 1307
    :catch_20
    move-exception v0

    .line 1308
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteCanceled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 1310
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_1a

    .line 1312
    :goto_2a
    return-void

    .line 1310
    :goto_2b
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1311
    throw v0

    .line 1295
    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist onWriteFailed(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 1269
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1270
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1271
    .local v1, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2f

    .line 1274
    if-nez v1, :cond_14

    .line 1275
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void

    .line 1282
    :cond_14
    :try_start_14
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_20
    .catchall {:try_start_14 .. :try_end_19} :catchall_1e

    .line 1286
    nop

    :goto_1a
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1287
    goto :goto_2a

    .line 1286
    :catchall_1e
    move-exception v0

    goto :goto_2b

    .line 1283
    :catch_20
    move-exception v0

    .line 1284
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 1286
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_1a

    .line 1288
    :goto_2a
    return-void

    .line 1286
    :goto_2b
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1287
    throw v0

    .line 1271
    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public whitelist onWriteFinished([Landroid/print/PageRange;)V
    .registers 6
    .param p1, "pages"    # [Landroid/print/PageRange;

    .line 1236
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1237
    :try_start_7
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1238
    .local v1, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_44

    .line 1241
    if-nez v1, :cond_14

    .line 1242
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void

    .line 1249
    :cond_14
    if-eqz p1, :cond_37

    .line 1252
    :try_start_16
    array-length v0, p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_35

    if-eqz v0, :cond_2c

    .line 1257
    :try_start_19
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/IWriteResultCallback;->onWriteFinished([Landroid/print/PageRange;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catchall {:try_start_19 .. :try_end_1e} :catchall_35

    .line 1260
    goto :goto_27

    .line 1258
    :catch_1f
    move-exception v0

    .line 1259
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_20
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFinished"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_35

    .line 1262
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_27
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1263
    nop

    .line 1264
    return-void

    .line 1253
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pages cannot be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    .end local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .end local p1    # "pages":[Landroid/print/PageRange;
    throw v0

    .line 1262
    .restart local v1    # "callback":Landroid/print/IWriteResultCallback;
    .restart local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .restart local p1    # "pages":[Landroid/print/PageRange;
    :catchall_35
    move-exception v0

    goto :goto_40

    .line 1250
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pages cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    .end local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .end local p1    # "pages":[Landroid/print/PageRange;
    throw v0
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_35

    .line 1262
    .restart local v1    # "callback":Landroid/print/IWriteResultCallback;
    .restart local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .restart local p1    # "pages":[Landroid/print/PageRange;
    :goto_40
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1263
    throw v0

    .line 1238
    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method
