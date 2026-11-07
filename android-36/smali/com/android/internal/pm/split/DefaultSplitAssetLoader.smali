.class public Lcom/android/internal/pm/split/DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "DefaultSplitAssetLoader.java"

# interfaces
.implements Lcom/android/internal/pm/split/SplitAssetLoader;


# instance fields
.field private blacklist mBaseApkAssets:Landroid/content/res/ApkAssets;

.field private final blacklist mBaseApkPath:Ljava/lang/String;

.field private blacklist mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final blacklist mFlags:I

.field private final blacklist mSplitApkPaths:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/parsing/PackageLite;I)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p2, "flags"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mBaseApkPath:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mFlags:I

    .line 48
    return-void
.end method

.method private static blacklist loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_24

    .line 53
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 54
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_24
    :goto_24
    :try_start_24
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_29

    return-object v0

    .line 59
    :catch_29
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load APK at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 106
    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_9

    .line 67
    iget-object v1, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v1

    .line 70
    :cond_9
    iget-object v1, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 71
    iget-object v1, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 74
    .local v1, "apkAssets":[Landroid/content/res/ApkAssets;
    const/4 v3, 0x0

    .line 75
    .local v3, "splitIdx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "splitIdx":I
    .local v4, "splitIdx":I
    iget-object v5, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mBaseApkPath:Ljava/lang/String;

    iget v6, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v5, v6}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    aput-object v5, v1, v3

    .line 78
    iget-object v3, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 79
    iget-object v3, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mSplitApkPaths:[Ljava/lang/String;

    array-length v5, v3

    move v6, v2

    :goto_32
    if-ge v6, v5, :cond_44

    aget-object v7, v3, v6

    .line 80
    .local v7, "apkPath":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "splitIdx":I
    .local v8, "splitIdx":I
    iget v9, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v9

    aput-object v9, v1, v4

    .line 79
    .end local v7    # "apkPath":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_32

    .line 84
    .end local v8    # "splitIdx":I
    .restart local v4    # "splitIdx":I
    :cond_44
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    move-object v5, v3

    .line 85
    .local v5, "assets":Landroid/content/res/AssetManager;
    new-array v9, v2, [Ljava/lang/String;

    const/16 v24, 0x0

    sget v25, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v5 .. v25}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 87
    invoke-virtual {v5, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 89
    iput-object v5, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 90
    iget-object v2, v0, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v2
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 3
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/pm/split/DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
