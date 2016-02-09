.class Ljava/lang/ProcessManager$ProcessInputStream;
.super Ljava/io/FileInputStream;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInputStream"
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 348
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@3
    .line 349
    iput-object p1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    #@5
    .line 347
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$ProcessInputStream;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    :try_start_0
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3
    .line 357
    monitor-enter p0

    #@4
    .line 359
    :try_start_1
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    #@6
    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    .line 361
    const/4 v0, 0x0

    #@a
    :try_start_2
    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c
    monitor-exit p0

    #@d
    .line 353
    return-void

    #@e
    .line 360
    :catchall_0
    move-exception v0

    #@f
    .line 361
    const/4 v1, 0x0

    #@10
    :try_start_3
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    #@12
    .line 360
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@13
    .line 357
    :catchall_1
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0

    #@16
    .line 356
    :catchall_2
    move-exception v0

    #@17
    .line 357
    monitor-enter p0

    #@18
    .line 359
    :try_start_4
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    #@1a
    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@1d
    .line 361
    const/4 v1, 0x0

    #@1e
    :try_start_5
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@20
    monitor-exit p0

    #@21
    .line 356
    throw v0

    #@22
    .line 360
    :catchall_3
    move-exception v0

    #@23
    .line 361
    const/4 v1, 0x0

    #@24
    :try_start_6
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessInputStream;->fd:Ljava/io/FileDescriptor;

    #@26
    .line 360
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@27
    .line 357
    :catchall_4
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0
.end method
