.class public Landroid/content/pm/FallbackCategoryProvider;
.super Ljava/lang/Object;
.source "FallbackCategoryProvider.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FallbackCategoryProvider"

.field private static final greylist-max-o sFallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getFallbackCategory(Ljava/lang/String;)I
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 67
    sget-object v0, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o loadFallbacks()V
    .registers 10

    .line 40
    sget-object v0, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 41
    const-string v0, "fw.ignore_fb_categories"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "FallbackCategoryProvider"

    if-eqz v0, :cond_16

    .line 42
    const-string v0, "Ignoring fallback categories"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 46
    :cond_16
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 47
    .local v0, "assets":Landroid/content/res/AssetManager;
    const-string v3, "/system/framework/framework-res.apk"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 48
    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 50
    .local v3, "res":Landroid/content/res/Resources;
    :try_start_26
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 51
    const v6, 0x1100005

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_37} :catch_94
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_37} :catch_94

    .line 53
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_37
    :try_start_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_64

    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x23

    if-ne v5, v7, :cond_47

    goto :goto_37

    .line 55
    :cond_47
    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "split":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_63

    .line 57
    sget-object v7, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    aget-object v8, v5, v1

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v5    # "split":[Ljava/lang/String;
    :cond_63
    goto :goto_37

    .line 60
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/content/pm/FallbackCategoryProvider;->sFallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " fallback categories"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_37 .. :try_end_86} :catchall_8a

    .line 61
    .end local v6    # "line":Ljava/lang/String;
    :try_start_86
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_94
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_89} :catch_94

    .line 63
    .end local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_9a

    .line 50
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_8a
    move-exception v1

    :try_start_8b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception v5

    :try_start_90
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_93
    throw v1
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_94} :catch_94
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_94} :catch_94

    .line 61
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :catch_94
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Failed to read fallback categories"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method
