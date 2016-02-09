.class Lcom/android/server/wm/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ViewServer$ViewServerWorker;
    }
.end annotation


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@5
    .line 86
    iput p2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    #@7
    .line 84
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    const/4 v3, 0x0

    #@1
    .line 186
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@4
    move-result-object v0

    #@5
    .line 187
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    #@7
    new-instance v6, Ljava/io/OutputStreamWriter;

    #@9
    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@c
    const/16 v7, 0x2000

    #@e
    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 188
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@14
    .line 189
    const-string/jumbo v6, "\n"

    #@17
    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@1a
    .line 190
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1d
    .line 191
    const/4 v5, 0x1

    #@1e
    .line 195
    .local v5, "result":Z
    if-eqz v4, :cond_0

    #@20
    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@23
    :cond_0
    :goto_0
    move-object v3, v4

    #@24
    .line 203
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return v5

    #@25
    .line 198
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    #@26
    .line 199
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    #@27
    goto :goto_0

    #@28
    .line 192
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "result":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    #@29
    .line 193
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v5, 0x0

    #@2a
    .line 195
    .restart local v5    # "result":Z
    if-eqz v3, :cond_1

    #@2c
    .line 197
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@2f
    goto :goto_1

    #@30
    .line 198
    :catch_2
    move-exception v1

    #@31
    .line 199
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    #@32
    goto :goto_1

    #@33
    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v6

    #@34
    .line 195
    .end local v3    # "out":Ljava/io/BufferedWriter;
    :goto_3
    if-eqz v3, :cond_2

    #@36
    .line 197
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@39
    .line 194
    :cond_2
    :goto_4
    throw v6

    #@3a
    .line 198
    :catch_3
    move-exception v1

    #@3b
    .line 199
    .restart local v1    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    #@3c
    .restart local v5    # "result":Z
    goto :goto_4

    #@3d
    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "result":Z
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    #@3e
    move-object v3, v4

    #@3f
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    #@40
    .line 192
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    #@41
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@42
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@6
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 163
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v3

    #@4
    iget-object v4, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@6
    if-ne v3, v4, :cond_1

    #@8
    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    #@a
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    #@d
    move-result-object v0

    #@e
    .line 167
    .local v0, "client":Ljava/net/Socket;
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 168
    iget-object v3, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    #@14
    new-instance v4, Lcom/android/server/wm/ViewServer$ViewServerWorker;

    #@16
    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;-><init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V

    #@19
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 176
    .end local v0    # "client":Ljava/net/Socket;
    :catch_0
    move-exception v2

    #@1e
    .line 177
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ViewServer"

    #@21
    const-string/jumbo v4, "Connection error: "

    #@24
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0

    #@28
    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "client":Ljava/net/Socket;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 172
    :catch_1
    move-exception v1

    #@2d
    .line 173
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 162
    .end local v0    # "client":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 101
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 104
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    #@a
    iget v1, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    #@c
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@13
    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    #@15
    .line 105
    new-instance v0, Ljava/lang/Thread;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Remote View Server [port="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, "]"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@37
    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@39
    .line 106
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    #@3f
    .line 107
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@44
    .line 109
    const/4 v0, 0x1

    #@45
    return v0
.end method

.method stop()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 123
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 125
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@7
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@a
    .line 126
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    #@10
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 133
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    #@15
    .line 134
    iput-object v4, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    #@17
    .line 136
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    #@19
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    #@1c
    .line 137
    const/4 v2, 0x0

    #@1d
    iput-object v2, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@1f
    .line 138
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 129
    :catch_0
    move-exception v1

    #@22
    .line 130
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ViewServer"

    #@25
    const-string/jumbo v3, "Could not stop all view server threads"

    #@28
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    goto :goto_0

    #@2c
    .line 139
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@2d
    .line 140
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ViewServer"

    #@30
    const-string/jumbo v3, "Could not close the view server"

    #@33
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    #@37
    return v2
.end method
