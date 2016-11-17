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
    .line 214
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 215
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@8
    .line 216
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@a
    .line 217
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@c
    .line 214
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .locals 8

    #@0
    .prologue
    .line 295
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@2
    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@9
    .line 296
    const/4 v4, 0x0

    #@a
    .line 298
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
    .line 299
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
    .line 300
    const/4 v3, 0x0

    #@21
    .line 301
    .local v3, "needWindowListUpdate":Z
    const/4 v2, 0x0

    #@22
    .line 302
    .local v2, "needFocusedWindowUpdate":Z
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@23
    .line 303
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
    .line 306
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 307
    const/4 v6, 0x0

    #@30
    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@32
    .line 308
    const/4 v3, 0x1

    #@33
    .line 310
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@35
    if-eqz v6, :cond_3

    #@37
    .line 311
    const/4 v6, 0x0

    #@38
    iput-boolean v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    .line 312
    const/4 v2, 0x1

    #@3b
    :cond_3
    :try_start_3
    monitor-exit p0

    #@3c
    .line 315
    if-eqz v3, :cond_4

    #@3e
    .line 316
    const-string/jumbo v6, "LIST UPDATE\n"

    #@41
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@44
    .line 317
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    #@47
    .line 319
    :cond_4
    if-eqz v2, :cond_0

    #@49
    .line 320
    const-string/jumbo v6, "ACTION_FOCUS UPDATE\n"

    #@4c
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@4f
    .line 321
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@52
    goto :goto_0

    #@53
    .line 324
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catch_0
    move-exception v1

    #@54
    .local v1, "e":Ljava/lang/Exception;
    move-object v4, v5

    #@55
    .line 327
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_5

    #@57
    .line 329
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@5a
    .line 334
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@5c
    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@63
    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x1

    #@64
    return v6

    #@65
    .line 304
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
    .line 302
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
    .line 326
    .end local v2    # "needFocusedWindowUpdate":Z
    .end local v3    # "needWindowListUpdate":Z
    :catchall_1
    move-exception v6

    #@6d
    move-object v4, v5

    #@6e
    .line 327
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v4, :cond_7

    #@70
    .line 329
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@73
    .line 334
    :cond_7
    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@75
    invoke-static {v7}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    #@7c
    .line 326
    throw v6

    #@7d
    .line 327
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    :cond_8
    if-eqz v5, :cond_9

    #@7f
    .line 329
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    #@82
    .line 334
    :cond_9
    :goto_7
    iget-object v6, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@84
    invoke-static {v6}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

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
    .line 330
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
    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    .local v4, "out":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v6

    #@94
    goto :goto_5

    #@95
    .line 324
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
    .line 288
    monitor-enter p0

    #@1
    .line 289
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    #@4
    .line 290
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 287
    return-void

    #@9
    .line 288
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
    .line 222
    const/4 v2, 0x0

    #@1
    .line 224
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
    .line 226
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 231
    .local v6, "request":Ljava/lang/String;
    const/16 v8, 0x20

    #@19
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v4

    #@1d
    .line 232
    .local v4, "index":I
    const/4 v8, -0x1

    #@1e
    if-ne v4, v8, :cond_4

    #@20
    .line 233
    move-object v0, v6

    #@21
    .line 234
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@24
    .line 241
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
    .line 242
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@2f
    const-string/jumbo v9, "4"

    #@32
    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    #@35
    move-result v7

    #@36
    .line 256
    .local v7, "result":Z
    :goto_1
    if-nez v7, :cond_0

    #@38
    .line 257
    invoke-static {}, Lcom/android/server/wm/ViewServer;->-get0()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    new-instance v9, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v10, "An error occurred with the command: "

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    .line 262
    :cond_0
    if-eqz v3, :cond_1

    #@55
    .line 264
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@58
    .line 270
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@5a
    if-eqz v8, :cond_2

    #@5c
    .line 272
    :try_start_3
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@5e
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@61
    :cond_2
    :goto_3
    move-object v2, v3

    #@62
    .line 220
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    :cond_3
    :goto_4
    return-void

    #@63
    .line 236
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v6    # "request":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    #@64
    :try_start_4
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    .line 237
    .restart local v0    # "command":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    #@6a
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    .restart local v5    # "parameters":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 243
    :cond_5
    const-string/jumbo v8, "SERVER"

    #@72
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@75
    move-result v8

    #@76
    if-eqz v8, :cond_6

    #@78
    .line 244
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@7a
    const-string/jumbo v9, "4"

    #@7d
    invoke-static {v8, v9}, Lcom/android/server/wm/ViewServer;->-wrap0(Ljava/net/Socket;Ljava/lang/String;)Z

    #@80
    move-result v7

    #@81
    .restart local v7    # "result":Z
    goto :goto_1

    #@82
    .line 245
    .end local v7    # "result":Z
    :cond_6
    const-string/jumbo v8, "LIST"

    #@85
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@88
    move-result v8

    #@89
    if-eqz v8, :cond_7

    #@8b
    .line 246
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@8d
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@90
    move-result-object v8

    #@91
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@93
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    #@96
    move-result v7

    #@97
    .restart local v7    # "result":Z
    goto :goto_1

    #@98
    .line 247
    .end local v7    # "result":Z
    :cond_7
    const-string/jumbo v8, "GET_FOCUS"

    #@9b
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@9e
    move-result v8

    #@9f
    if-eqz v8, :cond_8

    #@a1
    .line 248
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@a3
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@a6
    move-result-object v8

    #@a7
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@a9
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    #@ac
    move-result v7

    #@ad
    .restart local v7    # "result":Z
    goto :goto_1

    #@ae
    .line 249
    .end local v7    # "result":Z
    :cond_8
    const-string/jumbo v8, "AUTOLIST"

    #@b1
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b4
    move-result v8

    #@b5
    if-eqz v8, :cond_9

    #@b7
    .line 250
    invoke-direct {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    #@ba
    move-result v7

    #@bb
    .restart local v7    # "result":Z
    goto/16 :goto_1

    #@bd
    .line 252
    .end local v7    # "result":Z
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    #@bf
    invoke-static {v8}, Lcom/android/server/wm/ViewServer;->-get1(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    #@c2
    move-result-object v8

    #@c3
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@c5
    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c8
    move-result v7

    #@c9
    .restart local v7    # "result":Z
    goto/16 :goto_1

    #@cb
    .line 266
    :catch_0
    move-exception v1

    #@cc
    .line 267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@cf
    goto :goto_2

    #@d0
    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@d1
    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@d4
    goto :goto_3

    #@d5
    .line 259
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

    #@d6
    .line 260
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/ViewServer;->-get0()Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    const-string/jumbo v9, "Connection error: "

    #@dd
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e0
    .line 262
    if-eqz v2, :cond_a

    #@e2
    .line 264
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@e5
    .line 270
    :cond_a
    :goto_6
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@e7
    if-eqz v8, :cond_3

    #@e9
    .line 272
    :try_start_7
    iget-object v8, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@eb
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@ee
    goto/16 :goto_4

    #@f0
    .line 273
    :catch_3
    move-exception v1

    #@f1
    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@f4
    goto/16 :goto_4

    #@f6
    .line 266
    :catch_4
    move-exception v1

    #@f7
    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@fa
    goto :goto_6

    #@fb
    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@fc
    .line 262
    :goto_7
    if-eqz v2, :cond_b

    #@fe
    .line 264
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@101
    .line 270
    :cond_b
    :goto_8
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@103
    if-eqz v9, :cond_c

    #@105
    .line 272
    :try_start_9
    iget-object v9, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    #@107
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    #@10a
    .line 261
    :cond_c
    :goto_9
    throw v8

    #@10b
    .line 266
    :catch_5
    move-exception v1

    #@10c
    .line 267
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@10f
    goto :goto_8

    #@110
    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    #@111
    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@114
    goto :goto_9

    #@115
    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    #@116
    move-object v2, v3

    #@117
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_7

    #@118
    .line 259
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@119
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@11a
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public windowsChanged()V
    .locals 1

    #@0
    .prologue
    .line 281
    monitor-enter p0

    #@1
    .line 282
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    #@4
    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 280
    return-void

    #@9
    .line 281
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
