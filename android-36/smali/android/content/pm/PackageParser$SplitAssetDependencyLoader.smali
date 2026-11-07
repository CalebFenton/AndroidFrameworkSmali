.class Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;
.super Landroid/content/pm/PackageParser$SplitDependencyLoader;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitAssetDependencyLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$SplitDependencyLoader<",
        "Landroid/content/pm/PackageParser$PackageParserException;",
        ">;",
        "Landroid/content/pm/PackageParser$SplitAssetLoader;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private final blacklist mCachedSplitApks:[[Landroid/content/res/ApkAssets;

.field private final blacklist mFlags:I

.field private final blacklist mSplitPaths:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    .registers 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            "Landroid/util/SparseArray<",
            "[I>;I)V"
        }
    .end annotation

    .line 9060
    .local p2, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0, p2}, Landroid/content/pm/PackageParser$SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 9063
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 9064
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 9065
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9067
    iput p3, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mFlags:I

    .line 9068
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    .line 9069
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 9070
    return-void
.end method

.method private static blacklist createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;
    .registers 23
    .param p0, "apkAssets"    # [Landroid/content/res/ApkAssets;

    .line 9093
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    move-object v1, v0

    .line 9094
    .local v1, "assets":Landroid/content/res/AssetManager;
    const/16 v20, 0x0

    sget v21, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

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

    invoke-virtual/range {v1 .. v21}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;[Ljava/lang/String;IIIIIIIIIIIIIIII)V

    .line 9096
    const/4 v0, 0x0

    move-object/from16 v2, p0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 9097
    return-object v1
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

    .line 9079
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_26

    invoke-static {p0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    .line 9080
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

    .line 9085
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2b

    return-object v0

    .line 9086
    :catch_2b
    move-exception v0

    .line 9087
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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9140
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 9141
    .local v3, "assets":Landroid/content/res/AssetManager;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9140
    .end local v3    # "assets":Landroid/content/res/AssetManager;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 9143
    :cond_e
    return-void
.end method

.method protected blacklist constructSplit(I[II)V
    .registers 10
    .param p1, "splitIdx"    # I
    .param p2, "configSplitIndices"    # [I
    .param p3, "parentSplitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9106
    .local v0, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    if-ltz p3, :cond_e

    .line 9107
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9111
    :cond_e
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget v2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9114
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_31

    aget v3, p2, v2

    .line 9115
    .local v3, "configSplitIdx":I
    iget-object v4, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget v5, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v4, v5}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadApkAssets(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9114
    .end local v3    # "configSplitIdx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 9119
    :cond_31
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/ApkAssets;

    aput-object v2, v1, p1

    .line 9120
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    iget-object v2, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    aget-object v2, v2, p1

    invoke-static {v2}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->createAssetManagerWithAssets([Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager;

    move-result-object v2

    aput-object v2, v1, p1

    .line 9122
    return-void
.end method

.method public blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
    .registers 3

    .line 9147
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedSplitApks:[[Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 9127
    iget-object v1, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .registers 4
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 9134
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 9135
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected blacklist isSplitCached(I)Z
    .registers 3
    .param p1, "splitIdx"    # I

    .line 9074
    iget-object v0, p0, Landroid/content/pm/PackageParser$SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
