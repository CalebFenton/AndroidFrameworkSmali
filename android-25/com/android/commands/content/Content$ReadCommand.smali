.class Lcom/android/commands/content/Content$ReadCommand;
.super Lcom/android/commands/content/Content$Command;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadCommand"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/commands/content/Content$Command;-><init>(Landroid/net/Uri;I)V

    #@3
    .line 515
    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    const/16 v2, 0x2000

    #@2
    new-array v0, v2, [B

    #@4
    .line 529
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    #@7
    move-result v1

    #@8
    .local v1, "read":I
    const/4 v2, -0x1

    #@9
    if-le v1, v2, :cond_0

    #@b
    .line 530
    const/4 v2, 0x0

    #@c
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 532
    .end local v1    # "read":I
    :catchall_0
    move-exception v2

    #@11
    .line 533
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@14
    .line 534
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@17
    .line 532
    throw v2

    #@18
    .line 533
    .restart local v1    # "read":I
    :cond_0
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1b
    .line 534
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 525
    return-void
.end method


# virtual methods
.method public onExecute(Landroid/content/IContentProvider;)V
    .locals 7
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 521
    iget-object v2, p0, Lcom/android/commands/content/Content$ReadCommand;->mUri:Landroid/net/Uri;

    #@3
    const-string/jumbo v3, "r"

    #@6
    move-object v0, p1

    #@7
    move-object v4, v1

    #@8
    move-object v5, v1

    #@9
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    #@c
    move-result-object v6

    #@d
    .line 522
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Ljava/io/FileInputStream;

    #@f
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@16
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    invoke-static {v0, v1}, Lcom/android/commands/content/Content$ReadCommand;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@1b
    .line 520
    return-void
.end method
