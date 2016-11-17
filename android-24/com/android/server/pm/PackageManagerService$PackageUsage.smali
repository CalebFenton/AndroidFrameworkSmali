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
.field private static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field private static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"

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
    .line 1129
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1133
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    #@c
    .line 1134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    const-wide/16 v2, 0x0

    #@10
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@13
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@15
    .line 1135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@1b
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1d
    .line 1137
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    #@20
    .line 1129
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
    .line 1317
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 1318
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@6
    const-string/jumbo v3, "system"

    #@9
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    .line 1319
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@e
    const-string/jumbo v3, "package-usage.list"

    #@11
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@14
    .line 1320
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    #@16
    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@19
    return-object v3
.end method

.method private parseAsLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1288
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-wide v2

    #@4
    return-wide v2

    #@5
    .line 1289
    :catch_0
    move-exception v0

    #@6
    .line 1290
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Failed to parse "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " as a long."

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v1
.end method

.method private readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1295
    const/16 v0, 0xa

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 1300
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    #@4
    .line 1302
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@7
    move-result v0

    #@8
    .line 1303
    .local v0, "ch":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 1304
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1305
    const/4 v1, 0x0

    #@12
    return-object v1

    #@13
    .line 1307
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@15
    const-string/jumbo v2, "Unexpected EOF"

    #@18
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1309
    :cond_1
    if-ne v0, p3, :cond_2

    #@1e
    .line 1310
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 1312
    :cond_2
    int-to-char v1, v0

    #@24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    goto :goto_0
.end method

.method private readVersion0LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "firstLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1240
    move-object v0, p3

    #@1
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_3

    #@3
    .line 1241
    const-string/jumbo v7, " "

    #@6
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    .line 1242
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    #@b
    const/4 v8, 0x2

    #@c
    if-eq v7, v8, :cond_0

    #@e
    .line 1243
    new-instance v7, Ljava/io/IOException;

    #@10
    new-instance v8, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v9, "Failed to parse "

    #@18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    .line 1244
    const-string/jumbo v9, " as package-timestamp pair."

    #@23
    .line 1243
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v7

    #@2f
    .line 1247
    :cond_0
    const/4 v7, 0x0

    #@30
    aget-object v1, v6, v7

    #@32
    .line 1248
    .local v1, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@34
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Landroid/content/pm/PackageParser$Package;

    #@3c
    .line 1249
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_2

    #@3e
    .line 1240
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    goto :goto_0

    #@43
    .line 1253
    :cond_2
    const/4 v7, 0x1

    #@44
    aget-object v7, v6, v7

    #@46
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->parseAsLong(Ljava/lang/String;)J

    #@49
    move-result-wide v4

    #@4a
    .line 1254
    .local v4, "timestamp":J
    const/4 v3, 0x0

    #@4b
    .line 1255
    .local v3, "reason":I
    :goto_1
    const/16 v7, 0x8

    #@4d
    .line 1254
    if-ge v3, v7, :cond_1

    #@4f
    .line 1257
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    #@51
    aput-wide v4, v7, v3

    #@53
    .line 1256
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_1

    #@56
    .line 1236
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "reason":I
    .end local v4    # "timestamp":J
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readVersion1LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1266
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@6
    .line 1267
    const-string/jumbo v5, " "

    #@9
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1268
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    #@e
    const/16 v6, 0x9

    #@10
    if-eq v5, v6, :cond_1

    #@12
    .line 1269
    new-instance v5, Ljava/io/IOException;

    #@14
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "Failed to parse "

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    const-string/jumbo v7, " as a timestamp array."

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 1272
    :cond_1
    const/4 v5, 0x0

    #@34
    aget-object v1, v4, v5

    #@36
    .line 1273
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@38
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@3a
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Landroid/content/pm/PackageParser$Package;

    #@40
    .line 1274
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    #@42
    .line 1278
    const/4 v3, 0x0

    #@43
    .line 1279
    .local v3, "reason":I
    :goto_0
    const/16 v5, 0x8

    #@45
    .line 1278
    if-ge v3, v5, :cond_0

    #@47
    .line 1281
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    #@49
    add-int/lit8 v6, v3, 0x1

    #@4b
    aget-object v6, v4, v6

    #@4d
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->parseAsLong(Ljava/lang/String;)J

    #@50
    move-result-wide v6

    #@51
    aput-wide v6, v5, v3

    #@53
    .line 1280
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1262
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "reason":I
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private writeInternal()V
    .locals 18

    #@0
    .prologue
    .line 1167
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    iget-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@6
    monitor-enter v12

    #@7
    .line 1168
    :try_start_0
    move-object/from16 v0, p0

    #@9
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    #@b
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 1169
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result-object v4

    #@10
    .line 1170
    .local v4, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    #@11
    .line 1172
    .local v3, "f":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@14
    move-result-object v3

    #@15
    .line 1173
    .local v3, "f":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@17
    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1a
    .line 1174
    .local v5, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    .line 1175
    const/16 v14, 0x1a0

    #@24
    const/16 v15, 0x3e8

    #@26
    const/16 v16, 0x408

    #@28
    .line 1174
    move/from16 v0, v16

    #@2a
    invoke-static {v9, v14, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    #@2d
    .line 1176
    new-instance v8, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    .line 1178
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "PACKAGE_USAGE__VERSION_1"

    #@35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 1179
    const/16 v9, 0xa

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 1180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v9

    #@41
    sget-object v14, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@43
    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    #@4a
    .line 1182
    move-object/from16 v0, p0

    #@4c
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4e
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@50
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@53
    move-result-object v9

    #@54
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v7

    #@58
    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v9

    #@5c
    if-eqz v9, :cond_3

    #@5e
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v6

    #@62
    check-cast v6, Landroid/content/pm/PackageParser$Package;

    #@64
    .line 1183
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    #@67
    move-result-wide v14

    #@68
    const-wide/16 v16, 0x0

    #@6a
    cmp-long v9, v14, v16

    #@6c
    if-eqz v9, :cond_0

    #@6e
    .line 1186
    const/4 v9, 0x0

    #@6f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    #@72
    .line 1187
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 1188
    iget-object v14, v6, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    #@79
    const/4 v9, 0x0

    #@7a
    array-length v15, v14

    #@7b
    :goto_1
    if-ge v9, v15, :cond_1

    #@7d
    aget-wide v10, v14, v9

    #@7f
    .line 1189
    .local v10, "usageTimeInMillis":J
    const/16 v16, 0x20

    #@81
    move/from16 v0, v16

    #@83
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    .line 1190
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@89
    .line 1188
    add-int/lit8 v9, v9, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 1192
    .end local v10    # "usageTimeInMillis":J
    :cond_1
    const/16 v9, 0xa

    #@8e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    .line 1193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    sget-object v14, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@97
    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9a
    move-result-object v9

    #@9b
    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    goto :goto_0

    #@9f
    .line 1197
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    #@a0
    .line 1198
    .local v2, "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    #@a2
    .line 1199
    :try_start_3
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@a5
    .line 1201
    :cond_2
    const-string/jumbo v9, "PackageManager"

    #@a8
    const-string/jumbo v14, "Failed to write package usage times"

    #@ab
    invoke-static {v9, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@af
    monitor-exit v12

    #@b0
    .line 1205
    move-object/from16 v0, p0

    #@b2
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@b4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b7
    move-result-wide v12

    #@b8
    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@bb
    .line 1166
    return-void

    #@bc
    .line 1195
    .restart local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    #@bf
    .line 1196
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c2
    goto :goto_2

    #@c3
    .line 1168
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "file":Landroid/util/AtomicFile;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    #@c4
    :try_start_6
    monitor-exit v13

    #@c5
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@c6
    .line 1167
    :catchall_1
    move-exception v9

    #@c7
    monitor-exit v12

    #@c8
    throw v9
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 1140
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    #@2
    return v0
.end method

.method readLP()V
    .locals 10

    #@0
    .prologue
    .line 1209
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    #@2
    monitor-enter v8

    #@3
    .line 1210
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v2

    #@7
    .line 1211
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    #@8
    .line 1213
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    #@a
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@d
    move-result-object v7

    #@e
    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@11
    .line 1214
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 1216
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@19
    move-result-object v3

    #@1a
    .line 1217
    .local v3, "firstLine":Ljava/lang/String;
    if-nez v3, :cond_0

    #@1c
    .line 1229
    :goto_0
    :try_start_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1f
    move-object v4, v5

    #@20
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    monitor-exit v8

    #@21
    .line 1232
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    #@23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@26
    move-result-wide v8

    #@27
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@2a
    .line 1208
    return-void

    #@2b
    .line 1219
    .restart local v3    # "firstLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_4
    const-string/jumbo v7, "PACKAGE_USAGE__VERSION_1"

    #@2e
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_1

    #@34
    .line 1220
    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readVersion1LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@37
    goto :goto_0

    #@38
    .line 1224
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    #@39
    .local v1, "expected":Ljava/io/FileNotFoundException;
    move-object v4, v5

    #@3a
    .line 1225
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    const/4 v7, 0x0

    #@3b
    :try_start_5
    iput-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3d
    .line 1229
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@40
    goto :goto_1

    #@41
    .line 1209
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v7

    #@42
    monitor-exit v8

    #@43
    throw v7

    #@44
    .line 1222
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "firstLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_7
    invoke-direct {p0, v5, v6, v3}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readVersion0LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@47
    goto :goto_0

    #@48
    .line 1226
    .end local v3    # "firstLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    #@49
    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    #@4a
    .line 1227
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_8
    const-string/jumbo v7, "PackageManager"

    #@4d
    const-string/jumbo v9, "Failed to read package usage times"

    #@50
    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@53
    .line 1229
    :try_start_9
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@56
    goto :goto_1

    #@57
    .line 1228
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    #@58
    .line 1229
    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5b
    .line 1228
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5c
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    #@5d
    move-object v4, v5

    #@5e
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    #@5f
    .line 1224
    .local v4, "in":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    #@60
    .restart local v1    # "expected":Ljava/io/FileNotFoundException;
    goto :goto_2

    #@61
    .line 1226
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    #@62
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method write(Z)V
    .locals 4
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 1144
    if-eqz p1, :cond_0

    #@2
    .line 1145
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    #@5
    .line 1146
    return-void

    #@6
    .line 1148
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
    .line 1150
    return-void

    #@19
    .line 1152
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
    .line 1153
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    #@25
    const-string/jumbo v1, "PackageUsage_DiskWriter"

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    #@2b
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    #@2e
    .line 1143
    :cond_2
    return-void
.end method
