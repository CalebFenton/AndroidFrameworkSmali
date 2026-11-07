.class public Landroid/net/connectivity/org/chromium/base/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApkAssets"

.field private static blacklist sLastError:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist exists(Ljava/lang/String;)Z
    .registers 4
    .param p0, "apkSubpath"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 86
    .local v0, "manager":Landroid/content/res/AssetManager;
    :try_start_8
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApkAssets;->maybeAddSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 87
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 88
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_18

    .line 87
    :cond_16
    const/4 v2, 0x1

    return v2

    .line 88
    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_18
    move-exception v1

    .line 90
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist maybeAddSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "apkSubpath"    # Ljava/lang/String;

    .line 77
    sget-object v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->APK_ASSETS_SUFFIX:Ljava/lang/String;

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->APK_ASSETS_SUFFIXED_LIST:[Ljava/lang/String;

    .line 78
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1f

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/org/chromium/build/BuildConfig;->APK_ASSETS_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_1f
    return-object p0
.end method

.method public static blacklist open(Ljava/lang/String;Ljava/lang/String;)[J
    .registers 16
    .param p0, "apkSubpath"    # Ljava/lang/String;
    .param p1, "splitName"    # Ljava/lang/String;

    .line 35
    const-string v0, "Unable to close AssetFileDescriptor"

    const-string v1, "ApkAssets"

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApkAssets;->maybeAddSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    const/4 v2, 0x0

    sput-object v2, Landroid/net/connectivity/org/chromium/base/ApkAssets;->sLastError:Ljava/lang/String;

    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v3, 0x3

    :try_start_d
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 40
    .local v4, "context":Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->isIsolatedSplitInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 41
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->createIsolatedSplitContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    move-object v4, v5

    .line 43
    :cond_22
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 44
    .local v5, "manager":Landroid/content/res/AssetManager;
    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    move-object v2, v6

    .line 45
    nop

    .line 46
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    new-array v12, v3, [J

    const/4 v13, 0x0

    aput-wide v6, v12, v13

    const/4 v6, 0x1

    aput-wide v8, v12, v6

    const/4 v6, 0x2

    aput-wide v10, v12, v6
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_48} :catch_57
    .catchall {:try_start_d .. :try_end_48} :catchall_55

    .line 67
    if-eqz v2, :cond_53

    .line 68
    :try_start_4a
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_53

    .line 70
    :catch_4e
    move-exception v3

    .line 71
    .local v3, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54

    .line 72
    .end local v3    # "e2":Ljava/io/IOException;
    :cond_53
    :goto_53
    nop

    .line 45
    :goto_54
    return-object v12

    .line 66
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "manager":Landroid/content/res/AssetManager;
    :catchall_55
    move-exception v3

    goto :goto_ae

    .line 48
    :catch_57
    move-exception v4

    .line 49
    .local v4, "e":Ljava/io/IOException;
    :try_start_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while loading asset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/net/connectivity/org/chromium/base/ApkAssets;->sLastError:Ljava/lang/String;

    .line 61
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9c

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 62
    sget-object v5, Landroid/net/connectivity/org/chromium/base/ApkAssets;->sLastError:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_9c
    new-array v3, v3, [J

    fill-array-data v3, :array_bc
    :try_end_a1
    .catchall {:try_start_58 .. :try_end_a1} :catchall_55

    .line 67
    if-eqz v2, :cond_ac

    .line 68
    :try_start_a3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_ac

    .line 70
    :catch_a7
    move-exception v5

    .line 71
    .local v5, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ad

    .line 72
    .end local v5    # "e2":Ljava/io/IOException;
    :cond_ac
    :goto_ac
    nop

    .line 64
    :goto_ad
    return-object v3

    .line 67
    .end local v4    # "e":Ljava/io/IOException;
    :goto_ae
    if-eqz v2, :cond_b9

    .line 68
    :try_start_b0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_b9

    .line 70
    :catch_b4
    move-exception v4

    .line 71
    .local v4, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ba

    .line 72
    .end local v4    # "e2":Ljava/io/IOException;
    :cond_b9
    :goto_b9
    nop

    .line 73
    :goto_ba
    throw v3

    nop

    :array_bc
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static blacklist takeLastErrorString()Ljava/lang/String;
    .registers 2

    .line 95
    sget-object v0, Landroid/net/connectivity/org/chromium/base/ApkAssets;->sLastError:Ljava/lang/String;

    .line 96
    .local v0, "rv":Ljava/lang/String;
    const/4 v1, 0x0

    sput-object v1, Landroid/net/connectivity/org/chromium/base/ApkAssets;->sLastError:Ljava/lang/String;

    .line 97
    return-object v0
.end method
