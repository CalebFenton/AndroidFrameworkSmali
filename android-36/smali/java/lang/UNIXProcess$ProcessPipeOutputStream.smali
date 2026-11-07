.class Ljava/lang/UNIXProcess$ProcessPipeOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "UNIXProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPipeOutputStream"
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "fd"    # I

    .line 314
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Ljava/lang/UNIXProcess;->newFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 315
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist processExited()V
    .registers 3

    monitor-enter p0

    .line 319
    :try_start_1
    iget-object v0, p0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->out:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    .line 320
    .local v0, "out":Ljava/io/OutputStream;
    if-eqz v0, :cond_e

    .line 322
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    .line 326
    goto :goto_a

    .line 323
    .end local p0    # "this":Ljava/lang/UNIXProcess$ProcessPipeOutputStream;
    :catch_9
    move-exception v1

    .line 327
    :goto_a
    :try_start_a
    sget-object v1, Ljava/lang/ProcessBuilder$NullOutputStream;->INSTANCE:Ljava/lang/ProcessBuilder$NullOutputStream;

    iput-object v1, p0, Ljava/lang/UNIXProcess$ProcessPipeOutputStream;->out:Ljava/io/OutputStream;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    .line 329
    :cond_e
    monitor-exit p0

    return-void

    .line 318
    .end local v0    # "out":Ljava/io/OutputStream;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method
