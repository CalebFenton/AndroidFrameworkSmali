.class final Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintFileDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCancellationSignal:Landroid/os/CancellationSignal;

.field private final greylist-max-o mDestination:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field final synthetic blacklist this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 7
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;
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

    .line 105
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    .line 107
    iput-object p4, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 108
    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 109
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;

    invoke-direct {v1, p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;-><init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;Landroid/print/PrintFileDocumentAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 119
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v2}, Landroid/print/PrintFileDocumentAdapter;->-$$Nest$fgetmFile(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_c} :catch_52
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_37

    .line 120
    .local v1, "in":Ljava/io/InputStream;
    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_2d

    .line 121
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_17
    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v1, v2, v3, v0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_23

    .line 122
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2d

    .end local v2    # "out":Ljava/io/OutputStream;
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Landroid/os/OperationCanceledException; {:try_start_1f .. :try_end_22} :catch_52
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_37

    goto :goto_53

    .line 119
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v4

    :try_start_29
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .end local p1    # "params":[Ljava/lang/Void;
    :goto_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catchall_2d
    move-exception v2

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception v3

    :try_start_33
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .end local p1    # "params":[Ljava/lang/Void;
    :goto_36
    throw v2
    :try_end_37
    .catch Landroid/os/OperationCanceledException; {:try_start_33 .. :try_end_37} :catch_52
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_37} :catch_37

    .line 124
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_37
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PrintedFileDocAdapter"

    const-string v3, "Error writing data!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v3}, Landroid/print/PrintFileDocumentAdapter;->-$$Nest$fgetmContext(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040ae9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :catch_52
    move-exception v1

    .line 128
    :goto_53
    nop

    .line 129
    :goto_54
    return-object v0
.end method

.method protected bridge synthetic whitelist onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected greylist-max-o onCancelled(Ljava/lang/Void;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Void;

    .line 139
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v1}, Landroid/print/PrintFileDocumentAdapter;->-$$Nest$fgetmContext(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040ae8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 96
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected greylist-max-o onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Void;

    .line 134
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    .line 135
    return-void
.end method
