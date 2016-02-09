.class public Lcom/android/server/am/DumpHeapProvider;
.super Landroid/content/ContentProvider;
.source "DumpHeapProvider.java"


# static fields
.field static sHeapDumpJavaFile:Ljava/io/File;

.field static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method public static getJavaFile()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 34
    sget-object v0, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 35
    :try_start_0
    sget-object v1, Lcom/android/server/am/DumpHeapProvider;->sHeapDumpJavaFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 34
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "application/octet-stream"

    #@3
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate()Z
    .locals 6

    #@0
    .prologue
    .line 41
    sget-object v4, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 42
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 43
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@9
    const-string/jumbo v3, "system"

    #@c
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@f
    .line 44
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    #@11
    const-string/jumbo v3, "heapdump"

    #@14
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@17
    .line 45
    .local v1, "heapdumpDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    #@1a
    .line 46
    new-instance v3, Ljava/io/File;

    #@1c
    const-string/jumbo v5, "javaheap.bin"

    #@1f
    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@22
    sput-object v3, Lcom/android/server/am/DumpHeapProvider;->sHeapDumpJavaFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v4

    #@25
    .line 48
    const/4 v3, 0x1

    #@26
    return v3

    #@27
    .line 41
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "heapdumpDir":Ljava/io/File;
    .end local v2    # "systemDir":Ljava/io/File;
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    sget-object v3, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 79
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 80
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 81
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "/java"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 82
    sget-object v2, Lcom/android/server/am/DumpHeapProvider;->sHeapDumpJavaFile:Ljava/io/File;

    #@16
    .line 83
    const/high16 v4, 0x10000000

    #@18
    .line 82
    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    monitor-exit v3

    #@1d
    return-object v2

    #@1e
    .line 85
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileNotFoundException;

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "Invalid path for "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 78
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    return v0
.end method
