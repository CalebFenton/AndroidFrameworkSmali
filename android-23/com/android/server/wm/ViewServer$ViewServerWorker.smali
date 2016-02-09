.class Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ViewServer;
    .param p2, "client"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 211
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 212
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@8
    .line 213
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@a
    .line 214
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@c
    .line 211
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .locals 8

    #@0
    .prologue
    .line 292
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@2
    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@9
    .line 293
    const/4 v4, 0x0

    #@a
    .line 295
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    #@c
    new-instance v6, Ljava/io/OutputStreamWriter;

    #@e
    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@10
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@13
    move-result-object v7

    #@14
    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@17
    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@1a
    .line 296
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v5, "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@1d
    move-result v6

    #@1e
    if-nez v6, :cond_8

    #@20
    .line 297
    const/4 v3, 0x0

    #@21
    .line 298
    .local v3, "needWindowListUpdate":Z
    const/4 v2, 0x0

    #@22
    .line 299
    .local v2, "needFocusedWindowUpdate":Z
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    .line 300
    :goto_1
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@25
    if-nez v6, :cond_1

    #@27
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@29
    if-eqz v6, :cond_6

    #@2b
    .line 303
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 304
    const/4 v6, 0x0

    #@30
    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@32
    .line 305
    const/4 v3, 0x1

    #@33
    .line 307
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@35
    if-eqz v6, :cond_3

    #@37
    .line 308
    const/4 v6, 0x0

    #@38
    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    .line 309
    const/4 v2, 0x1

    #@3b
    :cond_3
    :try_start_3
    monitor-exit p0

    #@3c
    .line 312
    if-eqz v3, :cond_4

    #@3e
    .line 313
    const-string/jumbo v6, "LIST UPDATE\n"

    #@41
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@44
    .line 314
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    #@47
    .line 316
    :cond_4
    if-eqz v2, :cond_0

    #@49
    .line 317
    const-string/jumbo v6, "ACTION_FOCUS UPDATE\n"

    #@4c
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@4f
    .line 318
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@52
    goto :goto_0

    #@53
    .line 321
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catch_0
    move-exception v1

    #@54
    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v5

    #@55
    .line 324
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_5

    #@57
    .line 326
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@5a
    .line 331
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@5c
    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@63
    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x1

    #@64
    return v6

    #@65
    .line 301
    .restart local v2    # "needFocusedWindowUpdate":Z
    .restart local v3    # "needWindowListUpdate":Z
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@68
    goto :goto_1

    #@69
    .line 299
    :catchall_0
    move-exception v6

    #@6a
    :try_start_6
    monitor-exit p0

    #@6b
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6c
    .line 323
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catchall_1
    move-exception v6

    #@6d
    move-object v4, v5

    #@6e
    .line 324
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v4, :cond_7

    #@70
    .line 326
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@73
    .line 331
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@75
    invoke-static {v7}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@7c
    .line 323
    throw v6

    #@7d
    .line 324
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_8
    if-eqz v5, :cond_9

    #@7f
    .line 326
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    #@82
    .line 331
    :cond_9
    :goto_7
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@84
    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@8b
    move-object v4, v5

    #@8c
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    goto :goto_4

    #@8d
    .line 327
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    #@8e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_7

    #@8f
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@90
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    #@91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@92
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    #@93
    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    .local v4, "out":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v6

    #@94
    goto :goto_5

    #@95
    .line 321
    :catch_4
    move-exception v1

    #@96
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method


# virtual methods
.method public focusChanged()V
    .locals 1

    #@0
    .prologue
    .line 285
    monitor-enter p0

    #@1
    .line 286
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@4
    .line 287
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 284
    return-void

    #@9
    .line 285
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public run()V
    .locals 11

    #@0
    .prologue
    .line 219
    const/4 v2, 0x0

    #@1
    .line 221
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    #@3
    new-instance v8, Ljava/io/InputStreamReader;

    #@5
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@7
    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@a
    move-result-object v9

    #@b
    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@e
    const/16 v9, 0x400

    #@10
    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 223
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 228
    .local v6, "request":Ljava/lang/String;
    const/16 v8, 0x20

    #@19
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v4

    #@1d
    .line 229
    .local v4, "index":I
    const/4 v8, -0x1

    #@1e
    if-ne v4, v8, :cond_4

    #@20
    .line 230
    move-object v0, v6

    #@21
    .line 231
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@24
    .line 238
    .local v5, "parameters":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "PROTOCOL"

    #@27
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v8

    #@2b
    if-eqz v8, :cond_5

    #@2d
    .line 239
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@2f
    const-string/jumbo v9, "4"

    #@32
    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    #@35
    move-result v7

    #@36
    .line 253
    .local v7, "result":Z
    :goto_1
    if-nez v7, :cond_0

    #@38
    .line 254
    const-string/jumbo v8, "ViewServer"

    #@3b
    new-instance v9, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v10, "An error occurred with the command: "

    #@43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@52
    .line 259
    :cond_0
    if-eqz v3, :cond_1

    #@54
    .line 261
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@57
    .line 267
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@59
    if-eqz v8, :cond_2

    #@5b
    .line 269
    :try_start_3
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@5d
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@60
    :cond_2
    :goto_3
    move-object v2, v3

    #@61
    .line 217
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    :cond_3
    :goto_4
    return-void

    #@62
    .line 233
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v6    # "request":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    #@63
    :try_start_4
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    .line 234
    .restart local v0    # "command":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    #@69
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    .restart local v5    # "parameters":Ljava/lang/String;
    goto :goto_0

    #@6e
    .line 240
    :cond_5
    const-string/jumbo v8, "SERVER"

    #@71
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@74
    move-result v8

    #@75
    if-eqz v8, :cond_6

    #@77
    .line 241
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@79
    const-string/jumbo v9, "4"

    #@7c
    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    #@7f
    move-result v7

    #@80
    .restart local v7    # "result":Z
    goto :goto_1

    #@81
    .line 242
    .end local v7    # "result":Z
    :cond_6
    const-string/jumbo v8, "LIST"

    #@84
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@87
    move-result v8

    #@88
    if-eqz v8, :cond_7

    #@8a
    .line 243
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@8c
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@8f
    move-result-object v8

    #@90
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@92
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    #@95
    move-result v7

    #@96
    .restart local v7    # "result":Z
    goto :goto_1

    #@97
    .line 244
    .end local v7    # "result":Z
    :cond_7
    const-string/jumbo v8, "GET_FOCUS"

    #@9a
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9d
    move-result v8

    #@9e
    if-eqz v8, :cond_8

    #@a0
    .line 245
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@a2
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@a5
    move-result-object v8

    #@a6
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@a8
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    #@ab
    move-result v7

    #@ac
    .restart local v7    # "result":Z
    goto :goto_1

    #@ad
    .line 246
    .end local v7    # "result":Z
    :cond_8
    const-string/jumbo v8, "AUTOLIST"

    #@b0
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b3
    move-result v8

    #@b4
    if-eqz v8, :cond_9

    #@b6
    .line 247
    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    #@b9
    move-result v7

    #@ba
    .restart local v7    # "result":Z
    goto/16 :goto_1

    #@bc
    .line 249
    .end local v7    # "result":Z
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@be
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get0(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@c1
    move-result-object v8

    #@c2
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@c4
    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c7
    move-result v7

    #@c8
    .restart local v7    # "result":Z
    goto/16 :goto_1

    #@ca
    .line 263
    :catch_0
    move-exception v1

    #@cb
    .line 264
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@ce
    goto :goto_2

    #@cf
    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@d0
    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@d3
    goto :goto_3

    #@d4
    .line 256
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    #@d5
    .line 257
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string/jumbo v8, "ViewServer"

    #@d8
    const-string/jumbo v9, "Connection error: "

    #@db
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@de
    .line 259
    if-eqz v2, :cond_a

    #@e0
    .line 261
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@e3
    .line 267
    :cond_a
    :goto_6
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@e5
    if-eqz v8, :cond_3

    #@e7
    .line 269
    :try_start_7
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@e9
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@ec
    goto/16 :goto_4

    #@ee
    .line 270
    :catch_3
    move-exception v1

    #@ef
    .line 271
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@f2
    goto/16 :goto_4

    #@f4
    .line 263
    :catch_4
    move-exception v1

    #@f5
    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@f8
    goto :goto_6

    #@f9
    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@fa
    .line 259
    :goto_7
    if-eqz v2, :cond_b

    #@fc
    .line 261
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@ff
    .line 267
    :cond_b
    :goto_8
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@101
    if-eqz v9, :cond_c

    #@103
    .line 269
    :try_start_9
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@105
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@108
    .line 258
    :cond_c
    :goto_9
    throw v8

    #@109
    .line 263
    :catch_5
    move-exception v1

    #@10a
    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@10d
    goto :goto_8

    #@10e
    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    #@10f
    .line 271
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@112
    goto :goto_9

    #@113
    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    #@114
    move-object v2, v3

    #@115
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_7

    #@116
    .line 256
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@117
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@118
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public windowsChanged()V
    .locals 1

    #@0
    .prologue
    .line 278
    monitor-enter p0

    #@1
    .line 279
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@4
    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 277
    return-void

    #@9
    .line 278
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
