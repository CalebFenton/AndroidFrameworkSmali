.class Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSplitAssetLoader"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private blacklist mBaseApkAssets:Landroid/content/res/ApkAssets;

.field private final blacklist mBaseCodePath:Ljava/lang/String;

.field private blacklist mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final blacklist mFlags:I

.field private final blacklist mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p2, "flags"    # I

    .line 8975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8976
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    .line 8977
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    .line 8978
    iput p2, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    .line 8979
    return-void
.end method

.method private static blacklist loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 8983
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    .line 8984
    :cond_b
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x64

    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 8989
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object v0

    .line 8990
    :catch_2b
    move-exception v0

    .line 8991
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load APK at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

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

    .line 9034
    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9035
    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 2

    .line 9039
    iget-object v0, p0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 8998
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_9

    .line 8999
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v1

    .line 9002
    :cond_9
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 9003
    iget-object v1, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    .line 9005
    .local v1, "apkAssets":[Landroid/content/res/ApkAssets;
    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v3, v4}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    .line 9008
    const/4 v3, 0x0

    .line 9009
    .local v3, "splitIdx":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "splitIdx":I
    .local v4, "splitIdx":I
    iget-object v5, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mBaseApkAssets:Landroid/content/res/ApkAssets;

    aput-object v5, v1, v3

    .line 9012
    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 9013
    iget-object v3, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    array-length v5, v3

    move v6, v2

    :goto_34
    if-ge v6, v5, :cond_46

    aget-object v7, v3, v6

    .line 9014
    .local v7, "apkPath":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "splitIdx":I
    .local v8, "splitIdx":I
    iget v9, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v7, v9}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v9

    aput-object v9, v1, v4

    .line 9013
    .end local v7    # "apkPath":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_34

    .line 9018
    .end local v8    # "splitIdx":I
    .restart local v4    # "splitIdx":I
    :cond_46
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    move-object v5, v3

    .line 9019
    .local v5, "assets":Landroid/content/res/AssetManager;
    const/16 v24, 0x0

    sget v25, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    .line 9021
    invoke-virtual {v5, v1, v2}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 9023
    iput-object v5, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    .line 9024
    iget-object v2, v0, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v2
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 3
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9029
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
