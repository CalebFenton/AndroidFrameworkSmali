.class public Landroid/test/RenamingDelegatingContext;
.super Landroid/content/ContextWrapper;
.source "RenamingDelegatingContext.java"


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mDatabaseNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileContext:Landroid/content/Context;

.field private mFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePrefix:Ljava/lang/String;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileContext"    # Landroid/content/Context;
    .param p3, "filePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@6
    .line 45
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    #@d
    .line 47
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@13
    .line 48
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@19
    .line 128
    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@1b
    .line 129
    iput-object p3, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@1d
    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@6
    .line 45
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    #@d
    .line 47
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@13
    .line 48
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@19
    .line 116
    iput-object p1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@1b
    .line 117
    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@1d
    .line 114
    return-void
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p0, "contentProvider":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/test/RenamingDelegatingContext;->providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "allowAccessToExistingFilesAndDbs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p0, "contentProvider":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p0

    #@1
    .line 61
    .local v2, "mProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Landroid/content/ContentProvider;

    #@7
    .line 62
    .local v1, "mProvider":Landroid/content/ContentProvider;, "TT;"
    new-instance v0, Landroid/test/RenamingDelegatingContext;

    #@9
    invoke-direct {v0, p1, p2}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@c
    .line 63
    .local v0, "mContext":Landroid/test/RenamingDelegatingContext;
    if-eqz p3, :cond_0

    #@e
    .line 64
    invoke-virtual {v0}, Landroid/test/RenamingDelegatingContext;->makeExistingFilesAndDbsAccessible()V

    #@11
    .line 66
    :cond_0
    const/4 v3, 0x0

    #@12
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@15
    .line 67
    return-object v1
.end method

.method private renamedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method


# virtual methods
.method public databaseList()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 165
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@d
    .line 166
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@f
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 168
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 208
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@d
    .line 209
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@f
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 211
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@2
    const/4 v1, 0x0

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 227
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 229
    new-instance v0, Ljava/io/File;

    #@a
    iget-object v2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, "cache"

    #@13
    invoke-direct {p0, v3}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1a
    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    #@1c
    .line 231
    :cond_0
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    #@1e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    .line 232
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    #@26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 233
    const-string/jumbo v0, "RenamingDelegatingContext"

    #@2f
    const-string/jumbo v2, "Unable to create cache directory"

    #@32
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit v1

    #@36
    .line 234
    return-object v4

    #@37
    .line 237
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    #@39
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 238
    const/16 v2, 0x1f9

    #@3f
    .line 239
    const/4 v3, -0x1

    #@40
    const/4 v4, -0x1

    #@41
    .line 236
    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    :cond_2
    monitor-exit v1

    #@45
    .line 242
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    #@47
    return-object v0

    #@48
    .line 227
    :catchall_0
    move-exception v0

    #@49
    monitor-exit v1

    #@4a
    throw v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@2
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDatabasePrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@2
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public makeExistingFilesAndDbsAccessible()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 76
    iget-object v4, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 77
    .local v0, "databaseList":[Ljava/lang/String;
    array-length v5, v0

    #@8
    move v4, v3

    #@9
    :goto_0
    if-ge v4, v5, :cond_1

    #@b
    aget-object v1, v0, v4

    #@d
    .line 78
    .local v1, "diskName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 79
    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@15
    invoke-virtual {p0, v1}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1c
    .line 77
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 82
    .end local v1    # "diskName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@21
    invoke-virtual {v4}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 83
    .local v2, "fileList":[Ljava/lang/String;
    array-length v4, v2

    #@26
    :goto_1
    if-ge v3, v4, :cond_3

    #@28
    aget-object v1, v2, v3

    #@2a
    .line 84
    .restart local v1    # "diskName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 85
    iget-object v5, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@32
    invoke-virtual {p0, v1}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@39
    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 75
    .end local v1    # "diskName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 186
    .local v0, "internalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 187
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@e
    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 189
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    #@15
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 197
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@7
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "internalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 145
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@e
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 146
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@13
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    #@16
    .line 148
    :cond_0
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@18
    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    #@0
    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 155
    .local v0, "internalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@6
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 156
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    #@e
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11
    .line 157
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@13
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    #@16
    .line 159
    :cond_0
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    #@18
    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "diskName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-virtual {p0, p1}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "disk file should not be visible: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 106
    :cond_0
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method shouldDiskNameBeVisible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "diskName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
