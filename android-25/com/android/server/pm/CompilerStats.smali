.class Lcom/android/server/pm/CompilerStats;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CompilerStats$PackageStats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPILER_STATS_VERSION:I = 0x1

.field private static final COMPILER_STATS_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__COMPILER_STATS__"


# instance fields
.field private final packageStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/CompilerStats$PackageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 124
    const-string/jumbo v0, "package-cstats.list"

    #@3
    const-string/jumbo v1, "CompilerStats_DiskWriter"

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@a
    .line 125
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@11
    .line 123
    return-void
.end method


# virtual methods
.method public createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 142
    :try_start_0
    new-instance v0, Lcom/android/server/pm/CompilerStats$PackageStats;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    #@8
    .line 143
    .local v0, "newStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@a
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 144
    return-object v0

    #@f
    .line 141
    .end local v0    # "newStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method public deletePackageStats(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 159
    return-void

    #@a
    .line 160
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 151
    .local v0, "existingStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-eqz v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 152
    return-object v0

    #@f
    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->createPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    move-result-object v1

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    .line 149
    .end local v0    # "existingStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method public getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 129
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method maybeWriteAsync()Z
    .locals 1

    #@0
    .prologue
    .line 257
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->maybeWriteAsync(Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method read()V
    .locals 1

    #@0
    .prologue
    .line 280
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/Void;

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->read(Ljava/lang/Object;)V

    #@6
    .line 279
    return-void
.end method

.method public read(Ljava/io/Reader;)Z
    .locals 14
    .param p1, "r"    # Ljava/io/Reader;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 201
    iget-object v11, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@3
    monitor-enter v11

    #@4
    .line 204
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@6
    invoke-interface {v10}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 207
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    #@b
    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@e
    .line 210
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@11
    move-result-object v9

    #@12
    .line 211
    .local v9, "versionLine":Ljava/lang/String;
    if-nez v9, :cond_0

    #@14
    .line 212
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v12, "No version line found."

    #@19
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 243
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "versionLine":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@1e
    .line 244
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "PackageManager"

    #@21
    const-string/jumbo v12, "Error parsing compiler stats"

    #@24
    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    .line 245
    const/4 v10, 0x0

    #@28
    monitor-exit v11

    #@29
    return v10

    #@2a
    .line 214
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "versionLine":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string/jumbo v10, "PACKAGE_MANAGER__COMPILER_STATS__"

    #@2d
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@30
    move-result v10

    #@31
    if-nez v10, :cond_1

    #@33
    .line 215
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@35
    new-instance v12, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v13, "Invalid version line: "

    #@3d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v12

    #@41
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v12

    #@45
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v12

    #@49
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    .line 201
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v9    # "versionLine":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@4e
    monitor-exit v11

    #@4f
    throw v10

    #@50
    .line 218
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "versionLine":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string/jumbo v10, "PACKAGE_MANAGER__COMPILER_STATS__"

    #@53
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@56
    move-result v10

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    .line 217
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5e
    move-result v8

    #@5f
    .line 219
    .local v8, "version":I
    if-eq v8, v12, :cond_2

    #@61
    .line 221
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@63
    new-instance v12, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v13, "Unexpected version: "

    #@6b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v12

    #@6f
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v12

    #@73
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v12

    #@77
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v10

    #@7b
    .line 227
    :cond_2
    new-instance v2, Lcom/android/server/pm/CompilerStats$PackageStats;

    #@7d
    const-string/jumbo v10, "fake package"

    #@80
    invoke-direct {v2, v10}, Lcom/android/server/pm/CompilerStats$PackageStats;-><init>(Ljava/lang/String;)V

    #@83
    .line 229
    .local v2, "currentPackage":Lcom/android/server/pm/CompilerStats$PackageStats;
    const/4 v5, 0x0

    #@84
    .line 230
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@87
    move-result-object v5

    #@88
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@8a
    .line 231
    const-string/jumbo v10, "-"

    #@8d
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@90
    move-result v10

    #@91
    if-eqz v10, :cond_5

    #@93
    .line 232
    const/16 v10, 0x3a

    #@95
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    #@98
    move-result v1

    #@99
    .line 233
    .local v1, "colonIndex":I
    const/4 v10, -0x1

    #@9a
    if-eq v1, v10, :cond_3

    #@9c
    if-ne v1, v12, :cond_4

    #@9e
    .line 234
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@a0
    new-instance v12, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v13, "Could not parse data "

    #@a8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v12

    #@ac
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v12

    #@b0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v12

    #@b4
    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v10

    #@b8
    .line 236
    :cond_4
    const/4 v10, 0x1

    #@b9
    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    .line 237
    .local v0, "codePath":Ljava/lang/String;
    add-int/lit8 v10, v1, 0x1

    #@bf
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c2
    move-result-object v10

    #@c3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@c6
    move-result-wide v6

    #@c7
    .line 238
    .local v6, "time":J
    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    #@ca
    goto :goto_0

    #@cb
    .line 240
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v1    # "colonIndex":I
    .end local v6    # "time":J
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ce
    move-result-object v2

    #@cf
    goto :goto_0

    #@d0
    :cond_6
    monitor-exit v11

    #@d1
    .line 248
    return v12
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 284
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->readInternal(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    #@3
    move-result-object v1

    #@4
    .line 286
    .local v1, "file":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    #@5
    .line 288
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    #@7
    new-instance v4, Ljava/io/InputStreamReader;

    #@9
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@c
    move-result-object v5

    #@d
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@10
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 289
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/pm/CompilerStats;->read(Ljava/io/Reader;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    .line 292
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    move-object v2, v3

    #@1a
    .line 284
    .end local v3    # "in":Ljava/io/BufferedReader;
    :goto_0
    return-void

    #@1b
    .line 290
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    #@1c
    .line 292
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "expected":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f
    goto :goto_0

    #@20
    .line 291
    .end local v0    # "expected":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    #@21
    .line 292
    .end local v2    # "in":Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@24
    .line 291
    throw v4

    #@25
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    #@26
    move-object v2, v3

    #@27
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_2

    #@28
    .line 290
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    #@29
    .restart local v0    # "expected":Ljava/io/FileNotFoundException;
    move-object v2, v3

    #@2a
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public setPackageStats(Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stats"    # Lcom/android/server/pm/CompilerStats$PackageStats;

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 134
    return-void

    #@a
    .line 135
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 9
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 178
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    #@2
    invoke-direct {v2, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    #@5
    .line 180
    .local v2, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string/jumbo v5, "PACKAGE_MANAGER__COMPILER_STATS__"

    #@8
    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 181
    const/4 v5, 0x1

    #@c
    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    #@f
    .line 183
    iget-object v6, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@11
    monitor-enter v6

    #@12
    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/CompilerStats;->packageStats:Ljava/util/Map;

    #@14
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@17
    move-result-object v5

    #@18
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v4

    #@1c
    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Lcom/android/server/pm/CompilerStats$PackageStats;

    #@28
    .line 185
    .local v3, "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->-get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    #@2b
    move-result-object v7

    #@2c
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2d
    .line 186
    :try_start_1
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->-get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    #@30
    move-result-object v5

    #@31
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    #@34
    move-result v5

    #@35
    if-nez v5, :cond_0

    #@37
    .line 187
    invoke-virtual {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->getPackageName()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 189
    invoke-static {v3}, Lcom/android/server/pm/CompilerStats$PackageStats;->-get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;

    #@41
    move-result-object v5

    #@42
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@45
    move-result-object v5

    #@46
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v1

    #@4a
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_0

    #@50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/util/Map$Entry;

    #@56
    .line 190
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v8, "-"

    #@5e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    check-cast v5, Ljava/lang/String;

    #@68
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    const-string/jumbo v8, ":"

    #@6f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v2, v5}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@82
    goto :goto_1

    #@83
    .line 185
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@84
    :try_start_2
    monitor-exit v7

    #@85
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@86
    .line 183
    .end local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@87
    monitor-exit v6

    #@88
    throw v5

    #@89
    .restart local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8a
    goto :goto_0

    #@8b
    .end local v3    # "pkg":Lcom/android/server/pm/CompilerStats$PackageStats;
    :cond_1
    monitor-exit v6

    #@8c
    .line 197
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    #@8f
    .line 176
    return-void
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 261
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CompilerStats;->writeInternal(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/server/pm/CompilerStats;->getFile()Landroid/util/AtomicFile;

    #@3
    move-result-object v2

    #@4
    .line 263
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    #@5
    .line 266
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@8
    move-result-object v1

    #@9
    .line 267
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    #@b
    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 268
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/CompilerStats;->write(Ljava/io/Writer;)V

    #@11
    .line 269
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    #@14
    .line 270
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 261
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    #@18
    .line 271
    :catch_0
    move-exception v0

    #@19
    .line 272
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    #@1b
    .line 273
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@1e
    .line 275
    :cond_0
    const-string/jumbo v4, "PackageManager"

    #@21
    const-string/jumbo v5, "Failed to write compiler stats"

    #@24
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method writeNow()V
    .locals 1

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/CompilerStats;->writeNow(Ljava/lang/Object;)V

    #@4
    .line 252
    return-void
.end method
