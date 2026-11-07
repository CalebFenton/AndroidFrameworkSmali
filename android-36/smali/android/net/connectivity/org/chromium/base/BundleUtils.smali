.class public Landroid/net/connectivity/org/chromium/base/BundleUtils;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist LOADED_SPLITS_KEY:Ljava/lang/String; = "split_compat_loaded_splits"

.field private static final blacklist TAG:Ljava/lang/String; = "BundleUtils"

.field private static final blacklist sCachedClassLoaders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sInflationClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSplitCompatClassLoaderInstance:Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;

.field private static blacklist sSplitsToRestore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInflationClassLoaders()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sInflationClassLoaders:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSplitsToRestore()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitsToRestore:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsSplitsToRestore(Ljava/util/ArrayList;)V
    .registers 1

    sput-object p0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitsToRestore:Ljava/util/ArrayList;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    nop

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sInflationClassLoaders:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cacheAndValidateSplitClassLoader(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p0, "splitContext"    # Landroid/content/Context;
    .param p1, "splitName"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 115
    .local v0, "parent":Ljava/lang/ClassLoader;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, "appContext":Landroid/content/Context;
    const-class v2, Landroid/net/connectivity/org/chromium/base/BundleUtils;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v1, :cond_26

    .line 125
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 126
    .local v2, "shouldReplaceClassLoader":Z
    :goto_27
    sget-object v3, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 127
    if-eqz v2, :cond_46

    :try_start_2c
    sget-object v4, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 128
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->getSplitApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "apkPath":Ljava/lang/String;
    sget-object v5, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 131
    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v4    # "apkPath":Ljava/lang/String;
    :cond_46
    sget-object v4, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 137
    .local v4, "cachedClassLoader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_5f

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 140
    const/4 v2, 0x1

    .line 141
    invoke-static {p0, v4}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->replaceClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    goto :goto_68

    .line 144
    :cond_5f
    sget-object v5, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v4    # "cachedClassLoader":Ljava/lang/ClassLoader;
    :cond_68
    :goto_68
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_2c .. :try_end_69} :catchall_80

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android.IsolatedSplits.ClassLoaderReplaced."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 150
    return-void

    .line 146
    :catchall_80
    move-exception v4

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v4
.end method

.method public static blacklist canLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .registers 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_6

    .line 297
    const/4 v0, 0x1

    return v0

    .line 298
    :catch_6
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return v0
.end method

.method public static blacklist checkContextClassLoader(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 7
    .param p0, "baseContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 202
    .local v0, "activityClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 203
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_2c

    .line 204
    nop

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 204
    const-string v3, "BundleUtils"

    const-string v4, "Mismatched ClassLoaders between Activity and context (fixing): %s"

    invoke-static {v3, v4, v2}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->replaceClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 212
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2c

    .line 213
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 214
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_2c

    .line 215
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 219
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_2c
    return-void
.end method

.method public static blacklist createContextForInflation(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "splitName"    # Ljava/lang/String;

    .line 244
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->isIsolatedSplitInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 245
    return-object p0

    .line 247
    :cond_7
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->registerSplitClassLoaderForInflation(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 248
    .local v0, "splitClassLoader":Ljava/lang/ClassLoader;
    new-instance v1, Landroid/net/connectivity/org/chromium/base/BundleUtils$1;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/base/BundleUtils$1;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method public static blacklist createIsolatedSplitContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p0, "splitName"    # Ljava/lang/String;

    .line 95
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_BUNDLE:Z

    if-nez v0, :cond_9

    .line 96
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 102
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_d} :catch_2a

    .line 103
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_d
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    .local v1, "app":Landroid/content/Context;
    invoke-virtual {v1, p0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1e

    .line 105
    .end local v1    # "app":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    if-eqz v0, :cond_1a

    :try_start_17
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 106
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :cond_1a
    invoke-static {v2, p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->cacheAndValidateSplitClassLoader(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1d} :catch_2a

    .line 107
    return-object v2

    .line 102
    .end local v2    # "context":Landroid/content/Context;
    .restart local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :catchall_1e
    move-exception v1

    if-eqz v0, :cond_29

    :try_start_21
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v2

    :try_start_26
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "splitName":Ljava/lang/String;
    :cond_29
    :goto_29
    throw v1
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2a} :catch_2a

    .line 108
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .restart local p0    # "splitName":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getNativeLibraryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "libraryName"    # Ljava/lang/String;
    .param p1, "splitName"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0

    .line 176
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    const-class v1, Landroid/net/connectivity/org/chromium/base/BundleUtils;

    .line 177
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/BaseDexClassLoader;

    .line 178
    invoke-virtual {v1, p0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_4d

    .line 179
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 180
    nop

    .line 197
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 180
    :cond_18
    return-object v1

    .line 185
    :cond_19
    :try_start_19
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 187
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    instance-of v3, v2, Ldalvik/system/BaseDexClassLoader;

    if-eqz v3, :cond_2e

    .line 188
    move-object v3, v2

    check-cast v3, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v3, p0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_3a

    .line 189
    :cond_2e
    instance-of v3, v2, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;

    if-eqz v3, :cond_3a

    .line 190
    move-object v3, v2

    check-cast v3, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;

    invoke-virtual {v3, p0}, Landroid/net/connectivity/org/chromium/base/WrappedClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_4d

    move-object v1, v3

    .line 192
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_43

    .line 193
    nop

    .line 197
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 193
    :cond_42
    return-object v1

    .line 196
    :cond_43
    :try_start_43
    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->getSplitApkLibraryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_4d

    .line 197
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V

    .line 196
    :cond_4c
    return-object v3

    .line 172
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_4d
    move-exception v1

    if-eqz v0, :cond_58

    :try_start_50
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw v1
.end method

.method public static blacklist getOrCreateSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4
    .param p0, "splitName"    # Ljava/lang/String;

    .line 269
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_BUNDLE:Z

    if-nez v0, :cond_b

    .line 270
    const-class v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 273
    :cond_b
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 274
    :try_start_e
    sget-object v1, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 275
    .local v1, "ret":Ljava/lang/ClassLoader;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_2f

    .line 277
    if-nez v1, :cond_2e

    .line 279
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->createIsolatedSplitContext(Ljava/lang/String;)Landroid/content/Context;

    .line 280
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 281
    :try_start_1f
    sget-object v2, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    move-object v1, v2

    .line 282
    nop

    .line 283
    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v2

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v2

    .line 285
    :cond_2e
    :goto_2e
    return-object v1

    .line 275
    .end local v1    # "ret":Ljava/lang/ClassLoader;
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private static blacklist getSplitApkLibraryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "libraryName"    # Ljava/lang/String;
    .param p1, "splitName"    # Ljava/lang/String;

    .line 390
    nop

    .line 394
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->getSplitApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "apkPath":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 396
    const/4 v1, 0x0

    return-object v1

    .line 400
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 401
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "primaryCpuAbi"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    .local v2, "primaryCpuAbi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_9 .. :try_end_46} :catch_47

    return-object v3

    .line 404
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "primaryCpuAbi":Ljava/lang/String;
    :catch_47
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist getSplitApkPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "splitName"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 68
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 69
    .local v1, "splitNames":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 70
    return-object v2

    .line 72
    :cond_e
    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 73
    .local v3, "idx":I
    if-gez v3, :cond_15

    goto :goto_19

    :cond_15
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    aget-object v2, v2, v3

    :goto_19
    return-object v2
.end method

.method public static blacklist getSplitCompatClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 308
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitCompatClassLoaderInstance:Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;

    if-nez v0, :cond_b

    .line 309
    new-instance v0, Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitCompatClassLoaderInstance:Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;

    .line 311
    :cond_b
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitCompatClassLoaderInstance:Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;

    return-object v0
.end method

.method private static blacklist isBundleForNative()Z
    .registers 1

    .line 62
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_BUNDLE:Z

    return v0
.end method

.method public static blacklist isIsolatedSplitInstalled(Ljava/lang/String;)Z
    .registers 3
    .param p0, "splitName"    # Ljava/lang/String;

    .line 81
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_BUNDLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 84
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->getSplitApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 82
    :cond_d
    return v1
.end method

.method public static blacklist newInstance(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .line 227
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->canLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 229
    move-object p0, v0

    .line 232
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_11 .. :try_end_1d} :catch_1e

    return-object v1

    .line 233
    :catch_1e
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist registerSplitClassLoaderForInflation(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 3
    .param p0, "splitName"    # Ljava/lang/String;

    .line 289
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->getOrCreateSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 290
    .local v0, "splitClassLoader":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sInflationClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object v0
.end method

.method public static blacklist replaceClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p0, "baseContext"    # Landroid/content/Context;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 154
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_d

    .line 155
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    .line 160
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 161
    .local v0, "classLoaderField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 162
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_d .. :try_end_1e} :catch_20

    .line 165
    .end local v0    # "classLoaderField":Ljava/lang/reflect/Field;
    nop

    .line 166
    return-void

    .line 163
    :catch_20
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist resetForTesting()V
    .registers 1

    .line 54
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sCachedClassLoaders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 55
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sInflationClassLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitCompatClassLoaderInstance:Landroid/net/connectivity/org/chromium/base/BundleUtils$SplitCompatClassLoader;

    .line 57
    sput-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitsToRestore:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public static blacklist restoreLoadedSplits(Landroid/os/Bundle;)V
    .registers 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .line 320
    if-nez p0, :cond_3

    .line 321
    return-void

    .line 323
    :cond_3
    const-string v0, "split_compat_loaded_splits"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sSplitsToRestore:Ljava/util/ArrayList;

    .line 324
    return-void
.end method

.method public static blacklist saveLoadedSplits(Landroid/os/Bundle;)V
    .registers 3
    .param p0, "outState"    # Landroid/os/Bundle;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/net/connectivity/org/chromium/base/BundleUtils;->sInflationClassLoaders:Ljava/util/Map;

    .line 316
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 315
    const-string v1, "split_compat_loaded_splits"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 317
    return-void
.end method
