.class Lcom/android/server/am/ActivityManagerService$22;
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

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$report"    # Ljava/lang/String;
    .param p4, "val$sb"    # Ljava/lang/StringBuilder;
    .param p5, "val$dropboxTag"    # Ljava/lang/String;
    .param p6, "val$dataFile"    # Ljava/io/File;
    .param p7, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "val$dbox"    # Landroid/os/DropBoxManager;

    #@0
    .prologue
    .line 13634
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    #@4
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@6
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    #@8
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    #@a
    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@c
    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

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
    const/4 v11, 0x0

    #@1
    .line 13637
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    #@3
    if-eqz v9, :cond_0

    #@5
    .line 13638
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@7
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$report:Ljava/lang/String;

    #@9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 13641
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v10, "logcat_for_"

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    #@1a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    .line 13642
    .local v8, "setting":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@24
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@26
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@29
    move-result-object v9

    #@2a
    invoke-static {v9, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@2d
    move-result v4

    #@2e
    .line 13643
    .local v4, "lines":I
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@30
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    #@33
    move-result v9

    #@34
    const/high16 v10, 0x30000

    #@36
    sub-int v9, v10, v9

    #@38
    .line 13644
    mul-int/lit8 v10, v4, 0x64

    #@3a
    .line 13643
    sub-int v6, v9, v10

    #@3c
    .line 13646
    .local v6, "maxDataFileSize":I
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    #@3e
    if-eqz v9, :cond_1

    #@40
    if-lez v6, :cond_1

    #@42
    .line 13648
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@44
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    #@46
    .line 13649
    const-string/jumbo v11, "\n\n[[TRUNCATED]]"

    #@49
    .line 13648
    invoke-static {v10, v6, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@50
    .line 13654
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@52
    if-eqz v9, :cond_2

    #@54
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@56
    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@58
    if-eqz v9, :cond_2

    #@5a
    .line 13655
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@5c
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@5e
    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 13658
    :cond_2
    if-lez v4, :cond_3

    #@65
    .line 13659
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@67
    const-string/jumbo v10, "\n"

    #@6a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 13662
    const/4 v2, 0x0

    #@6e
    .line 13664
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v9, Ljava/lang/ProcessBuilder;

    #@70
    const/16 v10, 0x11

    #@72
    new-array v10, v10, [Ljava/lang/String;

    #@74
    .line 13665
    const-string/jumbo v11, "/system/bin/timeout"

    #@77
    const/4 v12, 0x0

    #@78
    aput-object v11, v10, v12

    #@7a
    const-string/jumbo v11, "-k"

    #@7d
    const/4 v12, 0x1

    #@7e
    aput-object v11, v10, v12

    #@80
    const-string/jumbo v11, "15s"

    #@83
    const/4 v12, 0x2

    #@84
    aput-object v11, v10, v12

    #@86
    const-string/jumbo v11, "10s"

    #@89
    const/4 v12, 0x3

    #@8a
    aput-object v11, v10, v12

    #@8c
    .line 13666
    const-string/jumbo v11, "/system/bin/logcat"

    #@8f
    const/4 v12, 0x4

    #@90
    aput-object v11, v10, v12

    #@92
    const-string/jumbo v11, "-v"

    #@95
    const/4 v12, 0x5

    #@96
    aput-object v11, v10, v12

    #@98
    const-string/jumbo v11, "time"

    #@9b
    const/4 v12, 0x6

    #@9c
    aput-object v11, v10, v12

    #@9e
    const-string/jumbo v11, "-b"

    #@a1
    const/4 v12, 0x7

    #@a2
    aput-object v11, v10, v12

    #@a4
    const-string/jumbo v11, "events"

    #@a7
    const/16 v12, 0x8

    #@a9
    aput-object v11, v10, v12

    #@ab
    const-string/jumbo v11, "-b"

    #@ae
    const/16 v12, 0x9

    #@b0
    aput-object v11, v10, v12

    #@b2
    const-string/jumbo v11, "system"

    #@b5
    const/16 v12, 0xa

    #@b7
    aput-object v11, v10, v12

    #@b9
    .line 13667
    const-string/jumbo v11, "-b"

    #@bc
    const/16 v12, 0xb

    #@be
    aput-object v11, v10, v12

    #@c0
    const-string/jumbo v11, "main"

    #@c3
    const/16 v12, 0xc

    #@c5
    aput-object v11, v10, v12

    #@c7
    const-string/jumbo v11, "-b"

    #@ca
    const/16 v12, 0xd

    #@cc
    aput-object v11, v10, v12

    #@ce
    const-string/jumbo v11, "crash"

    #@d1
    const/16 v12, 0xe

    #@d3
    aput-object v11, v10, v12

    #@d5
    const-string/jumbo v11, "-t"

    #@d8
    const/16 v12, 0xf

    #@da
    aput-object v11, v10, v12

    #@dc
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@df
    move-result-object v11

    #@e0
    const/16 v12, 0x10

    #@e2
    aput-object v11, v10, v12

    #@e4
    .line 13664
    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    #@e7
    .line 13668
    const/4 v10, 0x1

    #@e8
    .line 13664
    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ef
    move-result-object v5

    #@f0
    .line 13670
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    #@f3
    move-result-object v9

    #@f4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@f7
    .line 13671
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    #@fa
    move-result-object v9

    #@fb
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@fe
    .line 13672
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    #@100
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@103
    move-result-object v9

    #@104
    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@107
    .line 13675
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v9, 0x2000

    #@109
    :try_start_5
    new-array v0, v9, [C

    #@10b
    .line 13676
    .local v0, "buf":[C
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    #@10e
    move-result v7

    #@10f
    .local v7, "num":I
    if-lez v7, :cond_4

    #@111
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@113
    const/4 v10, 0x0

    #@114
    invoke-virtual {v9, v0, v10, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@117
    goto :goto_3

    #@118
    .line 13677
    .end local v0    # "buf":[C
    .end local v7    # "num":I
    :catch_0
    move-exception v1

    #@119
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v3

    #@11a
    .line 13678
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@11d
    move-result-object v9

    #@11e
    const-string/jumbo v10, "Error running logcat"

    #@121
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@124
    .line 13680
    if-eqz v2, :cond_3

    #@126
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    #@129
    .line 13684
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    #@12b
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    #@12d
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    #@12f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v11

    #@133
    invoke-virtual {v9, v10, v11}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@136
    .line 13636
    return-void

    #@137
    .line 13650
    :catch_1
    move-exception v1

    #@138
    .line 13651
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    #@13b
    move-result-object v9

    #@13c
    new-instance v10, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    const-string/jumbo v11, "Error reading "

    #@144
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v10

    #@148
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dataFile:Ljava/io/File;

    #@14a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v10

    #@14e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v10

    #@152
    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@155
    goto/16 :goto_0

    #@157
    .line 13680
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v7    # "num":I
    :cond_4
    if-eqz v3, :cond_3

    #@159
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    #@15c
    goto :goto_5

    #@15d
    :catch_2
    move-exception v1

    #@15e
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@15f
    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v7    # "num":I
    :catch_3
    move-exception v1

    #@160
    goto :goto_5

    #@161
    .line 13679
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    #@162
    .line 13680
    :goto_6
    if-eqz v2, :cond_5

    #@164
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@167
    .line 13679
    :cond_5
    :goto_7
    throw v9

    #@168
    .line 13680
    :catch_4
    move-exception v1

    #@169
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    #@16a
    .line 13679
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    #@16b
    move-object v2, v3

    #@16c
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v2, "input":Ljava/io/InputStreamReader;
    goto :goto_6

    #@16d
    .line 13677
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v2, "input":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    #@16e
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@16f
    .line 13671
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_6
    move-exception v1

    #@170
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@171
    .line 13670
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    #@172
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
