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
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mDestination:Landroid/os/ParcelFileDescriptor;

.field private final mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field final synthetic this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method public constructor <init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/print/PrintFileDocumentAdapter;
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    .line 104
    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    #@7
    .line 105
    iput-object p4, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@9
    .line 106
    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@b
    .line 107
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    #@d
    new-instance v1, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;

    #@f
    invoke-direct {v1, p0}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;-><init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@15
    .line 103
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 116
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 117
    const/4 v1, 0x0

    #@1
    .line 118
    .local v1, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    #@3
    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    #@5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@8
    move-result-object v6

    #@9
    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@c
    .line 119
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v6, 0x2000

    #@e
    new-array v0, v6, [B

    #@10
    .line 121
    .local v0, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    #@12
    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    #@14
    invoke-static {v6}, Landroid/print/PrintFileDocumentAdapter;->-get1(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;

    #@17
    move-result-object v6

    #@18
    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 123
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->isCancelled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_1

    #@21
    .line 137
    :cond_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@24
    .line 138
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@27
    move-object v1, v2

    #@28
    .line 140
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_1
    const/4 v6, 0x0

    #@29
    return-object v6

    #@2a
    .line 126
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    #@2d
    move-result v5

    #@2e
    .line 127
    .local v5, "readByteCount":I
    if-ltz v5, :cond_0

    #@30
    .line 130
    const/4 v6, 0x0

    #@31
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@34
    goto :goto_0

    #@35
    .line 132
    .end local v5    # "readByteCount":I
    :catch_0
    move-exception v3

    #@36
    .local v3, "ioe":Ljava/io/IOException;
    move-object v1, v2

    #@37
    .line 133
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "PrintedFileDocumentAdapter"

    #@3a
    const-string/jumbo v7, "Error writing data!"

    #@3d
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    .line 134
    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@42
    iget-object v7, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    #@44
    invoke-static {v7}, Landroid/print/PrintFileDocumentAdapter;->-get0(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    #@47
    move-result-object v7

    #@48
    .line 135
    const v8, 0x1040544

    #@4b
    .line 134
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v6, v7}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    .line 137
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@55
    .line 138
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@58
    goto :goto_1

    #@59
    .line 136
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@5a
    .line 137
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5d
    .line 138
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@60
    .line 136
    throw v6

    #@61
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    #@62
    move-object v1, v2

    #@63
    .end local v2    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    goto :goto_3

    #@64
    .line 132
    .local v1, "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    #@65
    .restart local v3    # "ioe":Ljava/io/IOException;
    goto :goto_2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 149
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onCancelled(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@2
    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    #@4
    invoke-static {v1}, Landroid/print/PrintFileDocumentAdapter;->-get0(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    .line 151
    const v2, 0x1040543

    #@b
    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    #@12
    .line 149
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Landroid/print/PageRange;

    #@5
    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    #@d
    .line 144
    return-void
.end method
