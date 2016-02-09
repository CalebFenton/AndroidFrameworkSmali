.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$done"    # [Z

    #@0
    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    #@4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    #@0
    .prologue
    .line 657
    new-instance v11, Ljava/io/File;

    #@2
    const-string/jumbo v12, "/cache/recovery/uncrypt_status"

    #@5
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    #@b
    .line 659
    :try_start_0
    const-string/jumbo v11, "/cache/recovery/uncrypt_status"

    #@e
    const/16 v12, 0x180

    #@10
    invoke-static {v11, v12}, Landroid/system/Os;->mkfifo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    #@13
    .line 665
    :goto_0
    const-string/jumbo v11, "ctl.start"

    #@16
    const-string/jumbo v12, "uncrypt"

    #@19
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 668
    const/4 v12, 0x0

    #@1d
    const/4 v5, 0x0

    #@1e
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    #@20
    .line 669
    new-instance v11, Ljava/io/FileReader;

    #@22
    const-string/jumbo v13, "/cache/recovery/uncrypt_status"

    #@25
    invoke-direct {v11, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@28
    .line 668
    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@2b
    .line 671
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/high16 v3, -0x80000000

    #@2d
    .line 673
    .local v3, "lastStatus":I
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@30
    move-result-object v8

    #@31
    .line 675
    .local v8, "str":Ljava/lang/String;
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@34
    move-result v7

    #@35
    .line 678
    .local v7, "status":I
    if-ne v7, v3, :cond_1

    #@37
    const/high16 v11, -0x80000000

    #@39
    if-ne v3, v11, :cond_0

    #@3b
    .line 681
    :cond_1
    move v3, v7

    #@3c
    .line 683
    if-ltz v7, :cond_3

    #@3e
    const/16 v11, 0x64

    #@40
    if-ge v7, v11, :cond_3

    #@42
    .line 685
    const-string/jumbo v11, "ShutdownThread"

    #@45
    new-instance v13, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v14, "uncrypt read status: "

    #@4d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v13

    #@51
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v13

    #@55
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v13

    #@59
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 687
    int-to-double v14, v7

    #@5d
    const-wide/high16 v16, 0x4054000000000000L    # 80.0

    #@5f
    mul-double v14, v14, v16

    #@61
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    #@63
    div-double v14, v14, v16

    #@65
    double-to-int v7, v14

    #@66
    .line 688
    add-int/lit8 v7, v7, 0x14

    #@68
    .line 689
    move-object/from16 v0, p0

    #@6a
    iget-object v11, v0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    #@6c
    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    #@6f
    move-result-object v11

    #@70
    .line 690
    const v13, 0x10400fc

    #@73
    .line 689
    invoke-virtual {v11, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@76
    move-result-object v4

    #@77
    .line 691
    .local v4, "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    #@7a
    move-result-object v11

    #@7b
    invoke-static {v11, v7, v4}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7e
    goto :goto_1

    #@7f
    .line 704
    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v7    # "status":I
    :catch_0
    move-exception v10

    #@80
    .line 705
    .local v10, "unused":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string/jumbo v11, "ShutdownThread"

    #@83
    new-instance v13, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v14, "uncrypt invalid status received: "

    #@8b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v13

    #@8f
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v13

    #@93
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v13

    #@97
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@9a
    .line 711
    .end local v10    # "unused":Ljava/lang/NumberFormatException;
    :goto_2
    if-eqz v6, :cond_2

    #@9c
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@9f
    :cond_2
    :goto_3
    if-eqz v12, :cond_6

    #@a1
    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@a2
    .line 709
    :catch_1
    move-exception v9

    #@a3
    .local v9, "unused":Ljava/io/IOException;
    move-object v5, v6

    #@a4
    .line 710
    .end local v3    # "lastStatus":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str":Ljava/lang/String;
    :goto_4
    const-string/jumbo v11, "ShutdownThread"

    #@a7
    const-string/jumbo v12, "IOException when reading \"/cache/recovery/uncrypt_status\"."

    #@aa
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 712
    .end local v9    # "unused":Ljava/io/IOException;
    :goto_5
    move-object/from16 v0, p0

    #@af
    iget-object v11, v0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    #@b1
    const/4 v12, 0x1

    #@b2
    const/4 v13, 0x0

    #@b3
    aput-boolean v12, v11, v13

    #@b5
    .line 655
    return-void

    #@b6
    .line 660
    :catch_2
    move-exception v2

    #@b7
    .line 661
    .local v2, "e":Landroid/system/ErrnoException;
    const-string/jumbo v11, "ShutdownThread"

    #@ba
    new-instance v12, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v13, "ErrnoException when creating named pipe \"/cache/recovery/uncrypt_status\": "

    #@c2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v12

    #@c6
    .line 662
    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@c9
    move-result-object v13

    #@ca
    .line 661
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v12

    #@ce
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v12

    #@d2
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto/16 :goto_0

    #@d7
    .line 692
    .end local v2    # "e":Landroid/system/ErrnoException;
    .restart local v3    # "lastStatus":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    .restart local v8    # "str":Ljava/lang/String;
    :cond_3
    const/16 v11, 0x64

    #@d9
    if-ne v7, v11, :cond_5

    #@db
    .line 693
    :try_start_7
    const-string/jumbo v11, "ShutdownThread"

    #@de
    const-string/jumbo v13, "uncrypt successfully finished."

    #@e1
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    .line 694
    move-object/from16 v0, p0

    #@e6
    iget-object v11, v0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    #@e8
    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    #@eb
    move-result-object v11

    #@ec
    .line 695
    const v13, 0x10400fd

    #@ef
    .line 694
    invoke-virtual {v11, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f2
    move-result-object v4

    #@f3
    .line 696
    .restart local v4    # "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    #@f6
    move-result-object v11

    #@f7
    invoke-static {v11, v7, v4}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@fa
    goto :goto_2

    #@fb
    .line 711
    .end local v4    # "msg":Ljava/lang/CharSequence;
    .end local v7    # "status":I
    .end local v8    # "str":Ljava/lang/String;
    :catch_3
    move-exception v11

    #@fc
    move-object v5, v6

    #@fd
    .end local v3    # "lastStatus":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_6
    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@fe
    :catchall_0
    move-exception v12

    #@ff
    move-object/from16 v18, v12

    #@101
    move-object v12, v11

    #@102
    move-object/from16 v11, v18

    #@104
    :goto_7
    if-eqz v5, :cond_4

    #@106
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@109
    :cond_4
    :goto_8
    if-eqz v12, :cond_8

    #@10b
    :try_start_a
    throw v12
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    #@10c
    .line 709
    :catch_4
    move-exception v9

    #@10d
    .restart local v9    # "unused":Ljava/io/IOException;
    goto :goto_4

    #@10e
    .line 701
    .end local v9    # "unused":Ljava/io/IOException;
    .restart local v3    # "lastStatus":I
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "status":I
    .restart local v8    # "str":Ljava/lang/String;
    :cond_5
    :try_start_b
    const-string/jumbo v11, "ShutdownThread"

    #@111
    new-instance v13, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v14, "uncrypt failed with status: "

    #@119
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v13

    #@11d
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v13

    #@121
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v13

    #@125
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@128
    goto/16 :goto_2

    #@12a
    .line 711
    .end local v7    # "status":I
    .end local v8    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v11

    #@12b
    move-object v5, v6

    #@12c
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    #@12d
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_5
    move-exception v12

    #@12e
    goto/16 :goto_3

    #@130
    :cond_6
    move-object v5, v6

    #@131
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    #@133
    .end local v3    # "lastStatus":I
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str":Ljava/lang/String;
    :catch_6
    move-exception v13

    #@134
    if-nez v12, :cond_7

    #@136
    move-object v12, v13

    #@137
    goto :goto_8

    #@138
    :cond_7
    if-eq v12, v13, :cond_4

    #@13a
    :try_start_c
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@13d
    goto :goto_8

    #@13e
    :cond_8
    throw v11
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    #@13f
    .local v5, "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v11

    #@140
    goto :goto_7

    #@141
    :catch_7
    move-exception v11

    #@142
    goto :goto_6
.end method
