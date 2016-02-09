.class public Lcom/android/server/net/DelayedDiskWrite;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/DelayedDiskWrite$Writer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite;->doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@6
    .line 34
    const-string/jumbo v0, "DelayedDiskWrite"

    #@9
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->TAG:Ljava/lang/String;

    #@b
    .line 29
    return-void
.end method

.method private doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    #@0
    .prologue
    .line 67
    const/4 v2, 0x0

    #@1
    .line 69
    .local v2, "out":Ljava/io/DataOutputStream;
    if-eqz p3, :cond_0

    #@3
    .line 70
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    #@5
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@7
    .line 71
    new-instance v5, Ljava/io/FileOutputStream;

    #@9
    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@c
    .line 70
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@f
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@12
    .local v3, "out":Ljava/io/DataOutputStream;
    move-object v2, v3

    #@13
    .line 73
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_0
    invoke-interface {p2, v2}, Lcom/android/server/net/DelayedDiskWrite$Writer;->onWriteCalled(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@16
    .line 77
    if-eqz v2, :cond_1

    #@18
    .line 79
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@1b
    .line 84
    :cond_1
    :goto_0
    monitor-enter p0

    #@1c
    .line 85
    :try_start_2
    iget v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@1e
    add-int/lit8 v4, v4, -0x1

    #@20
    iput v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@22
    if-nez v4, :cond_2

    #@24
    .line 86
    iget-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@26
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    #@2d
    .line 87
    const/4 v4, 0x0

    #@2e
    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@30
    .line 88
    const/4 v4, 0x0

    #@31
    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    :cond_2
    :goto_1
    monitor-exit p0

    #@34
    .line 66
    return-void

    #@35
    .line 80
    :catch_0
    move-exception v1

    #@36
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    #@37
    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@38
    monitor-exit p0

    #@39
    throw v4

    #@3a
    .line 74
    :catch_1
    move-exception v0

    #@3b
    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "Error writing data file "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {p0, v4}, Lcom/android/server/net/DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@52
    .line 77
    if-eqz v2, :cond_3

    #@54
    .line 79
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    #@57
    .line 84
    :cond_3
    :goto_2
    monitor-enter p0

    #@58
    .line 85
    :try_start_5
    iget v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@5a
    add-int/lit8 v4, v4, -0x1

    #@5c
    iput v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@5e
    if-nez v4, :cond_2

    #@60
    .line 86
    iget-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@62
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    #@69
    .line 87
    const/4 v4, 0x0

    #@6a
    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@6c
    .line 88
    const/4 v4, 0x0

    #@6d
    iput-object v4, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@6f
    goto :goto_1

    #@70
    .line 84
    :catchall_1
    move-exception v4

    #@71
    monitor-exit p0

    #@72
    throw v4

    #@73
    .line 80
    :catch_2
    move-exception v1

    #@74
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@75
    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    #@76
    .line 77
    if-eqz v2, :cond_4

    #@78
    .line 79
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@7b
    .line 84
    :cond_4
    :goto_3
    monitor-enter p0

    #@7c
    .line 85
    :try_start_7
    iget v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@7e
    add-int/lit8 v5, v5, -0x1

    #@80
    iput v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@82
    if-nez v5, :cond_5

    #@84
    .line 86
    iget-object v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@86
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    #@8d
    .line 87
    const/4 v5, 0x0

    #@8e
    iput-object v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@90
    .line 88
    const/4 v5, 0x0

    #@91
    iput-object v5, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@93
    :cond_5
    monitor-exit p0

    #@94
    .line 76
    throw v4

    #@95
    .line 80
    :catch_3
    move-exception v1

    #@96
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@97
    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    #@98
    monitor-exit p0

    #@99
    throw v4
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, "DelayedDiskWrite"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 94
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;

    #@0
    .prologue
    .line 41
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    #@4
    .line 40
    return-void
.end method

.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    #@0
    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "empty file path"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 50
    :cond_0
    monitor-enter p0

    #@10
    .line 51
    :try_start_0
    iget v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    #@16
    const/4 v1, 0x1

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    #@1b
    const-string/jumbo v1, "DelayedDiskWriteThread"

    #@1e
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@21
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    #@23
    .line 53
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    #@25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@28
    .line 54
    new-instance v0, Landroid/os/Handler;

    #@2a
    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    #@2c
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@33
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    :cond_1
    monitor-exit p0

    #@36
    .line 58
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    #@38
    new-instance v1, Lcom/android/server/net/DelayedDiskWrite$1;

    #@3a
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite$1;-><init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    #@3d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@40
    .line 44
    return-void

    #@41
    .line 50
    :catchall_0
    move-exception v0

    #@42
    monitor-exit p0

    #@43
    throw v0
.end method
