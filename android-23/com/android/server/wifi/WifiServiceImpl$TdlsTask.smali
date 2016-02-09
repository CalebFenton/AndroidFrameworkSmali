.class Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;
.super Landroid/os/AsyncTask;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TdlsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    #@0
    .prologue
    .line 1236
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;)Ljava/lang/Integer;
    .locals 15
    .param p1, "params"    # [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    #@0
    .prologue
    .line 1241
    const/4 v12, 0x0

    #@1
    aget-object v7, p1, v12

    #@3
    .line 1242
    .local v7, "param":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iget-object v12, v7, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    #@5
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8
    move-result-object v10

    #@9
    .line 1243
    .local v10, "remoteIpAddress":Ljava/lang/String;
    iget-boolean v2, v7, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    #@b
    .line 1246
    .local v2, "enable":Z
    const/4 v6, 0x0

    #@c
    .line 1248
    .local v6, "macAddress":Ljava/lang/String;
    const/4 v8, 0x0

    #@d
    .line 1251
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    #@f
    new-instance v12, Ljava/io/FileReader;

    #@11
    const-string/jumbo v13, "/proc/net/arp"

    #@14
    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@17
    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 1254
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 1256
    .local v4, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 1257
    const-string/jumbo v12, "[ ]+"

    #@27
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2a
    move-result-object v11

    #@2b
    .line 1258
    .local v11, "tokens":[Ljava/lang/String;
    array-length v12, v11

    #@2c
    const/4 v13, 0x6

    #@2d
    if-lt v12, v13, :cond_0

    #@2f
    .line 1264
    const/4 v12, 0x0

    #@30
    aget-object v3, v11, v12

    #@32
    .line 1265
    .local v3, "ip":Ljava/lang/String;
    const/4 v12, 0x3

    #@33
    aget-object v5, v11, v12

    #@35
    .line 1267
    .local v5, "mac":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v12

    #@39
    if-eqz v12, :cond_0

    #@3b
    .line 1268
    move-object v6, v5

    #@3c
    .line 1273
    .end local v3    # "ip":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    .end local v6    # "macAddress":Ljava/lang/String;
    .end local v11    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_4

    #@3e
    .line 1274
    const-string/jumbo v12, "WifiService"

    #@41
    new-instance v13, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v14, "Did not find remoteAddress {"

    #@49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v13

    #@4d
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v13

    #@51
    const-string/jumbo v14, "} in "

    #@54
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v13

    #@58
    .line 1275
    const-string/jumbo v14, "/proc/net/arp"

    #@5b
    .line 1274
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v13

    #@5f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@66
    .line 1286
    :goto_0
    if-eqz v9, :cond_2

    #@68
    .line 1287
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@6b
    :cond_2
    :goto_1
    move-object v8, v9

    #@6c
    .line 1295
    .end local v4    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    const/4 v12, 0x0

    #@6d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@70
    move-result-object v12

    #@71
    return-object v12

    #@72
    .line 1277
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    iget-object v12, p0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@74
    invoke-virtual {v12, v6, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@77
    goto :goto_0

    #@78
    .line 1280
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@79
    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    #@7a
    .line 1281
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    const-string/jumbo v12, "WifiService"

    #@7d
    const-string/jumbo v13, "Could not open /proc/net/arp to lookup mac address"

    #@80
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@83
    .line 1286
    if-eqz v8, :cond_3

    #@85
    .line 1287
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@88
    goto :goto_2

    #@89
    .line 1290
    :catch_1
    move-exception v1

    #@8a
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    #@8b
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    #@8c
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    #@8d
    .line 1282
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "macAddress":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    #@8e
    .line 1283
    .end local v6    # "macAddress":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string/jumbo v12, "WifiService"

    #@91
    const-string/jumbo v13, "Could not read /proc/net/arp to lookup mac address"

    #@94
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@97
    .line 1286
    if-eqz v8, :cond_3

    #@99
    .line 1287
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@9c
    goto :goto_2

    #@9d
    .line 1290
    :catch_4
    move-exception v1

    #@9e
    goto :goto_2

    #@9f
    .line 1284
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    #@a0
    .line 1286
    :goto_5
    if-eqz v8, :cond_5

    #@a2
    .line 1287
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@a5
    .line 1284
    :cond_5
    :goto_6
    throw v12

    #@a6
    .line 1290
    :catch_5
    move-exception v1

    #@a7
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    #@a8
    .line 1284
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    #@a9
    move-object v8, v9

    #@aa
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@ab
    .line 1280
    .restart local v6    # "macAddress":Ljava/lang/String;
    .local v8, "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    #@ac
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    #@ad
    .line 1282
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "macAddress":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@ae
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v8, v9

    #@af
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1238
    check-cast p1, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->doInBackground([Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
