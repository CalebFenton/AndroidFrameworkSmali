.class Lcom/android/server/am/ActivityManagerService$18;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$report"    # Ljava/lang/String;
    .param p4, "val$sb"    # Ljava/lang/StringBuilder;
    .param p5, "val$logFile"    # Ljava/io/File;
    .param p6, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p7, "val$dropboxTag"    # Ljava/lang/String;
    .param p8, "val$dbox"    # Landroid/os/DropBoxManager;

    #@0
    .prologue
    .line 12425
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$18;->val$report:Ljava/lang/String;

    #@4
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@6
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    #@8
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@a
    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dropboxTag:Ljava/lang/String;

    #@c
    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dbox:Landroid/os/DropBoxManager;

    #@e
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 12428
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$report:Ljava/lang/String;

    #@3
    if-eqz v8, :cond_0

    #@5
    .line 12429
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@7
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$report:Ljava/lang/String;

    #@9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 12431
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    #@e
    if-eqz v8, :cond_1

    #@10
    .line 12433
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@12
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    #@14
    .line 12434
    const-string/jumbo v10, "\n\n[[TRUNCATED]]"

    #@17
    .line 12433
    const/high16 v11, 0x40000

    #@19
    invoke-static {v9, v11, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v9

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    .line 12439
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@22
    if-eqz v8, :cond_2

    #@24
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@26
    iget-object v8, v8, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@28
    if-eqz v8, :cond_2

    #@2a
    .line 12440
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@2c
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@2e
    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 12443
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v9, "logcat_for_"

    #@3b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v8

    #@3f
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dropboxTag:Ljava/lang/String;

    #@41
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 12444
    .local v7, "setting":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@4d
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v8

    #@51
    invoke-static {v8, v7, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@54
    move-result v4

    #@55
    .line 12445
    .local v4, "lines":I
    if-lez v4, :cond_3

    #@57
    .line 12446
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@59
    const-string/jumbo v9, "\n"

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 12449
    const/4 v2, 0x0

    #@60
    .line 12451
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v8, Ljava/lang/ProcessBuilder;

    #@62
    const/16 v9, 0xd

    #@64
    new-array v9, v9, [Ljava/lang/String;

    #@66
    const-string/jumbo v10, "/system/bin/logcat"

    #@69
    const/4 v11, 0x0

    #@6a
    aput-object v10, v9, v11

    #@6c
    .line 12452
    const-string/jumbo v10, "-v"

    #@6f
    const/4 v11, 0x1

    #@70
    aput-object v10, v9, v11

    #@72
    const-string/jumbo v10, "time"

    #@75
    const/4 v11, 0x2

    #@76
    aput-object v10, v9, v11

    #@78
    const-string/jumbo v10, "-b"

    #@7b
    const/4 v11, 0x3

    #@7c
    aput-object v10, v9, v11

    #@7e
    const-string/jumbo v10, "events"

    #@81
    const/4 v11, 0x4

    #@82
    aput-object v10, v9, v11

    #@84
    const-string/jumbo v10, "-b"

    #@87
    const/4 v11, 0x5

    #@88
    aput-object v10, v9, v11

    #@8a
    const-string/jumbo v10, "system"

    #@8d
    const/4 v11, 0x6

    #@8e
    aput-object v10, v9, v11

    #@90
    const-string/jumbo v10, "-b"

    #@93
    const/4 v11, 0x7

    #@94
    aput-object v10, v9, v11

    #@96
    const-string/jumbo v10, "main"

    #@99
    const/16 v11, 0x8

    #@9b
    aput-object v10, v9, v11

    #@9d
    .line 12453
    const-string/jumbo v10, "-b"

    #@a0
    const/16 v11, 0x9

    #@a2
    aput-object v10, v9, v11

    #@a4
    const-string/jumbo v10, "crash"

    #@a7
    const/16 v11, 0xa

    #@a9
    aput-object v10, v9, v11

    #@ab
    .line 12454
    const-string/jumbo v10, "-t"

    #@ae
    const/16 v11, 0xb

    #@b0
    aput-object v10, v9, v11

    #@b2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@b5
    move-result-object v10

    #@b6
    const/16 v11, 0xc

    #@b8
    aput-object v10, v9, v11

    #@ba
    .line 12451
    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@bd
    .line 12454
    const/4 v9, 0x1

    #@be
    .line 12451
    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    #@c1
    move-result-object v8

    #@c2
    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c5
    move-result-object v5

    #@c6
    .line 12456
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cd
    .line 12457
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    #@d0
    move-result-object v8

    #@d1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d4
    .line 12458
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    #@d6
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@d9
    move-result-object v8

    #@da
    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@dd
    .line 12461
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v8, 0x2000

    #@df
    :try_start_5
    new-array v0, v8, [C

    #@e1
    .line 12462
    .local v0, "buf":[C
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    #@e4
    move-result v6

    #@e5
    .local v6, "num":I
    if-lez v6, :cond_4

    #@e7
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@e9
    const/4 v9, 0x0

    #@ea
    invoke-virtual {v8, v0, v9, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ed
    goto :goto_3

    #@ee
    .line 12463
    .end local v0    # "buf":[C
    .end local v6    # "num":I
    :catch_0
    move-exception v1

    #@ef
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    #@f0
    .line 12464
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    :goto_4
    :try_start_6
    const-string/jumbo v8, "ActivityManager"

    #@f3
    const-string/jumbo v9, "Error running logcat"

    #@f6
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f9
    .line 12466
    if-eqz v2, :cond_3

    #@fb
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@fe
    .line 12470
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dbox:Landroid/os/DropBoxManager;

    #@100
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$18;->val$dropboxTag:Ljava/lang/String;

    #@102
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$sb:Ljava/lang/StringBuilder;

    #@104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v10

    #@108
    invoke-virtual {v8, v9, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@10b
    .line 12427
    return-void

    #@10c
    .line 12435
    .end local v4    # "lines":I
    .end local v7    # "setting":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@10d
    .line 12436
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "ActivityManager"

    #@110
    new-instance v9, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v10, "Error reading "

    #@118
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v9

    #@11c
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$18;->val$logFile:Ljava/io/File;

    #@11e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v9

    #@126
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@129
    goto/16 :goto_0

    #@12b
    .line 12466
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "lines":I
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v6    # "num":I
    .restart local v7    # "setting":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_3

    #@12d
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    #@130
    goto :goto_5

    #@131
    :catch_2
    move-exception v1

    #@132
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@133
    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v6    # "num":I
    :catch_3
    move-exception v1

    #@134
    goto :goto_5

    #@135
    .line 12465
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@136
    .line 12466
    :goto_6
    if-eqz v2, :cond_5

    #@138
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@13b
    .line 12465
    :cond_5
    :goto_7
    throw v8

    #@13c
    .line 12466
    :catch_4
    move-exception v1

    #@13d
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    #@13e
    .line 12465
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v8

    #@13f
    move-object v2, v3

    #@140
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v2, "input":Ljava/io/InputStreamReader;
    goto :goto_6

    #@141
    .line 12463
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v2, "input":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    #@142
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@143
    .line 12457
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_6
    move-exception v1

    #@144
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@145
    .line 12456
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    #@146
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
