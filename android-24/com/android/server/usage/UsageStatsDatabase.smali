.class Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;,
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    }
.end annotation


# static fields
.field static final BACKUP_VERSION:I = 0x1

.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final DEBUG:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@a
    .line 68
    const/4 v0, 0x4

    #@b
    new-array v0, v0, [Ljava/io/File;

    #@d
    .line 69
    new-instance v1, Ljava/io/File;

    #@f
    const-string/jumbo v2, "daily"

    #@12
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    const/4 v2, 0x0

    #@16
    aput-object v1, v0, v2

    #@18
    .line 70
    new-instance v1, Ljava/io/File;

    #@1a
    const-string/jumbo v2, "weekly"

    #@1d
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    const/4 v2, 0x1

    #@21
    aput-object v1, v0, v2

    #@23
    .line 71
    new-instance v1, Ljava/io/File;

    #@25
    const-string/jumbo v2, "monthly"

    #@28
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b
    const/4 v2, 0x2

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 72
    new-instance v1, Ljava/io/File;

    #@30
    const-string/jumbo v2, "yearly"

    #@33
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@36
    const/4 v2, 0x3

    #@37
    aput-object v1, v0, v2

    #@39
    .line 68
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@3b
    .line 74
    new-instance v0, Ljava/io/File;

    #@3d
    const-string/jumbo v1, "version"

    #@40
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@43
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    #@45
    .line 75
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@47
    array-length v0, v0

    #@48
    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    #@4a
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@4c
    .line 76
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    #@4e
    const-wide/16 v2, 0x0

    #@50
    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    #@53
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@55
    .line 67
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v13, 0x3

    #@2
    const/4 v11, 0x0

    #@3
    .line 234
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 235
    .local v1, "currentFingerprint":Ljava/lang/String;
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    #@9
    .line 236
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    #@b
    .line 237
    const/4 v4, 0x0

    #@c
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    #@e
    new-instance v9, Ljava/io/FileReader;

    #@10
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    #@12
    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@15
    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    #@18
    .line 238
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v6

    #@20
    .line 239
    .local v6, "version":I
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 240
    .local v0, "buildFingerprint":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@26
    .line 241
    const/4 v9, 0x0

    #@27
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    #@29
    .line 243
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_1

    #@2f
    .line 244
    const/4 v9, 0x0

    #@30
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    #@32
    .line 248
    :cond_1
    if-eqz v5, :cond_2

    #@34
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@37
    :cond_2
    move-object v9, v11

    #@38
    :goto_0
    if-eqz v9, :cond_6

    #@3a
    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@3b
    .line 246
    :catch_0
    move-exception v3

    #@3c
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v5

    #@3d
    .line 247
    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "version":I
    :goto_1
    const/4 v6, 0x0

    #@3e
    .line 250
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "version":I
    :goto_2
    if-eq v6, v13, :cond_3

    #@40
    .line 251
    const-string/jumbo v9, "UsageStatsDatabase"

    #@43
    new-instance v10, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v12, "Upgrading from version "

    #@4b
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    const-string/jumbo v12, " to "

    #@56
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v10

    #@5e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v10

    #@62
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 252
    invoke-direct {p0, v6}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V

    #@68
    .line 255
    :cond_3
    if-ne v6, v13, :cond_4

    #@6a
    iget-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    #@6c
    if-eqz v9, :cond_d

    #@6e
    .line 256
    :cond_4
    const/4 v7, 0x0

    #@6f
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v8, Ljava/io/BufferedWriter;

    #@71
    new-instance v9, Ljava/io/FileWriter;

    #@73
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    #@75
    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #@78
    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@7b
    .line 257
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    const/4 v9, 0x3

    #@7c
    :try_start_5
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@83
    .line 258
    const-string/jumbo v9, "\n"

    #@86
    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@89
    .line 259
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@8c
    .line 260
    const-string/jumbo v9, "\n"

    #@8f
    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@92
    .line 261
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@95
    .line 265
    if-eqz v8, :cond_5

    #@97
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    #@9a
    :cond_5
    :goto_3
    if-eqz v11, :cond_d

    #@9c
    :try_start_7
    throw v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    #@9d
    .line 262
    :catch_1
    move-exception v2

    #@9e
    .local v2, "e":Ljava/io/IOException;
    move-object v7, v8

    #@9f
    .line 263
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :goto_4
    const-string/jumbo v9, "UsageStatsDatabase"

    #@a2
    const-string/jumbo v10, "Failed to write new version"

    #@a5
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 264
    new-instance v9, Ljava/lang/RuntimeException;

    #@aa
    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@ad
    throw v9

    #@ae
    .line 248
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buildFingerprint":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v9

    #@af
    goto :goto_0

    #@b0
    :cond_6
    move-object v4, v5

    #@b1
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    #@b2
    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v6    # "version":I
    .local v4, "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    #@b3
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_5
    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@b4
    :catchall_0
    move-exception v10

    #@b5
    move-object v14, v10

    #@b6
    move-object v10, v9

    #@b7
    move-object v9, v14

    #@b8
    :goto_6
    if-eqz v4, :cond_7

    #@ba
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@bd
    :cond_7
    :goto_7
    if-eqz v10, :cond_9

    #@bf
    :try_start_a
    throw v10

    #@c0
    .line 246
    :catch_4
    move-exception v3

    #@c1
    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_1

    #@c3
    .line 248
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v12

    #@c4
    if-nez v10, :cond_8

    #@c6
    move-object v10, v12

    #@c7
    goto :goto_7

    #@c8
    :cond_8
    if-eq v10, v12, :cond_7

    #@ca
    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@cd
    goto :goto_7

    #@ce
    :cond_9
    throw v9
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    #@cf
    .line 265
    .restart local v6    # "version":I
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v11

    #@d0
    goto :goto_3

    #@d1
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v9

    #@d2
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :goto_8
    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@d3
    :catchall_1
    move-exception v10

    #@d4
    move-object v11, v9

    #@d5
    move-object v9, v10

    #@d6
    :goto_9
    if-eqz v7, :cond_a

    #@d8
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    #@db
    :cond_a
    :goto_a
    if-eqz v11, :cond_c

    #@dd
    :try_start_d
    throw v11

    #@de
    .line 262
    :catch_8
    move-exception v2

    #@df
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    #@e0
    .line 265
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v10

    #@e1
    if-nez v11, :cond_b

    #@e3
    move-object v11, v10

    #@e4
    goto :goto_a

    #@e5
    :cond_b
    if-eq v11, v10, :cond_a

    #@e7
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@ea
    goto :goto_a

    #@eb
    :cond_c
    throw v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    #@ec
    .line 231
    :cond_d
    return-void

    #@ed
    .line 265
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    #@ee
    goto :goto_9

    #@ef
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v9

    #@f0
    move-object v7, v8

    #@f1
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    goto :goto_9

    #@f2
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_a
    move-exception v9

    #@f3
    move-object v7, v8

    #@f4
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    goto :goto_8

    #@f5
    .line 248
    .end local v6    # "version":I
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v9

    #@f6
    move-object v10, v11

    #@f7
    goto :goto_6

    #@f8
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v9

    #@f9
    move-object v10, v11

    #@fa
    move-object v4, v5

    #@fb
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_6

    #@fc
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v9

    #@fd
    move-object v4, v5

    #@fe
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .locals 5
    .param p0, "directory"    # Ljava/io/File;

    #@0
    .prologue
    .line 746
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 747
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    #@6
    .line 748
    const/4 v2, 0x0

    #@7
    array-length v3, v1

    #@8
    :goto_0
    if-ge v2, v3, :cond_1

    #@a
    aget-object v0, v1, v2

    #@c
    .line 749
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_0

    #@12
    .line 750
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@15
    .line 748
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 752
    :cond_0
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    #@1b
    goto :goto_1

    #@1c
    .line 756
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@1f
    .line 745
    return-void
.end method

.method private static deleteDirectoryContents(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;

    #@0
    .prologue
    .line 739
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@3
    move-result-object v1

    #@4
    .line 740
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    #@5
    array-length v3, v1

    #@6
    :goto_0
    if-ge v2, v3, :cond_0

    #@8
    aget-object v0, v1, v2

    #@a
    .line 741
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    #@d
    .line 740
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 738
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;
    .locals 6
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 725
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 726
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 727
    .local v1, "in":Ljava/io/DataInputStream;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    #@c
    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@f
    .line 729
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    #@12
    move-result-wide v4

    #@13
    iput-wide v4, v3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@15
    .line 730
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 735
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_0
    return-object v3

    #@19
    .line 731
    .restart local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v2

    #@1a
    .line 732
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "UsageStatsDatabase"

    #@1d
    const-string/jumbo v5, "DeSerializing IntervalStats Failed"

    #@20
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 733
    const/4 v3, 0x0

    #@24
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    goto :goto_0
.end method

.method private doUpgradeLocked(I)V
    .locals 5
    .param p1, "thisVersion"    # I

    #@0
    .prologue
    .line 276
    const/4 v3, 0x2

    #@1
    if-ge p1, v3, :cond_1

    #@3
    .line 279
    const-string/jumbo v3, "UsageStatsDatabase"

    #@6
    const-string/jumbo v4, "Deleting all usage stats files"

    #@9
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 280
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@f
    array-length v3, v3

    #@10
    if-ge v2, v3, :cond_1

    #@12
    .line 281
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@14
    aget-object v3, v3, v2

    #@16
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@19
    move-result-object v1

    #@1a
    .line 282
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    #@1c
    .line 283
    const/4 v3, 0x0

    #@1d
    array-length v4, v1

    #@1e
    :goto_1
    if-ge v3, v4, :cond_0

    #@20
    aget-object v0, v1, v3

    #@22
    .line 284
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@25
    .line 283
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_1

    #@28
    .line 280
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 275
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ";"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 271
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@14
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 271
    const-string/jumbo v1, ";"

    #@1b
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 272
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@21
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method private static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 698
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@3
    move-result v1

    #@4
    .line 699
    .local v1, "length":I
    new-array v0, v1, [B

    #@6
    .line 700
    .local v0, "buffer":[B
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    #@a
    .line 701
    return-object v0
.end method

.method private indexFilesLocked()V
    .locals 12

    #@0
    .prologue
    .line 185
    new-instance v1, Lcom/android/server/usage/UsageStatsDatabase$1;

    #@2
    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    #@5
    .line 193
    .local v1, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v5, 0x0

    #@6
    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@8
    array-length v6, v6

    #@9
    if-ge v5, v6, :cond_2

    #@b
    .line 194
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@d
    aget-object v6, v6, v5

    #@f
    if-nez v6, :cond_0

    #@11
    .line 195
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@13
    new-instance v7, Landroid/app/usage/TimeSparseArray;

    #@15
    invoke-direct {v7}, Landroid/app/usage/TimeSparseArray;-><init>()V

    #@18
    aput-object v7, v6, v5

    #@1a
    .line 199
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@1c
    aget-object v6, v6, v5

    #@1e
    invoke-virtual {v6, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@21
    move-result-object v4

    #@22
    .line 200
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_1

    #@24
    .line 205
    const/4 v6, 0x0

    #@25
    array-length v7, v4

    #@26
    :goto_2
    if-ge v6, v7, :cond_1

    #@28
    aget-object v3, v4, v6

    #@2a
    .line 206
    .local v3, "f":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    #@2c
    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2f
    .line 208
    .local v0, "af":Landroid/util/AtomicFile;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@31
    aget-object v8, v8, v5

    #@33
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    #@36
    move-result-wide v10

    #@37
    invoke-virtual {v8, v10, v11, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 205
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 197
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    :cond_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@3f
    aget-object v6, v6, v5

    #@41
    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->clear()V

    #@44
    goto :goto_1

    #@45
    .line 209
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v2

    #@46
    .line 210
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "UsageStatsDatabase"

    #@49
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "failed to index file: "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@60
    goto :goto_3

    #@61
    .line 193
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_0

    #@64
    .line 184
    .end local v4    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .locals 2
    .param p1, "beingRestored"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "onDevice"    # Lcom/android/server/usage/IntervalStats;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 673
    if-nez p2, :cond_0

    #@3
    return-object p1

    #@4
    .line 674
    :cond_0
    if-nez p1, :cond_1

    #@6
    return-object v0

    #@7
    .line 675
    :cond_1
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@9
    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@b
    .line 676
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@d
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    #@12
    .line 677
    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@14
    iput-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@16
    .line 678
    return-object p1
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 11
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 512
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@4
    move-result-object v4

    #@5
    .line 513
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_2

    #@7
    .line 514
    array-length v8, v4

    #@8
    move v6, v7

    #@9
    :goto_0
    if-ge v6, v8, :cond_2

    #@b
    aget-object v3, v4, v6

    #@d
    .line 515
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 516
    .local v5, "path":Ljava/lang/String;
    const-string/jumbo v9, ".bak"

    #@14
    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@17
    move-result v9

    #@18
    if-eqz v9, :cond_0

    #@1a
    .line 517
    new-instance v3, Ljava/io/File;

    #@1c
    .end local v3    # "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1f
    move-result v9

    #@20
    const-string/jumbo v10, ".bak"

    #@23
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@26
    move-result v10

    #@27
    sub-int/2addr v9, v10

    #@28
    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2f
    .line 522
    .restart local v3    # "f":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-wide v0

    #@33
    .line 527
    .local v0, "beginTime":J
    :goto_1
    cmp-long v9, v0, p1

    #@35
    if-gez v9, :cond_1

    #@37
    .line 528
    new-instance v9, Landroid/util/AtomicFile;

    #@39
    invoke-direct {v9, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@3c
    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V

    #@3f
    .line 514
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@41
    goto :goto_0

    #@42
    .line 523
    .end local v0    # "beginTime":J
    :catch_0
    move-exception v2

    #@43
    .line 524
    .local v2, "e":Ljava/io/IOException;
    const-wide/16 v0, 0x0

    #@45
    .restart local v0    # "beginTime":J
    goto :goto_1

    #@46
    .line 511
    .end local v0    # "beginTime":J
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .locals 1
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 705
    if-nez p0, :cond_0

    #@3
    return-void

    #@4
    .line 706
    :cond_0
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@6
    .line 707
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@b
    .line 708
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@d
    if-eqz v0, :cond_1

    #@f
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@11
    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->clear()V

    #@14
    .line 704
    :cond_1
    return-void
.end method

.method private static serializeIntervalStats(Lcom/android/server/usage/IntervalStats;)[B
    .locals 6
    .param p0, "stats"    # Lcom/android/server/usage/IntervalStats;

    #@0
    .prologue
    .line 712
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 713
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@7
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 715
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@c
    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@f
    .line 716
    invoke-static {v2, p0}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 721
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 717
    :catch_0
    move-exception v1

    #@18
    .line 718
    .local v1, "ioe":Ljava/io/IOException;
    const-string/jumbo v3, "UsageStatsDatabase"

    #@1b
    const-string/jumbo v4, "Serializing IntervalStats Failed"

    #@1e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 719
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@24
    goto :goto_0
.end method

.method private writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V
    .locals 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "statsFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 683
    new-instance v2, Lcom/android/server/usage/IntervalStats;

    #@2
    invoke-direct {v2}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@5
    .line 685
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    :try_start_0
    invoke-static {p2, v2}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 691
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    #@b
    .line 692
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;)[B

    #@e
    move-result-object v0

    #@f
    .line 693
    .local v0, "data":[B
    array-length v3, v0

    #@10
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@13
    .line 694
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    #@16
    .line 682
    return-void

    #@17
    .line 686
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    #@18
    .line 687
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "UsageStatsDatabase"

    #@1b
    const-string/jumbo v4, "Failed to read usage stats file"

    #@1e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 688
    const/4 v3, 0x0

    #@22
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@25
    .line 689
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 606
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v11

    #@4
    .line 607
    :try_start_0
    const-string/jumbo v10, "usage_stats"

    #@7
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v10

    #@b
    if-eqz v10, :cond_7

    #@d
    .line 610
    const/4 v10, 0x0

    #@e
    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@11
    move-result-object v1

    #@12
    .line 612
    .local v1, "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    const/4 v10, 0x1

    #@13
    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@16
    move-result-object v8

    #@17
    .line 614
    .local v8, "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    const/4 v10, 0x2

    #@18
    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@1b
    move-result-object v6

    #@1c
    .line 616
    .local v6, "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    const/4 v10, 0x3

    #@1d
    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v9

    #@21
    .line 619
    .local v9, "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    #@23
    new-instance v10, Ljava/io/ByteArrayInputStream;

    #@25
    invoke-direct {v10, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@28
    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2b
    .line 620
    .local v4, "in":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    move-result v0

    #@2f
    .line 623
    .local v0, "backupDataVersion":I
    if-lt v0, v12, :cond_0

    #@31
    if-le v0, v12, :cond_1

    #@33
    .line 662
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit v11

    #@37
    .line 623
    return-void

    #@38
    .line 627
    :cond_1
    const/4 v3, 0x0

    #@39
    .local v3, "i":I
    :goto_0
    :try_start_3
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@3b
    array-length v10, v10

    #@3c
    if-ge v3, v10, :cond_2

    #@3e
    .line 628
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@40
    aget-object v10, v10, v3

    #@42
    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    #@45
    .line 627
    add-int/lit8 v3, v3, 0x1

    #@47
    goto :goto_0

    #@48
    .line 631
    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@4b
    move-result v2

    #@4c
    .line 632
    .local v2, "fileCount":I
    const/4 v3, 0x0

    #@4d
    :goto_1
    if-ge v3, v2, :cond_3

    #@4f
    .line 633
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    #@52
    move-result-object v10

    #@53
    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    #@56
    move-result-object v7

    #@57
    .line 634
    .local v7, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v1}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    #@5a
    move-result-object v7

    #@5b
    .line 635
    const/4 v10, 0x0

    #@5c
    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    #@5f
    .line 632
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_1

    #@62
    .line 638
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@65
    move-result v2

    #@66
    .line 639
    const/4 v3, 0x0

    #@67
    :goto_2
    if-ge v3, v2, :cond_4

    #@69
    .line 640
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    #@6c
    move-result-object v10

    #@6d
    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    #@70
    move-result-object v7

    #@71
    .line 641
    .restart local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    #@74
    move-result-object v7

    #@75
    .line 642
    const/4 v10, 0x1

    #@76
    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    #@79
    .line 639
    add-int/lit8 v3, v3, 0x1

    #@7b
    goto :goto_2

    #@7c
    .line 645
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@7f
    move-result v2

    #@80
    .line 646
    const/4 v3, 0x0

    #@81
    :goto_3
    if-ge v3, v2, :cond_5

    #@83
    .line 647
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    #@86
    move-result-object v10

    #@87
    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    #@8a
    move-result-object v7

    #@8b
    .line 648
    .restart local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    #@8e
    move-result-object v7

    #@8f
    .line 649
    const/4 v10, 0x2

    #@90
    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    #@93
    .line 646
    add-int/lit8 v3, v3, 0x1

    #@95
    goto :goto_3

    #@96
    .line 652
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@99
    move-result v2

    #@9a
    .line 653
    const/4 v3, 0x0

    #@9b
    :goto_4
    if-ge v3, v2, :cond_6

    #@9d
    .line 654
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    #@a0
    move-result-object v10

    #@a1
    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([B)Lcom/android/server/usage/IntervalStats;

    #@a4
    move-result-object v7

    #@a5
    .line 655
    .restart local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, v7, v9}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    #@a8
    move-result-object v7

    #@a9
    .line 656
    const/4 v10, 0x3

    #@aa
    invoke-virtual {p0, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@ad
    .line 653
    add-int/lit8 v3, v3, 0x1

    #@af
    goto :goto_4

    #@b0
    .line 662
    .end local v7    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b3
    .end local v0    # "backupDataVersion":I
    .end local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v2    # "fileCount":I
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :cond_7
    :goto_5
    monitor-exit v11

    #@b4
    .line 605
    return-void

    #@b5
    .line 659
    .restart local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v5

    #@b6
    .line 660
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v10, "UsageStatsDatabase"

    #@b9
    const-string/jumbo v12, "Failed to read data from input stream"

    #@bc
    invoke-static {v10, v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@bf
    .line 662
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c2
    goto :goto_5

    #@c3
    .line 606
    .end local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .end local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :catchall_0
    move-exception v10

    #@c4
    monitor-exit v11

    #@c5
    throw v10

    #@c6
    .line 661
    .restart local v1    # "dailyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "monthlyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v8    # "weeklyConfigSource":Lcom/android/server/usage/IntervalStats;
    .restart local v9    # "yearlyConfigSource":Lcom/android/server/usage/IntervalStats;
    :catchall_1
    move-exception v10

    #@c7
    .line 662
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    #@ca
    .line 661
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .locals 14
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 130
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v10

    #@5
    .line 132
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@7
    const/4 v11, 0x0

    #@8
    .line 131
    aget-object v4, v9, v11

    #@a
    .line 133
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@d
    move-result v3

    #@e
    .line 137
    .local v3, "fileCount":I
    const/4 v6, -0x1

    #@f
    .line 138
    .local v6, "lastCheckin":I
    const/4 v5, 0x0

    #@10
    .local v5, "i":I
    :goto_0
    add-int/lit8 v9, v3, -0x1

    #@12
    if-ge v5, v9, :cond_1

    #@14
    .line 139
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v9

    #@18
    check-cast v9, Landroid/util/AtomicFile;

    #@1a
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    const-string/jumbo v11, "-c"

    #@25
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_0

    #@2b
    .line 140
    move v6, v5

    #@2c
    .line 138
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 144
    :cond_1
    add-int/lit8 v7, v6, 0x1

    #@31
    .line 145
    .local v7, "start":I
    add-int/lit8 v9, v3, -0x1

    #@33
    if-ne v7, v9, :cond_2

    #@35
    monitor-exit v10

    #@36
    .line 146
    return v13

    #@37
    .line 150
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    #@39
    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@3c
    .line 151
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    move v5, v7

    #@3d
    :goto_1
    add-int/lit8 v9, v3, -0x1

    #@3f
    if-ge v5, v9, :cond_4

    #@41
    .line 152
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v9

    #@45
    check-cast v9, Landroid/util/AtomicFile;

    #@47
    invoke-static {v9, v8}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    #@4a
    .line 153
    invoke-interface {p1, v8}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    move-result v9

    #@4e
    if-nez v9, :cond_3

    #@50
    monitor-exit v10

    #@51
    .line 154
    return v12

    #@52
    .line 151
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@54
    goto :goto_1

    #@55
    .line 157
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v1

    #@56
    .line 158
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v9, "UsageStatsDatabase"

    #@59
    const-string/jumbo v11, "Failed to check-in"

    #@5c
    invoke-static {v9, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    monitor-exit v10

    #@60
    .line 159
    return v12

    #@61
    .line 164
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_4
    move v5, v7

    #@62
    :goto_2
    add-int/lit8 v9, v3, -0x1

    #@64
    if-ge v5, v9, :cond_6

    #@66
    .line 165
    :try_start_3
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@69
    move-result-object v2

    #@6a
    check-cast v2, Landroid/util/AtomicFile;

    #@6c
    .line 166
    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v0, Ljava/io/File;

    #@6e
    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@76
    move-result-object v11

    #@77
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@7a
    move-result-object v11

    #@7b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    const-string/jumbo v11, "-c"

    #@82
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v9

    #@8a
    .line 166
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8d
    .line 168
    .local v0, "checkedInFile":Ljava/io/File;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@94
    move-result v9

    #@95
    if-nez v9, :cond_5

    #@97
    .line 171
    const-string/jumbo v9, "UsageStatsDatabase"

    #@9a
    new-instance v11, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v12, "Failed to mark file "

    #@a2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v11

    #@a6
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@a9
    move-result-object v12

    #@aa
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@ad
    move-result-object v12

    #@ae
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v11

    #@b2
    .line 172
    const-string/jumbo v12, " as checked-in"

    #@b5
    .line 171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v11

    #@bd
    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c0
    monitor-exit v10

    #@c1
    .line 173
    return v13

    #@c2
    .line 178
    :cond_5
    :try_start_4
    new-instance v9, Landroid/util/AtomicFile;

    #@c4
    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@c7
    invoke-virtual {v4, v5, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ca
    .line 164
    add-int/lit8 v5, v5, 0x1

    #@cc
    goto :goto_2

    #@cd
    .end local v0    # "checkedInFile":Ljava/io/File;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :cond_6
    monitor-exit v10

    #@ce
    .line 181
    return v13

    #@cf
    .line 130
    .end local v3    # "fileCount":I
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "i":I
    .end local v6    # "lastCheckin":I
    .end local v7    # "start":I
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_0
    move-exception v9

    #@d0
    monitor-exit v10

    #@d1
    throw v9
.end method

.method public findBestFitBucket(JJ)I
    .locals 13
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    #@0
    .prologue
    .line 461
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 462
    const/4 v0, -0x1

    #@4
    .line 463
    .local v0, "bestBucket":I
    const-wide v6, 0x7fffffffffffffffL

    #@9
    .line 464
    .local v6, "smallestDiff":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@b
    array-length v8, v8

    #@c
    add-int/lit8 v1, v8, -0x1

    #@e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@10
    .line 465
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@12
    aget-object v8, v8, v1

    #@14
    invoke-virtual {v8, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    #@17
    move-result v4

    #@18
    .line 466
    .local v4, "index":I
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@1a
    aget-object v8, v8, v1

    #@1c
    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->size()I

    #@1f
    move-result v5

    #@20
    .line 467
    .local v5, "size":I
    if-ltz v4, :cond_0

    #@22
    if-ge v4, v5, :cond_0

    #@24
    .line 469
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@26
    aget-object v8, v8, v1

    #@28
    invoke-virtual {v8, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    #@2b
    move-result-wide v10

    #@2c
    sub-long/2addr v10, p1

    #@2d
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-wide v2

    #@31
    .line 470
    .local v2, "diff":J
    cmp-long v8, v2, v6

    #@33
    if-gez v8, :cond_0

    #@35
    .line 471
    move-wide v6, v2

    #@36
    .line 472
    move v0, v1

    #@37
    .line 464
    .end local v2    # "diff":J
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@39
    goto :goto_0

    #@3a
    .end local v4    # "index":I
    .end local v5    # "size":I
    :cond_1
    monitor-exit v9

    #@3b
    .line 476
    return v0

    #@3c
    .line 461
    .end local v1    # "i":I
    :catchall_0
    move-exception v8

    #@3d
    monitor-exit v9

    #@3e
    throw v8
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 559
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 560
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 561
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "usage_stats"

    #@b
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_3

    #@11
    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@14
    move-result-wide v6

    #@15
    invoke-virtual {p0, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    #@18
    .line 563
    new-instance v3, Ljava/io/DataOutputStream;

    #@1a
    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 565
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    #@1e
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@21
    .line 567
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@23
    const/4 v6, 0x0

    #@24
    aget-object v4, v4, v6

    #@26
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@29
    move-result v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2d
    .line 568
    const/4 v1, 0x0

    #@2e
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@30
    const/4 v6, 0x0

    #@31
    aget-object v4, v4, v6

    #@33
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@36
    move-result v4

    #@37
    if-ge v1, v4, :cond_0

    #@39
    .line 571
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@3b
    const/4 v6, 0x0

    #@3c
    aget-object v4, v4, v6

    #@3e
    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/util/AtomicFile;

    #@44
    .line 570
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    #@47
    .line 569
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 574
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@4c
    const/4 v6, 0x1

    #@4d
    aget-object v4, v4, v6

    #@4f
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@52
    move-result v4

    #@53
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@56
    .line 575
    const/4 v1, 0x0

    #@57
    :goto_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@59
    const/4 v6, 0x1

    #@5a
    aget-object v4, v4, v6

    #@5c
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@5f
    move-result v4

    #@60
    if-ge v1, v4, :cond_1

    #@62
    .line 578
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@64
    const/4 v6, 0x1

    #@65
    aget-object v4, v4, v6

    #@67
    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@6a
    move-result-object v4

    #@6b
    check-cast v4, Landroid/util/AtomicFile;

    #@6d
    .line 577
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    #@70
    .line 576
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_1

    #@73
    .line 581
    :cond_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@75
    const/4 v6, 0x2

    #@76
    aget-object v4, v4, v6

    #@78
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@7b
    move-result v4

    #@7c
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7f
    .line 582
    const/4 v1, 0x0

    #@80
    :goto_2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@82
    const/4 v6, 0x2

    #@83
    aget-object v4, v4, v6

    #@85
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@88
    move-result v4

    #@89
    if-ge v1, v4, :cond_2

    #@8b
    .line 585
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@8d
    const/4 v6, 0x2

    #@8e
    aget-object v4, v4, v6

    #@90
    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@93
    move-result-object v4

    #@94
    check-cast v4, Landroid/util/AtomicFile;

    #@96
    .line 584
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V

    #@99
    .line 583
    add-int/lit8 v1, v1, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 588
    :cond_2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@9e
    const/4 v6, 0x3

    #@9f
    aget-object v4, v4, v6

    #@a1
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@a4
    move-result v4

    #@a5
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@a8
    .line 589
    const/4 v1, 0x0

    #@a9
    :goto_3
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@ab
    const/4 v6, 0x3

    #@ac
    aget-object v4, v4, v6

    #@ae
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@b1
    move-result v4

    #@b2
    if-ge v1, v4, :cond_3

    #@b4
    .line 592
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@b6
    const/4 v6, 0x3

    #@b7
    aget-object v4, v4, v6

    #@b9
    invoke-virtual {v4, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@bc
    move-result-object v4

    #@bd
    check-cast v4, Landroid/util/AtomicFile;

    #@bf
    .line 591
    invoke-direct {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c2
    .line 590
    add-int/lit8 v1, v1, 0x1

    #@c4
    goto :goto_3

    #@c5
    .line 595
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    #@c6
    .line 596
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "UsageStatsDatabase"

    #@c9
    const-string/jumbo v6, "Failed to write data to output stream"

    #@cc
    invoke-static {v4, v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cf
    .line 597
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@d2
    .line 600
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d5
    move-result-object v4

    #@d6
    monitor-exit v5

    #@d7
    return-object v4

    #@d8
    .line 559
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v4

    #@d9
    monitor-exit v5

    #@da
    throw v4
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 8
    .param p1, "intervalType"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 342
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 343
    if-ltz p1, :cond_0

    #@6
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@8
    array-length v4, v4

    #@9
    if-lt p1, v4, :cond_1

    #@b
    .line 344
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v6, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v7, "Bad interval type "

    #@15
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 342
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 347
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@2a
    aget-object v4, v4, p1

    #@2c
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result v2

    #@30
    .line 348
    .local v2, "fileCount":I
    if-nez v2, :cond_2

    #@32
    monitor-exit v5

    #@33
    .line 349
    return-object v7

    #@34
    .line 353
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@36
    aget-object v4, v4, p1

    #@38
    add-int/lit8 v6, v2, -0x1

    #@3a
    invoke-virtual {v4, v6}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Landroid/util/AtomicFile;

    #@40
    .line 354
    .local v1, "f":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    #@42
    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@45
    .line 355
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    monitor-exit v5

    #@49
    .line 356
    return-object v3

    #@4a
    .line 357
    .end local v1    # "f":Landroid/util/AtomicFile;
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v0

    #@4b
    .line 358
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "UsageStatsDatabase"

    #@4e
    const-string/jumbo v6, "Failed to read usage stats file"

    #@51
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    monitor-exit v5

    #@55
    .line 361
    return-object v7
.end method

.method public init(J)V
    .locals 11
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 83
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 84
    :try_start_0
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@6
    array-length v9, v8

    #@7
    move v6, v5

    #@8
    :goto_0
    if-ge v6, v9, :cond_1

    #@a
    aget-object v0, v8, v6

    #@c
    .line 85
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@12
    move-result v10

    #@13
    if-nez v10, :cond_0

    #@15
    .line 87
    new-instance v5, Ljava/lang/IllegalStateException;

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v8, "Failed to create directory "

    #@1f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    .line 87
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 83
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v7

    #@35
    throw v5

    #@36
    .line 84
    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@38
    goto :goto_0

    #@39
    .line 92
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    #@3c
    .line 93
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    #@3f
    .line 96
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@41
    array-length v9, v8

    #@42
    move v6, v5

    #@43
    :goto_1
    if-ge v6, v9, :cond_5

    #@45
    aget-object v2, v8, v6

    #@47
    .line 97
    .local v2, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    #@4a
    move-result v4

    #@4b
    .line 98
    .local v4, "startIndex":I
    if-gez v4, :cond_3

    #@4d
    .line 96
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@4f
    move v6, v5

    #@50
    goto :goto_1

    #@51
    .line 102
    :cond_3
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    #@54
    move-result v1

    #@55
    .line 103
    .local v1, "fileCount":I
    move v3, v4

    #@56
    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    #@58
    .line 104
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v5

    #@5c
    check-cast v5, Landroid/util/AtomicFile;

    #@5e
    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    #@61
    .line 103
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_2

    #@64
    .line 109
    :cond_4
    move v3, v4

    #@65
    :goto_3
    if-ge v3, v1, :cond_2

    #@67
    .line 110
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 109
    add-int/lit8 v3, v3, 0x1

    #@6c
    goto :goto_3

    #@6d
    .end local v1    # "fileCount":I
    .end local v2    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v3    # "i":I
    .end local v4    # "startIndex":I
    :cond_5
    monitor-exit v7

    #@6e
    .line 82
    return-void
.end method

.method isFirstUpdate()Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    #@2
    return v0
.end method

.method isNewUpdate()Z
    .locals 1

    #@0
    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    #@2
    return v0
.end method

.method public onTimeChanged(J)V
    .locals 21
    .param p1, "timeDiffMillis"    # J

    #@0
    .prologue
    .line 292
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 293
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 294
    .local v9, "logBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "Time changed by "

    #@d
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 295
    move-wide/from16 v0, p1

    #@12
    invoke-static {v0, v1, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@15
    .line 296
    const-string/jumbo v14, "."

    #@18
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 298
    const/4 v6, 0x0

    #@1c
    .line 299
    .local v6, "filesDeleted":I
    const/4 v7, 0x0

    #@1d
    .line 301
    .local v7, "filesMoved":I
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@21
    move-object/from16 v16, v0

    #@23
    const/4 v14, 0x0

    #@24
    move-object/from16 v0, v16

    #@26
    array-length v0, v0

    #@27
    move/from16 v17, v0

    #@29
    :goto_0
    move/from16 v0, v17

    #@2b
    if-ge v14, v0, :cond_3

    #@2d
    aget-object v5, v16, v14

    #@2f
    .line 302
    .local v5, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    #@32
    move-result v4

    #@33
    .line 303
    .local v4, "fileCount":I
    const/4 v8, 0x0

    #@34
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    #@36
    .line 304
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroid/util/AtomicFile;

    #@3c
    .line 305
    .local v3, "file":Landroid/util/AtomicFile;
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    #@3f
    move-result-wide v18

    #@40
    add-long v12, v18, p1

    #@42
    .line 306
    .local v12, "newTime":J
    const-wide/16 v18, 0x0

    #@44
    cmp-long v18, v12, v18

    #@46
    if-gez v18, :cond_0

    #@48
    .line 307
    add-int/lit8 v6, v6, 0x1

    #@4a
    .line 308
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 303
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 311
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@53
    move-result-object v18

    #@54
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 316
    :goto_3
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    .line 317
    .local v11, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@5e
    move-result-object v18

    #@5f
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    #@62
    move-result-object v18

    #@63
    const-string/jumbo v19, "-c"

    #@66
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@69
    move-result v18

    #@6a
    if-eqz v18, :cond_1

    #@6c
    .line 318
    new-instance v18, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    move-object/from16 v0, v18

    #@73
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v18

    #@77
    const-string/jumbo v19, "-c"

    #@7a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v18

    #@7e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v11

    #@82
    .line 321
    :cond_1
    new-instance v10, Ljava/io/File;

    #@84
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@87
    move-result-object v18

    #@88
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@8b
    move-result-object v18

    #@8c
    move-object/from16 v0, v18

    #@8e
    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@91
    .line 322
    .local v10, "newFile":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    #@93
    .line 323
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@96
    move-result-object v18

    #@97
    move-object/from16 v0, v18

    #@99
    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9c
    goto :goto_2

    #@9d
    .line 292
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v6    # "filesDeleted":I
    .end local v7    # "filesMoved":I
    .end local v8    # "i":I
    .end local v9    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "newFile":Ljava/io/File;
    .end local v11    # "newName":Ljava/lang/String;
    .end local v12    # "newTime":J
    :catchall_0
    move-exception v14

    #@9e
    monitor-exit v15

    #@9f
    throw v14

    #@a0
    .line 326
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v6    # "filesDeleted":I
    .restart local v7    # "filesMoved":I
    .restart local v8    # "i":I
    .restart local v9    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->clear()V

    #@a3
    .line 301
    add-int/lit8 v14, v14, 0x1

    #@a5
    goto :goto_0

    #@a6
    .line 329
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v8    # "i":I
    :cond_3
    const-string/jumbo v14, " files deleted: "

    #@a9
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v14

    #@ad
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    .line 330
    const-string/jumbo v14, " files moved: "

    #@b3
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    .line 331
    const-string/jumbo v14, "UsageStatsDatabase"

    #@bd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v16

    #@c1
    move-object/from16 v0, v16

    #@c3
    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c9
    monitor-exit v15

    #@ca
    .line 291
    return-void

    #@cb
    .line 312
    .restart local v3    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v8    # "i":I
    .restart local v12    # "newTime":J
    :catch_0
    move-exception v2

    #@cc
    .local v2, "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method public prune(J)V
    .locals 5
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@8
    .line 486
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@a
    const/4 v2, -0x3

    #@b
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    #@e
    .line 487
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@10
    const/4 v2, 0x3

    #@11
    aget-object v0, v0, v2

    #@13
    .line 488
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@15
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@18
    move-result-wide v2

    #@19
    .line 487
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@1c
    .line 490
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@1e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@21
    .line 491
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@23
    const/4 v2, -0x6

    #@24
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    #@27
    .line 492
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@29
    const/4 v2, 0x2

    #@2a
    aget-object v0, v0, v2

    #@2c
    .line 493
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@2e
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@31
    move-result-wide v2

    #@32
    .line 492
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@35
    .line 495
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@37
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@3a
    .line 496
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@3c
    const/4 v2, -0x4

    #@3d
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    #@40
    .line 497
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@42
    const/4 v2, 0x1

    #@43
    aget-object v0, v0, v2

    #@45
    .line 498
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@47
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@4a
    move-result-wide v2

    #@4b
    .line 497
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@4e
    .line 500
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@50
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@53
    .line 501
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@55
    const/4 v2, -0x7

    #@56
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    #@59
    .line 502
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@5b
    const/4 v2, 0x0

    #@5c
    aget-object v0, v0, v2

    #@5e
    .line 503
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@60
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@63
    move-result-wide v2

    #@64
    .line 502
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@67
    .line 507
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    monitor-exit v1

    #@6b
    .line 483
    return-void

    #@6c
    .line 484
    :catchall_0
    move-exception v0

    #@6d
    monitor-exit v1

    #@6e
    throw v0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 539
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v2

    #@6
    .line 540
    if-ltz p1, :cond_1

    #@8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@a
    array-length v1, v1

    #@b
    if-lt p1, v1, :cond_2

    #@d
    .line 541
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Bad interval type "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 539
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v2

    #@29
    throw v1

    #@2a
    .line 544
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@2c
    aget-object v1, v1, p1

    #@2e
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@30
    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/util/AtomicFile;

    #@36
    .line 545
    .local v0, "f":Landroid/util/AtomicFile;
    if-nez v0, :cond_3

    #@38
    .line 546
    new-instance v0, Landroid/util/AtomicFile;

    #@3a
    .end local v0    # "f":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/File;

    #@3c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@3e
    aget-object v3, v3, p1

    #@40
    .line 547
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@42
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    .line 546
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@49
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@4c
    .line 548
    .restart local v0    # "f":Landroid/util/AtomicFile;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@4e
    aget-object v1, v1, p1

    #@50
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@52
    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    #@55
    .line 551
    :cond_3
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    #@58
    .line 552
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    #@5b
    move-result-wide v4

    #@5c
    iput-wide v4, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    monitor-exit v2

    #@5f
    .line 537
    return-void
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 14
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 389
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 390
    if-ltz p1, :cond_0

    #@5
    :try_start_0
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@7
    array-length v10, v10

    #@8
    if-lt p1, v10, :cond_1

    #@a
    .line 391
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v12, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v13, "Bad interval type "

    #@14
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v12

    #@18
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v12

    #@1c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v12

    #@20
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 389
    :catchall_0
    move-exception v10

    #@25
    monitor-exit v11

    #@26
    throw v10

    #@27
    .line 394
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@29
    aget-object v6, v10, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 396
    .local v6, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v10, p4, p2

    #@2d
    if-gtz v10, :cond_2

    #@2f
    .line 400
    const/4 v10, 0x0

    #@30
    monitor-exit v11

    #@31
    return-object v10

    #@32
    .line 403
    :cond_2
    :try_start_2
    move-wide/from16 v0, p2

    #@34
    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    #@37
    move-result v8

    #@38
    .line 404
    .local v8, "startIndex":I
    if-gez v8, :cond_3

    #@3a
    .line 407
    const/4 v8, 0x0

    #@3b
    .line 410
    :cond_3
    move-wide/from16 v0, p4

    #@3d
    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    move-result v3

    #@41
    .line 411
    .local v3, "endIndex":I
    if-gez v3, :cond_4

    #@43
    .line 416
    const/4 v10, 0x0

    #@44
    monitor-exit v11

    #@45
    return-object v10

    #@46
    .line 419
    :cond_4
    :try_start_3
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@49
    move-result-wide v12

    #@4a
    cmp-long v10, v12, p4

    #@4c
    if-nez v10, :cond_5

    #@4e
    .line 421
    add-int/lit8 v3, v3, -0x1

    #@50
    .line 422
    if-gez v3, :cond_5

    #@52
    .line 427
    const/4 v10, 0x0

    #@53
    monitor-exit v11

    #@54
    return-object v10

    #@55
    .line 431
    :cond_5
    :try_start_4
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    #@57
    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@5a
    .line 432
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Ljava/util/ArrayList;

    #@5c
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5f
    .line 433
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v8

    #@60
    .local v5, "i":I
    :goto_0
    if-gt v5, v3, :cond_7

    #@62
    .line 434
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@65
    move-result-object v4

    #@66
    check-cast v4, Landroid/util/AtomicFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@68
    .line 441
    .local v4, "f":Landroid/util/AtomicFile;
    :try_start_5
    invoke-static {v4, v9}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    #@6b
    .line 442
    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@6d
    cmp-long v10, p2, v12

    #@6f
    if-gez v10, :cond_6

    #@71
    .line 443
    const/4 v10, 0x0

    #@72
    move-object/from16 v0, p6

    #@74
    invoke-interface {v0, v9, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@77
    .line 433
    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 445
    :catch_0
    move-exception v2

    #@7b
    .line 446
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v10, "UsageStatsDatabase"

    #@7e
    const-string/jumbo v12, "Failed to read usage stats file"

    #@81
    invoke-static {v10, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@84
    goto :goto_1

    #@85
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "f":Landroid/util/AtomicFile;
    :cond_7
    monitor-exit v11

    #@86
    .line 451
    return-object v7
.end method
