.class public Landroid/content/pm/dex/DexMetadataHelper;
.super Ljava/lang/Object;
.source "DexMetadataHelper.java"


# static fields
.field public static final blacklist DEBUG:Z

.field private static final greylist-max-o DEX_METADATA_FILE_EXTENSION:Ljava/lang/String; = ".dm"

.field private static final blacklist PROPERTY_DM_FSVERITY_REQUIRED:Ljava/lang/String; = "pm.dexopt.dm.require_fsverity"

.field private static final blacklist PROPERTY_DM_JSON_MANIFEST_REQUIRED:Ljava/lang/String; = "pm.dexopt.dm.require_manifest"

.field public static final blacklist TAG:Ljava/lang/String; = "DexMetadataHelper"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 56
    const-string v0, "DexMetadataHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "codePath"    # Ljava/lang/String;

    .line 156
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".apk"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corrupted package. Code path is not an apk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "targetFile"    # Ljava/io/File;

    .line 171
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 173
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_26
    return-object v0
.end method

.method public static greylist-max-o buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 137
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_31

    .line 138
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "codePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "dexMetadataPath":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 142
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v2    # "codePath":Ljava/lang/String;
    .end local v3    # "dexMetadataPath":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 146
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method public static greylist-max-o findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "targetFile"    # Ljava/io/File;

    .line 106
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "dexMetadataPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "dexMetadataFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return-object v2
.end method

.method private static blacklist getPackageDexMetadata(Landroid/content/pm/parsing/PackageLite;)Ljava/util/Map;
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPackageDexMetadataSize(Landroid/content/pm/parsing/PackageLite;)J
    .registers 8
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;

    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "sizeBytes":J
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->getPackageDexMetadata(Landroid/content/pm/parsing/PackageLite;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 91
    .local v2, "dexMetadataList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 92
    .local v4, "dexMetadata":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 93
    .end local v4    # "dexMetadata":Ljava/lang/String;
    goto :goto_e

    .line 94
    :cond_25
    return-wide v0
.end method

.method public static greylist-max-o isDexMetadataFile(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isDexMetadataPath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 74
    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFsVerityRequired()Z
    .registers 2

    .line 81
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 82
    const-string/jumbo v0, "pm.dexopt.dm.require_fsverity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    nop

    .line 81
    :goto_13
    return v1
.end method

.method public static blacklist validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;
    .registers 13
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "dmaPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J

    .line 183
    nop

    .line 184
    const-string/jumbo v0, "pm.dexopt.dm.require_manifest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 183
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "dmaPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "versionCode":J
    .local v2, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v3, "dmaPath":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "versionCode":J
    invoke-static/range {v2 .. v7}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 16
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "dmaPath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "requireManifest"    # Z

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "jarFile":Landroid/util/jar/StrictJarFile;
    sget-boolean v0, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateDexMetadataFile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexMetadataHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_30
    :try_start_30
    new-instance v0, Landroid/util/jar/StrictJarFile;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_57
    .catchall {:try_start_30 .. :try_end_36} :catchall_4f

    move-object v5, v0

    .line 199
    .end local v1    # "jarFile":Landroid/util/jar/StrictJarFile;
    .local v5, "jarFile":Landroid/util/jar/StrictJarFile;
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-wide v7, p3

    move v9, p5

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "dmaPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "versionCode":J
    .end local p5    # "requireManifest":Z
    .local v3, "input":Landroid/content/pm/parsing/result/ParseInput;
    .local v4, "dmaPath":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v7, "versionCode":J
    .local v9, "requireManifest":Z
    :try_start_3c
    invoke-static/range {v3 .. v9}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataManifest(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/util/jar/StrictJarFile;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_4b
    .catchall {:try_start_3c .. :try_end_40} :catchall_47

    .line 204
    nop

    .line 206
    :try_start_41
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 208
    goto :goto_46

    .line 207
    :catch_45
    move-exception v0

    .line 199
    :goto_46
    return-object p0

    .line 204
    :catchall_47
    move-exception v0

    move-object p0, v0

    move-object v1, v5

    goto :goto_81

    .line 201
    :catch_4b
    move-exception v0

    move-object p0, v0

    move-object v1, v5

    goto :goto_5e

    .line 204
    .end local v3    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v4    # "dmaPath":Ljava/lang/String;
    .end local v5    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "versionCode":J
    .end local v9    # "requireManifest":Z
    .restart local v1    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "dmaPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "versionCode":J
    .restart local p5    # "requireManifest":Z
    :catchall_4f
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-wide v7, p3

    move v9, p5

    move-object p0, v0

    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "dmaPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "versionCode":J
    .end local p5    # "requireManifest":Z
    .restart local v3    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v4    # "dmaPath":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "versionCode":J
    .restart local v9    # "requireManifest":Z
    goto :goto_81

    .line 201
    .end local v3    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local v4    # "dmaPath":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "versionCode":J
    .end local v9    # "requireManifest":Z
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "dmaPath":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "versionCode":J
    .restart local p5    # "requireManifest":Z
    :catch_57
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-wide v7, p3

    move v9, p5

    move-object p0, v0

    .line 202
    .end local p1    # "dmaPath":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "versionCode":J
    .end local p5    # "requireManifest":Z
    .restart local v3    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local v4    # "dmaPath":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "versionCode":J
    .restart local v9    # "requireManifest":Z
    .local p0, "e":Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error opening "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x75

    invoke-interface {v3, p2, p1, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1
    :try_end_77
    .catchall {:try_start_5e .. :try_end_77} :catchall_7f

    .line 204
    if-eqz v1, :cond_7e

    .line 206
    :try_start_79
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 208
    goto :goto_7e

    .line 207
    :catch_7d
    move-exception v0

    .line 202
    :cond_7e
    :goto_7e
    return-object p1

    .line 204
    .end local p0    # "e":Ljava/io/IOException;
    :catchall_7f
    move-exception v0

    move-object p0, v0

    :goto_81
    if-eqz v1, :cond_88

    .line 206
    :try_start_83
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 208
    goto :goto_88

    .line 207
    :catch_87
    move-exception v0

    .line 210
    :cond_88
    :goto_88
    throw p0
.end method

.method private static blacklist validateDexMetadataManifest(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/util/jar/StrictJarFile;Ljava/lang/String;JZ)Landroid/content/pm/parsing/result/ParseResult;
    .registers 26
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "dmaPath"    # Ljava/lang/String;
    .param p2, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "requireManifest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    const-string/jumbo v0, "validateDexMetadataManifest: "

    const-string v7, "DexMetadataHelper"

    const/4 v8, 0x0

    if-nez p6, :cond_35

    .line 218
    sget-boolean v9, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    if-eqz v9, :cond_30

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " manifest.json check skipped"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_30
    invoke-interface {v1, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 225
    :cond_35
    const-string/jumbo v9, "manifest.json"

    invoke-virtual {v3, v9}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 226
    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    const/16 v10, -0x75

    if-nez v9, :cond_58

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing manifest.json in "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 230
    :cond_58
    invoke-virtual {v3, v9}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 234
    .local v11, "inputStream":Ljava/io/InputStream;
    :try_start_5c
    new-instance v12, Landroid/util/JsonReader;

    new-instance v13, Ljava/io/InputStreamReader;

    const-string v14, "UTF-8"

    invoke-direct {v13, v11, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5c .. :try_end_68} :catch_161

    .line 238
    .local v12, "reader":Landroid/util/JsonReader;
    nop

    .line 239
    const/4 v13, 0x0

    .line 240
    .local v13, "jsonPackageName":Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 242
    .local v14, "jsonVersionCode":J
    invoke-virtual {v12}, Landroid/util/JsonReader;->beginObject()V

    .line 243
    :goto_6f
    invoke-virtual {v12}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9d

    .line 244
    invoke-virtual {v12}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v10, "packageName"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 246
    invoke-virtual {v12}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    .end local v13    # "jsonPackageName":Ljava/lang/String;
    .local v10, "jsonPackageName":Ljava/lang/String;
    goto :goto_99

    .line 247
    .end local v10    # "jsonPackageName":Ljava/lang/String;
    .restart local v13    # "jsonPackageName":Ljava/lang/String;
    :cond_88
    const-string/jumbo v10, "versionCode"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 248
    invoke-virtual {v12}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v14

    goto :goto_99

    .line 250
    :cond_96
    invoke-virtual {v12}, Landroid/util/JsonReader;->skipValue()V

    .line 252
    .end local v8    # "name":Ljava/lang/String;
    :goto_99
    const/4 v8, 0x0

    const/16 v10, -0x75

    goto :goto_6f

    .line 253
    :cond_9d
    invoke-virtual {v12}, Landroid/util/JsonReader;->endObject()V

    .line 255
    const-string/jumbo v8, "manifest.json in "

    if-eqz v13, :cond_143

    const-wide/16 v17, -0x1

    cmp-long v10, v14, v17

    if-nez v10, :cond_ad

    goto/16 :goto_143

    .line 261
    :cond_ad
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v3, ", expected: "

    if-nez v10, :cond_df

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " has invalid packageName: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x75

    invoke-interface {v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 267
    :cond_df
    cmp-long v10, v5, v14

    if-eqz v10, :cond_10d

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " has invalid versionCode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x75

    invoke-interface {v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 273
    :cond_10d
    sget-boolean v3, Landroid/content/pm/dex/DexMetadataHelper;->DEBUG:Z

    if-eqz v3, :cond_13d

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": successful"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_13d
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 256
    :cond_143
    :goto_143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is missing \'packageName\' and/or \'versionCode\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x75

    invoke-interface {v1, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 235
    .end local v12    # "reader":Landroid/util/JsonReader;
    .end local v13    # "jsonPackageName":Ljava/lang/String;
    .end local v14    # "jsonVersionCode":J
    :catch_161
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening manifest.json in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v7, -0x75

    invoke-interface {v1, v7, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o validateDexPaths([Ljava/lang/String;)V
    .registers 9
    .param p0, "paths"    # [Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "apks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 291
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 292
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 295
    .end local v1    # "i":I
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "unmatchedDmFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    array-length v3, p0

    if-ge v2, v3, :cond_55

    .line 297
    aget-object v3, p0, v2

    .line 298
    .local v3, "dmPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, "valid":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_31
    if-ltz v5, :cond_4d

    .line 301
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 302
    const/4 v4, 0x1

    .line 303
    goto :goto_4d

    .line 300
    :cond_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_31

    .line 306
    .end local v5    # "j":I
    :cond_4d
    :goto_4d
    if-nez v4, :cond_52

    .line 307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v3    # "dmPath":Ljava/lang/String;
    .end local v4    # "valid":Z
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 311
    .end local v2    # "i":I
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 314
    return-void

    .line 312
    :cond_5c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmatched .dm files: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
