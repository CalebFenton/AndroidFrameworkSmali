.class Lcom/android/server/pm/PackageManagerService$PackageUsage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUsage"
.end annotation


# static fields
.field private static final WRITE_INTERVAL:I = 0x1b7740


# instance fields
.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private mIsHistoricalPackageUsageAvailable:Z

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PackageManagerService$PackageUsage;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 964
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    #@c
    .line 965
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    const-wide/16 v2, 0x0

    #@10
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@13
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@15
    .line 966
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@1b
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1d
    .line 968
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    #@20
    .line 960
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    #@3
    return-void
.end method

.method private getFile()Landroid/util/AtomicFile;
    .locals 4

    #@0
    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 1092
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@6
    const-string/jumbo v3, "system"

    #@9
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 1093
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@e
    const-string/jumbo v3, "package-usage.list"

    #@11
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    .line 1094
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    #@16
    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@19
    return-object v3
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1074
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    #@4
    .line 1076
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@7
    move-result v0

    #@8
    .line 1077
    .local v0, "ch":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 1078
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1079
    const/4 v1, 0x0

    #@12
    return-object v1

    #@13
    .line 1081
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@15
    const-string/jumbo v2, "Unexpected EOF"

    #@18
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1083
    :cond_1
    if-ne v0, p3, :cond_2

    #@1e
    .line 1084
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 1086
    :cond_2
    int-to-char v1, v0

    #@24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    goto :goto_0
.end method

.method private writeInternal()V
    .locals 14

    #@0
    .prologue
    .line 998
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4
    monitor-enter v8

    #@5
    .line 999
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    #@7
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    .line 1000
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    move-result-object v2

    #@c
    .line 1001
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    #@d
    .line 1003
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@10
    move-result-object v1

    #@11
    .line 1004
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    #@13
    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@16
    .line 1005
    .local v3, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    const/16 v10, 0x1a0

    #@20
    const/16 v11, 0x3e8

    #@22
    const/16 v12, 0x408

    #@24
    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@27
    .line 1006
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    .line 1007
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2e
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@33
    move-result-object v7

    #@34
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v5

    #@38
    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_2

    #@3e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/content/pm/PackageParser$Package;

    #@44
    .line 1008
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-wide v10, v4, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    #@46
    const-wide/16 v12, 0x0

    #@48
    cmp-long v7, v10, v12

    #@4a
    if-eqz v7, :cond_0

    #@4c
    .line 1011
    const/4 v7, 0x0

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@50
    .line 1012
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 1013
    const/16 v7, 0x20

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 1014
    iget-wide v10, v4, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    #@5c
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5f
    .line 1015
    const/16 v7, 0xa

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    .line 1016
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@6a
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    goto :goto_0

    #@72
    .line 1020
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    #@73
    .line 1021
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    #@75
    .line 1022
    :try_start_3
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@78
    .line 1024
    :cond_1
    const-string/jumbo v7, "PackageManager"

    #@7b
    const-string/jumbo v10, "Failed to write package usage times"

    #@7e
    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@81
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@82
    monitor-exit v8

    #@83
    .line 1028
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@88
    move-result-wide v8

    #@89
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@8c
    .line 997
    return-void

    #@8d
    .line 1018
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    #@90
    .line 1019
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@93
    goto :goto_1

    #@94
    .line 999
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    #@95
    :try_start_6
    monitor-exit v9

    #@96
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@97
    .line 998
    :catchall_1
    move-exception v7

    #@98
    monitor-exit v8

    #@99
    throw v7
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    #@2
    return v0
.end method

.method readLP()V
    .locals 18

    #@0
    .prologue
    .line 1032
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    #@4
    monitor-enter v15

    #@5
    .line 1033
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v5

    #@9
    .line 1034
    .local v5, "file":Landroid/util/AtomicFile;
    const/4 v6, 0x0

    #@a
    .line 1036
    .local v6, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedInputStream;

    #@c
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@f
    move-result-object v14

    #@10
    invoke-direct {v7, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@13
    .line 1037
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .local v7, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    #@15
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    #@18
    .line 1039
    .local v10, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    const/16 v14, 0x20

    #@1a
    move-object/from16 v0, p0

    #@1c
    invoke-direct {v0, v7, v10, v14}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    move-result-object v8

    #@20
    .line 1040
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_1

    #@22
    .line 1066
    :try_start_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    move-object v6, v7

    #@26
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    monitor-exit v15

    #@27
    .line 1069
    move-object/from16 v0, p0

    #@29
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2e
    move-result-wide v16

    #@2f
    move-wide/from16 v0, v16

    #@31
    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@34
    .line 1031
    return-void

    #@35
    .line 1043
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v14, 0xa

    #@37
    :try_start_4
    move-object/from16 v0, p0

    #@39
    invoke-direct {v0, v7, v10, v14}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    #@3c
    move-result-object v11

    #@3d
    .line 1044
    .local v11, "timeInMillisString":Ljava/lang/String;
    if-nez v11, :cond_2

    #@3f
    .line 1045
    new-instance v14, Ljava/io/IOException;

    #@41
    new-instance v16, Ljava/lang/StringBuilder;

    #@43
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v17, "Failed to find last usage time for package "

    #@49
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v16

    #@4d
    move-object/from16 v0, v16

    #@4f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v16

    #@53
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v16

    #@57
    move-object/from16 v0, v16

    #@59
    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v14
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5d
    .line 1061
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeInMillisString":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@5e
    .local v4, "expected":Ljava/io/FileNotFoundException;
    move-object v6, v7

    #@5f
    .line 1062
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    const/4 v14, 0x0

    #@60
    :try_start_5
    move-object/from16 v0, p0

    #@62
    iput-boolean v14, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@64
    .line 1066
    :try_start_6
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@67
    goto :goto_1

    #@68
    .line 1032
    .end local v4    # "expected":Ljava/io/FileNotFoundException;
    .end local v5    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v14

    #@69
    monitor-exit v15

    #@6a
    throw v14

    #@6b
    .line 1048
    .restart local v5    # "file":Landroid/util/AtomicFile;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "timeInMillisString":Ljava/lang/String;
    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    #@6d
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6f
    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@71
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v9

    #@75
    check-cast v9, Landroid/content/pm/PackageParser$Package;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@77
    .line 1049
    .local v9, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_0

    #@79
    .line 1054
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@7c
    move-result-object v14

    #@7d
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@80
    move-result-wide v12

    #@81
    .line 1059
    .local v12, "timeInMillis":J
    :try_start_9
    iput-wide v12, v9, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@83
    goto :goto_0

    #@84
    .line 1063
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeInMillisString":Ljava/lang/String;
    .end local v12    # "timeInMillis":J
    :catch_1
    move-exception v2

    #@85
    .local v2, "e":Ljava/io/IOException;
    move-object v6, v7

    #@86
    .line 1064
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_a
    const-string/jumbo v14, "PackageManager"

    #@89
    const-string/jumbo v16, "Failed to read package usage times"

    #@8c
    move-object/from16 v0, v16

    #@8e
    invoke-static {v14, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@91
    .line 1066
    :try_start_b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@94
    goto :goto_1

    #@95
    .line 1055
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "timeInMillisString":Ljava/lang/String;
    :catch_2
    move-exception v3

    #@96
    .line 1056
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_c
    new-instance v14, Ljava/io/IOException;

    #@98
    new-instance v16, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v17, "Failed to parse "

    #@a0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v16

    #@a4
    move-object/from16 v0, v16

    #@a6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v16

    #@aa
    .line 1057
    const-string/jumbo v17, " as a long."

    #@ad
    .line 1056
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v16

    #@b1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v16

    #@b5
    move-object/from16 v0, v16

    #@b7
    invoke-direct {v14, v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ba
    throw v14
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@bb
    .line 1065
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeInMillisString":Ljava/lang/String;
    :catchall_1
    move-exception v14

    #@bc
    move-object v6, v7

    #@bd
    .line 1066
    .end local v7    # "in":Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_d
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@c0
    .line 1065
    throw v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@c1
    :catchall_2
    move-exception v14

    #@c2
    goto :goto_4

    #@c3
    .line 1061
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v4

    #@c4
    .restart local v4    # "expected":Ljava/io/FileNotFoundException;
    goto :goto_2

    #@c5
    .line 1063
    .end local v4    # "expected":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    #@c6
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method write(Z)V
    .locals 4
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 975
    if-eqz p1, :cond_0

    #@2
    .line 976
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    #@5
    .line 977
    return-void

    #@6
    .line 979
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v0

    #@a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@f
    move-result-wide v2

    #@10
    sub-long/2addr v0, v2

    #@11
    const-wide/32 v2, 0x1b7740

    #@14
    cmp-long v0, v0, v2

    #@16
    if-gez v0, :cond_1

    #@18
    .line 981
    return-void

    #@19
    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 984
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    #@25
    const-string/jumbo v1, "PackageUsage_DiskWriter"

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    #@2b
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    #@2e
    .line 974
    :cond_2
    return-void
.end method
