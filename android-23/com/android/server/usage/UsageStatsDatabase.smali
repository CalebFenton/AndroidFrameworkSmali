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
.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final DEBUG:Z = false

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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@a
    .line 56
    const/4 v0, 0x4

    #@b
    new-array v0, v0, [Ljava/io/File;

    #@d
    .line 57
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
    .line 58
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
    .line 59
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
    .line 60
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
    .line 56
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@3b
    .line 62
    new-instance v0, Ljava/io/File;

    #@3d
    const-string/jumbo v1, "version"

    #@40
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@43
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    #@45
    .line 63
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@47
    array-length v0, v0

    #@48
    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    #@4a
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@4c
    .line 64
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    #@4e
    const-wide/16 v2, 0x0

    #@50
    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    #@53
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@55
    .line 55
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
    .line 222
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 223
    .local v1, "currentFingerprint":Ljava/lang/String;
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    #@9
    .line 224
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    #@b
    .line 225
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
    .line 226
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
    .line 227
    .local v6, "version":I
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 228
    .local v0, "buildFingerprint":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@26
    .line 229
    const/4 v9, 0x0

    #@27
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    #@29
    .line 231
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v9

    #@2d
    if-eqz v9, :cond_1

    #@2f
    .line 232
    const/4 v9, 0x0

    #@30
    iput-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    #@32
    .line 236
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
    .line 234
    :catch_0
    move-exception v3

    #@3c
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v5

    #@3d
    .line 235
    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "version":I
    :goto_1
    const/4 v6, 0x0

    #@3e
    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "version":I
    :goto_2
    if-eq v6, v13, :cond_3

    #@40
    .line 239
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
    .line 240
    invoke-direct {p0, v6}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V

    #@68
    .line 243
    :cond_3
    if-ne v6, v13, :cond_4

    #@6a
    iget-boolean v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    #@6c
    if-eqz v9, :cond_d

    #@6e
    .line 244
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
    .line 245
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
    .line 246
    const-string/jumbo v9, "\n"

    #@86
    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@89
    .line 247
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@8c
    .line 248
    const-string/jumbo v9, "\n"

    #@8f
    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@92
    .line 249
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@95
    .line 253
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
    .line 250
    :catch_1
    move-exception v2

    #@9e
    .local v2, "e":Ljava/io/IOException;
    move-object v7, v8

    #@9f
    .line 251
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :goto_4
    const-string/jumbo v9, "UsageStatsDatabase"

    #@a2
    const-string/jumbo v10, "Failed to write new version"

    #@a5
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 252
    new-instance v9, Ljava/lang/RuntimeException;

    #@aa
    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@ad
    throw v9

    #@ae
    .line 236
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
    .line 234
    :catch_4
    move-exception v3

    #@c1
    .restart local v3    # "e":Ljava/lang/Exception;
    goto/16 :goto_1

    #@c3
    .line 236
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
    .line 253
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
    .line 250
    :catch_8
    move-exception v2

    #@df
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    #@e0
    .line 253
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
    .line 219
    :cond_d
    return-void

    #@ed
    .line 253
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
    .line 236
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

.method private doUpgradeLocked(I)V
    .locals 5
    .param p1, "thisVersion"    # I

    #@0
    .prologue
    .line 264
    const/4 v3, 0x2

    #@1
    if-ge p1, v3, :cond_1

    #@3
    .line 267
    const-string/jumbo v3, "UsageStatsDatabase"

    #@6
    const-string/jumbo v4, "Deleting all usage stats files"

    #@9
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 268
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
    .line 269
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@14
    aget-object v3, v3, v2

    #@16
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@19
    move-result-object v1

    #@1a
    .line 270
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    #@1c
    .line 271
    const/4 v3, 0x0

    #@1d
    array-length v4, v1

    #@1e
    :goto_1
    if-ge v3, v4, :cond_0

    #@20
    aget-object v0, v1, v3

    #@22
    .line 272
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@25
    .line 271
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_1

    #@28
    .line 268
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 263
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 258
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
    .line 259
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    #@14
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 259
    const-string/jumbo v1, ";"

    #@1b
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 260
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    #@21
    .line 258
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

.method private indexFilesLocked()V
    .locals 12

    #@0
    .prologue
    .line 173
    new-instance v1, Lcom/android/server/usage/UsageStatsDatabase$1;

    #@2
    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    #@5
    .line 181
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
    .line 182
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@d
    aget-object v6, v6, v5

    #@f
    if-nez v6, :cond_0

    #@11
    .line 183
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@13
    new-instance v7, Landroid/app/usage/TimeSparseArray;

    #@15
    invoke-direct {v7}, Landroid/app/usage/TimeSparseArray;-><init>()V

    #@18
    aput-object v7, v6, v5

    #@1a
    .line 187
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@1c
    aget-object v6, v6, v5

    #@1e
    invoke-virtual {v6, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    #@21
    move-result-object v4

    #@22
    .line 188
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_1

    #@24
    .line 193
    const/4 v6, 0x0

    #@25
    array-length v7, v4

    #@26
    :goto_2
    if-ge v6, v7, :cond_1

    #@28
    aget-object v3, v4, v6

    #@2a
    .line 194
    .local v3, "f":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    #@2c
    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2f
    .line 196
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
    .line 193
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@3c
    goto :goto_2

    #@3d
    .line 185
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
    .line 197
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v2

    #@46
    .line 198
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
    .line 181
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_0

    #@64
    .line 172
    .end local v4    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 11
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 517
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@4
    move-result-object v4

    #@5
    .line 518
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_2

    #@7
    .line 519
    array-length v8, v4

    #@8
    move v6, v7

    #@9
    :goto_0
    if-ge v6, v8, :cond_2

    #@b
    aget-object v3, v4, v6

    #@d
    .line 520
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 521
    .local v5, "path":Ljava/lang/String;
    const-string/jumbo v9, ".bak"

    #@14
    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@17
    move-result v9

    #@18
    if-eqz v9, :cond_0

    #@1a
    .line 522
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
    .line 527
    .restart local v3    # "f":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    move-result-wide v0

    #@33
    .line 532
    .local v0, "beginTime":J
    :goto_1
    cmp-long v9, v0, p1

    #@35
    if-gez v9, :cond_1

    #@37
    .line 533
    new-instance v9, Landroid/util/AtomicFile;

    #@39
    invoke-direct {v9, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@3c
    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V

    #@3f
    .line 519
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@41
    goto :goto_0

    #@42
    .line 528
    .end local v0    # "beginTime":J
    :catch_0
    move-exception v2

    #@43
    .line 529
    .local v2, "e":Ljava/io/IOException;
    const-wide/16 v0, 0x0

    #@45
    .restart local v0    # "beginTime":J
    goto :goto_1

    #@46
    .line 516
    .end local v0    # "beginTime":J
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .locals 14
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 118
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v10

    #@5
    .line 120
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@7
    const/4 v11, 0x0

    #@8
    .line 119
    aget-object v4, v9, v11

    #@a
    .line 121
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    #@d
    move-result v3

    #@e
    .line 125
    .local v3, "fileCount":I
    const/4 v6, -0x1

    #@f
    .line 126
    .local v6, "lastCheckin":I
    const/4 v5, 0x0

    #@10
    .local v5, "i":I
    :goto_0
    add-int/lit8 v9, v3, -0x1

    #@12
    if-ge v5, v9, :cond_1

    #@14
    .line 127
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
    .line 128
    move v6, v5

    #@2c
    .line 126
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 132
    :cond_1
    add-int/lit8 v7, v6, 0x1

    #@31
    .line 133
    .local v7, "start":I
    add-int/lit8 v9, v3, -0x1

    #@33
    if-ne v7, v9, :cond_2

    #@35
    monitor-exit v10

    #@36
    .line 134
    return v13

    #@37
    .line 138
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    #@39
    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@3c
    .line 139
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    move v5, v7

    #@3d
    :goto_1
    add-int/lit8 v9, v3, -0x1

    #@3f
    if-ge v5, v9, :cond_4

    #@41
    .line 140
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v9

    #@45
    check-cast v9, Landroid/util/AtomicFile;

    #@47
    invoke-static {v9, v8}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    #@4a
    .line 141
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
    .line 142
    return v12

    #@52
    .line 139
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@54
    goto :goto_1

    #@55
    .line 145
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v1

    #@56
    .line 146
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
    .line 147
    return v12

    #@61
    .line 152
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
    .line 153
    :try_start_3
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@69
    move-result-object v2

    #@6a
    check-cast v2, Landroid/util/AtomicFile;

    #@6c
    .line 154
    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v0, Ljava/io/File;

    #@6e
    .line 155
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
    .line 154
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8d
    .line 156
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
    .line 159
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
    .line 160
    const-string/jumbo v12, " as checked-in"

    #@b5
    .line 159
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
    .line 161
    return v13

    #@c2
    .line 166
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
    .line 152
    add-int/lit8 v5, v5, 0x1

    #@cc
    goto :goto_2

    #@cd
    .end local v0    # "checkedInFile":Ljava/io/File;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :cond_6
    monitor-exit v10

    #@ce
    .line 169
    return v13

    #@cf
    .line 118
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
    .line 466
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 467
    const/4 v0, -0x1

    #@4
    .line 468
    .local v0, "bestBucket":I
    const-wide v6, 0x7fffffffffffffffL

    #@9
    .line 469
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
    .line 470
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@12
    aget-object v8, v8, v1

    #@14
    invoke-virtual {v8, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    #@17
    move-result v4

    #@18
    .line 471
    .local v4, "index":I
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@1a
    aget-object v8, v8, v1

    #@1c
    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->size()I

    #@1f
    move-result v5

    #@20
    .line 472
    .local v5, "size":I
    if-ltz v4, :cond_0

    #@22
    if-ge v4, v5, :cond_0

    #@24
    .line 474
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
    .line 475
    .local v2, "diff":J
    cmp-long v8, v2, v6

    #@33
    if-gez v8, :cond_0

    #@35
    .line 476
    move-wide v6, v2

    #@36
    .line 477
    move v0, v1

    #@37
    .line 469
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
    .line 481
    return v0

    #@3c
    .line 466
    .end local v1    # "i":I
    :catchall_0
    move-exception v8

    #@3d
    monitor-exit v9

    #@3e
    throw v8
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 8
    .param p1, "intervalType"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 330
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 331
    if-ltz p1, :cond_0

    #@6
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@8
    array-length v4, v4

    #@9
    if-lt p1, v4, :cond_1

    #@b
    .line 332
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
    .line 330
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 335
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
    .line 336
    .local v2, "fileCount":I
    if-nez v2, :cond_2

    #@32
    monitor-exit v5

    #@33
    .line 337
    return-object v7

    #@34
    .line 341
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
    .line 342
    .local v1, "f":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    #@42
    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@45
    .line 343
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    monitor-exit v5

    #@49
    .line 344
    return-object v3

    #@4a
    .line 345
    .end local v1    # "f":Landroid/util/AtomicFile;
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_0
    move-exception v0

    #@4b
    .line 346
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
    .line 349
    return-object v7
.end method

.method public getLatestUsageStatsBeginTime(I)J
    .locals 6
    .param p1, "intervalType"    # I

    #@0
    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 357
    if-ltz p1, :cond_0

    #@5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@7
    array-length v1, v1

    #@8
    if-lt p1, v1, :cond_1

    #@a
    .line 358
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Bad interval type "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 356
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 361
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@29
    aget-object v1, v1, p1

    #@2b
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    #@2e
    move-result v0

    #@2f
    .line 362
    .local v0, "statsFileCount":I
    if-lez v0, :cond_2

    #@31
    .line 363
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@33
    aget-object v1, v1, p1

    #@35
    add-int/lit8 v3, v0, -0x1

    #@37
    invoke-virtual {v1, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    move-result-wide v4

    #@3b
    monitor-exit v2

    #@3c
    return-wide v4

    #@3d
    .line 365
    :cond_2
    const-wide/16 v4, -0x1

    #@3f
    monitor-exit v2

    #@40
    return-wide v4
.end method

.method public init(J)V
    .locals 11
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 71
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v7

    #@4
    .line 72
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
    .line 73
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@f
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@12
    move-result v10

    #@13
    if-nez v10, :cond_0

    #@15
    .line 75
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
    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    .line 75
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
    .line 71
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v7

    #@35
    throw v5

    #@36
    .line 72
    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@38
    goto :goto_0

    #@39
    .line 80
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    #@3c
    .line 81
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    #@3f
    .line 84
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
    .line 85
    .local v2, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    #@4a
    move-result v4

    #@4b
    .line 86
    .local v4, "startIndex":I
    if-gez v4, :cond_3

    #@4d
    .line 84
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@4f
    move v6, v5

    #@50
    goto :goto_1

    #@51
    .line 90
    :cond_3
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    #@54
    move-result v1

    #@55
    .line 91
    .local v1, "fileCount":I
    move v3, v4

    #@56
    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    #@58
    .line 92
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v5

    #@5c
    check-cast v5, Landroid/util/AtomicFile;

    #@5e
    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    #@61
    .line 91
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_2

    #@64
    .line 97
    :cond_4
    move v3, v4

    #@65
    :goto_3
    if-ge v3, v1, :cond_2

    #@67
    .line 98
    invoke-virtual {v2, v3}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 97
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
    .line 70
    return-void
.end method

.method isFirstUpdate()Z
    .locals 1

    #@0
    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    #@2
    return v0
.end method

.method isNewUpdate()Z
    .locals 1

    #@0
    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    #@2
    return v0
.end method

.method public onTimeChanged(J)V
    .locals 21
    .param p1, "timeDiffMillis"    # J

    #@0
    .prologue
    .line 280
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 281
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 282
    .local v9, "logBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "Time changed by "

    #@d
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 283
    move-wide/from16 v0, p1

    #@12
    invoke-static {v0, v1, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@15
    .line 284
    const-string/jumbo v14, "."

    #@18
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 286
    const/4 v6, 0x0

    #@1c
    .line 287
    .local v6, "filesDeleted":I
    const/4 v7, 0x0

    #@1d
    .line 289
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
    .line 290
    .local v5, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    #@32
    move-result v4

    #@33
    .line 291
    .local v4, "fileCount":I
    const/4 v8, 0x0

    #@34
    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    #@36
    .line 292
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroid/util/AtomicFile;

    #@3c
    .line 293
    .local v3, "file":Landroid/util/AtomicFile;
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    #@3f
    move-result-wide v18

    #@40
    add-long v12, v18, p1

    #@42
    .line 294
    .local v12, "newTime":J
    const-wide/16 v18, 0x0

    #@44
    cmp-long v18, v12, v18

    #@46
    if-gez v18, :cond_0

    #@48
    .line 295
    add-int/lit8 v6, v6, 0x1

    #@4a
    .line 296
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 291
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 299
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
    .line 304
    :goto_3
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    .line 305
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
    .line 306
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
    .line 309
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
    .line 310
    .local v10, "newFile":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    #@93
    .line 311
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
    .line 280
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
    .line 314
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
    .line 289
    add-int/lit8 v14, v14, 0x1

    #@a5
    goto :goto_0

    #@a6
    .line 317
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
    .line 318
    const-string/jumbo v14, " files moved: "

    #@b3
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    .line 319
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
    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c9
    monitor-exit v15

    #@ca
    .line 279
    return-void

    #@cb
    .line 300
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
    .line 489
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@8
    .line 491
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@a
    const/4 v2, -0x3

    #@b
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    #@e
    .line 492
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@10
    const/4 v2, 0x3

    #@11
    aget-object v0, v0, v2

    #@13
    .line 493
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@15
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@18
    move-result-wide v2

    #@19
    .line 492
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@1c
    .line 495
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@1e
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@21
    .line 496
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@23
    const/4 v2, -0x6

    #@24
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    #@27
    .line 497
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@29
    const/4 v2, 0x2

    #@2a
    aget-object v0, v0, v2

    #@2c
    .line 498
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@2e
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@31
    move-result-wide v2

    #@32
    .line 497
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@35
    .line 500
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@37
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@3a
    .line 501
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@3c
    const/4 v2, -0x4

    #@3d
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    #@40
    .line 502
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@42
    const/4 v2, 0x1

    #@43
    aget-object v0, v0, v2

    #@45
    .line 503
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@47
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@4a
    move-result-wide v2

    #@4b
    .line 502
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@4e
    .line 505
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@50
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@53
    .line 506
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@55
    const/4 v2, -0x7

    #@56
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    #@59
    .line 507
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@5b
    const/4 v2, 0x0

    #@5c
    aget-object v0, v0, v2

    #@5e
    .line 508
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    #@60
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@63
    move-result-wide v2

    #@64
    .line 507
    invoke-static {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    #@67
    .line 512
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6a
    monitor-exit v1

    #@6b
    .line 488
    return-void

    #@6c
    .line 489
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
    .line 543
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 544
    if-ltz p1, :cond_0

    #@5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@7
    array-length v1, v1

    #@8
    if-lt p1, v1, :cond_1

    #@a
    .line 545
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Bad interval type "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 543
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1

    #@27
    .line 548
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@29
    aget-object v1, v1, p1

    #@2b
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@2d
    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/util/AtomicFile;

    #@33
    .line 549
    .local v0, "f":Landroid/util/AtomicFile;
    if-nez v0, :cond_2

    #@35
    .line 550
    new-instance v0, Landroid/util/AtomicFile;

    #@37
    .end local v0    # "f":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/File;

    #@39
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@3b
    aget-object v3, v3, p1

    #@3d
    .line 551
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@3f
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 550
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@46
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@49
    .line 552
    .restart local v0    # "f":Landroid/util/AtomicFile;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@4b
    aget-object v1, v1, p1

    #@4d
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@4f
    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    #@52
    .line 555
    :cond_2
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    #@55
    .line 556
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    #@58
    move-result-wide v4

    #@59
    iput-wide v4, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit v2

    #@5c
    .line 542
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
    .line 394
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 395
    if-ltz p1, :cond_0

    #@5
    :try_start_0
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    #@7
    array-length v10, v10

    #@8
    if-lt p1, v10, :cond_1

    #@a
    .line 396
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
    .line 394
    :catchall_0
    move-exception v10

    #@25
    monitor-exit v11

    #@26
    throw v10

    #@27
    .line 399
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    #@29
    aget-object v6, v10, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 401
    .local v6, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v10, p4, p2

    #@2d
    if-gtz v10, :cond_2

    #@2f
    .line 405
    const/4 v10, 0x0

    #@30
    monitor-exit v11

    #@31
    return-object v10

    #@32
    .line 408
    :cond_2
    :try_start_2
    move-wide/from16 v0, p2

    #@34
    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    #@37
    move-result v8

    #@38
    .line 409
    .local v8, "startIndex":I
    if-gez v8, :cond_3

    #@3a
    .line 412
    const/4 v8, 0x0

    #@3b
    .line 415
    :cond_3
    move-wide/from16 v0, p4

    #@3d
    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    move-result v3

    #@41
    .line 416
    .local v3, "endIndex":I
    if-gez v3, :cond_4

    #@43
    .line 421
    const/4 v10, 0x0

    #@44
    monitor-exit v11

    #@45
    return-object v10

    #@46
    .line 424
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
    .line 426
    add-int/lit8 v3, v3, -0x1

    #@50
    .line 427
    if-gez v3, :cond_5

    #@52
    .line 432
    const/4 v10, 0x0

    #@53
    monitor-exit v11

    #@54
    return-object v10

    #@55
    .line 436
    :cond_5
    :try_start_4
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    #@57
    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@5a
    .line 437
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Ljava/util/ArrayList;

    #@5c
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5f
    .line 438
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v8

    #@60
    .local v5, "i":I
    :goto_0
    if-gt v5, v3, :cond_7

    #@62
    .line 439
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@65
    move-result-object v4

    #@66
    check-cast v4, Landroid/util/AtomicFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@68
    .line 446
    .local v4, "f":Landroid/util/AtomicFile;
    :try_start_5
    invoke-static {v4, v9}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    #@6b
    .line 447
    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@6d
    cmp-long v10, p2, v12

    #@6f
    if-gez v10, :cond_6

    #@71
    .line 448
    const/4 v10, 0x0

    #@72
    move-object/from16 v0, p6

    #@74
    invoke-interface {v0, v9, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@77
    .line 438
    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 450
    :catch_0
    move-exception v2

    #@7b
    .line 451
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
    .line 456
    return-object v7
.end method
